

scoreboard players add @s unbound_count 1


execute if predicate unbound:chance/40_percent run particle ominous_spawning ~ ~-.5 ~ .4 .4 .4 0 1 force @a[distance=..64]

execute if score @s unbound_count matches 100.. run fill ~ ~ ~ ~ ~ ~ air replace light
execute if score @s unbound_count matches 100.. run kill @s

schedule function unbound:mob/fairy/light/a_loop_4t 4t
