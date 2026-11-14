# execute if predicate unbound:chance/25_percent run particle soul ~ ~1 ~ .3 .5 .3 .02 1 force @a[distance=..32]
# execute if predicate unbound:chance/25_percent positioned ~ ~1.25 ~ run particle smoke ^-.2 ^ ^.6 .1 .1 .1 .04 1 normal @a[distance=..32]

execute if score @s unbound_player_health matches 1..6 run item modify entity @s weapon.offhand unbound:necrotic2

execute unless entity @s[tag=unbound_strengthChecked] run function unbound:amulets/necrotic/low_health_init

execute if predicate unbound:player/sprinting run particle entity_effect{color:[0.639,0.043,0.204,1.00]} ~ ~.4 ~ .2 .5 .2 1 1 force @a[distance=..48]
particle entity_effect{color:[0.639,0.043,0.204,1.00]} ~ ~.2 ~ .2 .2 .2 1 1 force @a[distance=..48]
execute if predicate unbound:player/sprinting_or_flying run particle entity_effect{color:[0.639,0.043,0.204,1.00]} ~ ~.2 ~ .2 .2 .2 1 1 force @a[distance=..48]


attribute @s attack_damage modifier add unbound:necrotic_amulet_attack_damage 5 add_value

#execute if entity @s[predicate=!unbound:player/beacon_strength] run effect give @s strength 1 0 true
#execute if entity @s[predicate=unbound:player/beacon_strength_1] run effect give @s strength 4 1 true
#execute if entity @s[predicate=unbound:player/beacon_strength_2] run effect give @s strength 4 2 true

