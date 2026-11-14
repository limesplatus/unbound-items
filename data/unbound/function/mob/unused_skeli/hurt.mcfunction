playsound minecraft:entity.wither_skeleton.hurt hostile @a[distance=..32] ~ ~ ~ .5 1.2


#math!
scoreboard players operation previous_health unbound_mob_health = @s unbound_mob_health

scoreboard players operation damage_taken unbound_mob_health = @s unbound_mob_health

execute store result score current_health unbound_mob_health run data get entity @s Health 100



#find damage taken
scoreboard players operation damage_taken unbound_mob_health -= current_health unbound_mob_health



#tellraw @a[tag=log] ""

#tellraw @a[tag=log] ["current_health: ",{"score":{"name":"current_health","objective":"unbound_mob_health"}}]
#tellraw @a[tag=log] ["previous_health: ",{"score":{"name":"previous_health","objective":"unbound_mob_health"}}]

#tellraw @a[tag=log] ["resistance 4 damage_taken: ",{"score":{"name":"damage_taken","objective":"unbound_mob_health"}}]


#multiply by 5 to account for resistance level 4
scoreboard players operation damage_taken unbound_mob_health *= 5 unbound_constants

#tellraw @a[tag=log] ["damage_taken: ",{"score":{"name":"damage_taken","objective":"unbound_mob_health"}}]

#tellraw @a[tag=log] ""



#subtract damage taken from previous health and then apply (or perform death animation)
scoreboard players operation previous_health unbound_mob_health -= damage_taken unbound_mob_health

execute if score previous_health unbound_mob_health matches ..0 run function unbound:mob/ancient_skeleton/death
execute store result entity @s Health float 0.01 run scoreboard players get previous_health unbound_mob_health
