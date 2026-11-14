data modify entity @s NoGravity set value 0b
tag @s remove unbound_magnet_item


execute positioned ~ ~-1 ~ if entity @p[distance=..1.5] run data modify entity @s Motion set value [0d,0d,0d]