summon lightning_bolt ~ ~ ~ {Tags:["smithed.entity","unbound_spawn_checked"]}


playsound entity.lightning_bolt.thunder block @a[distance=..32] ~ ~ ~ 2 1.4

execute if score mob_griefing unbound_storage matches 1 run fill ~ ~ ~ ~ ~ ~ fire replace #unbound:permeable_exclude_water

particle flash{color:[1,1,1,1]} ~ ~.2 ~ 0 0 0 0 5 force @a[distance=..64]
particle wax_off ~ ~ ~ 1 1 1 1 10 force @a[distance=..64]
particle wax_off ~ ~ ~ 0 2 0 10 40 force @a[distance=..64]

function unbound:mob/phantom_rider/arrow/summon_electric


tp @s ~ ~ ~

scoreboard players set @s unbound_count 0

tag @e[distance=..2,type=!#unbound:misc,nbt=!{NoAI:1b}] add unbound_shocked
execute as @e[distance=..2,type=!#unbound:misc,nbt=!{NoAI:1b},tag=unbound_shocked] run data modify entity @s NoAI set value 1b
kill @n[distance=..2,type=arrow,tag=unbound_shock_arrow_arrow]


