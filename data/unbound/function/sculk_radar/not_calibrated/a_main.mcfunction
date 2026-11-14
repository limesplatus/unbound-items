

execute if predicate unbound:equipped/sculk_radar/mode0 run title @s actionbar [{"translate": "Swap Target: ","color":"yellow"},{"keybind":"key.use","color": "gray"},{"translate":"  |  ","color": "dark_gray"},{"translate":"Calibrate: ","color":"aqua"},{"translate":"Hold Sneak","color": "gray"},{"text":"","color": "gray"}]


execute if predicate unbound:equipped/sculk_radar/mode1 run title @s actionbar [{"translate": "Target: ","color":"yellow"},{"translate":"Mobs & Players","color":"gray"}]
execute if predicate unbound:equipped/sculk_radar/mode2 run title @s actionbar [{"translate": "Target: ","color":"yellow"},{"translate":"Mobs","color":"gray"}]
execute if predicate unbound:equipped/sculk_radar/mode3 run title @s actionbar [{"translate": "Target: ","color":"yellow"},{"translate":"Players","color":"gray"}]
execute if predicate unbound:equipped/sculk_radar/mode4 run title @s actionbar [{"translate": "Target: ","color":"yellow"},{"translate":"Items","color":"gray"}]



execute if predicate unbound:player/sneaking run function unbound:sculk_radar/not_calibrated/sneaking
execute unless predicate unbound:player/sneaking run scoreboard players reset @s unbound_radar_calibration


execute if entity @s[tag=!unbound_used_sculk_radar,advancements={unbound:technical/use/sculk_radar=true}] run function unbound:sculk_radar/not_calibrated/use
execute if entity @s[tag=unbound_used_sculk_radar,advancements={unbound:technical/use/sculk_radar=false}] run tag @s remove unbound_used_sculk_radar

advancement revoke @s only unbound:technical/use/sculk_radar


