
execute if block ~ ~ ~ dispenser[facing=up] run rotate @s 0 -90
execute if block ~ ~ ~ dispenser[facing=down] run rotate @s 0 90
execute if block ~ ~ ~ dispenser[facing=north] run rotate @s -180 0
execute if block ~ ~ ~ dispenser[facing=east] run rotate @s -90 0
execute if block ~ ~ ~ dispenser[facing=south] run rotate @s 0 0
execute if block ~ ~ ~ dispenser[facing=west] run rotate @s 90 0

#execute at @s run tp @s ^ ^ ^.5

tag @s add unbound_from_dispenser