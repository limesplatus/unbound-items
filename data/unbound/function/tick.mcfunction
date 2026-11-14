
# COUNTERS AND CLOCKS
# find other ticking functions on slower clocks in unbound:clocks/

#scoreboard players add 2min unbound_clock 1

#scoreboard players add second unbound_clock 1

scoreboard players add 10tick unbound_clock 1

scoreboard players add 20tick unbound_clock 1

scoreboard players add 24tick unbound_clock 1

scoreboard players add 2tick unbound_clock 1

scoreboard players add 3tick unbound_clock 1

scoreboard players add 4tick unbound_clock 1

scoreboard players add 5tick unbound_clock 1


#######


#execute as @e[type=skeleton,tag=unbound_ancient_skeleton] at @s run function unbound:mob/ancient_skeleton/a_main


execute as @e[type=area_effect_cloud,tag=unbound_bomb] at @s run function unbound:bomb/entity

execute as @a at @s run function unbound:player