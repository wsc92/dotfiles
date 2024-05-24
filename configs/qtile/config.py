#########################################################################
#
#       ██████╗ ██████╗  ██████╗  ███████╗███╗   ██╗████████╗
#       ██╔════╝██╔═══██╗██╔════╝ ██╔════╝████╗  ██║╚══██╔══╝
#       ██║     ██║   ██║██║  ███╗█████╗  ██╔██╗ ██║   ██║
#       ██║     ██║   ██║██║   ██║██╔══╝  ██║╚██╗██║   ██║
#       ╚██████╗╚██████╔╝╚██████╔╝███████╗██║ ╚████║   ██║
#        ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝╚═╝  ╚═══╝   ╚═╝
#        @spencercraig92
#        @wsc92
#########################################################################

import os
import subprocess
from libqtile import hook
from libqtile.lazy import lazy

# My home made imports
from screens import screens
from groups import groups
from scratchpads import scratchpad
from keys import keys, mouse
from layouts import layouts, floating_layout

# scratchpad
groups.append(scratchpad)

@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser("~/.config/qtile/scripts/autostart.sh")
    subprocess.Popen([home])

#########################################################################
# GROUPS
#########################################################################
@lazy.function
def window_to_prev_group(qtile):
    if qtile.currentWindow is not None:
        i = qtile.groups.index(qtile.currentGroup)
        qtile.currentWindow.togroup(qtile.groups[i - 1].name)


@lazy.function
def window_to_next_group(qtile):
    if qtile.currentWindow is not None:
        i = qtile.groups.index(qtile.currentGroup)
        qtile.currentWindow.togroup(qtile.groups[i + 1].name)


@hook.subscribe.client_new
def set_floating(window):
    if (window.window.get_wm_transient_for()
            or window.window.get_wm_type() in floating_types):
        window.floating = True


dgroups_key_binder = None
dgroups_app_rules = []

main = None

floating_types = ["notification", "toolbar", "splash", "dialog"]

follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
auto_fullscreen = True

focus_on_window_activation = "focus" # or smart

wmname = "LG3D"

