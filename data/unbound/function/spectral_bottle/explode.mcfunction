# particle end_rod ~ ~ ~ 0 0 0 .5 100 force @a[distance=..128]
particle end_rod ~ ~ ~ 0 0 0 .5 20 force @a[distance=..128]

particle flash{color:[1,1,1,1]} ~ ~ ~ 0 0 0 0 10 force @a[distance=..256]

particle wax_off ~ ~.2 ~ 0 0 0 50 100 force @a[distance=..128]
############

# GLOWING conditions

# normal
execute as @e[distance=..32,type=!#unbound:misc,predicate=!unbound:effect/invisibility] run function unbound:spectral_bottle/glow_effect

# non player invisible
execute as @e[distance=..8,type=!#unbound:misc,type=!player,predicate=unbound:effect/invisibility] run function unbound:spectral_bottle/glow_effect

# player invisible
execute as @a[distance=..32,predicate=unbound:effect/invisibility] run function unbound:spectral_bottle/invisible_players

############

# effects if you're too close

effect give @e[distance=..2.5,type=!#unbound:misc] slowness 2 3 false
effect give @e[distance=..2.5,type=!#unbound:misc] blindness 2 1 false

#damage 
    execute as @a if score @s unbound_uuid1 = @n unbound_uuid1 if score @s unbound_uuid2 = @n unbound_uuid2 if score @s unbound_uuid3 = @n unbound_uuid3 if score @s unbound_uuid4 = @n unbound_uuid4 run tag @s add unbound_temp_owner

    execute as @e[distance=..2.5,type=!#unbound:misc] run damage @s 3 unbound:magic by @p[tag=unbound_temp_owner]

    tag @a[tag=unbound_temp_owner] remove unbound_temp_owner


scoreboard players set @s[type=minecraft:item_display] unbound_count 499

playsound block.amethyst_cluster.break block @a[distance=..64] ~ ~ ~ 1 .5
playsound block.amethyst_cluster.break block @a[distance=..64] ~ ~ ~ 1 1
playsound block.amethyst_cluster.break block @a[distance=..64] ~ ~ ~ 1 2
playsound block.amethyst_cluster.break block @a[distance=..64] ~ ~ ~ 1 1.7

playsound entity.splash_potion.break block @a[distance=..64] ~ ~ ~ 1 1.2

data modify entity @s item set value {id:"minecraft:air"}

function unbound:spectral_bottle/wave_particle