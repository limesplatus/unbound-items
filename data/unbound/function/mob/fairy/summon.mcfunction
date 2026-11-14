summon allay ~ ~ ~ {Passengers:[{id:"minecraft:item_display",billboard:"fixed",Tags:["smithed.entity","unbound_fairy_display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.1f,0f],scale:[0.75f,0.75f,0.75f]},teleport_duration:2,item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_model_data":{floats:[4376034]}}}}],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}],CustomName:"Fairy",Silent:1b,Tags:["smithed.entity","unbound_fairy"],Health:4f,attributes:[{base:4,id:"max_health"}]}

execute as @n[distance=..10,type=item_display,tag=unbound_fairy_display] at @s run function unbound:mob/fairy/a_main

execute as @n[distance=..10,type=allay,tag=unbound_fairy] at @s run function unbound:mob/fairy/new_home_pos
