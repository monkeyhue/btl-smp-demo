#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
#Effects
particle minecraft:poof ~ ~0.3 ~ 0.2 0.3 0.2 0.05 30 force

execute as @e[type=interaction,limit=1,sort=nearest,scores={btl.w.battleID=1,btl.w.waveID=5}] run scoreboard players remove @s btl.w.mobs 1

#Kill
tp @s ~ -200 ~
scoreboard players reset @s
execute on passengers on passengers run data modify entity @s Size set value 0b
execute on passengers on passengers run kill @s
execute on passengers run kill @s
kill @s