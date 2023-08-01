#-------------------------------------------------------------#
#
# Controls the Spook
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 5 facing entity @p[gamemode=!spectator,gamemode=!creative] eyes run teleport @s ^ ^ ^ ~180 0
execute unless score @s monkeyhue.tempAI matches 5 run function btl:e/mob/spook/anim/6
execute unless score @s monkeyhue.tempAI matches 5 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 5 run scoreboard players set @s monkeyhue.tempAI 5

scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches 1 run spreadplayers ~ ~ 4 12 true @s
execute if score @s monkeyhue.time2 matches 2 positioned over motion_blocking_no_leaves run tp @s ~ ~2 ~

execute if score @s monkeyhue.time2 matches 18.. run scoreboard players set @s monkeyhue.entity.AIState 1