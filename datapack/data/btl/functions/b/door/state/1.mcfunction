execute unless score @s monkeyhue.tempAI matches 1 run function btl:battle/get_battle
execute unless score @s monkeyhue.tempAI matches 1 unless score @s btl.w.battleID matches 0.. run scoreboard players set @s monkeyhue.entity.AIState 6
execute unless score @s monkeyhue.tempAI matches 1 unless score @s btl.w.battleID matches 0.. run return 0
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players reset @s monkeyhue.time1
execute unless score @s monkeyhue.tempAI matches 1 if score @s btl.w.battleID matches 0.. run function btl:b/door/display/anim/open
execute unless score @s monkeyhue.tempAI matches 1 on passengers on passengers on passengers run data modify entity @s item.tag.CustomModelData set value 6541001
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players set @s monkeyhue.tempAI 1

scoreboard players add @s monkeyhue.time1 1
execute if score @s monkeyhue.time1 matches 28 run function btl:battle/init/announce
execute if score @s monkeyhue.time1 matches 45.. run scoreboard players set @s monkeyhue.entity.AIState 2