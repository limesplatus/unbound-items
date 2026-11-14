summon lightning_bolt ~ ~ ~ {Tags:["smithed.entity","unbound_spawn_checked"]}

tp @s ~ ~ ~

scoreboard players set @s unbound_count 0

tag @e[distance=..2,type=!#unbound:misc,nbt=!{NoAI:1b}] add unbound_shocked
execute as @e[distance=..2,type=!#unbound:misc,nbt=!{NoAI:1b},tag=unbound_shocked] run data modify entity @s NoAI set value 1b
kill @n[distance=..2,type=arrow,tag=unbound_shock_arrow_arrow]