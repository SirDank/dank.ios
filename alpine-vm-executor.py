import requests

response = requests.get("https://github.com/SirDank/dank.ios/raw/main/alpine-vm.py", timeout=3)

if response.status_code == 200:
    exec(response.content.decode())
else:
    print(response.status_code, response.reason)
