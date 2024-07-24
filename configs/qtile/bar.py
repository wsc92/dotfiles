import os
import psutil
import math
from libqtile import bar, widget, qtile
from qtile_extras import widget
from qtile_extras.widget.decorations import RectDecoration
from qtile_extras.widget.decorations import PowerLineDecoration
from libqtile.config import Click

from defaults import browser
from colorschemes import cogent, cogentN, cogentG
from libqtile.lazy import lazy

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
                length=1,
                background=cogentG['bg'],
            ),
            widget.Clock(
                format="%m/%d/%Y",
                background=cogentG['bg'],
                foreground=cogentG['blue'],
                fontsize=16,
                font="Mononoki Nerd Font",
                padding=1,
                mouse_callbacks={"Button1": lazy.spawn(home + "/.config/qtile/scripts/apps.sh")}
            ),
            # widget.CheckUpdates(
            #     distro='Arch',
            #     background=cogentG['bg'],
            #     colour_have_updates=cogentG['red'],
            #     colour_no_updates=cogentG['green'],
            #     fmt='󰱶 {updates}',
            #     no_update_string='󰱱 ',
            #     update_interval=60
            # ),
            widget.Spacer(
                **decor_right2,
                length=15,
                background=cogentG['bg'],
            ),
            # widget.TextBox(
            #     **decor_left2,
            #     background=cogentG['bga'],
            #     text='APPS',
            #     font="Mononoki Nerd Font",
            #     fontsize=20,
            #     foreground=cogentG['white'],
            #     padding=10,
            #     mouse_callbacks={"Button1": lazy.spawn(home + "/.config/qtile/scripts/apps.sh")},
            #     center_aligned=True,
            # ),
            widget.TextBox(
                background=cogentG['bga'],
                foreground=cogentG['red'],
                text="󰽉",
                fontsize=22,
                padding=5,
                mouse_callbacks={"Button1": lazy.spawn('draw.io')},
            ),
            widget.TextBox(
                background=cogentG['bga'],
                foreground=cogentG['red'],
                text= "",
                fontsize=22,
                padding=2,
                mouse_callbacks={"Button1": lazy.spawn(home + "/BurpSuiteCommunity/BurpSuiteCommunity")},
            ),
            widget.TextBox(
                background=cogentG['bga'],
                foreground=cogentG['orange'],
                text=" ",
                fontsize=18,
                padding=7,
                mouse_callbacks={"Button1": lazy.spawn('ghidra')},
            ),
            widget.TextBox(
                background=cogentG['bga'],
                foreground=cogentG['yellow'],
                text=" ",
                fontsize=18,
                padding=3,
                mouse_callbacks={"Button1": lazy.spawn("ida64")},
            ),
            widget.TextBox(
                background=cogentG['bga'],
                foreground=cogentG['green'],
                text=" ",
                fontsize=18,
                padding=3,
                mouse_callbacks={"Button1": lazy.spawn("wireshark")},
            ),
            widget.TextBox(
                background=cogentG['bga'],
                foreground=cogentG['green'],
                text= "󰚫",
                fontsize=18,
                padding=3,
                mouse_callbacks={"Button1": lazy.spawn("zenmap")},
            ),
            widget.TextBox(
                background=cogentG['bga'],
                foreground=cogentG['blue'],
                text=" ",
                fontsize=18,
                padding=6,
                mouse_callbacks={"Button1": lazy.spawn('discord')},
            ),
            widget.TextBox(
                **decor_left2,
                background=cogentG['bga'],
                foreground=cogentG['magenta'],
                text="󰸉",
                fontsize=18,
                padding=3,
                mouse_callbacks={"Button1": lazy.spawn('nitrogen')},
            ),
            widget.Spacer(
                length=5,
                background=cogentG['bg'],
            ),
            widget.Visualiser(
                bars = 22,
                framerate = 60,
                hide = False,
                width = 150,
                bar_colour = cogentG['green'],
            ),
            widget.Spacer(
                **decor_right2,
                length=4,
                background=cogentG['bg'],
            ),
            widget.GroupBox(
                **decor_left2,
                fontsize=16,
                background=cogentG['bga'],
                highlight_method='line',
                highlight_color=cogentG['bga'],
                #block_border=cogentG['bga'],
                block_highlight_text_color=cogentG['red'],
                foreground=cogentG['active'],
                rounded=True,
                this_current_screen_border=cogentG['bga'],
                active=cogentG['active'],
                inactive=cogentG['bg'],
                padding=6,
                center_aligned=True,
            ),
            widget.Spacer(
                length=10
            ),
            widget.WindowName(
                **decor_right2,
                background=cogentG['bg'],
                padding=5,
                font="Mononoki Nerd Font Bold",
                fontsize=16,
                foreground=cogentG['fg'],
                max_chars=18,
                scroll = True,
                scroll_hide = False,
                scroll_interval = 0.1,
                scroll_repeat = True,
                scroll_step = 1,
                scroll_delay = 1
            ), 

            widget.OpenWeather(
                **decor_left2,
                api_key="c0916b9e5651102140d56565e529d146", # enter API Key
                cityid="4612862", # enter city
                metric= False,
                format = '{location_city}: {main_temp}°{units_temperature} {icon}',
                font="Mononoki Nerd Font",
                fontsize=18,
                foreground=cogentG['white'],
                background=cogentG['bga'],
                mouse_callbacks={"Button1": lazy.spawn('firefox --new-window https://weather.com')},
            ),
            widget.Spacer(
                    length=10,
                    background=cogentG['bg'],
            ),
            widget.CPU(
                format = '    {load_percent} %',
                fontsize = 14,
                background=cogentG['bg'],
                foreground=cogentG['green']
            ),
            widget.Spacer(length=5),
            widget.Memory(
                format = '   {MemUsed: .0f} {mm}  {MemTotal: .0f} {mm}',
                fontsize = 14,
                background=cogentG['bg'],
                foreground=cogentG['red']
            ),
            widget.Sep(
                linewidth=5,
                background=cogentG['bg'],
                foreground=cogentG['bga'],
                size_percent=100,
            ),
            widget.NetGraph(
                border_color=cogentG['bg'],
                fill_color=cogentG['red'],
                graph_color=cogentG['blue']
            ),

            widget.Sep(
                linewidth=5,
                background=cogentG['bg'],
                foreground=cogentG['bga'],
                size_percent=100,
            ),
            widget.Systray(
                background=cogentG['bg'],
            ),
            widget.Spacer(length=5),
            widget.Sep(
                linewidth=5,
                background=cogentG['bg'],
                foreground=cogentG['bga'],
                size_percent=100,
            ),
            widget.Clock(
                format="%H:%M",
                background=cogentG['bg'],
                foreground=cogentG['white'],
                font="Mononoki Nerd Font",
                fontsize=16,
                padding=8,
            ),
            widget.TextBox(
                **decor_right2,
                backround=cogentG['bg'],
                foreground=cogentG['red'],
                padding=2,
                text="⏻",
                fontsize=18,
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


main_bar = bar.Bar(widgets=init_widgets_screen1(), size=40,
                   opacity=0.80, margin=2, background=cogentG['bg'])

main_bar2 = bar.Bar(widgets=init_widgets_screen2(), size=40,
                   opacity=0.80, margin=2, background=cogentG['bg'])

