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
    # ref: https://qiita.com/leolui2013/items/40835bf7ab44a6c136b5
    # リストをNumPy配列に変換
    embeddings_array = np.array(embeddings)

    # KMeansクラスタリングを実行
    n_clusters = 3
    kmeans = KMeans(n_clusters=n_clusters, init="k-means++", random_state=42)
    kmeans.fit(embeddings_array)
    labels = kmeans.labels_

    # t-SNEを使用して次元削減
    tsne = TSNE(
        n_components=2, perplexity=15, random_state=42, init="random", learning_rate=100
    )
    vis_dims2 = tsne.fit_transform(embeddings_array)

    # 分割されたデータのX,Y座標を取得
    x = vis_dims2[:, 0]
    y = vis_dims2[:, 1]

    # クラスタごとにプロットするコードを再実行
    plt.figure(figsize=(10, 8))
    for category, color in enumerate(["purple", "green", "red"]):
        xs = x[labels == category]
        ys = y[labels == category]
        plt.scatter(xs, ys, color=color, alpha=0.3)

        avg_x = np.mean(xs)
        avg_y = np.mean(ys)

        plt.scatter(avg_x, avg_y, marker="x", color=color, s=100)

    plt.title("Clusters identified visualized in language 2d using t-SNE")
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
