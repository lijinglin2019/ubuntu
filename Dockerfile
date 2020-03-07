FROM ubuntu:18.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
	&& apt-get dist-upgrade -y \
	&& apt-get autoremove -y --purge \
	&& apt-get install -y ansible autoconf automake bash build-essential cmake curl dnsutils fping g++ git glances htop httpie iftop inetutils-ping iotop iproute2 jq lsof make net-tools psmisc socat sudo tcpdump telnet tree vim wget zsh \
	&& sudo chsh -s /usr/bin/zsh \
	&& sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \
	&& sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ys"/g' /root/.zshrc \
	&& rm -rf /var/lib/apt/lists/* \
	&& ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
	&& sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
WORKDIR	/root
CMD ["/usr/bin/zsh"]
