scoreboard players add @s unbound_count 1


execute if score @s unbound_count matches 2..4 as @e[distance=..0.75,type=item_display,tag=unbound_glow_lantern_cauldron_item] at @s facing entity @n[type=item_display,tag=unbound_glow_lantern_cauldron] feet run tp @s ^ ^.02 ^.02
execute if score @s unbound_count matches 5.. as @e[distance=..0.75,type=item_display,tag=unbound_glow_lantern_cauldron_item] at @s facing entity @n[type=item_display,tag=unbound_glow_lantern_cauldron] feet run tp @s ^ ^.02 ^.06
execute if score @s unbound_count matches 1.. as @e[distance=..0.75,type=item_display,tag=unbound_glow_lantern_cauldron_item] at @s at @s run tp @s ~ ~ ~ ~ ~6

execute if score @s unbound_count matches 6.. run particle splash ~ ~.4 ~ 0 0 0 .1 5 force @a[distance=..32]

execute if score @s unbound_count matches 9.. run function unbound:block/glow_lantern/cauldron/create