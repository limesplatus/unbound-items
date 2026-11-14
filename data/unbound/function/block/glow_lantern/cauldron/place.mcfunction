
execute unless entity @n[distance=..0.01,tag=unbound_glow_lantern,tag=unbound_glow_lantern_cauldron,type=item_display] run summon item_display ~ ~ ~ {Tags:["smithed.entity","unbound_glow_lantern","unbound_glow_lantern_cauldron"]}

scoreboard players add @n[distance=..0.01,tag=unbound_glow_lantern_cauldron,type=item_display] unbound_block_level 1

execute store result score level unbound_storage run scoreboard players get @n[distance=..0.01,tag=unbound_glow_lantern_cauldron,type=item_display] unbound_block_level

particle splash ~ ~.5 ~ .2 .2 .2 .1 10 force @a[distance=..32]
playsound entity.player.splash player @a[distance=..32] ~ ~ ~ .5 2
playsound item.glow_ink_sac.use player @a[distance=..32] ~ ~ ~ .5 1

execute if score level unbound_storage matches 1 run summon item_display ~.1500 ~0.4500 ~.1500 {transformation:{translation:[0f,0f,0f],left_rotation:[0.708f,0f,0f,0.706f],scale:[.3, .3 ,1],right_rotation:[0f,0f,0f,1f]},Tags:["smithed.entity","unbound_glow_lantern_cauldron_item","unbound_glow_lantern_cauldron_item_temp"],item:{id:"snowball",count:1,components:{custom_model_data:{floats:[4376028f]}}},teleport_duration:3}
execute if score level unbound_storage matches 2 run summon item_display ~-.1500 ~0.4500 ~.1500 {transformation:{translation:[0f,0f,0f],left_rotation:[0.708f,0f,0f,0.706f],scale:[.3, .3 ,1],right_rotation:[0f,0f,0f,1f]},Tags:["smithed.entity","unbound_glow_lantern_cauldron_item","unbound_glow_lantern_cauldron_item_temp"],item:{id:"snowball",count:1,components:{custom_model_data:{floats:[4376028f]}}},teleport_duration:3}
execute if score level unbound_storage matches 3 run summon item_display ~-.1500 ~0.4500 ~-.1500 {transformation:{translation:[0f,0f,0f],left_rotation:[0.708f,0f,0f,0.706f],scale:[.3, .3 ,1],right_rotation:[0f,0f,0f,1f]},Tags:["smithed.entity","unbound_glow_lantern_cauldron_item","unbound_glow_lantern_cauldron_item_temp"],item:{id:"snowball",count:1,components:{custom_model_data:{floats:[4376028f]}}},teleport_duration:3}
execute if score level unbound_storage matches 4 run summon item_display ~.1500 ~0.4500 ~-.1500 {transformation:{translation:[0f,0f,0f],left_rotation:[0.708f,0f,0f,0.706f],scale:[.3, .3 ,1],right_rotation:[0f,0f,0f,1f]},Tags:["smithed.entity","unbound_glow_lantern_cauldron_item","unbound_glow_lantern_cauldron_item_temp"],item:{id:"snowball",count:1,components:{custom_model_data:{floats:[4376028f]}}},teleport_duration:3}


execute as @n[type=item_display,tag=unbound_glow_lantern_cauldron_item_temp,distance=..5] at @s run tp @s ~ ~.06 ~
execute as @n[type=item_display,tag=unbound_glow_lantern_cauldron_item_temp,distance=..5] at @s run rotate @s facing entity @n[type=item_display,tag=unbound_glow_lantern_cauldron,distance=..1]
execute as @n[type=item_display,tag=unbound_glow_lantern_cauldron_item_temp,distance=..5] at @s run rotate @s ~ 0
execute as @n[type=item_display,tag=unbound_glow_lantern_cauldron_item_temp,distance=..5] at @s run tag @s remove unbound_glow_lantern_cauldron_item_temp

#playsound block.amethyst_block.step player @a[distance=..20] ~ ~ ~ .8 1.2


scoreboard players set found_lantern unbound_storage 1
