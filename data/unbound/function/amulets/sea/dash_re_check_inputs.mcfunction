
tag @s remove unbound_sea_amulet_left
tag @s remove unbound_sea_amulet_right

execute if predicate unbound:input/sneak run tag @s add unbound_sea_amulet_back
execute unless entity @s[tag=unbound_sea_amulet_forward] if predicate unbound:input/back run tag @s add unbound_sea_amulet_back
execute if predicate unbound:input/left run tag @s add unbound_sea_amulet_left
execute if predicate unbound:input/right run tag @s add unbound_sea_amulet_right
execute unless entity @s[tag=unbound_sea_amulet_back] if predicate unbound:input/forward run tag @s add unbound_sea_amulet_forward
execute unless entity @s[tag=unbound_sea_amulet_back] if predicate unbound:input/none run tag @s add unbound_sea_amulet_forward

