import requests
for _ in range(10):
	response = requests.get("https://fakerjs-api.sherlockholmese.repl.co/ipsium")
	print(response)
	print(response.content.decode)