execute unless score @s monkeyhue.tempAI matches 6 run scoreboard players reset @s monkeyhue.time1
execute unless score @s monkeyhue.tempAI matches 6 run function btl:b/door/display/anim/open_fail
execute unless score @s monkeyhue.tempAI matches 6 run scoreboard players reset @s btl.w.battleID
execute unless score @s monkeyhue.tempAI matches 6 run scoreboard players set @s monkeyhue.tempAI 6

scoreboard players add @s monkeyhue.time1 1

execute if score @s monkeyhue.time1 matches 26 run playsound minecraft:item.shield.break block @a ~ ~ ~ 1 0.8
execute if score @s monkeyhue.time1 matches 40 as @p run function btl:b/door/actionbar/invalid_recipe
execute if score @s monkeyhue.time1 matches 55.. run scoreboard players set @s monkeyhue.entity.AIState 0