FROM golang:alpine

WORKDIR $GOPATH/src/goweb

ADD . ./

ENV GO111MODULE=on
ENV GOPROXY="https://goproxy.io"

RUN go build -o web

EXPOSE 8080

ENTRYPOINT ["./web"]