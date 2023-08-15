#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 3 on passengers run data modify entity @s item.tag.Damage set value 3
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players set #btl.animLength monkeyhue.objmc1 16
execute unless score @s monkeyhue.tempAI matches 3 on passengers run function btl:e/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players set @s monkeyhue.tempAI 3

scoreboard players add @s monkeyhue.time2 1

execute if score @s monkeyhue.time2 matches 2..4 run function btl:e/mob/blizzy/event/drop_snowflake

execute if score @s monkeyhue.time2 matches 15.. run scoreboard players set @s monkeyhue.entity.AIState 0