-- Auto Mute or Cancel Mute
local workWifi_1 = 'workWifi_1'
local homeWifi_1 = 'homeWifi_1'
local homeWifi_2 = 'homeWifi_2'
function ssidChangedCallback()
    ssid = hs.wifi.currentNetwork()
    if (ssid == workWifi_1) then
        hs.audiodevice.defaultOutputDevice():setOutputMuted(true)
    elseif (ssid == homeWifi_1 or ssid == homeWifi_2) then
        hs.audiodevice.defaultOutputDevice():setOutputMuted(false)
    end
end

wifiWatcher = hs.wifi.watcher.new(ssidChangedCallback)
wifiWatcher:start()
