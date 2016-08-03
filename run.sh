DIR=$(cd $(dirname $0) && pwd)
BACKUP_DIR=~/.backup
if [ -e ~/.vim ]; then
	mkdir -p ${BACKUP_DIR}
	mv ~/.vim ${BACKUP_DIR}/.vim
fi
ln -s ${DIR}/.vim ~/.vim
if [ -e ~/.vimrc ]; then
	mkdir -p ${BACKUP_DIR}
	mv ~/.vimrc ${BACKUP_DIR}/.vimrc
fi
ln -s ${DIR}/.vimrc ~/.vimrc
if [ -e ~/.zsh ]; then
	mkdir -p ${BACKUP_DIR}
	mv ~/.zsh ${BACKUP_DIR}/.zsh
fi
ln -s ${DIR}/.zsh ~/.zsh
if [ -e ~/.zshrc ]; then
	mkdir -p ${BACKUP_DIR}
fi
ln -s ${DIR}/.zshrc ${BACKUP_DIR}/.zshrc

