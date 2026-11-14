execute on owner run tag @s add unbound_temp_owner

execute if entity @p[tag=unbound_temp_owner,distance=..10] run effect give @s speed 1 0 false

tag @p[tag=unbound_temp_owner] remove unbound_temp_owner