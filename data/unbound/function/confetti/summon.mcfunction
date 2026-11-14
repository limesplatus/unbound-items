tag @s add unbound_confetti

data modify entity @s Item.components."minecraft:custom_model_data".floats set value [4376033]

execute if entity @s[tag=unbound_from_dispenser] run function unbound:confetti/motion
execute unless entity @s[tag=unbound_from_dispenser] rotated as @p run function unbound:confetti/motion

playsound minecraft:entity.firework_rocket.blast player @a[distance=..32] ~ ~ ~ 1 1.5

execute positioned ~ ~1 ~ run particle firework ^ ^ ^1 0 0 0 .1 2 force @a[distance=..32]

function unbound:confetti/entity
