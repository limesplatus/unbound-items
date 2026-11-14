
# non fish


# give water breathing/oxygen
execute store result score waterbreathingtime unbound_storage run data get entity @s active_effects[{id:"minecraft:water_breathing"}].duration
execute unless score waterbreathingtime unbound_storage matches 600.. if entity @s[advancements={unbound:technical/kill_mob_small_underwater=true}] run scoreboard players add waterbreathingtime unbound_storage 60
execute unless score waterbreathingtime unbound_storage matches 600.. if entity @s[advancements={unbound:technical/kill_mob_small_underwater=false}] run scoreboard players add waterbreathingtime unbound_storage 200
execute store result storage unbound:storage waterbreathingtime int 0.05 run scoreboard players get waterbreathingtime unbound_storage
function unbound:amulets/sea/set_water_breathing with storage unbound:storage


effect give @s[advancements={unbound:technical/kill_mob_small_underwater=false}] water_breathing 10

execute if entity @s[advancements={unbound:technical/kill_mob_small_underwater=false}] positioned ~ ~1 ~ positioned ^ ^ ^4 run particle bubble ~ ~ ~ .8 .8 .8 .8 20 force @a[distance=..32]

execute if entity @s[advancements={unbound:technical/kill_mob_small_underwater=false}] run playsound minecraft:block.bubble_column.whirlpool_ambient player @a[distance=..30] ~ ~ ~ 2 1
execute if entity @s[advancements={unbound:technical/kill_mob_small_underwater=false}] run playsound minecraft:block.bubble_column.whirlpool_ambient player @a[distance=..30] ~ ~ ~ 2 2
execute if entity @s[advancements={unbound:technical/kill_mob_small_underwater=false}] run playsound minecraft:block.bubble_column.whirlpool_ambient player @a[distance=..30] ~ ~ ~ 2 2

#execute if entity @s[advancements={unbound:technical/kill_mob_small_underwater=false}] run tag @s remove unbound_sea_amulet_dash_unavailable

#


particle sculk_charge_pop ~ ~.8 ~ .1 .1 .1 .03 10 force @a[distance=..32]

particle bubble ~ ~.8 ~ .3 .3 .3 .1 20 force @a[distance=..32]

execute unless entity @s[advancements={unbound:technical/kill_mob_small_underwater=false}] positioned ~ ~1 ~ positioned ^ ^ ^4 run function unbound:amulets/sea/bubble_particle/summon {particle_time:4}
execute if entity @s[advancements={unbound:technical/kill_mob_small_underwater=false}] positioned ~ ~1 ~ positioned ^ ^ ^4 run function unbound:amulets/sea/bubble_particle/summon {particle_time:8}

execute positioned ~ ~1 ~ positioned ^ ^ ^4 run particle bubble ~ ~ ~ .5 .5 .5 .3 20 force @a[distance=..32]


playsound minecraft:block.bubble_column.whirlpool_ambient player @a[distance=..30] ~ ~ ~ 2 2

playsound minecraft:block.bubble_column.whirlpool_ambient player @a[distance=..30] ~ ~ ~ 1 1.5


playsound minecraft:block.bubble_column.upwards_ambient player @a[distance=..30] ~ ~ ~ 1 1

scoreboard players set @s unbound_sea_amulet_recently_took_oxygen 40