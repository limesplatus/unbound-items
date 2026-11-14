
#first jump, check
    execute if score @s unbound_jump matches 1 run tag @s add unbound_cloak_dash_disabled

    #release jump input -> allows check for second input to be dash
    execute unless predicate unbound:input/jump run tag @s remove unbound_cloak_dash_disabled

#begin dash
    execute if entity @s[tag=!unbound_cloak_dash_disabled] unless score @s unbound_cloak_dash_count matches 0.. unless score @s unbound_cloak_dash matches 0..5 \
    if predicate unbound:input/jump \
    unless predicate unbound:player/on_ground run function unbound:phantom_cloak/dash


execute if predicate unbound:player/sprinting run particle ash ~ ~1 ~ .3 .3 .3 .05 2 normal @a[distance=..64]

