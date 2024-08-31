FROM golang:1.21.0

ENV CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64

WORKDIR /parcel

COPY . .

RUN go mod download

RUN go build -o /parcel

CMD ["/parcel"]

