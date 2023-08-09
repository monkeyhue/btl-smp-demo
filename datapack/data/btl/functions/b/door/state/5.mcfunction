execute unless score @s monkeyhue.tempAI matches 5 run scoreboard players reset @s monkeyhue.time1
execute unless score @s monkeyhue.tempAI matches 5 run function btl:b/door/display/anim/celebrate_close

execute unless score @s monkeyhue.tempAI matches 5 run scoreboard players set @s monkeyhue.tempAI 5

scoreboard players add @s monkeyhue.time1 1
execute if score @s monkeyhue.time1 matches 74 on passengers on passengers on passengers run data modify entity @s item.tag.CustomModelData set value 6540000
execute if score @s monkeyhue.time1 matches 74.. run scoreboard players set @s monkeyhue.entity.AIState 0