scoreboard players remove @s unbound_block_level 1
scoreboard players set @s unbound_block_tick 900

execute if score @s unbound_block_level matches 1 run data modify entity @s item.components."minecraft:custom_model_data".floats set value [4376022]
execute if score @s unbound_block_level matches 2 run data modify entity @s item.components."minecraft:custom_model_data".floats set value [4376024]
execute if score @s unbound_block_level matches 3 run data modify entity @s item.components."minecraft:custom_model_data".floats set value [4376025]


kill @n[type=item_display,tag=unbound_glow_lantern_particle,distance=..0.01]
playsound block.fire.ambient block @a[distance=..32] ~ ~ ~ .5 2