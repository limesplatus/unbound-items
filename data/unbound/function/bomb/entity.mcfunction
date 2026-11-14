
scoreboard players add @s unbound_count 1
scoreboard players add @s unbound_count2 1

particle large_smoke ~ ~.2 ~ 0 0 0 .02 2 force @a[distance=..128]

execute if score @s unbound_count2 matches 1..9 if block ~ ~ ~ #unbound:permeable run tp @s ^ ^ ^.6
execute if score @s unbound_count2 matches 10..20 if block ~ ~ ~ #unbound:permeable run tp @s ^ ^ ^.4
execute if score @s unbound_count2 matches 21..30 if block ~ ~ ~ #unbound:permeable run tp @s ^ ^ ^.25
execute if score @s unbound_count2 matches 31..40 if block ~ ~ ~ #unbound:permeable run tp @s ^ ^ ^.1


execute at @s if score @s unbound_count matches 5..200 at @s if block ~ ~-.1 ~ #unbound:permeable unless block ~ ~ ~ #unbound:water run function unbound:confusion_slime/main_gravity


execute at @s unless block ~ ~ ~ #unbound:permeable if block ~ ~.2 ~ #unbound:permeable align y run function unbound:bomb/hit_ground


execute if score @s unbound_count matches 10.. if score 2tick unbound_clock matches 1 run playsound block.netherite_block.break block @a[distance=..64] ~ ~ ~ 1 2



execute at @s if score @s unbound_count matches 20..199 unless block ~ ~-0.1 ~ #unbound:permeable_exclude_water run scoreboard players set @s unbound_count 200
execute at @s if score @s unbound_count matches 200 run function unbound:bomb/explode
execute at @s if score @s unbound_count matches 200..204 run particle explosion ~ ~1 ~ 1.5 1.5 1.5 0 1 force @a[distance=..128]
execute at @s if score @s unbound_count matches 204 run kill @s