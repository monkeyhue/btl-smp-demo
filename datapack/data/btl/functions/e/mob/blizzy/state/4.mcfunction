#-------------------------------------------------------------#
#
# Controls the entity
#
#-------------------------------------------------------------#
execute unless score @s monkeyhue.tempAI matches 4 on passengers run data modify entity @s item.tag.Damage set value 4
execute unless score @s monkeyhue.tempAI matches 4 run scoreboard players set #btl.animLength monkeyhue.objmc1 30
execute unless score @s monkeyhue.tempAI matches 4 on passengers run function btl:e/display/anim/gen
execute unless score @s monkeyhue.tempAI matches 4 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 4 run scoreboard players reset @s monkeyhue.time3
execute unless score @s monkeyhue.tempAI matches 4 run scoreboard players set @s monkeyhue.tempAI 4

scoreboard players add @s monkeyhue.time2 1
execute if score @s monkeyhue.time2 matches 1 run playsound minecraft:entity.phantom.ambient hostile @a ~ ~ ~ 1.5 0.6
execute if score @s monkeyhue.time2 matches 20 run playsound minecraft:block.dispenser.launch hostile @a ~ ~ ~ 2 0.5
execute if score @s monkeyhue.time2 matches 20 run function btl:e/mob/blizzy/event/shoot_snowflakes
execute if score @s monkeyhue.time2 matches 21 run function btl:e/mob/blizzy/event/shoot_snowflakes
execute if score @s monkeyhue.time2 matches 22 run function btl:e/mob/blizzy/event/shoot_snowflakes

execute if score @s monkeyhue.time2 matches 29.. run scoreboard players set @s monkeyhue.entity.AIState 0