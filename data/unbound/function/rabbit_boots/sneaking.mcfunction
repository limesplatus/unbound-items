scoreboard players add @s unbound_rabbit_time 1


#set jump value
execute if score @s unbound_rabbit_time matches 3.. run \
attribute @s jump_strength modifier add unbound:rabbit_boots_jump 0.272 add_value

#execute if score @s unbound_rabbit_time matches 8.. run particle poof ~ ~.1 ~ 0 0 0 .05 1 force @a[distance=..32]
#execute if score @s unbound_rabbit_time matches 8.. run \
attribute @s jump_strength modifier add unbound:rabbit_boots_jump 0.28 add_value


#perform jump animation
execute if score @s unbound_rabbit_time matches 3.. \
if score @s unbound_jump matches 1 run \
function unbound:rabbit_boots/jump




#end
execute unless predicate unbound:player/on_ground run \
function unbound:rabbit_boots/sneaking_end
execute unless predicate unbound:player/sneaking run \
function unbound:rabbit_boots/sneaking_end