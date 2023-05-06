MyConfigs_PATH="${PWD}"

cd $HOME

echo "PWD: ${PWD}"
echo "---deploy vim begin---"

if [ ! -f "$HOME/.vimrc" ]; then
  ln -s "$MyConfigs_PATH/vim/vim_init.sh" .vimrc
fi

echo "---deploy vim end---"

cd $MyConfigs_PATH
echo "PWD: ${PWD}"
