

item modify entity @s weapon unbound:sculk_radar/calibrate

scoreboard players reset @s unbound_radar_calibration

playsound block.stone_button.click_on player @a[distance=..32] ~ ~ ~ 1 1.8

playsound event.mob_effect.trial_omen player @a[distance=..32] ~ ~ ~ .5 1.2

playsound item.lodestone_compass.lock block @a[distance=..30] ~ ~ ~ 1 1.2
playsound item.lodestone_compass.lock block @a[distance=..30] ~ ~ ~ 1 1.8


title @s actionbar [{"translate": "Sculk Radar Calibratted!","color":"aqua"},{"text":" ","color":"aqua"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"aqua"}]

item modify entity @s weapon.mainhand unbound:sculk_radar1

execute if predicate unbound:equipped/sculk_radar/mode4 run item modify entity @s weapon.mainhand unbound:sculk_radar/name/mode4
execute if predicate unbound:equipped/sculk_radar/mode3 run item modify entity @s weapon.mainhand unbound:sculk_radar/name/mode3
execute if predicate unbound:equipped/sculk_radar/mode2 run item modify entity @s weapon.mainhand unbound:sculk_radar/name/mode2
execute if predicate unbound:equipped/sculk_radar/mode1 run item modify entity @s weapon.mainhand unbound:sculk_radar/name/mode1


