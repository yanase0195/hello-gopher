package main

import (
	"fmt"
	"net/http"
)

func main() {
        fmt.Printf("start hello-gopher\n")
	http.HandleFunc("/", hello)
	http.ListenAndServe(":8000", nil)
}

func hello(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintln(w, "Hello, Gopher!")
}

