execute unless score @s monkeyhue.tempAI matches 7 run scoreboard players reset @s monkeyhue.time1
execute unless score @s monkeyhue.tempAI matches 7 run function btl:b/door/display/anim/spawn_boss
execute unless score @s monkeyhue.tempAI matches 7 run scoreboard players set @s monkeyhue.tempAI 7

scoreboard players add @s monkeyhue.time1 1

execute if score @s monkeyhue.time1 matches 29 run playsound minecraft:block.wooden_door.open block @a ~ ~ ~ 3 1
execute if score @s monkeyhue.time1 matches 30 run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 3 1
execute if score @s monkeyhue.time1 matches 91.. run scoreboard players set @s monkeyhue.entity.AIState 2

#--- Tree for battle ids. Unavoidable for now, unfortunately ---
execute if score @s btl.w.battleID matches 1 run function btl:battle/ids/blue/main
execute if score @s btl.w.battleID matches 2 run function btl:battle/ids/blue2/main