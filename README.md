<-- [//: <> (Dockerfile version: 0.4) -->  
<-- [//]: <> (git repo: https://github.com/TheRojam/archdevel-docker)  -->  
<-- [//]: <> (description: readme for dockerfile)  -->  

# Archdevel Docker

This Repo is for building a Dockercontainer building ArchLinux Packages without having ArchLinux installed.

Its based on [archlinux/base](https://hub.docker.com/r/archlinux/base) and installing some important package for building archlinux packages.

If you found issues or have improvements you can open an issue at the github repository.

You'll find the Dockerfile at (https://github.com/TheRojam/archdevel-docker) and the Dockerimage also [hub.docker.com](https://hub.docker.com/r/therojam/archdevel)

You can just run this container with this cmd:  
 
```
docker run -h archdevel.local -it therojam/archdevel:latest /bin/zsh
```

If you need more Information you'll find at [archdeveldocker.therojam.tech](https://archdeveldocker.therojam.tech)
