#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
#Effects
particle minecraft:poof ~ ~0.3 ~ 0.2 0.3 0.2 0.05 30 force
playsound minecraft:entity.chicken.egg hostile @a ~ ~ ~ 1 1
playsound minecraft:entity.zombie.death hostile @a ~ ~ ~ 0.9 1

#// Natural
execute if score @s btl.w.battleID matches -1 run loot spawn ~ ~0.3 ~ loot btl:entity/frozen_zombie

#// Icebound Battleground 1
execute if score @s btl.w.battleID matches 1 run data modify storage btl:root activeBattles[{id:1}].kills append value "snow_zombie"

#// Icebound Battleground 2
execute if score @s btl.w.battleID matches 2 run data modify storage btl:root activeBattles[{id:2}].kills append value "snow_zombie"

#// Icebound Battleground 3
execute if score @s btl.w.battleID matches 3 run data modify storage btl:root activeBattles[{id:3}].kills append value "snow_zombie"

#Kill
tp @s ~ -200 ~
scoreboard players reset @s
kill @s