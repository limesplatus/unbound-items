
execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^.8


data modify storage unbound:storage Motion set from entity @s Pos

data modify entity @s Motion set from storage unbound:storage Motion

tp @s ~ ~ ~

data modify entity @s Motion[1] set from storage unbound:storage Motion[1]

