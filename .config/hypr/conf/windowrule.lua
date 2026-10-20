-- Ignore maximize requests from apps. You'll probably like this.
-- hl.windowrule("suppressevent maximize, class:.*")

-- Fix some dragging issues with XWayland
-- hl.windowrule("nofocus, class:^$, title:^$, xwayland:1, floating:1, fullscreen:0, pinned:0")

hl.windowrule({
    name = "fullscreen_wow",
    -- match_class = "steam_app_default",
    match_title = "World of Warcraft",
    fullscreen = "on"
})

hl.windowrule({
    name = "tile_battlenet",
    match_title = "Battle.net",
    tile = "on"
})

hl.windowrule({
    name = "proton_garbage",
    match_class = "steam_proton",
    match_title = "^$",
    move = "-5000 -5000"
})

-- hl.windowrule({
--     name = "bottles",
--     match_title = "^(Bottles)$"
-- })
-- hl.windowrule("fullscreen, class:steam_proton, title:World of Warcraft")
-- hl.windowrule("float, unset, class:^(steam_proton)$, title:^(Battle\\.net)$")
-- hl.windowrule("tile, force, class:^(steam_proton)$, title:^(Battle\\.net)$")
