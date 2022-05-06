# Build the container.
build:
	-docker rm -f ollvaror-caves
	-docker rmi -f ollvaror-caves
	docker build -t ollvaror-caves .

# Run the container detached.
run:
	docker run -it -p 8860:8860 -p 8082:8082 ollvaror-caves /bin/sh

# Stop the container.
stop:
	docker stop ollvaror-caves
	docker rm ollvaror-caves

clean:
	sudo docker rmi -f $(sudo docker images -q)
