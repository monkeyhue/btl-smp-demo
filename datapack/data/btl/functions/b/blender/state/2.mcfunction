execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players set @s monkeyhue.time1 0
execute unless score @s monkeyhue.tempAI matches 2 on passengers run function btl:b/blender/display/anim/blend
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players set @s monkeyhue.tempAI 2

scoreboard players add @s monkeyhue.time1 1
execute if score @s monkeyhue.time1 matches 47.. run scoreboard players set @s monkeyhue.entity.AIState 1