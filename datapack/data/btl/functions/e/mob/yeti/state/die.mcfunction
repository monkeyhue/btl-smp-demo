#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
#Effects
particle minecraft:poof ~ ~-0.5 ~ 0.2 0.6 0.2 0.05 40 force
playsound minecraft:entity.chicken.egg hostile @a ~ ~ ~ 1 1
playsound btl:entity.yeti.grunt hostile @a ~ ~ ~ 2 0.8

#Kill
tp @s ~ -200 ~
scoreboard players reset @s
execute on passengers on passengers run data modify entity @s Size set value 0b
execute on passengers on passengers run kill @s
execute on passengers run kill @s
kill @s
bossbar remove btl:yeti