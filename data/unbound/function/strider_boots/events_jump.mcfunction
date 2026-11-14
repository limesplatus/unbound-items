
scoreboard players add @s unbound_strider_boots 1


### fish out of water !!!!!!


execute if score @s unbound_strider_boots matches 1..30 run particle flame ~ ~.8 ~ 0 0 0 .05 1 force @a[distance=..64]


execute if score @s unbound_strider_boots matches 05 run effect clear @s minecraft:levitation

execute if score @s unbound_strider_boots matches 05 run effect give @s minecraft:levitation 1 5 true
execute if score @s unbound_strider_boots matches 11 run effect clear @s minecraft:levitation

execute if score @s unbound_strider_boots matches 11 run effect give @s minecraft:levitation 1 2 true
execute if score @s unbound_strider_boots matches 16 run effect clear @s minecraft:levitation

execute if score @s unbound_strider_boots matches 50.. run scoreboard players reset @s unbound_strider_boots

