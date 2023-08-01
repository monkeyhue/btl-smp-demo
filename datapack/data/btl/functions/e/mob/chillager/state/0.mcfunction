#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 0 run data modify entity @s item.tag.Damage set value 0
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players set %btl.animLength monkeyhue.objmc1 16
execute unless score @s monkeyhue.tempAI matches 0 run function btl:e/display/anim/gen_vehicle
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players set @s monkeyhue.tempAI 0

execute if entity @p[distance=..32,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 1