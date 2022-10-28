# Installing Plug from vim.plug
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim -q

# Check and Install NodeJS if it not exists into machine
if [ ! -x "$(command -v node)" ]; then
    curl --fail -LSs https://install-node.now.sh/latest | sh
    export PATH="/usr/local/bin/:$PATH"
fi

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

# Installing all extensions from Coc
# nvim -c 'CocInstall -sync coc-tsserver coc-prettier coc-json coc-html coc-go coc-pyright |q'

echo "Finished to setup plugin, happy hacking !!"
