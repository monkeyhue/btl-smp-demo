execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players reset @s monkeyhue.time1
execute unless score @s monkeyhue.tempAI matches 2 on passengers on passengers run function btl:b/chest/anim/open
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players set @s monkeyhue.tempAI 2

scoreboard players add @s monkeyhue.time1 1

execute if score @s monkeyhue.time1 matches 4 run playsound minecraft:block.chest.open block @a ~ ~ ~ 1 1
execute if score @s monkeyhue.time1 matches 42 run playsound minecraft:block.chest.close block @a ~ ~ ~ 1 1

#--- Tree for different loots ---
execute if score @s btl.w.battleID matches 1 if score @s monkeyhue.time1 matches 15..35 run function btl:b/chest/loot/blue1/main
execute if score @s btl.w.battleID matches 2 if score @s monkeyhue.time1 matches 15..35 run function btl:b/chest/loot/blue2/main
execute if score @s monkeyhue.time1 matches 50 run setblock ~ ~ ~ air

execute if score @s monkeyhue.time1 matches 56.. run function btl:b/chest/state/die