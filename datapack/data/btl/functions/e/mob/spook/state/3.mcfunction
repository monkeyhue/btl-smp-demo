#-------------------------------------------------------------#
#
# Controls the Spook
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 3 facing entity @p[gamemode=!spectator,gamemode=!creative] feet run teleport @s ^ ^ ^ ~180 0
execute unless score @s monkeyhue.tempAI matches 3 run function btl:e/mob/spook/anim/3
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players set @s monkeyhue.tempAI 3

scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches 11 run function btl:e/mob/spook/event/attack

execute if score @s monkeyhue.time2 matches 30.. run scoreboard players set @s monkeyhue.entity.AIState 1
execute if score @s monkeyhue.time2 matches 30.. run scoreboard players reset @s monkeyhue.temp1