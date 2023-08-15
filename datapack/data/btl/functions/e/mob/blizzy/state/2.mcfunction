#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 2 on passengers run data modify entity @s item.tag.Damage set value 2
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players set #btl.animLength monkeyhue.objmc1 10
execute unless score @s monkeyhue.tempAI matches 2 on passengers run function btl:e/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players set @s monkeyhue.tempAI 2

scoreboard players add @s monkeyhue.time2 1

#// Movement
execute if block ~ ~-0.25 ~ #btl:unsolid run teleport @s ^ ^ ^0.6 ~ ~
execute unless block ~ ~-0.25 ~ #btl:unsolid run teleport @s ^ ^0.05 ^0.6 ~ ~
execute if block ~ ~-0.4 ~ #btl:unsolid run teleport @s ^ ^-0.1 ^0.6 ~ ~
execute unless block ^ ^ ^0.4 #btl:unsolid run teleport @s ^ ^0.5 ^0.6 ~ ~
execute unless block ^ ^2 ^1 #btl:unsolid run scoreboard players set @s monkeyhue.entity.AIState 3
execute unless block ^ ^2 ^0.2 #btl:unsolid run scoreboard players set @s monkeyhue.entity.AIState 3

#// Damage and snowflakes
scoreboard players add @s monkeyhue.time3 1
execute if score @s monkeyhue.time3 matches 2 at @a[distance=..3] run function btl:e/mob/blizzy/event/charging
execute if score @s monkeyhue.time3 matches 5.. run scoreboard players reset @s monkeyhue.time3

execute if score @s monkeyhue.time2 matches 1 run playsound minecraft:entity.phantom.ambient hostile @a ~ ~ ~ 1.2 0.5
execute if score @s monkeyhue.time2 matches 13 run playsound minecraft:entity.phantom.ambient hostile @a ~ ~ ~ 1.2 0.5
execute if score @s monkeyhue.time2 matches 25 run playsound minecraft:entity.phantom.ambient hostile @a ~ ~ ~ 1.2 0.5
execute if score @s monkeyhue.time2 matches 37 run playsound minecraft:entity.phantom.ambient hostile @a ~ ~ ~ 1.2 0.5

execute if score @s monkeyhue.time2 matches 40.. run scoreboard players set @s monkeyhue.entity.AIState 3