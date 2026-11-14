


execute if score @s unbound_mob_anim matches 10 run playsound minecraft:entity.glow_squid.squirt hostile @a[distance=..32] ~ ~ ~ 1 .5

execute if score @s unbound_mob_anim matches 15.. run particle glow_squid_ink ~ ~ ~ 0 0 0 .15 1 force @a[distance=..32]
execute if score @s unbound_mob_anim matches 5.. run particle glow_squid_ink ~ ~ ~ 0 0 0 .08 1 force @a[distance=..32]
execute if score @s unbound_mob_anim matches 10 run data modify entity @s transformation.scale set value [0.5,0.5,0.5]
execute if score @s unbound_mob_anim matches 10 run data modify entity @s interpolation_duration set value 20

execute if score @s unbound_mob_anim matches 0.. run tp @s ^ ^ ^-.05

execute if score @s unbound_mob_anim matches 20 run playsound minecraft:entity.glow_squid.ambient hostile @a[distance=..32] ~ ~ ~ .5 .8


# execute if score @s unbound_mob_anim matches 20 run loot spawn ~ ~ ~ loot unbound:entity/glow_slime

execute if score @s unbound_mob_anim matches 25 run kill @s