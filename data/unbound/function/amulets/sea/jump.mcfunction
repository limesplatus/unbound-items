

scoreboard players set @s unbound_sea_amulet_dash2 0

tp @s ~ ~.2 ~


### fish out of water !!!!!!

function unbound:amulets/sea/wave_particle
particle minecraft:shriek{delay:0} 5 ~ ~-1.7 ~ 1 1.5 1 1 force @a[distance=..32]
particle poof ~ ~.5 ~ .8 0 .8 .1 4 force @a[distance=..32]


playsound minecraft:entity.dolphin.splash player @a[distance=..30] ~ ~ ~ 1.25 .8
playsound minecraft:ambient.underwater.exit player @a[distance=..30] ~ ~ ~ 1.25 1.5

scoreboard players reset @s unbound_sea_amulet_momentum

#levitation
execute if score @s unbound_sea_amulet_dash matches 1.. run scoreboard players add @s unbound_sea_amulet_momentum 1
execute if score @s unbound_sea_amulet_dash matches 10.. run scoreboard players add @s unbound_sea_amulet_momentum 1
execute if score @s unbound_sea_amulet_dash matches 21.. run scoreboard players add @s unbound_sea_amulet_momentum 1
execute if score @s unbound_sea_amulet_dash matches 41.. run scoreboard players add @s unbound_sea_amulet_momentum 1

#rotation / directionality
execute store result score @s unbound_rotation run data get entity @s Rotation[1]
execute if score @s unbound_rotation matches ..-45 run scoreboard players remove @s unbound_sea_amulet_momentum 1
execute if score @s unbound_rotation matches -20.. run scoreboard players add @s unbound_sea_amulet_momentum 1

#levitation
execute if score @s unbound_sea_amulet_momentum matches ..0 run effect give @s minecraft:levitation 1 40 true
execute if score @s unbound_sea_amulet_momentum matches 1 run effect give @s minecraft:levitation 1 25 true
execute if score @s unbound_sea_amulet_momentum matches 2 run effect give @s minecraft:levitation 1 20 true
execute if score @s unbound_sea_amulet_momentum matches 3 run effect give @s minecraft:levitation 1 10 true
execute if score @s unbound_sea_amulet_momentum matches 4 run effect give @s minecraft:levitation 1 4 true
