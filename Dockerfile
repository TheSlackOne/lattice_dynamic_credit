FROM alpine:3.14
RUN apk add --no-cache bash
RUN apk add --no-cache geth
ENTRYPOINT ["geth"]
CMD ["--rinkeby", \
    "--syncmode", "light", \
    "--http", "--http.addr", "0.0.0.0", "--http.port", "8545", "--http.api", "eth,net,web3", \
    "--ws", "--ws.addr", "0.0.0.0", "--ws.port", "8546", "--ws.api", "eth,net,web3"]
