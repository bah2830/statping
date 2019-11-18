FROM golang:1.12

ENV IS_DOCKER=true
ENV STATPING_DIR=/app
ENV PORT=8080

COPY . /src
WORKDIR /src
RUN go build -o statping ./cmd

VOLUME [ "/app" ]
EXPOSE 8080

ENTRYPOINT [ "./statping" ]
