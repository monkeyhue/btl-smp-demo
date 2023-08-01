#-------------------------------------------------------------#
#
# Controls the Spook
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 2 facing entity @p[gamemode=!spectator,gamemode=!creative] eyes run teleport @s ^ ^ ^ ~180 0
execute unless score @s monkeyhue.tempAI matches 2 run function btl:e/mob/spook/anim/2
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players set @s monkeyhue.tempAI 2

scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches 17 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1

execute if score @s monkeyhue.time2 matches 18.. run scoreboard players set @s monkeyhue.entity.AIState 5