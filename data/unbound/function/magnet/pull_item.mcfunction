
execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^.4


data modify storage unbound:storage Motion set from entity @s Pos

data modify entity @s Motion set from storage unbound:storage Motion

tp @s ~ ~ ~

data modify entity @s Motion[1] set from storage unbound:storage Motion[1]

scoreboard players set is_pulling_entity unbound_storage 1

data modify entity @s NoGravity set value 1b

tag @s add unbound_magnet_item
