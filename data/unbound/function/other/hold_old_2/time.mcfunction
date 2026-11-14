scoreboard players add @s unbound_hood_time 1


execute if score @s unbound_player_health matches ..0 run function unbound:hood/time_end
execute if score @s unbound_hood_time matches 80 run function unbound:hood/time_end
execute if score @s unbound_hood_time matches 1200.. run scoreboard players reset @s unbound_hood_time