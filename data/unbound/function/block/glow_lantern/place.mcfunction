
execute unless entity @n[distance=..0.01,tag=unbound_glow_lantern,type=item_display] run summon item_display ~ ~ ~ {Tags:["smithed.entity","unbound_glow_lantern"],item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_model_data":{floats:[4376022]}}},transformation:{translation:[0,0,0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1], scale:[1.01,1.01,1.01]}}

scoreboard players add @n[distance=..0.01,tag=unbound_glow_lantern,type=item_display] unbound_block_level 1
scoreboard players set @n[distance=..0.01,tag=unbound_glow_lantern,type=item_display] unbound_block_tick 900

execute store result score level unbound_storage run scoreboard players get @n[distance=..0.01,tag=unbound_glow_lantern,type=item_display] unbound_block_level


particle glow_squid_ink ~ ~ ~ .2 .2 .2 .01 2 force @a[distance=..32]
particle glow ~ ~ ~ .2 .2 .2 .1 10 force @a[distance=..32]

playsound item.glow_ink_sac.use player @a[distance=..32] ~ ~ ~ .5 1
playsound minecraft:block.trial_spawner.spawn_item_begin player @a[distance=..32] ~ ~ ~ .5 2

execute if score level unbound_storage matches 1 run function unbound:block/glow_lantern/place_on

execute if score level unbound_storage matches 2 run data modify entity @n[distance=..0.01,tag=unbound_glow_lantern,type=item_display] item.components."minecraft:custom_model_data".floats set value [4376023]
execute if score level unbound_storage matches 3 run data modify entity @n[distance=..0.01,tag=unbound_glow_lantern,type=item_display] item.components."minecraft:custom_model_data".floats set value [4376025]
execute if score level unbound_storage matches 4 run data modify entity @n[distance=..0.01,tag=unbound_glow_lantern,type=item_display] item.components."minecraft:custom_model_data".floats set value [4376026]

playsound block.amethyst_block.step player @a[distance=..20] ~ ~ ~ .8 1.2

#pulse particle
execute if score level unbound_storage matches 4 run summon item_display ~ ~ ~ {Tags:["smithed.entity","unbound_glow_lantern_particle"],item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_model_data":{floats:[4376027]}}},transformation:{translation:[0,0,0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1], scale:[1.0,1.0,1.0]},billboard:"center",item_display:"firstperson_righthand"}


scoreboard players set found_lantern unbound_storage 1
