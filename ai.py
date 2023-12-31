import os
import json
from openai import OpenAI
from langchain.chat_models import ChatOpenAI
from langchain.schema import HumanMessage, SystemMessage

client = OpenAI()

def generate_json(text, system_prompt, model="gpt-4-1106-preview"):
    chat = ChatOpenAI(model=model).bind(response_format={"type": "json_object"})
    output = chat.invoke(
        [
            SystemMessage(content=system_prompt),
            HumanMessage(content=text),
        ]
    )
    return json.loads(output.content)