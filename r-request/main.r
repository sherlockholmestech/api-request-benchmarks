library(httr)

url <- "https://fakerjs-api.sherlockholmese.repl.co/ipsium"
response <- GET(url)
content <- content(response, as = "text")
print(response)
print(content)