#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 0 run data modify entity @s ArmorItems[3].tag.Damage set value 0
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players set #btl.animLength monkeyhue.objmc1 16
execute unless score @s monkeyhue.tempAI matches 0 run function btl:e/display/anim/gen_vehicle
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 0 run effect give @s minecraft:slowness infinite 99 true
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players set @s monkeyhue.tempAI 0

scoreboard players add @s monkeyhue.time2 1

execute if entity @p[distance=10..,gamemode=!creative,gamemode=!spectator] run scoreboard players set @s monkeyhue.entity.AIState 1
execute if score @s monkeyhue.time2 matches 24.. run scoreboard players set @s monkeyhue.entity.AIState 2