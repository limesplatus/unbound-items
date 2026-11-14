data modify entity @s Motion[1] set value -0.01
data modify entity @s NoGravity set value 1b
#execute align zyx positioned ~.5 ~.5 ~.5 run tp @s ~ ~ ~
tag @s add unbound_confetti_ceiling