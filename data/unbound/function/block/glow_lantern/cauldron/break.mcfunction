


execute if score @s unbound_block_level matches 4.. run loot spawn ~ ~.4 ~ loot unbound:glow_slime_ball
execute if score @s unbound_block_level matches 3.. run loot spawn ~ ~.4 ~ loot unbound:glow_slime_ball
execute if score @s unbound_block_level matches 2.. run loot spawn ~ ~.4 ~ loot unbound:glow_slime_ball

execute run loot spawn ~ ~.4 ~ loot unbound:glow_slime_ball

execute positioned ~ ~0.450 ~ run kill @e[distance=..0.5,sort=nearest,limit=4,type=item_display,tag=unbound_glow_lantern_cauldron_item]
kill @s