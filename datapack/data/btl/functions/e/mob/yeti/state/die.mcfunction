#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
#Effects
particle minecraft:poof ~ ~-0.5 ~ 0.2 0.6 0.2 0.05 40 force
playsound minecraft:entity.chicken.egg hostile @a ~ ~ ~ 1 1
playsound btl:entity.yeti.grunt hostile @a ~ ~ ~ 2 0.8

execute if score @s btl.w.battleID matches 1 as @e[type=interaction,limit=1,sort=nearest,scores={btl.w.battleID=1,btl.w.waveID=5}] at @s run function btl:battle/ids/blue/completed
execute if score @s btl.w.battleID matches 2 as @e[type=interaction,limit=1,sort=nearest,scores={btl.w.battleID=2,btl.w.waveID=8}] at @s run function btl:battle/ids/blue2/completed

#Kill
tp @s ~ -200 ~
scoreboard players reset @s
execute on passengers on passengers run data modify entity @s Size set value 0b
execute on passengers on passengers run kill @s
execute on passengers run kill @s
kill @s