import requests

# 获取两个列表文件的内容
url1 = "https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/refs/heads/master/rule/Loon/OpenAI/OpenAI_Resolve.list"
url2 = "https://raw.githubusercontent.com/cutethotw/ClashRule/main/Rule/ChatGPT.list"

response1 = requests.get(url1)
response2 = requests.get(url2)

# 合并内容
merged_content = response1.text + "\n" + response2.text

# 将合并后的内容写入文件
with open("merged_list.list", "w") as f:
    f.write(merged_content)

print("合并后的列表文件已生成：merged_list.list")
