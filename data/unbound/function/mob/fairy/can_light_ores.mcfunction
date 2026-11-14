execute as @p[distance=..8,gamemode=!spectator] at @s rotated ~ ~ anchored eyes positioned ^ ^ ^0.0 positioned ~ ~2 ~ run function unbound:mob/fairy/light/find_biggest
execute as @p[distance=..8,gamemode=!spectator] at @s rotated ~ ~ anchored eyes positioned ^ ^ ^0.0 positioned ~ ~-2 ~ run function unbound:mob/fairy/light/find_biggest
execute as @p[distance=..8,gamemode=!spectator] at @s rotated ~ ~ anchored eyes positioned ^ ^ ^0.0 run function unbound:mob/fairy/light/find_biggest

execute if predicate unbound:tick/4 as @p[distance=..8,gamemode=!spectator] at @s rotated ~ ~ anchored eyes positioned ^ ^ ^0.0 run function unbound:mob/fairy/light/find_large
execute if predicate unbound:tick/4 as @p[distance=..8,gamemode=!spectator] at @s anchored eyes positioned ^ ^ ^0.01 run function unbound:mob/fairy/light/find_large


particle wax_off ~ ~ ~ 0 0 0 5 2 force @a[distance=..64]