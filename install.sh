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
	liblzma-dev

which pyenv > /dev/null
if [[ $? -ne 0 ]]; then
	git clone https://github.com/pyenv/pyenv.git ~/.pyenv
fi

which poetry > /dev/null
if [[ $? -ne 0 ]]; then
	curl -sSL https://install.python-poetry.org | python3 -
fi
