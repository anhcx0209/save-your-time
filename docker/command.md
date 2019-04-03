```docker
docker build -t friendlyhello .  # Create image using this directory's Dockerfile
```
```docker
docker run -p 4000:80 friendlyhello  # Run "friendlyname" mapping port 4000 to 80
```
```docker
docker run -d -p 4000:80 friendlyhello         # Same thing, but in detached mode
```
```docker
docker container ls                                # List all running containers
```
```docker
docker container ls -a             # List all containers, even those not running
```
```docker
docker container stop <hash>           # Gracefully stop the specified container
```
```docker
docker container kill <hash>         # Force shutdown of the specified container
```
```docker
docker container rm <hash>        # Remove specified container from this machine
```
```docker
docker container rm $(docker container ls -a -q)         # Remove all containers
```
```docker
docker image ls -a                             # List all images on this machine
```
```docker
docker image rm <image id>            # Remove specified image from this machine
```
```docker
docker image rm $(docker image ls -a -q)   # Remove all images from this machine
```
```docker
docker login             # Log in this CLI session using your Docker credentials
```
```docker
docker tag <image> username/repository:tag  # Tag <image> for upload to registry
```
```docker
docker push username/repository:tag            # Upload tagged image to registry
```
```docker
docker run username/repository:tag                   # Run image from a registry
```