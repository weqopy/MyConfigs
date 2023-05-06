MyConfigs_PATH="${PWD}"

echo "---deploy vim begin---"

ln -s "$MyConfigs_PATH" $HOME/.config/

echo "---deploy vim end---"

cd $MyConfigs_PATH
echo "PWD: ${PWD}"
