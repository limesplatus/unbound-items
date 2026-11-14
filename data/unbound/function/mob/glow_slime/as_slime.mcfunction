scoreboard players set slime_alive unbound_storage 1

execute rotated as @s run rotate @n[type=item_display,tag=unbound_glow_slime_model] ~ ~

execute if entity @p[distance=..20] at @s as @e[distance=0.0001..1.2,type=!#unbound:misc,type=!slime] run damage @s 5 mob_attack by @n[type=slime,distance=..0.0001]

execute if entity @p[distance=..20] if entity @s[nbt={HurtTime:10s}] as @n[distance=..0.00001,type=item_display] run function unbound:mob/glow_slime/hurt
