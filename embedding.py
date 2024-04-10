import os
import time
import numpy as np
import matplotlib.pyplot as plt
from sklearn.decomposition import PCA
from sklearn.manifold import TSNE
from openai import OpenAI
from pinecone import Pinecone, PodSpec

import numpy as np
from sklearn.cluster import KMeans
from sklearn.manifold import TSNE
import matplotlib
import matplotlib.pyplot as plt
import pandas as pd

client = OpenAI()
pc = Pinecone(api_key=os.getenv("PINECONE_API_KEY"))


# price per 1k tokens.
EMBEDDING_MODEL_PRICE_PER_TOKEN = {
    "text-embedding-3-small": 0.00002,
    "text-embedding-3-large": 0.00013,
    "text-embedding-ada-002": 0.0001,
}


def plot_embeddings(embeddings):
    users = []
    values = []
    for data in embeddings:
        users.append(data["user"])
        values.append(data["values"])
    values = np.array(values)
    # TSNEで2次元に削減
    # n_components は、削減後の次元数です。
    # perplexity は、近傍の数を決定し、高い値はデータ間の大局的な構造を、低い値は局所的な構造を捉えます。
    # init は、初期化方法
    # learning_rate は、学習率
    tsne = TSNE(
        n_components=2,
        perplexity=50,
        random_state=42,
        init="random",
        learning_rate=100,
    )
    embeddings_reduced = tsne.fit_transform(values)

    # プロットの準備（ユーザーごとに異なる色で）
    plt.figure(figsize=(12, 10))
    colors = plt.cm.rainbow(
        np.linspace(0, 1, len(set(users)))
    )  # ユーザーごとに色を決定

    for user, color in zip(set(users), colors):
        indices = [i for i, u in enumerate(users) if u == user]
        plt.scatter(
            embeddings_reduced[indices, 0],
            embeddings_reduced[indices, 1],
            color=color,
            label=user,
        )

    plt.xlabel("PC1")
    plt.ylabel("PC2")
    plt.title("User Embedding Clusters in 2D via t-SNE")
    plt.legend(markerscale=2, bbox_to_anchor=(1.05, 1), loc="upper left")
    plt.tight_layout()
    plt.show()


def prepare_index(index_name):
    # Pineconeのインデックスを確認する
    if index_name not in pc.list_indexes().names():
        # インデックスがなければ作成する
        pc.create_index(
            index_name,
            dimension=1536,  # dimensionality of text-embed-3-small
            metric="dotproduct",
            spec=PodSpec(environment="gcp-starter"),
        )
        # インデックスが初期化されるまで待つ
        while not pc.describe_index(index_name).status["ready"]:
            time.sleep(1)

    index = pc.Index(index_name)
    return index


def get_embedding(text, model):
    embedding = client.embeddings.create(input=[text], model=model).data[0].embedding
    return embedding
