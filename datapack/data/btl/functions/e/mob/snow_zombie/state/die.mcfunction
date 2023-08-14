#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
#Effects
particle minecraft:poof ~ ~0.3 ~ 0.2 0.3 0.2 0.05 30 force
playsound minecraft:entity.chicken.egg hostile @a ~ ~ ~ 1 1
playsound minecraft:entity.zombie.death hostile @a ~ ~ ~ 0.9 1

execute unless entity @s[tag=btl.t.avalanched] as @e[type=interaction,limit=1,sort=nearest,scores={btl.w.battleID=1,btl.w.waveID=5}] run scoreboard players remove @s btl.w.mobs 1

#Kill
tp @s ~ -200 ~
scoreboard players reset @s
kill @s