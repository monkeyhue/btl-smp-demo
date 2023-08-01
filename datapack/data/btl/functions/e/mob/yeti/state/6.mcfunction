#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 6 on passengers run data modify entity @s item.tag.Damage set value 6
execute unless score @s monkeyhue.tempAI matches 6 run scoreboard players set %btl.animLength monkeyhue.objmc1 18
execute unless score @s monkeyhue.tempAI matches 6 on passengers run function btl:e/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 6 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 6 run scoreboard players reset @s monkeyhue.time6
execute unless score @s monkeyhue.tempAI matches 6 facing entity @p eyes run tp @s ~ ~0.01 ~ ~ 0
execute unless score @s monkeyhue.tempAI matches 6 run scoreboard players set @s monkeyhue.tempAI 6

scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches 3 run playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 1 1
execute if score @s monkeyhue.time2 matches 7 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 1

#Moving Part

execute if score @s monkeyhue.time2 matches 8.. run teleport @s ^ ^2 ^0.2 ~ 0

execute if score @s monkeyhue.time2 matches 17.. run scoreboard players set @s monkeyhue.entity.AIState 7