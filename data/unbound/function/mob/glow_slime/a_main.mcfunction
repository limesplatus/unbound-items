


# ahh i fekk
execute unless predicate unbound:location/riding run ride @s mount @n[type=slime,tag=unbound_glow_slime]

# ->> this file is being run by an item display (the slime model)

#as slime mob
execute as @e[type=slime,tag=unbound_glow_slime,distance=..3] if score @s unbound_uuid1 = @n[distance=..0.00001,type=item_display] unbound_uuid1 run function unbound:mob/glow_slime/as_slime

particle glow ~ ~ ~ .3 .3 .3 .05 1 force @a[distance=..32]



#player nearby
execute if entity @p[distance=..12] run function unbound:mob/glow_slime/a_main_target


#attack animation
execute if score @s unbound_mob_anim2 matches 0.. run function unbound:mob/glow_slime/attack_anim

#no slime found? then death anim
execute unless score @s unbound_mob_anim matches 0.. unless score slime_alive unbound_storage matches 1 run function unbound:mob/glow_slime/death

#anim add counter timer
execute if score @s unbound_mob_anim matches -200.. run scoreboard players add @s unbound_mob_anim 1

#death anim
execute if score @s unbound_mob_anim matches 0.. run function unbound:mob/glow_slime/death_anim

#hurt exit
execute if score @s unbound_mob_anim matches -10 run function unbound:mob/glow_slime/hurt_exit

schedule function unbound:mob/glow_slime/a_loop_1t 1t replace


scoreboard players reset slime_alive unbound_storage
