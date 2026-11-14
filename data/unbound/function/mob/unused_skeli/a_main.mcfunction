execute if predicate unbound:chance/50_percent run particle sculk_soul ~ ~1.4 ~ 0 0 0 .05 1 force @a[distance=..32]

effect give @s resistance 10 3 true


execute if entity @s[nbt={HurtTime:10s}] run function unbound:mob/ancient_skeleton/hurt

execute if predicate unbound:clock/5 store result score @s unbound_mob_health run data get entity @s Health 100
