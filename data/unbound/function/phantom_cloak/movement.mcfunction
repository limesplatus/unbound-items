
function unbound:phantom_cloak/movement_normal
#execute if entity @s[tag=unbound_cloak_mob_boost] run function unbound:phantom_cloak/movement_mob_boost

execute positioned as @s if entity @s[tag=unbound_cloak_pogo_boost] run function unbound:phantom_cloak/events_pogo_boost