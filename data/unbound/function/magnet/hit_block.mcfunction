
execute if score 4tick unbound_clock matches 1 run playsound block.vault.ambient player @a[distance=..32] ~ ~ ~ 1 1.5

particle enchant ~ ~2 ~ 0 0 0 3 5 force @a[distance=..32]

particle electric_spark ~ ~ ~ .5 .5 .5 .05 1 force @a[distance=..32]

execute as @e[type=#unbound:pulled_by_magnet,distance=..3] at @s facing entity @p[distance=..32,tag=unbound_magnet_user] eyes rotated ~ ~ run function unbound:magnet/pull_item

scoreboard players set repetition unbound_storage 2022