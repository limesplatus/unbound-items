
particle poof ~ ~1 ~ 0 0 0 .15 4 force @a[distance=..64]
particle poof ~ ~1 ~ 0 0 0 .08 4 force @a[distance=..64]

playsound entity.bat.takeoff player @a[distance=..20] ~ ~ ~ .15 1
playsound entity.phantom.flap player @a[distance=..20] ~ ~ ~ 1 1
playsound entity.ender_dragon.flap player @a[distance=..20] ~ ~ ~ .4 1.5

scoreboard players set @s unbound_cloak_dash 0
function unbound:phantom_cloak/dash_events

effect clear @s levitation
tag @s remove unbound_cloak_pogo_boost


tag @s remove unbound_cloak_back
tag @s remove unbound_cloak_left
tag @s remove unbound_cloak_right

execute if predicate unbound:input/back run tag @s add unbound_cloak_back
execute if predicate unbound:input/left run tag @s add unbound_cloak_left
execute if predicate unbound:input/right run tag @s add unbound_cloak_right


# durability

    # no unbreaking
    execute unless predicate {"type":"entity_properties","entity":"this","predicate":{"equipment":{"chest":{"predicates":{"enchantments":[{"enchantments":"unbreaking","levels":{min:1}}]}}}}} unless predicate unbound:player/creative_spectator if predicate unbound:chance/50_percent run item modify entity @s armor.chest unbound:damage/phantom_cloak_1
    
    # unbreaking 1
    execute if predicate {"type":"entity_properties","entity":"this","predicate":{"equipment":{"chest":{"predicates":{"enchantments":[{"enchantments":"unbreaking","levels":1}]}}}}} unless predicate unbound:player/creative_spectator if predicate unbound:chance/50_percent if predicate unbound:chance/50_percent run item modify entity @s armor.chest unbound:damage/phantom_cloak_1
    
    # unbreaking 2
    execute if predicate {"type":"entity_properties","entity":"this","predicate":{"equipment":{"chest":{"predicates":{"enchantments":[{"enchantments":"unbreaking","levels":2}]}}}}} unless predicate unbound:player/creative_spectator if predicate unbound:chance/50_percent if predicate unbound:chance/33_percent run item modify entity @s armor.chest unbound:damage/phantom_cloak_1
    
    # unbreaking 3
    execute if predicate {"type":"entity_properties","entity":"this","predicate":{"equipment":{"chest":{"predicates":{"enchantments":[{"enchantments":"unbreaking","levels":{"min":3}}]}}}}} unless predicate unbound:player/creative_spectator if predicate unbound:chance/50_percent if predicate unbound:chance/25_percent run item modify entity @s armor.chest unbound:damage/phantom_cloak_1


stopsound @a[distance=..20] player item.armor.equip_leather

# pogo boost attack dash
execute if entity @s[predicate=unbound:input/back,advancements={unbound:technical/player_attacked_mob_with_phantom_cloak=true}] run function unbound:phantom_cloak/dash_pogo
advancement revoke @s only unbound:technical/player_attacked_mob_with_phantom_cloak

#attribute @s movement_speed modifier add unbound:dash_speed 0.2 add_multiplied_base

execute unless entity @s[tag=unbound_cloak_pogo_boost] run scoreboard players add @s unbound_cloak_dash_count 1