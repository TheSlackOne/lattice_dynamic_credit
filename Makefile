# Common automated tasks.

all:

.PHONY: build
build:
	docker build -t lattice_geth:0.0.1 .

.PHONY: run
run:
	docker run -it --name lattice_geth \
		-p 8545:8545 \
		-p 30303:30303 \
		-v /ethereum-node-data:/root/.ethereum \
		lattice_geth:0.0.1

.PHONY: start
start:
	docker start lattice_geth

.PHONY: attach
attach:
	docker exec -it lattice_geth bash

.PHONY: remove-image
remove-image:
	docker rmi lattice_geth:0.0.1

.PHONY: clean
clean:
	docker stop lattice_geth > /dev/null 2>&1
	docker rm -f lattice_geth > /dev/null 2>&1

.PHONY: reset
reset: clean
	rm -rf /ethereum-node-data
