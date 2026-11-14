summon minecraft:creeper ~ ~ ~ {Tags:["smithed.entity","unbound_confetti_creeper","unbound_temp"],Passengers:[{id:"item_display",teleport_duration:2,Tags:["smithed.entity","unbound_confetti_creeper_model","unbound_temp2"],CustomName:{"translate":"Confetti Creeper"},item:{id:"minecraft:creeper_head",count:1,components:{"minecraft:custom_model_data":{floats:[4376060]}}},transformation:{translation:[0,-0.32,0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1], scale:[0.65, 0.65, 0.65]},item_display:"head"}],Health:20f,CustomName:{"translate":"Confetti Creeper"},DeathLootTable:"unbound:entity/confetti_creeper",Team:"unbound_hide_name",active_effects:[{id:"conduit_power",show_particles:false,duration:-1,show_icon:false}],ExplosionRadius:0,attributes:[{base:0.28d,id:"movement_speed"}]}


execute store result score @n[tag=unbound_temp,distance=..2] unbound_uuid1 run random value 0..999999999
execute store result score @n[tag=unbound_temp2,distance=..2] unbound_uuid1 run scoreboard players get @n[tag=unbound_temp,distance=..2] unbound_uuid1

execute as @n[type=item_display,tag=unbound_temp2,distance=..2] at @s run function unbound:mob/confetti_creeper/a_main


tag @n[tag=unbound_temp,distance=..2] remove unbound_temp
tag @n[tag=unbound_temp2,distance=..2] remove unbound_temp2

