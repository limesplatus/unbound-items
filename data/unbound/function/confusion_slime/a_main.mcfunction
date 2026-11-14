scoreboard players add @s unbound_count 1
scoreboard players add @s[scores={unbound_count2=1..}] unbound_count2 1

function unbound:confusion_slime/main_velocity

execute if score @s unbound_count matches 5..200 at @s unless block ~ ~ ~ #unbound:water run function unbound:confusion_slime/main_gravity

execute if score @s unbound_count matches 4..200 if entity @e[dx=0,type=!#unbound:misc] run function unbound:confusion_slime/explode
execute if score @s unbound_count matches 1..200 unless block ~ ~-.4 ~ #unbound:permeable run function unbound:confusion_slime/explode



execute if predicate unbound:chance/10_percent run particle dust_color_transition{from_color:[0.608,0.310,1.000],scale:1,to_color:[0.071,0.165,1.000],scale:1.0} ~ ~.2 ~ .15 .15 .15 1 1 force @a[distance=..128]





execute if score @s unbound_count matches 200 run particle poof ~ ~ ~ 0 0 0 0 1 force @a[distance=..64]
execute if score @s unbound_count matches 200 run kill @s


schedule function unbound:confusion_slime/a_loop_1t 1t replace