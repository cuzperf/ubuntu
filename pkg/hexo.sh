sudo snap install -y node --classic

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'

# set it in ~/.zshrc
export PATH=$PATH:"$HOME/.npm-global/bin"

npm install -g hexo-cli
