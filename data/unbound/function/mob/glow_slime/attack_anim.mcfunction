
scoreboard players add @s unbound_mob_anim2 1

execute if score @s unbound_mob_anim2 matches 1..19 run particle glow_squid_ink ~ ~-1 ~ 0 0 0 .15 1 force @a[distance=..64]
execute if score @s unbound_mob_anim2 matches 20 run function unbound:mob/glow_slime/attack
execute if score @s unbound_mob_anim2 matches 21..25 run particle glow_squid_ink ~ ~ ~ 0 0 0 .4 15 force @a[distance=..64]

execute if predicate unbound:tick/2 run playsound minecraft:entity.glow_squid.ambient hostile @a[distance=..32] ~ ~ ~ 1 2

execute if score @s unbound_mob_anim2 matches 25 run scoreboard players reset @s unbound_mob_anim2