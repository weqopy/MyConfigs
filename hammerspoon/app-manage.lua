function open_app(pid)
    return function()
        local win = hs.window.frontmostWindow()
        local wapp = hs.application.find(pid)
        if not wapp and pid ~= "com.apple.finder" then
        elseif not win then
            hs.application.launchOrFocusByBundleID(pid)
        elseif (win:application():bundleID() == pid) then
            win:application():hide()
        else
            hs.application.launchOrFocusByBundleID(pid)
        end
    end
end

hs.hotkey.bind({"alt"}, "1", open_app("com.apple.finder"))
hs.hotkey.bind({"alt"}, "F", open_app("com.apple.Safari"))
hs.hotkey.bind({"alt"}, "C", open_app("com.google.Chrome"))
hs.hotkey.bind({"alt"}, "W", open_app("com.tencent.xinWeChat"))
hs.hotkey.bind({"alt"}, "S", open_app("com.microsoft.VSCode"))
hs.hotkey.bind({"alt"}, "D", open_app("com.TickTick.task.mac"))

