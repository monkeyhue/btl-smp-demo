#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 0 on passengers run data modify entity @s item.tag.Damage set value 0
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players set #btl.animLength monkeyhue.objmc1 24
execute unless score @s monkeyhue.tempAI matches 0 on passengers run function btl:e/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players set @s monkeyhue.tempAI 0

execute if entity @p[distance=..40,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 1

