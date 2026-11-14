


execute if predicate unbound:player/creative_spectator run scoreboard players set player_is_creative unbound_storage 1
execute anchored eyes positioned ^ ^ ^3 as @n[type=interaction,distance=..5,nbt={attack:{}}] at @s positioned ~ ~.5 ~ align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/strider_statue/break


scoreboard players reset player_is_creative unbound_storage

advancement revoke @s only unbound:technical/break/strider_statue