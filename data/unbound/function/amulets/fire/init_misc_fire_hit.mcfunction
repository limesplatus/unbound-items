# function unbound:amulets/fire/init

advancement revoke @s only unbound:technical/entity_hurt_player_fire_amulet



execute if predicate unbound:equipped/fire_amulet_mainhand run item modify entity @s weapon unbound:fire_amulet3
execute if predicate unbound:equipped/fire_amulet_offhand run item modify entity @s weapon.offhand unbound:fire_amulet3


execute unless score @s unbound_fire_time_on_fire matches 1080.. run scoreboard players set @s unbound_fire_time_on_fire 1080
