summon item_display ~ ~ ~ {billboard:"center",start_interpolation:0,interpolation_duration:2,teleport_duration:2,Tags:["smithed.entity","unbound_projectile","unbound_spectral_bottle"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},item:{id:"minecraft:glass_bottle",count:1,components:{"minecraft:custom_model_data":{floats:[4376009]},enchantment_glint_override:true}}}


execute if entity @s[tag=unbound_from_dispenser] run data modify entity @n[type=item_display,tag=unbound_projectile] Rotation set from entity @s Rotation
execute unless entity @s[tag=unbound_from_dispenser] as @n[type=item_display,tag=unbound_projectile] run function unbound:other/snowball_set_uuid


execute as @n[type=item_display,tag=unbound_spectral_bottle] at @s run function unbound:spectral_bottle/entity

kill @s[type=!player]

playsound minecraft:entity.breeze.charge player @a[distance=..32] ~ ~ ~ 1 .8