
execute store result score @s unbound_rotation_p run scoreboard players get @s unbound_rotation

execute store result score @s unbound_rotation run data get entity @s Rotation[0]

execute store result score @s unbound_rotation_po run scoreboard players get @s unbound_rotation

scoreboard players operation @s unbound_rotation_po -= @s unbound_rotation_p

