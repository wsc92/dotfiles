import os
from libqtile import bar, widget, qtile
from qtile_extras import widget
from qtile_extras.widget.decorations import RectDecoration
from qtile_extras.widget.decorations import PowerLineDecoration
from libqtile.config import Click

from defaults import browser
from colorschemes import cogent, cogentN
from libqtile.command import lazy

home = os.path.expanduser("~")

decor_left = {
        "decorations": [
            PowerLineDecoration(
                path="arrow_left"
                #path="rounded_left"
                #path="forward_slash"
                #path="back_slash"
            )
        ],
    }


decor_right = {
        "decorations": [
            PowerLineDecoration(
                path="arrow_right"
                #path="rounded_right"
                #path="forward_slash"
                #path="back_slash"
            )
        ],
    }
decor_left2 = {
        "decorations": [
            PowerLineDecoration(
                #path="arrow_left"
                path="rounded_left"
                #path="forward_slash"
                #path="back_slash"
            )
        ],
    }


decor_right2 = {
        "decorations": [
            PowerLineDecoration(
                #path="arrow_right"
                path="rounded_right"
                #path="forward_slash"
                #path="back_slash"
            )
        ],
    }


def init_widgets_list():
    widgets_list = [
            widget.Spacer(
                **decor_right2,
                length=10,
                background=cogentN['bg'],
            ),
            widget.TextBox(
                **decor_left2,
                background=cogentN['bga'],
                text='APPS',
                font="Mononoki Nerd Font",
                fontsize=20,
                foreground=cogentN['yellow'],
                padding=10,
                mouse_callbacks={"Button1": lazy.spawn(home + "/.config/qtile/scripts/apps.sh")},
                center_aligned=True,
            ),
            widget.Spacer(
                **decor_right2,
                length=25,
                background=cogentN['bg'],
            ),
            widget.GroupBox(
                **decor_left2,
                fontsize=15,
                background=cogentN['bga'],
                highlight_method='block',
                highlight=cogentN['active'],
                block_border=cogentN['active'],
                block_highlight_text_color=cogentN['inactive'],
                foreground=cogentN['active'],
                rounded=True,
                this_current_screen_border=cogentN['active'],
                active=cogentN['active'],
                inactive=cogentN['bg'],
                padding=10,
                center_aligned=True,
            ),
            widget.Spacer(
                **decor_left2,
                length=5,
                background=cogentN['bg'],
            ),
            widget.Visualiser(
                bars = 18,
                framerate = 30,
                hide = False,
                width = 120,
                bar_colour = cogentN['fg'],
            ),
            widget.Spacer(
                **decor_right2,
                length=10,
                background=cogentN['bg'],
            ),
            widget.TextBox(
                background=cogentN['bga'],
                foreground=cogentN['red'],
                text="󰽉",
                fontsize=20,
                padding=5,
                mouse_callbacks={"Button1": lazy.spawn('draw.io')},
            ),
            widget.TextBox(
                background=cogentN['bga'],
                foreground=cogentN['orange'],
                text=" ",
                fontsize=20,
                padding=7,
                mouse_callbacks={"Button1": lazy.spawn('ghidra')},
            ),
            widget.TextBox(
                background=cogentN['bga'],
                foreground=cogentN['yellow'],
                text=" ",
                fontsize=18,
                padding=3,
                mouse_callbacks={"Button1": lazy.spawn("wireshark")},
            ),
            widget.TextBox(
                background=cogentN['bga'],
                foreground=cogentN['yellow'],
                text=" ",
                fontsize=20,
                padding=3,
                mouse_callbacks={"Button1": lazy.spawn("ida64")},
            ),
            widget.TextBox(
                background=cogentN['bga'],
                foreground=cogentN['green'],
                text= "󰚫",
                fontsize=24,
                padding=3,
                mouse_callbacks={"Button1": lazy.spawn("zenmap")},
            ),          
            widget.TextBox(
                background=cogentN['bga'],
                foreground=cogentN['blue'],
                text=" ",
                fontsize=20,
                padding=6,
                mouse_callbacks={"Button1": lazy.spawn('discord')},
            ),
            widget.TextBox(
                **decor_left2,
                background=cogentN['bga'],
                foreground=cogentN['magenta'],
                text="󰸉",
                fontsize=20,
                padding=3,
                mouse_callbacks={"Button1": lazy.spawn('nitrogen')},
            ),
            widget.Spacer(
                length=5,
                background=cogentN['bg'],
            ),

            widget.WindowName(
                background=cogentN['bg'],
                padding=10,
                font="Mononoki Nerd Font Bold",
                fontsize=18,
                foreground=cogentN['fg'],
                max_chars=50,
            ),

            widget.Spacer(
                **decor_right2,
                length=5,
                background=cogentN['bg'],
            ),
            widget.OpenWeather(
                **decor_left2,
                api_key="", # enter API Key
                cityid="", # enter city
                metric= False,
                format = '{location_city}: {main_temp} °{units_temperature} {icon}',
                font="Mononoki Nerd Font",
                fontsize=20,
                foreground=cogentN['yellow'],
                background=cogentN['bga'],
                mouse_callbacks={"Button1": lazy.spawn('firefox --new-window https://weather.com')},
            ),
            widget.Spacer(
                length=5,
                background=cogentN['bg'],
            ),
            widget.Systray(
                background=cogentN['bg'],
            ),
            widget.Sep(
                **decor_right,
                linewidth=5,
                background=cogentN['bg'],
                foreground=cogentN['bga'],
                size_percent=75,
            ),
            widget.Clock(
                **decor_right,
                format="%m/%d/%Y",
                background=cogentN['bg'],
                foreground=cogentN['blue'],
                fontsize=14,
                font="Mononoki Nerd Font",
                padding=1,
                mouse_callbacks={"Button1": lazy.spawn("morgen")}
            ),
            widget.Clock(
                **decor_right,
                format="%I:%M %p",
                background=cogentN['bg'],
                foreground=cogentN['white'],
                font="Mononoki Nerd Font",
                fontsize=18,
                padding=1,
            ),

            widget.TextBox(
                **decor_right,
                backround=cogentN['bg'],
                foreground=cogentN['red'],
                padding=2,
                text="⏻",
                fontsize=20,
                mouse_callbacks={"Button1": lazy.spawn(home + "/.config/qtile/scripts/powermenu.sh")},
            ),
    ]
    return widgets_list

widgets_list = init_widgets_list()

def init_widgets_screen1():
    widgets_screen1 = init_widgets_list()
    return widgets_screen1


def init_widgets_screen2():
    widgets_screen2 = init_widgets_list()
    return widgets_screen2


main_bar = bar.Bar(widgets=init_widgets_screen1(), size=45,
                   opacity=0.80, margin=2, background=cogentN['bg'])

main_bar2 = bar.Bar(widgets=init_widgets_screen2(), size=45,
                   opacity=0.80, margin=2, background=cogentN['bg'])

