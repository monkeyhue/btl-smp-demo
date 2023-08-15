#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 0 on passengers run data modify entity @s item.tag.Damage set value 0
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players set #btl.animLength monkeyhue.objmc1 30
execute unless score @s monkeyhue.tempAI matches 0 on passengers run function btl:e/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players set @s monkeyhue.tempAI 0

scoreboard players add @s monkeyhue.time3 1
execute if score @s monkeyhue.time3 matches 60.. run scoreboard players set @s monkeyhue.entity.AIState 4


execute if entity @p[distance=..16,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 1

