
scoreboard players add @s unbound_count 1

execute at @s unless score @s unbound_count matches 10.. run particle effect ~ ~ ~ 0 0 0 .01 2 force @a[distance=..128]


execute at @s if score @s unbound_count matches 1..5 run tp @s ^ ^ ^.6
execute at @s if score @s unbound_count matches 6..10 run tp @s ^ ^ ^.3
execute at @s if score @s unbound_count matches 11..15 run tp @s ^ ^ ^.15



execute at @s if score @s unbound_count matches 5..499 if entity @n[distance=..3,dy=0,type=!#unbound:misc] positioned ~ ~.2 ~ run function unbound:spectral_bottle/explode
execute at @s if score @s unbound_count matches ..499 unless block ~ ~-0.2 ~ #unbound:permeable positioned ~ ~.2 ~ run function unbound:spectral_bottle/explode
execute at @s if score @s unbound_count matches 15 positioned ~ ~.2 ~ run function unbound:spectral_bottle/explode



execute at @s if score @s unbound_count matches 500..510 run particle end_rod ~ ~.2 ~ 0 0 0 .2 6 force @a[distance=..128]
execute at @s if score @s unbound_count matches 520 run kill @s


schedule function unbound:spectral_bottle/a_loop_1t 1t replace