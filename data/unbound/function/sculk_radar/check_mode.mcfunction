scoreboard players reset @s unbound_radar_calibration_mode

execute if score 20tick unbound_clock matches 1 unless score @s unbound_radar_calibration_mode matches 1.. if predicate unbound:equipped/sculk_radar/mode1 run scoreboard players set @s unbound_radar_calibration_mode 1
execute if score 20tick unbound_clock matches 1 unless score @s unbound_radar_calibration_mode matches 1.. if predicate unbound:equipped/sculk_radar/mode2 run scoreboard players set @s unbound_radar_calibration_mode 2
execute if score 20tick unbound_clock matches 1 unless score @s unbound_radar_calibration_mode matches 1.. if predicate unbound:equipped/sculk_radar/mode3 run scoreboard players set @s unbound_radar_calibration_mode 3
execute if score 20tick unbound_clock matches 1 unless score @s unbound_radar_calibration_mode matches 1.. if predicate unbound:equipped/sculk_radar/mode4 run scoreboard players set @s unbound_radar_calibration_mode 4