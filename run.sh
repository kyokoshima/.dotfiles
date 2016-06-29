DIR=$(cd $(dirname $0) && pwd)
BACKUP_DIR=~/.backup
if [ -e ~/.vim ]; then
	mkdir -p ${BACKUP_DIR}
	mv ~/.vim ${BACKUP_DIR}/.vim
	ln -s ${DIR}/.vim ~/.vim
fi
if [ -e ~/.vimrc ]; then
	mkdir -p ${BACKUP_DIR}
	mv ~/.vimrc ${BACKUP_DIR}/.vimrc
	ln -s ${DIR}/.vimrc ~/.vimrc
fi
if [ -e ~/.zsh ]; then
	mkdir -p ${BACKUP_DIR}
	mv ~/.zsh ${BACKUP_DIR}/.zsh
	ln -s ${DIR}/.zsh ~/.zsh
fi
if [ -e ~/.zshrc ]; then
	mkdir -p ${BACKUP_DIR}
	ln -s ${DIR}/.zshrc ${BACKUP_DIR}/.zshrc
fi

