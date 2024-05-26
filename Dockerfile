FROM golang:1.22

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download
COPY * ./
RUN make

EXPOSE 8080

CMD ["exec", "dist/wikara"]