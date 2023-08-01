#-------------------------------------------------------------#
#
# Controls the Spook
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 0 run function btl:e/mob/spook/anim/0
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players set @s monkeyhue.tempAI 0

execute if score @s monkeyhue.time3 matches 2 if entity @a[gamemode=!spectator,gamemode=!creative,distance=..64] run scoreboard players set @s monkeyhue.entity.AIState 1