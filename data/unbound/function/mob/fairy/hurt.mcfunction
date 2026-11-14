scoreboard players set @s unbound_count 0

playsound minecraft:entity.vex.hurt neutral @a[distance=..64] ~ ~ ~ .5 1.5

playsound block.amethyst_block.resonate neutral @a[distance=..64] ~ ~ ~ .2 2


playsound block.amethyst_block.step neutral @a[distance=..64] ~ ~ ~ .1 .5

item modify entity @s container.0 {type:"set_custom_model_data","floats":{mode:replace_all,values:[4376035]}}

execute on vehicle if data entity @s {Health:0f} on passengers run function unbound:mob/fairy/death