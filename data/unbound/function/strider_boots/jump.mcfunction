
particle lava ~ ~ ~ .5 0 .5 1 20 force @a[distance=..128]

execute if predicate unbound:motion/falling_fast run particle lava ~ ~ ~ .5 0 .5 1 40 force @a[distance=..128]




# durability

    # no unbreaking
    execute unless predicate {"type":"entity_properties","entity":"this","predicate":{"equipment":{"feet":{"predicates":{"enchantments":[{"enchantments":"unbreaking","levels":{min:1}}]}}}}} unless predicate unbound:player/creative_spectator if predicate unbound:chance/33_percent run item modify entity @s armor.feet unbound:damage/strider_boots
    
    # unbreaking 1
    execute if predicate {"type":"entity_properties","entity":"this","predicate":{"equipment":{"feet":{"predicates":{"enchantments":[{"enchantments":"unbreaking","levels":1}]}}}}} unless predicate unbound:player/creative_spectator if predicate unbound:chance/50_percent if predicate unbound:chance/50_percent run item modify entity @s armor.feet unbound:damage/strider_boots
    
    # unbreaking 2
    execute if predicate {"type":"entity_properties","entity":"this","predicate":{"equipment":{"feet":{"predicates":{"enchantments":[{"enchantments":"unbreaking","levels":2}]}}}}} unless predicate unbound:player/creative_spectator if predicate unbound:chance/33_percent if predicate unbound:chance/50_percent run item modify entity @s armor.feet unbound:damage/strider_boots
    
    # unbreaking 3
    execute if predicate {"type":"entity_properties","entity":"this","predicate":{"equipment":{"feet":{"predicates":{"enchantments":[{"enchantments":"unbreaking","levels":{"min":3}}]}}}}} unless predicate unbound:player/creative_spectator if predicate unbound:chance/25_percent if predicate unbound:chance/50_percent run item modify entity @s armor.feet unbound:damage/strider_boots

# break


execute if predicate {"type":"any_of","terms":[{"type":"entity_properties","entity":"this","predicate":{"equipment":{"feet":{"predicates":{"damage":{durability:0}}}}}}]} run function unbound:other/item_durability_break {block:"netherite_block",slot:"armor.feet"}



playsound block.lava.pop player @a[distance=..32] ~ ~ ~ 1 1.3
playsound block.lava.pop player @a[distance=..32] ~ ~ ~ 1 1.5
playsound block.lava.ambient player @a[distance=..32] ~ ~ ~ 1 1.3
playsound entity.player.swim player @a[distance=..32] ~ ~ ~ 1 .9

execute if predicate unbound:motion/falling_fast run playsound block.lava.pop player @a[distance=..32] ~ ~ ~ 2 .9
execute if predicate unbound:motion/falling_fast run playsound item.bucket.fill_lava player @a[distance=..32] ~ ~ ~ 2 .7
execute if predicate unbound:motion/falling_fast run playsound entity.dolphin.splash player @a[distance=..32] ~ ~ ~ 2 .6
execute if predicate unbound:motion/falling_fast run playsound entity.player.swim player @a[distance=..32] ~ ~ ~ 2 .6


execute unless predicate unbound:motion/falling_fast run scoreboard players add @s unbound_strider_boots_count 1

scoreboard players set @s unbound_strider_boots 0

execute if score @s unbound_strider_boots_cooldown matches -2147483648.. run scoreboard players remove @s unbound_strider_boots_cooldown 60
execute unless score @s unbound_strider_boots_cooldown matches -2147483648.. run scoreboard players set @s unbound_strider_boots_cooldown 0

execute if score @s unbound_strider_boots_count matches 2.. run playsound entity.generic.burn player @a[distance=..20] ~ ~ ~ .7 1.8

execute unless predicate unbound:motion/falling_mid run function unbound:strider_boots/wave
execute if predicate unbound:motion/falling_mid run function unbound:strider_boots/wave_big


execute unless predicate unbound:motion/falling_mid run scoreboard players set @s unbound_strider_boots 6
execute unless predicate unbound:motion/falling_mid run effect give @s levitation 1 20 true
execute if predicate unbound:motion/falling_mid run effect give @s levitation 1 30 true
execute if predicate unbound:motion/falling_fast run effect give @s levitation 1 80 true
execute if predicate unbound:motion/falling_fast_2 run effect give @s levitation 1 120 true

summon item_display ~ ~ ~ {Tags:["smithed.entity","unbound_temp"]}
ride @s mount @n[distance=..3,type=item_display,tag=unbound_temp]
kill @n[distance=..3,type=item_display,tag=unbound_temp]
title @s actionbar {"text":""}


tp @s ~ ~.75 ~