#-------------------------------------------------------------#
#
# Controls the Spook
#
#-------------------------------------------------------------#
#Effects
particle minecraft:poof ~ ~0.6 ~ 0.3 0.2 0.3 0.05 40 force
playsound minecraft:entity.chicken.egg hostile @a ~ ~ ~ 1 1
playsound minecraft:entity.phantom.bite hostile @a ~ ~ ~ 1 2

#Kill
tp @s ~ -200 ~
scoreboard players reset @s
execute on passengers run scoreboard players reset @s
execute on passengers run kill @s

kill @s