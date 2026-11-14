
execute store result score randomizer unbound_storage run random value 1..5

function unbound:mob/glow_slime/summon

execute if score randomizer unbound_storage matches 1 positioned ~ ~1.000 ~ run data modify entity @n[type=item_display,distance=..2,tag=unbound_glow_slime_model,tag=unbound_size_unmodified] transformation.scale set value [2.0,2.0,2.0]
execute if score randomizer unbound_storage matches 2 positioned ~ ~1.000 ~ run data modify entity @n[type=item_display,distance=..2,tag=unbound_glow_slime_model,tag=unbound_size_unmodified] transformation.scale set value [2.2,2.2,2.2]
execute if score randomizer unbound_storage matches 3 positioned ~ ~1.000 ~ run data modify entity @n[type=item_display,distance=..2,tag=unbound_glow_slime_model,tag=unbound_size_unmodified] transformation.scale set value [2.4,2.4,2.4]
execute if score randomizer unbound_storage matches 4 positioned ~ ~1.000 ~ run data modify entity @n[type=item_display,distance=..2,tag=unbound_glow_slime_model,tag=unbound_size_unmodified] transformation.scale set value [2.6,2.6,2.6]
execute if score randomizer unbound_storage matches 5 positioned ~ ~1.000 ~ run data modify entity @n[type=item_display,distance=..2,tag=unbound_glow_slime_model,tag=unbound_size_unmodified] transformation.scale set value [2.8,2.8,2.8]

tag @n[type=slime,distance=..2,tag=unbound_glow_slime_model,tag=unbound_size_unmodified] remove unbound_size_unmodified
tag @n[type=item_display,distance=..2,tag=unbound_glow_slime_model,tag=unbound_size_unmodified] remove unbound_size_unmodified