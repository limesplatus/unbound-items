function unbound:bone_wand/bone_block_break

particle dust_pillar{block_state:"bone_block"} ~ ~ ~ .3 .3 .3 .05 10 normal @a[distance=..32]
particle block{block_state:"bone_block"} ~ ~ ~ .3 .3 .3 .2 30 normal @a[distance=..32]

playsound entity.skeleton.death block @a[distance=..15] ~ ~ ~ .3 2 .02