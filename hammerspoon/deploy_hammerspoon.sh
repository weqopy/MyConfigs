MyConfigs_PATH="${PWD}"
HAMMERSPOON_PATH="$HOME/.hammerspoon"

if [ ! -d $HAMMERSPOON_PATH ]; then
  mkdir $HAMMERSPOON_PATH
fi

cd $HAMMERSPOON_PATH

echo "PWD: ${PWD}"
echo "---deploy hammerspoon begin---"

if [ ! -f "$HAMMERSPOON_PATH/init.lua" ]; then
  ln -s "$MyConfigs_PATH/hammerspoon/init.lua" init.lua
fi

if [ ! -f "$HAMMERSPOON_PATH/app-manage.lua" ]; then
  ln -s "$MyConfigs_PATH/hammerspoon/app-manage.lua" app-manage.lua
fi

if [ ! -f "$HAMMERSPOON_PATH/ime-switch.lua" ]; then
  ln -s "$MyConfigs_PATH/hammerspoon/ime-switch.lua" ime-switch.lua
fi

if [ ! -f "$HAMMERSPOON_PATH/wifi-control.lua" ]; then
  ln -s "$MyConfigs_PATH/hammerspoon/wifi-control.lua" wifi-control.lua
fi

if [ ! -f "$HAMMERSPOON_PATH/window-size.lua" ]; then
  ln -s "$MyConfigs_PATH/hammerspoon/window-size.lua" window-size.lua
fi

echo "---deploy hammerspoon end---"

cd $MyConfigs_PATH
echo "PWD: ${PWD}"
