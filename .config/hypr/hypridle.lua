-- Data-only config for hypridle.
-- hypridle cannot read Lua; a generator script should render this table to hypridle.conf.

return {
    general = {
        -- avoid starting multiple hyprlock instances.
        lock_cmd = "pidof hyprlock || hyprlock",
        -- lock_cmd = "playerctl --all-players pause && pidof hyprlock || hyprlock", -- pause all system audio and avoid starting multiple hyprlock instances.
        -- lock before suspend.
        before_sleep_cmd = "loginctl lock-session",
        -- to avoid having to press a key twice to turn on the display.
        after_sleep_cmd = "hyprctl dispatch dpms on"
    },

    listeners = {
        {
            timeout = 295, -- ~5min
            -- set monitor backlight to minimum, avoid 0 on OLED monitor.
            on_timeout = "brightnessctl -s set 10",
            -- monitor backlight restore.
            on_resume = "brightnessctl -r"
        },
        {
            timeout = 300, -- 5min
            -- lock screen when timeout has passed
            on_timeout = "loginctl lock-session"
        },
        {
            timeout = 300, -- 5min
            -- screen off when timeout has passed
            on_timeout = "hyprctl dispatch dpms off",
            -- screen on when activity is detected after timeout has fired.
            on_resume = "hyprctl dispatch dpms on && brightnessctl -r"
        }
    }
}
