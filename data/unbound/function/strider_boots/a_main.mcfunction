

execute if predicate unbound:input/jump unless score @s unbound_strider_boots_count matches 2.. if block ~ ~1.5 ~ #air run function unbound:strider_boots/jump_check

execute if score @s unbound_strider_boots_cooldown matches -1200.. run function unbound:strider_boots/events_cooldown



# input click jump cooldowns
execute if score @s unbound_strider_boots_click_cooldown matches 0.. run scoreboard players add @s unbound_strider_boots_click_cooldown 1
execute if score @s unbound_strider_boots_click_cooldown matches 5.. run scoreboard players reset @s unbound_strider_boots_click_cooldown