#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
#Effects
particle minecraft:poof ~ ~0.3 ~ 0.2 0.3 0.2 0.05 30 force

#// Icebound Battleground 1
execute if score @s btl.w.battleID matches 1 run data modify storage btl:root activeBattles[{id:1}].kills append value "snowfiend"

#// Icebound Battleground 2
execute if score @s btl.w.battleID matches 2 run data modify storage btl:root activeBattles[{id:2}].kills append value "snowfiend"

#// Icebound Battleground 3
execute if score @s btl.w.battleID matches 3 run data modify storage btl:root activeBattles[{id:3}].kills append value "snowfiend"

#Kill
summon experience_orb ~ ~0.2 ~ {Value:12}
tp @s ~ -200 ~
scoreboard players reset @s
execute on passengers on passengers run data modify entity @s Size set value 0b
execute on passengers on passengers run kill @s
execute on passengers run kill @s
kill @s