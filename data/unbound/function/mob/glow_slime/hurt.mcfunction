
data modify entity @s item.components."minecraft:custom_model_data".floats set value [4376029]


playsound block.amethyst_cluster.step hostile @a[distance=..32] ~ ~ ~ 1 2

scoreboard players set @s unbound_mob_anim -20

playsound minecraft:entity.glow_squid.ambient hostile @a[distance=..32] ~ ~ ~ 1 2


execute if predicate unbound:chance/50_percent run scoreboard players add @s unbound_mob_anim2 0