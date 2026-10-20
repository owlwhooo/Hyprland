hl.on("hyprland.start", function()
    hl.exec_cmd("waybar & hyprpaper") -- Execute waybar, hyprpaper, firefox
end)

hl.on("hyprland.start", function()
    -- Environment for xdg-desktop-portal-hyprland
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
end)