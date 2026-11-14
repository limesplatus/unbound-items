scoreboard players add @s unbound_strider_boots_cooldown 1


execute if predicate unbound:chance/50_percent run particle large_smoke ~ ~.5 ~ 0 0 0 .02 1 force @a[distance=..64]

execute if score @s unbound_strider_boots_cooldown matches 60.. run scoreboard players reset @s unbound_strider_boots_count
execute if score @s unbound_strider_boots_cooldown matches 60.. run scoreboard players reset @s unbound_strider_boots_cooldown