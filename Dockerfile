FROM golang:1.22.3

WORKDIR /app

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /sprint12_cicd_final

CMD ["/sprint12_cicd_final"] 