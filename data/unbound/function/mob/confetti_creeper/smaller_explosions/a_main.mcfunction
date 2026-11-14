scoreboard players add @s unbound_count 1
scoreboard players add @s unbound_count2 1

particle dust{color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 1 force @a[distance=..64]

execute if score @s unbound_count matches ..20 run tp @s ^ ^ ^.6
execute if score @s unbound_count matches 21.. run tp @s ^ ^ ^.5

function unbound:confusion_slime/main_gravity

execute unless block ~ ~ ~ #unbound:permeable run function unbound:mob/confetti_creeper/smaller_explosions/explode
execute if score @s unbound_count2 matches 10.. if predicate unbound:chance/5_percent run function unbound:mob/confetti_creeper/smaller_explosions/explode
execute if score @s unbound_count2 matches 40.. run function unbound:mob/confetti_creeper/smaller_explosions/explode

schedule function unbound:mob/confetti_creeper/smaller_explosions/a_loop_1t 1t replace