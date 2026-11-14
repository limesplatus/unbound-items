

execute store result score randomizer unbound_storage run random value 1..3

function unbound:bomb/summon

execute if score randomizer unbound_storage matches 1 positioned ^ ^ ^.5 run rotate @n[type=area_effect_cloud,tag=unbound_bomb] ~ 50
execute if score randomizer unbound_storage matches 2 positioned ^ ^ ^.5 run rotate @n[type=area_effect_cloud,tag=unbound_bomb] ~ 65
execute if score randomizer unbound_storage matches 3 positioned ^ ^ ^.5 run rotate @n[type=area_effect_cloud,tag=unbound_bomb] ~ 80

execute positioned ^ ^ ^.5 run data modify entity @n[type=area_effect_cloud,tag=unbound_bomb] CustomName set value "Bomb from Phantom Rider"


kill @e[distance=..2,type=arrow]

