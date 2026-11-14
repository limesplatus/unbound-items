
scoreboard players add @s unbound_sea_amulet_dash2 1

### fish out of water !!!!!!

execute if score @s unbound_sea_amulet_dash2 matches 05 run effect clear @s minecraft:levitation

execute if score @s unbound_sea_amulet_dash2 matches 05 run effect give @s minecraft:levitation 1 5 true
execute if score @s unbound_sea_amulet_dash2 matches 11 run effect clear @s minecraft:levitation

execute if score @s unbound_sea_amulet_dash2 matches 11 run effect give @s minecraft:levitation 1 2 true
execute if score @s unbound_sea_amulet_dash2 matches 16 run effect clear @s minecraft:levitation

execute if block ~ ~ ~ #unbound:water if score @s unbound_sea_amulet_dash2 matches 20.. run scoreboard players reset @s unbound_sea_amulet_dash2

