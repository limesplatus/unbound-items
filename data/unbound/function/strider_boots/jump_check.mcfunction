execute unless score @s unbound_strider_boots_click_cooldown matches 0.. unless score @s unbound_strider_boots matches ..9 if block ~ ~ ~ lava align y run function unbound:strider_boots/search_lava_surface
execute unless score @s unbound_strider_boots_click_cooldown matches 0.. unless score @s unbound_strider_boots matches ..9 if block ~ ~-1 ~ lava align y run function unbound:strider_boots/search_lava_surface
execute if predicate unbound:motion/falling_mid unless score @s unbound_strider_boots_click_cooldown matches 0.. unless score @s unbound_strider_boots matches ..9 if block ~ ~-2 ~ lava align y run function unbound:strider_boots/search_lava_surface
execute unless score @s unbound_strider_boots_click_cooldown matches 0.. if predicate unbound:motion/falling_fast unless score @s unbound_strider_boots matches ..9 if block ~ ~-2.5 ~ lava align y run function unbound:strider_boots/search_lava_surface
execute unless score @s unbound_strider_boots_click_cooldown matches 0.. if predicate unbound:motion/falling_fast_2 unless score @s unbound_strider_boots matches ..9 if block ~ ~-2.75 ~ lava align y run function unbound:strider_boots/search_lava_surface


scoreboard players add @s unbound_strider_boots_click_cooldown 0