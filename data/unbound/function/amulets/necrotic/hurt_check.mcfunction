
execute if score @s unbound_player_health matches 1..6 if predicate unbound:equipped/necrotic_amulet_offhand run function unbound:amulets/necrotic/low_health


execute if entity @s[tag=unbound_strengthChecked] if score @s unbound_player_health matches 7.. run function unbound:amulets/necrotic/low_health_exit
execute if entity @s[tag=unbound_strengthChecked] unless predicate unbound:equipped/necrotic_amulet_offhand run function unbound:amulets/necrotic/low_health_exit

