

$particle minecraft:block{block_state:"$(block)"} ~ ~1 ~ .4 .3 .4 .4 20 normal
playsound item.shield.break player @a[distance=..10] ~ ~ ~ 1 1

$item replace entity @s $(slot) with air


