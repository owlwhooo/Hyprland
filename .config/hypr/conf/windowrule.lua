-- Ignore maximize requests from apps. You'll probably like this.
hl.windowrule("suppressevent maximize, class:.*")

-- Fix some dragging issues with XWayland
hl.windowrule("nofocus, class:^$, title:^$, xwayland:1, floating:1, fullscreen:0, pinned:0")
