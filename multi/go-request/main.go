package main

import (
	"io/ioutil"
	"log"
	"net/http"
)

func main() {
	for i := 0; i < 10; i++ {
		resp, err := http.Get("https://fakerjs-api.sherlockholmese.repl.co/ipsium")
		if err != nil {
			log.Fatalln(err)
		}
		body, err := ioutil.ReadAll(resp.Body)
		if err != nil {
			log.Fatalln(err)
		}
		sb := string(body)
		log.Printf(sb)
	}
}
