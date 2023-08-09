#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 8 on passengers run data modify entity @s item.tag.Damage set value 8
execute unless score @s monkeyhue.tempAI matches 8 run scoreboard players set #btl.animLength monkeyhue.objmc1 15
execute unless score @s monkeyhue.tempAI matches 8 on passengers run function btl:e/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 8 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 8 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.tempAI matches 8 run function btl:e/mob/yeti/event/bellyslam
execute unless score @s monkeyhue.tempAI matches 8 run scoreboard players set @s monkeyhue.tempAI 8

scoreboard players add @s monkeyhue.time2 1
execute if score @s monkeyhue.time2 matches 13 on passengers run data modify entity @s item.tag.Damage set value 9
execute if score @s monkeyhue.time2 matches 13 run scoreboard players set #btl.animLength monkeyhue.objmc1 10
execute if score @s monkeyhue.time2 matches 13 on passengers run function btl:e/display/anim/gen

execute on vehicle on passengers run scoreboard players set @s monkeyhue.time3 1
execute unless score @s monkeyhue.time3 matches 1 run scoreboard players set @s monkeyhue.entity.AIState 9
scoreboard players reset @s monkeyhue.time3