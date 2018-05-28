help:
	@echo "container - builds parity container"
	@echo "run - runs node"
	@echo "donw - bring node down"

container:
	docker build . -t neufund/parity-foundation-fork

run: container
	docker-compose -p eth_parity_foundation_fork -f docker-compose.yml up --build -d

down:
	docker-compose -p eth_parity_foundation_fork -f docker-compose.yml down