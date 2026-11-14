scoreboard players add @s unbound_confused 1


particle dust_color_transition{from_color:[0.608,0.310,1.000],scale:1,to_color:[0.071,0.165,1.000],scale:1.5} ~ ~1.5 ~ .15 .15 .15 1 2 force @a[distance=..128]

tag @s remove unbound_is_confused
execute on attacker unless entity @s[type=player] as @n run tag @s add unbound_is_confused

execute unless entity @s[tag=unbound_is_confused] run scoreboard players reset @s unbound_confused