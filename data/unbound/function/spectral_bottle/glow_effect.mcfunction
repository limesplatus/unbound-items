
effect give @s[predicate=!unbound:effect/invisibility,predicate=!unbound:player/sneaking] glowing 20 1 false
effect give @s[predicate=!unbound:effect/invisibility,predicate=unbound:player/sneaking] glowing 12 1 false
execute if score armor_equipped unbound_storage matches 2..4 run effect give @s[predicate=unbound:effect/invisibility] glowing 3 1 false
execute if score armor_equipped unbound_storage matches 0..1 run effect give @s[predicate=unbound:effect/invisibility] glowing 2 1 false

execute positioned as @s run playsound block.respawn_anchor.deplete block @a[distance=..10] ~ ~ ~ .5 1.7
