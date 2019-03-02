# Documentation Archdevel Docker

## Basic information

This Repo is for building a Dockercontainer building ArchLinux Packages without having ArchLinux installed.

So even you developing something under macOS you can still build and test you ArchLinux Packages for the AUR ([ArchLinux User Repository](https://aur.archlinux.org)) 

You'll find the Dockerfile at (https://github.com/TheRojam/archdevel-docker) and the Dockerimage also [hub.docker.com](https://hub.docker.com/r/therojam/archdevel).

## Technical basics 
Its based on [archlinux/base](https://hub.docker.com/r/archlinux/base) and installing some important package for building archlinux packages.

At the building of this docker container it install the basics for build your own package and some improvements.

Following packages are being installed by building this image:

- base-devel 
- git 
- zsh * 
- vim *
- sudo 
- openssh * 
- pacman-contrib

* zsh, vim and openssh are optional, but recomented.

## default settings

The default user "arch" which has sudo rights without password.  Its shell is zsh, which will be configured at the first run of this container. Use can also use bash. 

The preset hostname is "archdevel". 

See [optional stuff](#optional-stuff) for changed the defaults.

## optional stuff

You can change the HOSTNAME at line 8.

If you want to use bash as default shell remove "zsh" at line 10 from the installed packages and change in line 11 /bin/zsh to /bin/bash

## run this container

You can just run this container with this cmd:  
 
```
docker run -h archdevel.local -it therojam/archdevel:latest /bin/zsh
```

If you need more Information you'll find at (archdeveldocker.github.io)