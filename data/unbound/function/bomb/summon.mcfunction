summon area_effect_cloud ^ ^ ^.5 {Tags:["smithed.entity","unbound_bomb","unbound_projectile"],Duration:1200,custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Particle:{type:"minecraft:block",block_state:"minecraft:air"},CustomName:"Bomb"}



execute if entity @s[tag=unbound_from_dispenser] run data modify entity @n[type=area_effect_cloud,tag=unbound_projectile] Rotation set from entity @s Rotation
execute unless entity @s[tag=unbound_from_dispenser] as @n[type=area_effect_cloud,tag=unbound_projectile] positioned ^ ^ ^-.2 positioned ~ ~-1.52 ~ run function unbound:other/snowball_set_uuid


kill @s[type=snowball]
