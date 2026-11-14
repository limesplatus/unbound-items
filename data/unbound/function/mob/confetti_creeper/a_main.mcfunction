
# ahh i fekk
execute unless predicate unbound:location/riding run ride @s mount @n[type=creeper,tag=unbound_confetti_creeper]

#as creeper mob
execute as @e[type=creeper,tag=unbound_confetti_creeper,distance=..3] if score @s unbound_uuid1 = @n[distance=..0.00001,type=item_display] unbound_uuid1 if data entity @s {DeathTime:0s} at @s run function unbound:mob/confetti_creeper/as_creeper


#no creeper found? then death anim
execute unless score creeper_alive unbound_storage matches 1 run function unbound:mob/confetti_creeper/death


scoreboard players reset creeper_alive unbound_storage




schedule function unbound:mob/confetti_creeper/a_loop_1t 1t replace
