if ! type zsh >/dev/null 2>&1; then
	echo 'no zsh'
	OS_NAME=`gawk -F= '/^NAME/{print $2}' /etc/os-release`
	if [ `echo ${OS_NAME} | grep 'Ubuntu'` ]; then
		echo ${OS_NAME}
		sudo apt-get install -y zsh
	fi
fi

if ! $(type setopt) >/dev/null 2>&1; then
	echo 'no setopt'
	sudo apt-get install -y util-linux
fi

zsh

if [ "$(ls ${ZDOTDIR:-$HOME}/.zprezto)" == ''  ]; then
	git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

chsh -s /bin/zsh
