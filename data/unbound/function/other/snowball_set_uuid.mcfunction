execute store result score @s unbound_uuid1 run data get entity @p[tag=world_entityowner] UUID[0]
execute store result score @s unbound_uuid2 run data get entity @p[tag=world_entityowner] UUID[1]
execute store result score @s unbound_uuid3 run data get entity @p[tag=world_entityowner] UUID[2]
execute store result score @s unbound_uuid4 run data get entity @p[tag=world_entityowner] UUID[3]


data modify entity @s Owner set from entity @p[tag=world_entityowner] UUID

data modify entity @s Rotation set from entity @p[tag=world_entityowner] Rotation

tag @s remove unbound_projectile