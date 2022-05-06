# Build the container.
build:
	-docker rm ollvaror-caves
	-docker rmi ollvaror-caves
	docker build -t ollvaror-caves .

# Run the container detached.
run:
	docker run -it ollvaror-caves /bin/sh

# Stop the container.
stop:
	docker stop ollvaror-caves
	docker rm ollvaror-caves

clean:
	sudo docker rmi -f $(sudo docker images -q)
