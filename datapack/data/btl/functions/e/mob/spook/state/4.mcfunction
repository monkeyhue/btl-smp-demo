#-------------------------------------------------------------#
#
# Controls the Spook
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 4 facing entity @p[gamemode=!spectator,gamemode=!creative] eyes run teleport @s ^ ^ ^ ~180 0
execute unless score @s monkeyhue.tempAI matches 4 run function btl:e/mob/spook/anim/5
execute unless score @s monkeyhue.tempAI matches 4 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 4 run scoreboard players set @s monkeyhue.tempAI 4

scoreboard players add @s monkeyhue.time2 1
execute if score @s monkeyhue.time2 matches 1 run playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~ 1 1

execute if score @s monkeyhue.time2 matches 22 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1

execute if score @s monkeyhue.time2 matches 24.. run scoreboard players set @s monkeyhue.entity.AIState 5