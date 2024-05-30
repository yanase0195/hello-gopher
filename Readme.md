
# hello-gopher

## local

```sh
# build
docker build . -t hello-gopher:latest
```

```sh
# run
docker run -d -p 8080:8000  hello-gopher:latest
```

```sh
❯ curl http://127.0.0.1:8080
Hello, Gopher!
```
