#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 7 on passengers run data modify entity @s item.tag.Damage set value 7
execute unless score @s monkeyhue.tempAI matches 7 run scoreboard players set #btl.animLength monkeyhue.objmc1 10
execute unless score @s monkeyhue.tempAI matches 7 on passengers run function btl:e/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 7 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 7 facing entity @p eyes run tp @s ~ ~0.01 ~ ~ 0
execute unless score @s monkeyhue.tempAI matches 7 run scoreboard players set @s monkeyhue.tempAI 7

scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches ..30 facing entity @p eyes positioned ^ ^ ^1 positioned over motion_blocking_no_leaves run teleport @s ~ ~16 ~ ~ 0
execute if score @s monkeyhue.time2 matches 30.. rotated as @p run teleport @s ^ ^ ^1.25 ~ 0

execute if score @s monkeyhue.time2 matches 40.. run scoreboard players set @s monkeyhue.entity.AIState 8