# Start by building the application.
FROM golang:1.21 as build

RUN mkdir /go/src/app
WORKDIR /go/src/app
COPY . .

# RUN go mod download
RUN CGO_ENABLED=0 go build -o bin/ ./src/main.go 

# Now copy it into our base image.
FROM gcr.io/distroless/static-debian11
COPY --from=build /go/src/app/bin/ /
CMD ["/main"]

