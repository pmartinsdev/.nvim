# Installing Plug from vim.plug
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim -q

# Check and Install NodeJS if it not exists into machine
if [ ! -x "$(command -v node)" ]; then
    curl --fail -LSs https://install-node.now.sh/latest | sh
    export PATH="/usr/local/bin/:$PATH"
fi

nvim --headless -c ':PackerCompile' -c ':PackerInstall' -c 'qall'
nvim --headless -c ':LspInstall tsserver cssls html pyright'  -c 'qall'
nvim --headless -c ':MasonInstall black prettier eslint_d'  -c 'qall'

clear

echo "Finished to setup plugin, happy hacking !!"
