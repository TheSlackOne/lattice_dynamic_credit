# Lattice Dynamic Credit
This project calculates credit dynamically based on the client's activity. For this we listen for specific blockchain events to update the client's credit dynamically.

## Blockchain nodes
To listen for blockchain events we launch nodes in _lightmode_.

Current implementation is a Docker container running Alpine Linux and Geth.

## Prerequisites
- Docker
- 200+ GB disk space (depends on the listener)

## Build and run
```make build && make run```

## ToDo
- Bitcoin node.
- Bitcoin Cash node.
- Litecoin node.
- Ethereum listener.
- Bitcoin listener.
- Bitcoin Cash listener.
- Litecoin listener.
- Push to Docker Hub so we do not need to build.
