#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 1 on passengers run data modify entity @s item.tag.Damage set value 1
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players set %btl.animLength monkeyhue.objmc1 10
execute unless score @s monkeyhue.tempAI matches 1 on passengers run function btl:e/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players set @s monkeyhue.tempAI 1

scoreboard players add @s monkeyhue.time2 1
scoreboard players add @s monkeyhue.time3 1

execute if block ~ ~-0.25 ~ #btl:unsolid facing entity @p[gamemode=!creative,gamemode=!spectator] feet run teleport @s ^ ^ ^0.31 ~ 0
execute unless block ~ ~-0.25 ~ #btl:unsolid facing entity @p[gamemode=!creative,gamemode=!spectator] feet run teleport @s ^ ^0.05 ^0.31 ~ 0
execute if block ~ ~-1 ~ #btl:unsolid facing entity @p[gamemode=!creative,gamemode=!spectator] feet run teleport @s ^ ^-0.05 ^0.31 ~ 0

#Precautions to make sure there's no hovering or falling off edges or into holes
execute unless score @s monkeyhue.time5 matches 5.. if block ~ ~-0.4 ~ #btl:unsolid run scoreboard players add @s monkeyhue.time5 1
execute if score @s monkeyhue.time5 matches 5.. if block ~ ~-0.4 ~ #btl:unsolid run function btl:e/mob/yeti/event/begin_falling
execute if score @s monkeyhue.time5 matches 1.. unless block ~ ~-0.4 ~ #btl:unsolid run scoreboard players reset @s monkeyhue.time5

execute if score @s monkeyhue.time3 matches 1 run playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 1 1
execute if score @s monkeyhue.time3 matches 1 run particle snowflake ~ ~ ~ 0.8 0.01 0.8 0.05 3
execute if score @s monkeyhue.time3 matches 10.. run scoreboard players reset @s monkeyhue.time3

execute if score @s monkeyhue.time2 matches 80.. if entity @p[distance=4..12,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 3
execute if score @s monkeyhue.time2 matches 80.. if entity @p[distance=12..,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 11

execute if entity @p[distance=..4,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 2
execute if score @s monkeyhue.time6 matches 600.. run scoreboard players set @s monkeyhue.entity.AIState 6
