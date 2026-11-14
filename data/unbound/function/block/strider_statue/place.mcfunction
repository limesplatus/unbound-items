execute align zyx run summon item_display ~.5 ~.5 ~.5 {item:{id:"chiseled_stone_bricks",count:1b,components:{custom_model_data:{floats:[4376001]}}},Tags:["smithed.entity","unbound_strider_statue_init","unbound_strider_statue"]}


playsound block.basalt.break block @a[distance=..32] ~ ~ ~ .5 .6

execute align zyx run summon interaction ~.5 ~-0.01 ~.5 {width:1.1,height:1.5,Tags:["smithed.entity","unbound_strider_statue_hitbox"]}

#west
execute if block ~ ~ ~ #unbound:player_head[rotation=12] run rotate @n[distance=..2,tag=unbound_strider_statue_init,type=item_display] 90 0

    #west -3
    execute if block ~ ~ ~ #unbound:player_head[rotation=11] run rotate @n[distance=..2,tag=unbound_strider_statue_init,type=item_display] 67.5 0

    #west -2
    execute if block ~ ~ ~ #unbound:player_head[rotation=10] run rotate @n[distance=..2,tag=unbound_strider_statue_init,type=item_display] 45 0
    
    
    #west -1
    execute if block ~ ~ ~ #unbound:player_head[rotation=9] run rotate @n[distance=..2,tag=unbound_strider_statue_init,type=item_display] 22.5 0
    
#south
execute if block ~ ~ ~ #unbound:player_head[rotation=8] run rotate @n[distance=..2,tag=unbound_strider_statue_init,type=item_display] 0 0

    #south -1
    execute if block ~ ~ ~ #unbound:player_head[rotation=7] run rotate @n[distance=..2,tag=unbound_strider_statue_init,type=item_display] -22.5 0
    
    #south -2
    execute if block ~ ~ ~ #unbound:player_head[rotation=6] run rotate @n[distance=..2,tag=unbound_strider_statue_init,type=item_display] -45 0
    
    #south -3
    execute if block ~ ~ ~ #unbound:player_head[rotation=5] run rotate @n[distance=..2,tag=unbound_strider_statue_init,type=item_display] -67.5 0

#east
execute if block ~ ~ ~ #unbound:player_head[rotation=4] run rotate @n[distance=..2,tag=unbound_strider_statue_init,type=item_display] -90 0

    #east -1
    execute if block ~ ~ ~ #unbound:player_head[rotation=3] run rotate @n[distance=..2,tag=unbound_strider_statue_init,type=item_display] -112.5 0
    
    #east -2
    execute if block ~ ~ ~ #unbound:player_head[rotation=2] run rotate @n[distance=..2,tag=unbound_strider_statue_init,type=item_display] -135 0
    
    #east -3
    execute if block ~ ~ ~ #unbound:player_head[rotation=1] run rotate @n[distance=..2,tag=unbound_strider_statue_init,type=item_display] -157.5 0

#north
execute if block ~ ~ ~ #unbound:player_head[rotation=0] run rotate @n[distance=..2,tag=unbound_strider_statue_init,type=item_display] -180 0

    #north -1
    execute if block ~ ~ ~ #unbound:player_head[rotation=15] run rotate @n[distance=..2,tag=unbound_strider_statue_init,type=item_display] -202.5 0
    
    #north -2
    execute if block ~ ~ ~ #unbound:player_head[rotation=14] run rotate @n[distance=..2,tag=unbound_strider_statue_init,type=item_display] -225 0
    
    #north -3
    execute if block ~ ~ ~ #unbound:player_head[rotation=13] run rotate @n[distance=..2,tag=unbound_strider_statue_init,type=item_display] -247.5 0

tag @n[distance=..2,tag=unbound_strider_statue_init,type=item_display] remove unbound_strider_statue_init


setblock ~ ~ ~ barrier