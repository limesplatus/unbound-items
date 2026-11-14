#particle raid_omen ~ ~1 ~ 0 0 0 .1 1 force @a[distance=..32]
particle entity_effect{color:[0.639,0.043,0.204,1.00]} ~ ~1 ~ .3 .3 .3 1 5 force @a[distance=..32]

execute positioned ~ ~1 ~ if predicate unbound:player/falling if entity @s[advancements={unbound:technical/attacked_mob_necrotic_kill=true}] run particle raid_omen ~ ~ ~ ~ ~1000000000000000000000 ~ 0.000000000000000000005 0 force @a[distance=..32]
execute run particle entity_effect{color:[0.639,0.043,0.204,1.00]} ~ ~1 ~ .3 .3 .3 1 5 force @a[distance=..32]
