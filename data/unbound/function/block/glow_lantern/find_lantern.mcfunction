
# p.s. 4/12/2026 i should have been using a spawn egg for this but aa im not changing this now

stopsound @a[distance=..20] * entity.snowball.throw

execute unless score found_lantern unbound_storage matches 1 positioned ^ ^ ^ if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^ ^ ^1 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^ ^ ^2 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^ ^ ^3 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^ ^ ^4 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^ ^ ^5 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^ ^ ^6 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^ ^ ^7 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^ ^ ^8 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0

execute unless score found_lantern unbound_storage matches 1 positioned ^.5 ^ ^ if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^.5 ^ ^1 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^.5 ^ ^2 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^.5 ^ ^3 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^.5 ^ ^4 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^.5 ^ ^5 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^.5 ^ ^6 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^.5 ^ ^7 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^.5 ^ ^8 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0

execute unless score found_lantern unbound_storage matches 1 positioned ^-.5 ^ ^ if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^-.5 ^ ^1 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^-.5 ^ ^2 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^-.5 ^ ^3 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^-.5 ^ ^4 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^-.5 ^ ^5 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^-.5 ^ ^6 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^-.5 ^ ^7 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0
execute unless score found_lantern unbound_storage matches 1 positioned ^-.5 ^ ^8 if block ~ ~ ~ #unbound:glow_slime_apply align zyx positioned ~.5 ~.5 ~.5 run function unbound:block/glow_lantern/place_0


execute unless score found_lantern unbound_storage matches 1 unless entity @s[gamemode=creative] run summon item ~ ~ ~ {Item:{id:"minecraft:snowball",count:1},Tags:["smithed.entity","unbound_temp"]}
execute unless score found_lantern unbound_storage matches 1 run data modify entity @n[type=item,tag=unbound_temp] Item.components set from entity @n[type=snowball,tag=unbound_current_snowball] Item.components
scoreboard players reset found_lantern unbound_storage