execute unless block ~ ~ ~ lantern run function unbound:block/glow_lantern/break
execute if score @s unbound_block_level matches ..0 run function unbound:block/glow_lantern/break


execute if entity @s[tag=!unbound_glow_lantern_tinted] run function unbound:block/glow_lantern/main_on
execute if entity @s[tag=unbound_glow_lantern_tinted] if predicate unbound:chance/25_percent run particle glow ~ ~ ~ 0 0 0 .02 1 force @a[distance=..32]

