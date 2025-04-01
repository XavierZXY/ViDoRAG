from openai import OpenAI

client = OpenAI(
    base_url="http://0.0.0.0:9091/v1",
    api_key="sk-rqzxntebrwnivaauwwpubxuvrtjodcukaumwggtwymzvdfcw",
)

# 发送带有流式输出的请求
response = client.chat.completions.create(
    model="Qwen2.5-VL-7B-Instruct",
    messages=[
        {
            "role": "user",
            "content": "SiliconCloud公测上线，每用户送3亿token 解锁开源大模型创新能力。对于整个大模型应用领域带来哪些改变？",
        }
    ],
    stream=True,  # 启用流式输出
)

# 逐步接收并处理响应
for chunk in response:
    if not chunk.choices:
        continue
    if chunk.choices[0].delta.content:
        print(chunk.choices[0].delta.content, end="", flush=True)
