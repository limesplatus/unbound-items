# charged lightning creeper edition

summon snowball ~ ~ ~ {Rotation:[90,-80],Motion:[0,0,0],Tags:["smithed.entity","unbound_confetti","unbound_temp3"],Item:{id:"snowball",components:{custom_model_data:{floats:[4376033]}}}}
summon snowball ~ ~ ~ {Rotation:[180,-80],Motion:[0,0,0],Tags:["smithed.entity","unbound_confetti","unbound_temp3"],Item:{id:"snowball",components:{custom_model_data:{floats:[4376033]}}}}
summon snowball ~ ~ ~ {Rotation:[90,-80],Motion:[0,0,0],Tags:["smithed.entity","unbound_confetti","unbound_temp3"],Item:{id:"snowball",components:{custom_model_data:{floats:[4376033]}}}}
summon snowball ~ ~ ~ {Rotation:[-90,-80],Motion:[0,0,0],Tags:["smithed.entity","unbound_confetti","unbound_temp3"],Item:{id:"snowball",components:{custom_model_data:{floats:[4376033]}}}}

execute as @e[distance=..0.01,type=snowball,tag=unbound_temp3,limit=4] at @s run function unbound:confetti/summon


summon firework_rocket ~5.000 ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",colors:[16713818]},{shape:"burst",colors:[16748800]},{shape:"burst",colors:[16770560]},{shape:"burst",colors:[5111552]},{shape:"burst",colors:[393207]},{shape:"burst",colors:[46079]},{shape:"burst",colors:[9592063]},{shape:"burst",colors:[16711901]}]}}}}
summon firework_rocket ~-5.000 ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",colors:[16713818]},{shape:"burst",colors:[16748800]},{shape:"burst",colors:[16770560]},{shape:"burst",colors:[5111552]},{shape:"burst",colors:[393207]},{shape:"burst",colors:[46079]},{shape:"burst",colors:[9592063]},{shape:"burst",colors:[16711901]}]}}}}
summon firework_rocket ~ ~ ~5.000 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",colors:[16713818]},{shape:"burst",colors:[16748800]},{shape:"burst",colors:[16770560]},{shape:"burst",colors:[5111552]},{shape:"burst",colors:[393207]},{shape:"burst",colors:[46079]},{shape:"burst",colors:[9592063]},{shape:"burst",colors:[16711901]}]}}}}
summon firework_rocket ~ ~ ~-5.000 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",colors:[16713818]},{shape:"burst",colors:[16748800]},{shape:"burst",colors:[16770560]},{shape:"burst",colors:[5111552]},{shape:"burst",colors:[393207]},{shape:"burst",colors:[46079]},{shape:"burst",colors:[9592063]},{shape:"burst",colors:[16711901]}]}}}}

scoreboard players set creeper_charged_small_exposion unbound_storage 1

particle firework ~ ~ ~ 0 0 0 .5 50 force @a[distance=..128]
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


scoreboard players reset creeper_charged_small_exposion unbound_storage
