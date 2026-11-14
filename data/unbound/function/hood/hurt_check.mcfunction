execute store result score @s unbound_player_health2 run data get entity @s Health
execute if score @s unbound_player_health2 matches 1..6 run function unbound:hood/hurt

advancement revoke @s only unbound:technical/entity_attacked_player_hood
#say s