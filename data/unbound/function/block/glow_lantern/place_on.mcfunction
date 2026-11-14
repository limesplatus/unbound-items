playsound block.amethyst_block.step player @a[distance=..20] ~ ~ ~ .500 2.0
playsound block.amethyst_block.step player @a[distance=..20] ~ ~ ~ .500 2.0

playsound block.amethyst_block.step player @a[distance=..20] ~ ~ ~ .50 2


particle glow ~ ~ ~ .2 .2 .2 .1 10 force @a[distance=..32]


execute unless predicate unbound:player/sneaking run summon slime ~ 255 ~ {active_effects:[{id:"resistance",duration:999999999,ambient:5b,show_particles:false},{id:"invisibility",duration:999999999,show_particles:false}],Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Silent:1b,Tags:["refresh_entity_misc","unbound_glow_lantern_cube","unbound_glow_lantern_cube_new"],Size:0,attributes:[{id:"scale",base:0.7},{base:10d,id:"max_health"}]}

execute align zx positioned ~.5 ~ ~.5 run tp @n[type=slime,tag=unbound_glow_lantern_cube_new] ~ ~-.45 ~
tag @n[type=slime,tag=unbound_glow_lantern_cube_new] remove unbound_glow_lantern_cube_new

# particle flash ~ ~ ~ 0 0 0 .1 3 force @a[distance=..32]
# particle flash ~ ~ ~.3 0 0 0 .1 3 force @a[distance=..32]
# particle flash ~ ~ ~-.3 0 0 0 .1 3 force @a[distance=..32]
# particle flash ~.3 ~ ~ 0 0 0 .1 3 force @a[distance=..32]
# particle flash ~-.3 ~ ~ 0 0 0 .1 3 force @a[distance=..32]