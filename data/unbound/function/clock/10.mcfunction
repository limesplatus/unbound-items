
execute as @a at @s as @e[distance=..6,type=villager,tag=!unbound_trade_set] run function unbound:other/as_villager

scoreboard players set 10tick unbound_clock 0

schedule function unbound:clock/10 10t