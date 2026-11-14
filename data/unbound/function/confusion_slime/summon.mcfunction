summon item_display ~ ~ ~ {interpolation_duration:4,start_interpolation:0,teleport_duration:3,Tags:["smithed.entity","unbound_confusion_slime","unbound_projectile"],item:{id:snowball,components:{custom_model_data:{floats:[4376003]}}},billboard:"center"}


execute if entity @s[tag=unbound_from_dispenser] run data modify entity @n[type=item_display,tag=unbound_projectile] Rotation set from entity @s Rotation
execute unless entity @s[tag=unbound_from_dispenser] as @n[type=item_display,tag=unbound_projectile] run function unbound:other/snowball_set_uuid

execute as @n[type=item_display,tag=unbound_confusion_slime] at @s run function unbound:confusion_slime/a_main

kill @s