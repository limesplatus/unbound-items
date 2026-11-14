tag @s add unbound_temp
execute run damage @s 0 mob_attack by @e[limit=1,sort=random,distance=..6,type=!#unbound:non_confused_target,tag=!unbound_temp]

tag @s remove unbound_temp

scoreboard players set @s unbound_confused 0
