FROM golang:1.16-alpine3.13 AS builder
RUN mkdir /build
COPY ./hi-go/ /build/
WORKDIR /build
RUN go build

FROM alpine:latest
RUN adduser -S -D -H -h /app appuser
USER appuser
COPY --from=builder /build/hi-go /app/
WORKDIR /app
EXPOSE 3001
CMD ["./hi-go"]