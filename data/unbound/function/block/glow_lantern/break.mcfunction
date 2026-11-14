
tp @n[type=slime,tag=unbound_glow_lantern_cube] ~ -500 ~
kill @n[type=item_display,tag=unbound_glow_lantern_particle,distance=..0.01]

playsound block.amethyst_cluster.break block @a[distance=..32] ~ ~ ~ .3 2

execute if entity @s[tag=!unbound_glow_lantern_tinted] if score @s unbound_block_level matches 4.. run loot spawn ~ ~ ~ loot unbound:glow_slime_ball
execute if entity @s[tag=!unbound_glow_lantern_tinted] if score @s unbound_block_level matches 3.. run loot spawn ~ ~ ~ loot unbound:glow_slime_ball
execute if entity @s[tag=!unbound_glow_lantern_tinted] if score @s unbound_block_level matches 2.. run loot spawn ~ ~ ~ loot unbound:glow_slime_ball

execute if entity @s[tag=unbound_glow_lantern_tinted] run loot spawn ~ ~ ~ loot unbound:glow_slime_ball

kill @s