-- IME Switch
local function Chinese()
    hs.keycodes.currentSourceID("im.rime.inputmethod.Squirrel.Hans")
end

local function English()
    hs.keycodes.currentSourceID("com.apple.keylayout.ABC")
end

-- app to expected ime config
local app2Ime = {
    {'com.apple.finder', 'English'},
    {'com.kapeli.dashdoc', 'English'},
    {'com.google.Chrome', 'Chinese'},
    {'com.apple.Terminal', 'English'},
    {'com.googlecode.iterm2', 'English'},
    {'notion.id', 'English'},
    {'com.apple.Preview', 'Chinese'},
    {'com.apple.Safari', 'Chinese'},
    {'com.sublimetext.4', 'English'},
    {'com.apple.systempreferences', 'English'},
    {'com.microsoft.VSCode', 'English'},
    {'com.tencent.xinWeChat', 'Chinese'},
    {'com.tencent.qq', 'Chinese'},
    {'com.apple.dt.Xcode', 'English'},
    {'org.hammerspoon.Hammerspoon', 'English'},
    {'com.DanPristupov.Fork', 'English'},
    {'org.tabby', 'English'},
}

function updateFocusAppInputMethod()
    current_win = hs.window.frontmostWindow()
    if current_win then
        capp = current_win:application()
    else
        return
    end
    for index, app in pairs(app2Ime) do
        local appID = app[1]
        local expectedIme = app[2]

        if capp:bundleID() == appID then
            if expectedIme == 'Chinese' then
                Chinese()
            else
                English()
            end
            break
        end
    end
end

-- Handle cursor focus and application's screen manage.
function applicationIMEWatcher(appName, eventType, appObject)
    if (eventType == hs.application.watcher.activated) then
        updateFocusAppInputMethod()
    end
end

hs.hotkey.bind({'ctrl', 'cmd'}, ".", function()
    -- app = hs.window.frontmostWindow():application()
    local app = hs.window.focusedWindow()
    -- hs.alert.show(app)
    if app then
        app = app:application()
        if app then
            local appBundle = app:bundleID()
            hs.alert.show("App bundleID:        "
            ..appBundle
            .."\n"
            .."IM source id:  "
            ..hs.keycodes.currentSourceID())
            hs.pasteboard.setContents(appBundle)
        end
    end
end)

hs.application.enableSpotlightForNameSearches(true)
appWatcher = hs.application.watcher.new(applicationIMEWatcher)
appWatcher:start()
