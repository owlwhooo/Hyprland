-- See https://wiki.hyprland.org/Configuring/Keywords/
hl.var("mainMod", "SUPER") -- Sets "Windows" key as main modifier

-- Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
hl.bind({ mods = "$mainMod", key = "RETURN", dispatcher = "exec", params = "$terminal" })
hl.bind({ mods = "$mainMod", key = "Q", dispatcher = "killactive" })
hl.bind({ mods = "$mainMod", key = "M", dispatcher = "exit" })
hl.bind({ mods = "$mainMod SHIFT", key = "E", dispatcher = "exec", params = "$fileManager" })
hl.bind({ mods = "$mainMod", key = "V", dispatcher = "togglefloating" })
hl.bind({ mods = "$mainMod", key = "E", dispatcher = "exec", params = "$menu" })
hl.bind({ mods = "$mainMod", key = "P", dispatcher = "pseudo" }) -- dwindle
-- hl.bind({ mods = "$mainMod", key = "J", dispatcher = "togglesplit" }) -- dwindle
hl.bind({ mods = "$mainMod", key = "F", dispatcher = "fullscreenstate", params = "2 -1" })

-- Move focus with mainMod + arrow keys
hl.bind({ mods = "$mainMod", key = "left", dispatcher = "movefocus", params = "l" })
hl.bind({ mods = "$mainMod", key = "right", dispatcher = "movefocus", params = "r" })
hl.bind({ mods = "$mainMod", key = "up", dispatcher = "movefocus", params = "u" })
hl.bind({ mods = "$mainMod", key = "down", dispatcher = "movefocus", params = "d" })

-- Switch workspaces with mainMod + [0-9]
hl.bind({ mods = "$mainMod", key = "1", dispatcher = "workspace", params = "1" })
hl.bind({ mods = "$mainMod", key = "2", dispatcher = "workspace", params = "2" })
hl.bind({ mods = "$mainMod", key = "3", dispatcher = "workspace", params = "3" })
hl.bind({ mods = "$mainMod", key = "4", dispatcher = "workspace", params = "4" })
hl.bind({ mods = "$mainMod", key = "5", dispatcher = "workspace", params = "5" })
hl.bind({ mods = "$mainMod", key = "6", dispatcher = "workspace", params = "6" })
hl.bind({ mods = "$mainMod", key = "7", dispatcher = "workspace", params = "7" })
hl.bind({ mods = "$mainMod", key = "8", dispatcher = "workspace", params = "8" })
hl.bind({ mods = "$mainMod", key = "9", dispatcher = "workspace", params = "9" })
hl.bind({ mods = "$mainMod", key = "0", dispatcher = "workspace", params = "10" })

-- Move active window to a workspace with mainMod + SHIFT + [0-9]
hl.bind({ mods = "$mainMod SHIFT", key = "1", dispatcher = "movetoworkspace", params = "1" })
hl.bind({ mods = "$mainMod SHIFT", key = "2", dispatcher = "movetoworkspace", params = "2" })
hl.bind({ mods = "$mainMod SHIFT", key = "3", dispatcher = "movetoworkspace", params = "3" })
hl.bind({ mods = "$mainMod SHIFT", key = "4", dispatcher = "movetoworkspace", params = "4" })
hl.bind({ mods = "$mainMod SHIFT", key = "5", dispatcher = "movetoworkspace", params = "5" })
hl.bind({ mods = "$mainMod SHIFT", key = "6", dispatcher = "movetoworkspace", params = "6" })
hl.bind({ mods = "$mainMod SHIFT", key = "7", dispatcher = "movetoworkspace", params = "7" })
hl.bind({ mods = "$mainMod SHIFT", key = "8", dispatcher = "movetoworkspace", params = "8" })
hl.bind({ mods = "$mainMod SHIFT", key = "9", dispatcher = "movetoworkspace", params = "9" })
hl.bind({ mods = "$mainMod SHIFT", key = "0", dispatcher = "movetoworkspace", params = "10" })

-- Example special workspace (scratchpad)
-- hl.bind({ mods = "$mainMod", key = "S", dispatcher = "togglespecialworkspace", params = "magic" })
-- hl.bind({ mods = "$mainMod SHIFT", key = "S", dispatcher = "movetoworkspace", params = "special:magic" })

-- Scroll through existing workspaces with mainMod + scroll
hl.bind({ mods = "$mainMod", key = "mouse_down", dispatcher = "workspace", params = "e+1" })
hl.bind({ mods = "$mainMod", key = "mouse_up", dispatcher = "workspace", params = "e-1" })
hl.bind({ mods = "$mainMod ALT", key = "up", dispatcher = "workspace", params = "e+1" })
hl.bind({ mods = "$mainMod ALT", key = "down", dispatcher = "workspace", params = "e-1" })

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bindm({ mods = "$mainMod", key = "mouse:272", dispatcher = "movewindow" })
hl.bindm({ mods = "$mainMod", key = "mouse:273", dispatcher = "resizewindow" })

-- Laptop multimedia keys for volume and LCD brightness
hl.bindel({ key = "XF86AudioRaiseVolume", dispatcher = "exec", params = "wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+" })
hl.bindel({ key = "XF86AudioLowerVolume", dispatcher = "exec", params = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-" })
hl.bindel({ key = "XF86AudioMute", dispatcher = "exec", params = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle" })
hl.bindel({ key = "XF86AudioMicMute", dispatcher = "exec", params = "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle" })
hl.bindel({ key = "XF86MonBrightnessUp", dispatcher = "exec", params = "brightnessctl -e4 -n2 set 5%+" })
hl.bindel({ key = "XF86MonBrightnessDown", dispatcher = "exec", params = "brightnessctl -e4 -n2 set 5%-" })

-- Requires playerctl
hl.bindl({ key = "XF86AudioNext", dispatcher = "exec", params = "playerctl next" })
hl.bindl({ key = "XF86AudioPause", dispatcher = "exec", params = "playerctl play-pause" })
hl.bindl({ key = "XF86AudioPlay", dispatcher = "exec", params = "playerctl play-pause" })
hl.bindl({ key = "XF86AudioPrev", dispatcher = "exec", params = "playerctl previous" })

-- Hyprlock
hl.bind({ mods = "$mainMod", key = "L", dispatcher = "exec", params = "hyprlock" })

-- Hyprshot
hl.bind({ mods = "$mainMod", key = "S", dispatcher = "exec", params = 'grim -g "$(slurp)" - | wl-copy && wl-paste > ~/Pictures/Screenshots/Screenshot-$(date +%F_%T).png | dunstify "Screenshot of the region taken" -t 1000' }) -- screenshot of a region
hl.bind({ mods = "$mainMod SHIFT", key = "s", dispatcher = "exec", params = 'grim - | wl-copy && wl-paste > ~/Pictures/Screenshots/Screenshot-$(date +%F_%T).png | dunstify "Screenshot of whole screen taken" -t 1000' }) -- screenshot of the whole screen

-- hl.bind({ mods = "$mainMod", key = "S", dispatcher = "exec", params = "hyprshot -m region" })
-- hl.bind({ mods = "$mainMod SHIFT", key = "S", dispatcher = "exec", params = "hyprshot -m active" })
