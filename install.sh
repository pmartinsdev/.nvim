# Installing Plug from vim.plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Check and Install NodeJS if it not exists into machine
if [ ! -x "$(command -v node)" ]; then
    curl --fail -LSs https://install-node.now.sh/latest | sh
    export PATH="/usr/local/bin/:$PATH"
fi

nvim -c 'PlugInstall |qa!'

# Installing all extensions from Coc
nvim -c 'CocInstall -sync coc-tsserver coc-prettier coc-json coc-html coc-go coc-pyright |q'

echo "Finished to setup plugin, happy hacking !!"
