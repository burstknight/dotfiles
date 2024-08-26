#/bin/bash

sudo apt-get update
sudo apt-get install -y \
	git \
	build-essential \
	libssl-dev \
	zlib1g-dev \
	libbz2-dev \
	libreadline-dev \
	libsqlite3-dev \
	curl \
	libncursesw5-dev \
	xz-utils \
	tk-dev \
	libxml2-dev \
	libxmlsec1-dev \
	libffi-dev \
	liblzma-dev \
	zsh

which pyenv > /dev/null
if [[ $? -ne 0 ]]; then
	git clone https://github.com/pyenv/pyenv.git ~/.pyenv
fi

which poetry > /dev/null
if [[ $? -ne 0 ]]; then
	curl -sSL https://install.python-poetry.org | python3 -
fi

sudo usermod -s /bin/zsh $USER

mkdir -p ~/.zsh
cd ~/.zsh
curl -o git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o _git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
cd -

cp dotfiles/zshrc ~/.zshrc
