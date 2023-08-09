execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players reset @s monkeyhue.time1
execute unless score @s monkeyhue.tempAI matches 3 run function btl:b/door/display/anim/close

execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players set @s monkeyhue.tempAI 3

scoreboard players add @s monkeyhue.time1 1
execute if score @s monkeyhue.time1 matches 24 on passengers on passengers on passengers run data modify entity @s item.tag.CustomModelData set value 6540000
execute if score @s monkeyhue.time1 matches 25.. run scoreboard players set @s monkeyhue.entity.AIState 0