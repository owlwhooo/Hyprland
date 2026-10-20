-- Data-only config for hyprpaper.
-- hyprpaper cannot read Lua; a generator script should render this table to hyprpaper.conf.

return {
    -- preload = { "~/.config/hypr/backgrounds/animegirl1.png" },

    wallpaper = {
        -- empty monitor name = all monitors
        { monitor = "", path = "~/.config/hypr/backgrounds/animegirl1.png" }
    }
}
