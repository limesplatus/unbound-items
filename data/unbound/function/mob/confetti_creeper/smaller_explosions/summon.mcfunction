

summon marker ~ ~ ~ {Tags:["smithed.entity","unbound_confetti_creeper_small_explosion","unbound_temp2"],CustomName:{"translate":"Confetti Creeper"}}

execute if score creeper_charged_small_exposion unbound_storage matches 1 run scoreboard players set @n[type=marker,distance=..0.001,tag=unbound_temp2] unbound_count -10
execute if score creeper_charged_small_exposion unbound_storage matches 1 run scoreboard players set @n[type=marker,distance=..0.001,tag=unbound_temp2] unbound_count2 -3040

execute store result score direction1 unbound_storage run random value 1..360
execute store result score direction2 unbound_storage run random value -80..-30

execute store result entity @n[type=marker,tag=unbound_temp2,distance=..2] Rotation[0] float 1 run scoreboard players get direction1 unbound_storage
execute store result entity @n[type=marker,tag=unbound_temp2,distance=..2] Rotation[1] float 1 run scoreboard players get direction2 unbound_storage


execute as @n[type=marker,tag=unbound_temp2,distance=..2] at @s run function unbound:mob/confetti_creeper/smaller_explosions/a_main





tag @n[tag=unbound_temp2,distance=..2] remove unbound_temp2
