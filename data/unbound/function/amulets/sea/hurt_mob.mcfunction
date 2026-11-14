

execute if predicate unbound:input/back run tag @s add unbound_sea_amulet_back
execute if predicate unbound:input/back run tag @s remove unbound_sea_amulet_forward



execute positioned ~ ~1 ~ positioned ^ ^ ^4 run particle bubble ~ ~ ~ 1 1 1 .3 20 force @a[distance=..32]


playsound minecraft:block.bubble_column.whirlpool_ambient player @a[distance=..30] ~ ~ ~ 2 2



# give water breathing/oxygen
execute store result score waterbreathingtime unbound_storage run data get entity @s active_effects[{id:"minecraft:water_breathing"}].duration
execute unless score waterbreathingtime unbound_storage matches 600.. if entity @s[advancements={unbound:technical/hurt_mob_guardian=true}] run scoreboard players add waterbreathingtime unbound_storage 100
execute store result storage unbound:storage waterbreathingtime int 0.05 run scoreboard players get waterbreathingtime unbound_storage
function unbound:amulets/sea/set_water_breathing with storage unbound:storage


