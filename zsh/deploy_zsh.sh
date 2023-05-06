MyConfigs_PATH="${PWD}"
ZSH_PATH="$HOME/.zsh"

if [ ! -d $ZSH_PATH ]; then
  mkdir $ZSH_PATH
fi

cd $ZSH_PATH

echo "PWD: ${PWD}"
echo "---deploy zsh begin---"

if [ ! -d "zsh-syntax-highlighting" ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git zsh-syntax-highlighting
fi

if [ ! -d "zsh-autosuggestions" ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions zsh-autosuggestions
fi

if [ ! -d "zsh-z" ]; then
  git clone https://github.com/agkozak/zsh-z.git zsh-z
fi

if [ ! -f "zsh_utils.sh" ]; then
  ln -s "$MyConfigs_PATH/zsh/zsh_utils.sh" zsh_utils.sh
fi

if [ ! -f "$HOME/.zshrc" ]; then
  ln -s "$MyConfigs_PATH/zsh/zsh_init.sh" $HOME/.zshrc
fi

echo "---deploy zsh end---"

cd $MyConfigs_PATH
echo "PWD: ${PWD}"
