FROM ubuntu:18.04
RUN apt-get update \
	&& apt-get -y upgrade \
	&& apt-get install -y build-essential sudo net-tools iproute2 bash zsh curl git htop vim tree \
	psmisc lsof inetutils-ping fping dnsutils socat rinetd \
	&& sudo chsh -s /usr/bin/zsh \
	&& sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \
	&& sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ys"/g' /root/.zshrc \
	&& rm -rf /var/lib/apt/lists/*
WORKDIR	/root
CMD ["/usr/bin/zsh"]
