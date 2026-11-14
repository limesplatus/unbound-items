
$scoreboard players set $(id) unbound_config $(value)

$function unbound:other/menus/config/$(page)

playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1

#execute store result storage vanilla_refresh:settings tips_mc int 1 run scoreboard players get config.tips_mc refresh_settings


