FROM alpine:3.14
RUN apk add --no-cache bash
RUN apk add --no-cache geth
ENTRYPOINT ["geth"]
CMD ["--rinkeby", "--syncmode", "light", "--rpc"]
