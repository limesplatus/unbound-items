execute as @e[distance=..20,tag=unbound_magnet_item,type=item] run function unbound:magnet/cancel_item_motion

scoreboard players reset @s unbound_magnet_time

tag @s remove unbound_using_magnet
