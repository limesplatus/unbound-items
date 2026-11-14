
scoreboard players set time_since_rest unbound_storage 0
execute if entity @p[distance=..48,gamemode=!spectator,scores={unbound_time_since_rest=72000..}] run scoreboard players set time_since_rest unbound_storage 72000

# chance: 10%
# increases to 20% if insomnia is high (1 hour without sleep, when phantoms spawn)

execute align zyx positioned ~.5 ~ ~.5 if entity @s[distance=...001] unless entity @n[distance=..3,type=trident] if predicate unbound:spawn_conditions/storm_rider if entity @p[distance=..48,gamemode=!spectator] unless block ~ ~ ~ #unbound:lightning_rods unless block ~ ~-1 ~ #unbound:lightning_rods run function unbound:mob/phantom_rider/spawn

tag @s add unbound_spawn_checked