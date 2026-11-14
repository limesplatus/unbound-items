
#attack
execute if predicate unbound:tick/10 if predicate unbound:chance/20_percent if entity @p[distance=..6,gamemode=!spectator] run scoreboard players add @s unbound_mob_anim2 0
