CONTAINER_NAME=nextjs-container
IMAGE_NAME=nextjs-docker

build:
	docker build -t $(IMAGE_NAME) .
run:
	docker run --rm -it -p 3000:3000 -v $(PWD):/usr/src/app --name $(CONTAINER_NAME) $(IMAGE_NAME)
bash:
	docker exec -it $(CONTAINER_NAME) /bin/sh
stop:
	docker stop $(CONTAINER_NAME) || true