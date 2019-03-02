# version: 		0.4
# git: 	   		https://github.com/therojam/archdevel-docker
# description:	dockerfile for archlinux devel - aur package testing
# docu:			archdeveldocker.github.io

FROM archlinux/base

ENV HOSTNAME="archdevel"

RUN pacman -Syu --needed --noconfirm base-devel git zsh vim sudo openssh pacman-contrib
RUN useradd -ms /bin/zsh arch \
	&& echo "arch ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER arch
WORKDIR /home/arch

# RUN git clone https://aur.archlinux.org/yay.git

# RUN  cd yay && makepkg -si