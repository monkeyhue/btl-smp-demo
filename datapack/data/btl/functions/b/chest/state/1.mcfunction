execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players reset @s monkeyhue.time1
execute unless score @s monkeyhue.tempAI matches 1 on passengers on passengers run function btl:b/chest/anim/idle
execute unless score @s monkeyhue.tempAI matches 1 run scoreboard players set @s monkeyhue.tempAI 1

particle minecraft:wax_off ~ ~0.5 ~ 0.4 0.4 0.4 1 1