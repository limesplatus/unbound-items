





execute if predicate unbound:equipped/sculk_radar/mode4 run item modify entity @s weapon.mainhand unbound:sculk_radar/mode0
execute if predicate unbound:equipped/sculk_radar/mode3 run item modify entity @s weapon.mainhand unbound:sculk_radar/mode4
execute if predicate unbound:equipped/sculk_radar/mode2 run item modify entity @s weapon.mainhand unbound:sculk_radar/mode3
execute if predicate unbound:equipped/sculk_radar/mode1 run item modify entity @s weapon.mainhand unbound:sculk_radar/mode2
execute if predicate unbound:equipped/sculk_radar/mode0 run item modify entity @s weapon.mainhand unbound:sculk_radar/mode1



tag @s add unbound_used_sculk_radar


playsound block.stone_button.click_on player @a[distance=..32] ~ ~ ~ 1 1