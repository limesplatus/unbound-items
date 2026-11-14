scoreboard players add @s unbound_count 1


execute if score @s unbound_count matches ..0 run particle wax_off ~ ~ ~ 0 0 0 10 5 force @a[distance=..128]

execute if score @s unbound_count matches 10.. run item modify entity @s container.0 {type:"set_custom_model_data","floats":{mode:replace_all,values:[4376034]}}
execute if score @s unbound_count matches 10.. run scoreboard players reset @s unbound_count