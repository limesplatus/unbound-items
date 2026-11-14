summon minecraft:slime ~ ~ ~ {Size:0,Tags:["smithed.entity","unbound_glow_slime","unbound_temp","unbound_size_unmodified"],Passengers:[{id:"item_display",teleport_duration:3,Tags:["smithed.entity","unbound_glow_slime_model","unbound_temp2","unbound_size_unmodified"],item:{id:"minecraft:slime_block",count:1,components:{"minecraft:custom_model_data":{floats:[4376028]}}},transformation:{translation:[0,0,0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1], scale:[2.5,2.5,2.5]},item_display:"thirdperson_righthand"}],active_effects:[{id:"invisibility",duration:-1,show_particles:false}],attributes:[{id:"max_health",base:30f},{id:"movement_speed",base:0.8} ,{id:"scale",base:2.5},{id:"safe_fall_distance",base:7d} ,{id:"jump_strength",base:0.5} ],Health:30f,CustomName:{"translate":"Glow Slime"},DeathLootTable:"unbound:entity/glow_slime"}

execute store result score @n[tag=unbound_temp,distance=..2] unbound_uuid1 run random value 0..999999999
execute store result score @n[tag=unbound_temp2,distance=..2] unbound_uuid1 run scoreboard players get @n[tag=unbound_temp,distance=..2] unbound_uuid1


execute as @n[type=item_display,tag=unbound_temp2,distance=..2] at @s run function unbound:mob/glow_slime/a_main

tag @n[tag=unbound_temp,distance=..2] remove unbound_temp
tag @n[tag=unbound_temp2,distance=..2] remove unbound_temp2

