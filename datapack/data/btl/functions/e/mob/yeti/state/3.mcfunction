#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 3 on passengers run data modify entity @s item.tag.Damage set value 3
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players set #btl.animLength monkeyhue.objmc1 50
execute unless score @s monkeyhue.tempAI matches 3 on passengers run function btl:e/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 3 facing entity @p eyes run tp @s ~ ~0.01 ~ ~ 0
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players set @s monkeyhue.tempAI 3

scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches 3 run playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 1 1
execute if score @s monkeyhue.time2 matches 6 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 1
execute if score @s monkeyhue.time2 matches 26 run playsound btl:entity.yeti.grunt hostile @a ~ ~ ~ 1 1 
execute if score @s monkeyhue.time2 matches 39 run function btl:e/mob/yeti/event/smash
execute if score @s monkeyhue.time2 matches 50 run playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 1 1

#Moving Part

execute if score @s monkeyhue.time2 matches 8..24 facing entity @p[gamemode=!creative,gamemode=!spectator] feet run teleport @s ^ ^ ^0.5 ~ 0
execute if score @s monkeyhue.time2 matches 8..24 unless block ~ ~0.1 ~ #btl:unsolid positioned over motion_blocking run teleport @s ^ ^0.1 ^0.5 ~ 0
execute if score @s monkeyhue.time2 matches 24..40 run teleport @s ^ ^ ^0.5 ~ 0

execute if score @s monkeyhue.time2 matches 50.. run scoreboard players set @s monkeyhue.entity.AIState 1