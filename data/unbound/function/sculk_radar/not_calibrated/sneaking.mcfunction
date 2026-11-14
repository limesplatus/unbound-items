execute unless predicate unbound:equipped/sculk_radar/mode0 run scoreboard players add @s unbound_radar_calibration 1
execute if predicate unbound:equipped/sculk_radar/mode0 run title @s actionbar [{"text": "No target selected","color":"gray"},{"text":" ","color":"aqua"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_gray"}]

execute unless predicate unbound:equipped/sculk_radar/mode0 if score 4tick unbound_clock matches 1 run playsound block.copper_grate.step player @a[distance=..32] ~ ~ ~ .9 1.5


execute if score @s unbound_radar_calibration matches ..4 run title @s actionbar [{"text": "Calibrating target ","color":"gray"},{"nbt":"SelectedItem.components.minecraft:custom_data.unbound_sculk_radar_mode_name","entity":"@s","color": "yellow"},{"text":"... "},{"text":"","color":"aqua"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_gray"}]

execute if score @s unbound_radar_calibration matches 5..8 run title @s actionbar [{"text": "Calibrating target ","color":"gray"},{"nbt":"SelectedItem.components.minecraft:custom_data.unbound_sculk_radar_mode_name","entity":"@s","color": "yellow"},{"text":"... "},{"text":"⬛","color":"aqua"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_gray"}]

execute if score @s unbound_radar_calibration matches 9..12 run title @s actionbar [{"text": "Calibrating target ","color":"gray"},{"nbt":"SelectedItem.components.minecraft:custom_data.unbound_sculk_radar_mode_name","entity":"@s","color": "yellow"},{"text":"... "},{"text":"⬛⬛","color":"aqua"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_gray"}]

execute if score @s unbound_radar_calibration matches 13..16 run title @s actionbar [{"text": "Calibrating target ","color":"gray"},{"nbt":"SelectedItem.components.minecraft:custom_data.unbound_sculk_radar_mode_name","entity":"@s","color": "yellow"},{"text":"... "},{"text":"⬛⬛⬛","color":"aqua"},{"text":"⬛⬛⬛⬛⬛⬛⬛","color":"dark_gray"}]

execute if score @s unbound_radar_calibration matches 17..20 run title @s actionbar [{"text": "Calibrating target ","color":"gray"},{"nbt":"SelectedItem.components.minecraft:custom_data.unbound_sculk_radar_mode_name","entity":"@s","color": "yellow"},{"text":"... "},{"text":"⬛⬛⬛⬛","color":"aqua"},{"text":"⬛⬛⬛⬛⬛⬛","color":"dark_gray"}]

execute if score @s unbound_radar_calibration matches 21..24 run title @s actionbar [{"text": "Calibrating target ","color":"gray"},{"nbt":"SelectedItem.components.minecraft:custom_data.unbound_sculk_radar_mode_name","entity":"@s","color": "yellow"},{"text":"... "},{"text":"⬛⬛⬛⬛⬛","color":"aqua"},{"text":"⬛⬛⬛⬛⬛","color":"dark_gray"}]

execute if score @s unbound_radar_calibration matches 25..28 run title @s actionbar [{"text": "Calibrating target ","color":"gray"},{"nbt":"SelectedItem.components.minecraft:custom_data.unbound_sculk_radar_mode_name","entity":"@s","color": "yellow"},{"text":"... "},{"text":"⬛⬛⬛⬛⬛⬛","color":"aqua"},{"text":"⬛⬛⬛⬛","color":"dark_gray"}]

execute if score @s unbound_radar_calibration matches 29..32 run title @s actionbar [{"text": "Calibrating target ","color":"gray"},{"nbt":"SelectedItem.components.minecraft:custom_data.unbound_sculk_radar_mode_name","entity":"@s","color": "yellow"},{"text":"... "},{"text":"⬛⬛⬛⬛⬛⬛⬛","color":"aqua"},{"text":"⬛⬛⬛","color":"dark_gray"}]

execute if score @s unbound_radar_calibration matches 33..36 run title @s actionbar [{"text": "Calibrating target ","color":"gray"},{"nbt":"SelectedItem.components.minecraft:custom_data.unbound_sculk_radar_mode_name","entity":"@s","color": "yellow"},{"text":"... "},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛","color":"aqua"},{"text":"⬛⬛","color":"dark_gray"}]

execute if score @s unbound_radar_calibration matches 37..40 run title @s actionbar [{"text": "Calibrating target ","color":"gray"},{"nbt":"SelectedItem.components.minecraft:custom_data.unbound_sculk_radar_mode_name","entity":"@s","color": "yellow"},{"text":"... "},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"aqua"},{"text":"⬛","color":"dark_gray"}]





execute if score @s unbound_radar_calibration matches 41 run function unbound:sculk_radar/not_calibrated/calibrate