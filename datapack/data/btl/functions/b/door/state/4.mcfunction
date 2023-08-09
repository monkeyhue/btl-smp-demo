execute unless score @s monkeyhue.tempAI matches 4 run scoreboard players reset @s monkeyhue.time1
execute unless score @s monkeyhue.tempAI matches 4 run scoreboard players reset @s monkeyhue.time2
execute unless score @s monkeyhue.tempAI matches 4 run function btl:b/door/display/anim/celebrate
execute unless score @s monkeyhue.tempAI matches 4 run scoreboard players set @s monkeyhue.tempAI 4

scoreboard players add @s monkeyhue.time1 1
execute if score @s monkeyhue.time1 matches 75.. run scoreboard players set @s monkeyhue.entity.AIState 0