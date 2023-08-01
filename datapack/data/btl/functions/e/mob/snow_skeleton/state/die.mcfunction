#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
#Effects
particle minecraft:poof ~ ~-0.5 ~ 0.2 0.6 0.2 0.05 40 force
playsound minecraft:entity.chicken.egg hostile @a ~ ~ ~ 1 1
playsound minecraft:entity.skeleton.death hostile @a ~ ~ ~ 0.9 1

#Kill
execute on vehicle run tp @s ~ -200 ~
scoreboard players reset @s
execute on vehicle run scoreboard players reset @s
execute on vehicle run kill @s

kill @s