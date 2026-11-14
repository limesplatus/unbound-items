


execute as @e[distance=..2,type=!#unbound:misc] run damage @s 6 unbound:explosion_confetti_creeper by @s

execute as @e[distance=2..4,type=!#unbound:misc] run damage @s 3 unbound:explosion_confetti_creeper by @s
execute store result score randomizer unbound_storage run random value 1..6



execute if score randomizer unbound_storage matches 1 run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,colors:[14155263]}]}}}}
execute if score randomizer unbound_storage matches 2 run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,colors:[11925241]}]}}}}
execute if score randomizer unbound_storage matches 3 run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,colors:[15527362]}]}}}}
execute if score randomizer unbound_storage matches 4 run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,colors:[11534300]}]}}}}
execute if score randomizer unbound_storage matches 5 run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,colors:[12765926]}]}}}}
execute if score randomizer unbound_storage matches 6 run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,colors:[15649784]}]}}}}




#playsound entity.firework_rocket.twinkle hostile @a[distance=..64] ~ ~ ~ 3 1.2

scoreboard players reset @s unbound_mob_anim
kill @s[type=marker]