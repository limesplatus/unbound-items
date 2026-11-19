

scoreboard players add @s unbound_count 1


execute if predicate unbound:chance/4_percent run tp @s ~ ~ ~ 90 ~
execute if predicate unbound:chance/4_percent run tp @s ~ ~ ~ -90 ~
execute if predicate unbound:chance/4_percent run tp @s ~ ~ ~ 180 ~
execute if predicate unbound:chance/4_percent run tp @s ~ ~ ~ -180 ~


execute if predicate unbound:chance/4_percent at @s run tp @s ~ ~ ~ ~ 90
execute if predicate unbound:chance/4_percent at @s run tp @s ~ ~ ~ ~ 0
execute if predicate unbound:chance/4_percent at @s run tp @s ~ ~ ~ ~ -90




execute at @s run particle electric_spark ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute at @s if block ^ ^ ^.2 #unbound:permeable run tp @s ^ ^ ^.2
execute at @s run particle electric_spark ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
execute at @s if block ^ ^ ^.2 #unbound:permeable run tp @s ^ ^ ^.2


execute unless block ~ ~ ~ #unbound:permeable run tp @s ~ ~.2 ~


execute if score @s unbound_count matches 10.. if predicate unbound:chance/10_percent run kill @s

schedule function unbound:mob/phantom_rider/arrow/electricity_loop_1t 1t