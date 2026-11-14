
execute unless entity @n[distance=..0.01,tag=unbound_glow_lantern,type=item_display] run summon item_display ~ ~ ~ {Tags:["smithed.entity","unbound_glow_lantern"],item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_model_data":{floats:[4376025]}}},transformation:{translation:[0,0,0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1], scale:[1.01,1.01,1.01]}}

scoreboard players set @n[distance=..0.01,tag=unbound_glow_lantern,type=item_display] unbound_block_level 100
tag @n[distance=..0.01,tag=unbound_glow_lantern,type=item_display] add unbound_glow_lantern_tinted


particle glow_squid_ink ~ ~ ~ .2 .2 .2 .01 2 force @a[distance=..32]
particle glow ~ ~ ~ .2 .2 .2 .1 4 force @a[distance=..32]

playsound item.glow_ink_sac.use player @a[distance=..32] ~ ~ ~ .5 1
playsound minecraft:block.trial_spawner.spawn_item_begin player @a[distance=..32] ~ ~ ~ .5 2

execute if score level unbound_storage matches 4 run data modify entity @n[distance=..0.01,tag=unbound_glow_lantern,type=item_display] item.components."minecraft:custom_model_data".floats set value [4376025]

playsound block.amethyst_block.step player @a[distance=..20] ~ ~ ~ .8 1.2

scoreboard players set found_lantern unbound_storage 1
