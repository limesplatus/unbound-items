
schedule function unbound:clock/2 2t

execute as @e[type=item_display,tag=unbound_glow_lantern] at @s run function unbound:block/glow_lantern/a_check_type


scoreboard players set 2tick unbound_clock 0
