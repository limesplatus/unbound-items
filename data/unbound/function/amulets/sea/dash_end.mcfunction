tag @s remove unbound_sea_amulet_left
tag @s remove unbound_sea_amulet_right
tag @s remove unbound_sea_amulet_back
tag @s remove unbound_sea_amulet_forward

scoreboard players reset @s unbound_sea_amulet_dash
scoreboard players reset @s unbound_sea_amulet_dash2

effect clear @s levitation

playsound minecraft:block.conduit.activate player @a[distance=..10] ~ ~ ~ .7 2

tag @s remove unbound_sea_amulet_dash_unavailable