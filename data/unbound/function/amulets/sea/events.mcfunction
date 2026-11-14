#dash functions
scoreboard players add @s unbound_sea_amulet_dash 1


#jump out of water
execute unless score @s unbound_sea_amulet_dash matches 60.. unless score @s unbound_sea_amulet_dash2 matches 0.. if block ~ ~0.2 ~ #unbound:permeable_exclude_water run function unbound:amulets/sea/jump
execute if score @s unbound_sea_amulet_dash2 matches 0.. run function unbound:amulets/sea/events_jump




# execute if block ~ ~ ~ #unbound:water if entity @s[tag=unbound_sea_amulet_back] rotated ~-180 ~ run function unbound:amulets/sea/events_movement
# execute if block ~ ~ ~ #unbound:water if entity @s[tag=unbound_sea_amulet_left] rotated ~-90 ~ run function unbound:amulets/sea/events_movement
# execute if block ~ ~ ~ #unbound:water if entity @s[tag=unbound_sea_amulet_right] rotated ~90 ~ run function unbound:amulets/sea/events_movement
# execute if block ~ ~ ~ #unbound:water if entity @s[tag=!unbound_sea_amulet_right,tag=!unbound_sea_amulet_left,tag=!unbound_sea_amulet_back] run function unbound:amulets/sea/events_movement



execute if score @s unbound_sea_amulet_dash matches ..40 run particle effect ~ ~.5 ~ .2 .2 .2 1 2 force @a[distance=..32]
execute if score @s unbound_sea_amulet_dash matches ..40 run particle minecraft:sculk_charge_pop ~ ~.5 ~ .3 .3 .3 .025 2 force @a[distance=..32]

execute if predicate unbound:tick/2 run function unbound:amulets/sea/dash_re_check_inputs

execute if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:4}},"minecraft:location":{fluid:{fluids:"#minecraft:water"}}}} anchored eyes positioned ^ ^ ^.5 unless block ~ ~ ~ #unbound:permeable run damage @s 4 fly_into_wall
execute if predicate {type:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:4}},"minecraft:location":{fluid:{fluids:"#minecraft:water"}}}} anchored eyes positioned ^ ^ ^.5 positioned ~ ~-.25 ~ unless block ~ ~ ~ #unbound:permeable run damage @s 5 fly_into_wall

execute if score @s unbound_sea_amulet_dash matches 40 if predicate {type:"entity_properties",entity:"this","predicate":{"equipment":{feet:{predicates:{enchantments:[{enchantments:"depth_strider",levels:3}]}}}}} run function unbound:amulets/sea/dash_end
execute if score @s unbound_sea_amulet_dash matches 50 if predicate {type:"entity_properties",entity:"this","predicate":{"equipment":{feet:{predicates:{enchantments:[{enchantments:"depth_strider",levels:2}]}}}}} run function unbound:amulets/sea/dash_end
execute if score @s unbound_sea_amulet_dash matches 60 if predicate {type:"entity_properties",entity:"this","predicate":{"equipment":{feet:{predicates:{enchantments:[{enchantments:"depth_strider",levels:1}]}}}}} run function unbound:amulets/sea/dash_end
execute if score @s unbound_sea_amulet_dash matches 70 run function unbound:amulets/sea/dash_end