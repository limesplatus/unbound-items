



execute if predicate unbound:chance/20_percent run function unbound:mob/confetti_creeper/idle_particle_random


particle falling_dust{block_state:{id:"red_concrete"}} ~ ~ ~ .3 0 .3 .02 1 force @a[distance=..64]
particle falling_dust{block_state:{id:"yellow_concrete"}} ~ ~ ~ .3 0 .3 .02 1 force @a[distance=..64]
particle falling_dust{block_state:{id:"lime_concrete"}} ~ ~ ~ .3 0 .3 .02 1 force @a[distance=..64]
particle falling_dust{block_state:{id:"light_blue_concrete"}} ~ ~ ~ .3 0 .3 .02 1 force @a[distance=..64]
particle falling_dust{block_state:{id:"magenta_concrete"}} ~ ~ ~ .3 0 .3 .02 1 force @a[distance=..64]

#target
execute on target run tag @s add unbound_target

#creeper present
scoreboard players set creeper_alive unbound_storage 1

#creeper lightning
execute if score 20tick unbound_clock matches 1 if entity @s[nbt={powered:true}] run data modify entity @s ExplosionRadius set value 3
execute if score 20tick unbound_clock matches 1 if entity @s[nbt={powered:true}] positioned ~ ~1.9 ~ run tag @n[distance=..1,type=item_display,tag=unbound_confetti_creeper_model] add unbound_confetti_creeper_charged

execute rotated as @s run rotate @n[type=item_display,tag=unbound_confetti_creeper_model] facing entity @p[tag=unbound_target,distance=..20] eyes

execute if entity @p[distance=..3,tag=unbound_target] run particle firework ~ ~1 ~ 0 0 0 .15 5 force @a[distance=..64]

execute if entity @p[distance=..64] if entity @s[nbt={HurtTime:10s}] run function unbound:mob/confetti_creeper/hurt

# explosion hurt event
execute if score @s unbound_mob_anim matches 0.. run function unbound:mob/confetti_creeper/explosion_events

#target remove
execute on target run tag @s remove unbound_target
