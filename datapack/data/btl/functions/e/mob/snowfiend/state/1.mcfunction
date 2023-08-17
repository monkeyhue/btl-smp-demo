#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 1 on passengers run data modify entity @s item.tag.Damage set value 1
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players set #btl.animLength monkeyhue.objmc1 24
execute unless score @s monkeyhue.tempAI matches 1 on passengers run function btl:e/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players set @s monkeyhue.tempAI 1

#// Tier 1 moves slower
execute if score @s btl.w.battleID matches 1 if block ~ ~-0.25 ~ #btl:unsolid facing entity @p[gamemode=!creative,gamemode=!spectator] feet run teleport @s ^ ^ ^0.15 ~ 0
execute if score @s btl.w.battleID matches 1 unless block ~ ~-0.25 ~ #btl:unsolid facing entity @p[gamemode=!creative,gamemode=!spectator] feet run teleport @s ^ ^0.05 ^0.15 ~ 0
execute if score @s btl.w.battleID matches 1 if block ~ ~-1 ~ #btl:unsolid facing entity @p[gamemode=!creative,gamemode=!spectator] feet run teleport @s ^ ^-0.05 ^0.15 ~ 0
execute if score @s btl.w.battleID matches 1 unless block ^ ^ ^0.4 #btl:unsolid facing entity @p[gamemode=!creative,gamemode=!spectator] feet run teleport @s ^ ^0.3 ^0.15 ~ 0

execute if score @s btl.w.battleID matches 2..3 if block ~ ~-0.25 ~ #btl:unsolid facing entity @p[gamemode=!creative,gamemode=!spectator] feet run teleport @s ^ ^ ^0.225 ~ 0
execute if score @s btl.w.battleID matches 2..3 unless block ~ ~-0.25 ~ #btl:unsolid facing entity @p[gamemode=!creative,gamemode=!spectator] feet run teleport @s ^ ^0.05 ^0.225 ~ 0
execute if score @s btl.w.battleID matches 2..3 if block ~ ~-1 ~ #btl:unsolid facing entity @p[gamemode=!creative,gamemode=!spectator] feet run teleport @s ^ ^-0.05 ^0.225 ~ 0
execute if score @s btl.w.battleID matches 2..3 unless block ^ ^ ^0.4 #btl:unsolid facing entity @p[gamemode=!creative,gamemode=!spectator] feet run teleport @s ^ ^0.3 ^0.225 ~ 0

#// Precautions to make sure there's no hovering or falling off edges or into holes
execute unless score @s monkeyhue.time5 matches 5.. if block ~ ~-0.42 ~ #btl:unsolid run scoreboard players add @s monkeyhue.time5 1
execute if score @s monkeyhue.time5 matches 5.. if block ~ ~-0.42 ~ #btl:unsolid run function btl:e/mob/snowfiend/event/begin_falling
execute if score @s monkeyhue.time5 matches 1.. unless block ~ ~-0.42 ~ #btl:unsolid run scoreboard players reset @s monkeyhue.time5

#// Footsteps
scoreboard players add @s monkeyhue.time3 1
execute if score @s monkeyhue.time3 matches 4 run playsound minecraft:block.snow.step hostile @a ~ ~ ~ 1 1
execute if score @s monkeyhue.time3 matches 16 run playsound minecraft:block.snow.step hostile @a ~ ~ ~ 1 1
execute if score @s monkeyhue.time3 matches 24.. run scoreboard players reset @s monkeyhue.time3

execute if entity @p[distance=..3,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 2
execute if entity @p[distance=..3,gamemode=!creative,gamemode=!spectator] if score @s monkeyhue.temp2 matches 2.. run scoreboard players set @s monkeyhue.entity.AIState 3
