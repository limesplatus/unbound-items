

particle minecraft:block{block_state:"bone_block"} ~ ~1 ~ .4 .3 .4 .4 30 normal
playsound item.shield.break player @a[distance=..10] ~ ~ ~ 1 1.5
playsound entity.skeleton.death player @a[distance=..10] ~ ~ ~ 1 2



execute if entity @s[predicate=unbound:equipped/bone_wand,predicate=unbound:equipped/0_durability] run item replace entity @s weapon with air
execute if entity @s[predicate=unbound:equipped/bone_wand_offhand,predicate=unbound:equipped/0_durability_offhand] run item replace entity @s weapon.offhand with air

