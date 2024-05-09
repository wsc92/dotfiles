import os
from libqtile import bar, widget, qtile
from qtile_extras import widget
from qtile_extras.widget.decorations import RectDecoration
from qtile_extras.widget.decorations import PowerLineDecoration
from libqtile.config import Click

from defaults import browser
from colorschemes import cogent
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
                background=cogent['bg'],
            ),
            widget.TextBox(
                **decor_left2,
                background=cogent['inactive'],
                text='APPS',
                font="Mononoki Nerd Font",
                fontsize=20,
                foreground=cogent['green'],
                padding=10,
                mouse_callbacks={"Button1": lazy.spawn(home + "/.config/qtile/scripts/apps.sh")},
                center_aligned=True,
            ),
            widget.Spacer(
                **decor_right2,
                length=25,
                background=cogent['bg'],
            ),
            widget.GroupBox(
                **decor_left2,
                fontsize=15,
                background=cogent['inactive'],
                highlight_method='block',
                highlight=cogent['active'],
                block_border=cogent['inactive'],
                block_highlight_text_color=cogent['inactive'],
                foreground=cogent['active'],
                rounded=True,
                this_current_screen_border=cogent['active'],
                active=cogent['green'],
                inactive=cogent['active'],
                padding=10,
                center_aligned=True,
            ),
            widget.Spacer(
                **decor_left2,
                length=5,
                background=cogent['bg'],
            ),
            widget.Visualiser(
                bars = 18,
                framerate = 30,
                hide = False,
                width = 150,
                bar_colour = cogent['fg'],
            ),
            widget.Spacer(
                **decor_right2,
                length=15,
                background=cogent['bg'],
            ),
            widget.TextBox(
                background=cogent['inactive'],
                foreground=cogent['red'],
                text="󰽉",
                fontsize=20,
                padding=5,
                mouse_callbacks={"Button1": lazy.spawn('draw.io')},
            ),
            widget.TextBox(
                background=cogent['inactive'],
                foreground=cogent['yellow'],
                text=" ",
                fontsize=20,
                padding=9,
                mouse_callbacks={"Button1": lazy.spawn('ghidra')},
            ),
            widget.TextBox(
                background=cogent['inactive'],
                foreground=cogent['rose'],
                text=" ",
                fontsize=20,
                padding=3,
                mouse_callbacks={"Button1": lazy.spawn("wireshark")},
            ),          
            widget.TextBox(
                background=cogent['inactive'],
                foreground=cogent['green'],
                text=" ",
                fontsize=20,
                padding=3,
                mouse_callbacks={"Button1": lazy.spawn("tradingview")},
            ),          
            widget.TextBox(
                background=cogent['inactive'],
                foreground=cogent['blue'],
                text=" ",
                fontsize=20,
                padding=3,
                mouse_callbacks={"Button1": lazy.spawn('discord')},
            ),
            widget.TextBox(
                **decor_left2,
                background=cogent['inactive'],
                foreground=cogent['active'],
                text="󰸉",
                fontsize=20,
                padding=3,
                mouse_callbacks={"Button1": lazy.spawn('nitrogen')},
            ),
            widget.Spacer(
                length=5,
                background=cogent['bg'],
            ),

            widget.WindowName(
                background=cogent['bg'],
                padding=10,
                font="Mononoki Nerd Font Bold",
                fontsize=18,
                foreground=cogent['fg'],
                max_chars=50,
            ),

            widget.Spacer(
                **decor_right2,
                length=5,
                background=cogent['bg'],
            ),
            widget.StockTicker(
                **decor_left2,
                func="TIME_SERIES_DAILY",
                apikey="ROHY72GSY75UM099",
                symbol="SPY",
                font="Mononoki Nerd Font",
                fontsize=20,
                foreground=cogent['yellow'],
                background=cogent['inactive'],
                interval='1D',
                mouse_callbacks={"Button1": lazy.spawn("tradingview")}
            ),
            widget.Spacer(
                length=5,
                background=cogent['bg'],
            ),
            widget.Systray(
                background=cogent['bg'],
                ),
            widget.Sep(
                **decor_right,
                linewidth=5,
                background=cogent['bg'],
                foreground=cogent['inactive'],
                size_percent=75,
            ),
            widget.Clock(
                **decor_right,
                format="%m/%d/%Y",
                background=cogent['bg'],
                foreground=cogent['blue'],
                fontsize=14,
                font="Mononoki Nerd Font",
                padding=1,
                mouse_callbacks={"Button1": lazy.spawn("morgen")}
            ),
            widget.Clock(
                **decor_right,
                format="%I:%M %p",
                background=cogent['bg'],
                foreground=cogent['fg'],
                font="Mononoki Nerd Font",
                fontsize=18,
                padding=1,
            ),

            widget.TextBox(
                **decor_right,
                backround=cogent['bg'],
                foreground=cogent['magenta'],
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
                   opacity=0.80, margin=2, background=cogent['bg'])

main_bar2 = bar.Bar(widgets=init_widgets_screen2(), size=45,
                   opacity=0.80, margin=2, background=cogent['bg'])

