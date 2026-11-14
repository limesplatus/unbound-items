
summon item_display ~ ~ ~ {Tags:["smithed.entity","unbound_temp"]}
ride @s mount @n[distance=..3,type=item_display,tag=unbound_temp]
kill @n[distance=..3,type=item_display,tag=unbound_temp]
title @s actionbar {"text":""}


effect give @s minecraft:levitation 1 20 true

tag @s add unbound_cloak_pogo_boost
