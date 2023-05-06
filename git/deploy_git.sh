MyConfigs_PATH="${PWD}"

cd $HOME

echo "PWD: ${PWD}"
echo "---deploy git begin---"

if [ ! -f "$HOME/.gitconfig" ]; then
  ln -s "$MyConfigs_PATH/git/gitconfig" .gitconfig
fi

if [ ! -f "$HOME/.gitignore" ]; then
  ln -s "$MyConfigs_PATH/git/gitignore" .gitignore
fi

echo "---deploy git end---"

cd $MyConfigs_PATH
echo "PWD: ${PWD}"
