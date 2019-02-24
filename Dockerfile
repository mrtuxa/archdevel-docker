FROM archlinux/base

RUN pacman -Syu --needed --noconfirm base-devel git zsh sudo openssh pacman-contrib
RUN useradd -ms /bin/zsh arch \
	&& echo "arch ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER arch
WORKDIR /home/arch