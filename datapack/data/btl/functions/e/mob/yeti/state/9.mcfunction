#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 9 on passengers run data modify entity @s item.tag.Damage set value 10
execute unless score @s monkeyhue.tempAI matches 9 run scoreboard players set #btl.animLength monkeyhue.objmc1 28
execute unless score @s monkeyhue.tempAI matches 9 on passengers run function btl:e/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 9 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 9 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.tempAI matches 9 run function btl:e/mob/yeti/event/bellyslam
execute unless score @s monkeyhue.tempAI matches 9 run scoreboard players set @s monkeyhue.tempAI 9

scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches 2 run function btl:e/mob/yeti/event/smash
execute if score @s monkeyhue.time2 matches 20 run playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 1 1
execute if score @s monkeyhue.time2 matches 26 run playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 1 1

#Moving Part
execute if score @s monkeyhue.time2 matches 26.. run scoreboard players set @s monkeyhue.entity.AIState 11
execute if score @s monkeyhue.time2 matches 26.. if entity @p[distance=..4,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 5