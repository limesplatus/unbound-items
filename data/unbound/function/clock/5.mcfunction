execute as @e[type=!#unbound:misc,scores={unbound_confused=0..}] at @s run function unbound:confusion_slime/confused_entity


execute if score mob_spawns unbound_config matches 1 in overworld as @e[type=lightning_bolt,tag=!unbound_spawn_checked,predicate=unbound:dimension/overworld] at @s run function unbound:mob/phantom_rider/spawn_chance

scoreboard players set 5tick unbound_clock 0

schedule function unbound:clock/5 5t
