execute store result score @s unbound_mob_health run data get entity @s Health
execute if score @s unbound_mob_health matches ..15 run data modify entity @s ignited set value 1b
execute if score @s unbound_mob_health matches ..15 run function unbound:mob/confetti_creeper/explosion_events_init