
execute store result score randomizer unbound_storage run random value 1..6

execute as @n[type=item_display,tag=unbound_confetti_creeper_model,distance=..1.5] run loot spawn ~ ~ ~ loot unbound:entity/confetti_creeper

execute if score randomizer unbound_storage matches 1

execute as @e[distance=..1,type=!#unbound:misc] run damage @s 25 unbound:explosion_confetti_creeper by @n[distance=..4,type=item_display,tag=unbound_confetti_creeper_model]
execute as @e[distance=1..2,type=!#unbound:misc] run damage @s 20 unbound:explosion_confetti_creeper by @n[distance=..4,type=item_display,tag=unbound_confetti_creeper_model]
execute as @e[distance=2..3,type=!#unbound:misc] run damage @s 15 unbound:explosion_confetti_creeper by @n[distance=..4,type=item_display,tag=unbound_confetti_creeper_model]
execute as @e[distance=3..4,type=!#unbound:misc] run damage @s 12 unbound:explosion_confetti_creeper by @n[distance=..4,type=item_display,tag=unbound_confetti_creeper_model]
execute as @e[distance=4..5,type=!#unbound:misc] run damage @s 9 unbound:explosion_confetti_creeper by @n[distance=..4,type=item_display,tag=unbound_confetti_creeper_model]
execute as @e[distance=5..5.5,type=!#unbound:misc] run damage @s 6 unbound:explosion_confetti_creeper by @n[distance=..4,type=item_display,tag=unbound_confetti_creeper_model]


summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[16713818]},{shape:"star",colors:[16748800]},{shape:"star",colors:[16770560]},{shape:"star",colors:[5111552]},{shape:"star",colors:[393207]},{shape:"star",colors:[46079]},{shape:"star",colors:[9592063]},{shape:"star",colors:[16711901]}]}}}}


particle explosion ~ ~ ~ 2 2 2 1 6 force @a[distance=..128]

playsound entity.firework_rocket.twinkle hostile @a[distance=..64] ~ ~ ~ 3 1.2

particle dust_pillar{block_state:{id:"red_concrete"}} ~ ~1 ~ 0 0 0 .05 10 force @a[distance=..32]
particle dust_pillar{block_state:{id:"yellow_concrete"}} ~ ~1 ~ 0 0 0 .05 10 force @a[distance=..32]
particle dust_pillar{block_state:{id:"green_concrete"}} ~ ~1 ~ 0 0 0 .05 10 force @a[distance=..32]
particle dust_pillar{block_state:{id:"light_blue_concrete"}} ~ ~1 ~ 0 0 0 .05 10 force @a[distance=..32]
particle dust_pillar{block_state:{id:"magenta_concrete"}} ~ ~1 ~ 0 0 0 .05 10 force @a[distance=..32]


particle firework ~ ~ ~ 0 0 0 .3 30 force @a[distance=..128]
function unbound:mob/confetti_creeper/smaller_explosions/summon
function unbound:mob/confetti_creeper/smaller_explosions/summon
function unbound:mob/confetti_creeper/smaller_explosions/summon
function unbound:mob/confetti_creeper/smaller_explosions/summon
function unbound:mob/confetti_creeper/smaller_explosions/summon
function unbound:mob/confetti_creeper/smaller_explosions/summon

function unbound:mob/confetti_creeper/smaller_explosions/summon
function unbound:mob/confetti_creeper/smaller_explosions/summon
function unbound:mob/confetti_creeper/smaller_explosions/summon
function unbound:mob/confetti_creeper/smaller_explosions/summon
function unbound:mob/confetti_creeper/smaller_explosions/summon
function unbound:mob/confetti_creeper/smaller_explosions/summon
