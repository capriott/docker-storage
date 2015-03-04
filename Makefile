all:
	# Update Ubuntu base image
	docker pull $(shell grep ^FROM Dockerfile | cut -d' ' -f2)
	# Build new version
	docker build -t devurandom/storage:latest .
	# Remove container if it is not currently running
	( docker ps | awk '$$NF=="storage"{found=1} END{if(!found){exit 1}}' && echo "Restart storage" ) || ( docker ps -a | awk '$$NF=="storage"{found=1} END{if(!found){exit 1}}' && docker rm storage ) || true
