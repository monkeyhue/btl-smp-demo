execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players reset @s monkeyhue.time1
execute unless score @s monkeyhue.tempAI matches 0 on passengers on passengers run function btl:b/chest/anim/spawn
execute unless score @s monkeyhue.tempAI matches 0 run scoreboard players set @s monkeyhue.tempAI 0

scoreboard players add @s monkeyhue.time1 1
execute if score @s monkeyhue.time1 matches 60 run playsound minecraft:entity.firework_rocket.launch block @a ~ ~ ~ 2 1
execute if score @s monkeyhue.time1 matches 60..72 run function btl:b/chest/position
execute if score @s monkeyhue.time1 matches 72 run playsound minecraft:block.polished_deepslate.place block @a ~ ~ ~ 2 1
execute if score @s monkeyhue.time1 matches 79 run playsound minecraft:entity.player.attack.sweep block @a ~ ~ ~ 0.5 1
execute if score @s monkeyhue.time1 matches 79 run particle minecraft:poof ~ ~0.3 ~ 0.2 0.01 0.2 0.05 5
execute if score @s monkeyhue.time1 matches 82 run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1 2
execute if score @s monkeyhue.time1 matches 83 run particle minecraft:flash ~ ~1.5 ~
execute if score @s monkeyhue.time1 matches 83 run particle minecraft:firework ~ ~1.5 ~ 0.2 0.2 0.2 0.15 12
execute if score @s monkeyhue.time1 matches 94 run playsound minecraft:block.polished_deepslate.place block @a ~ ~ ~ 2 1
execute if score @s monkeyhue.time1 matches 94 run particle minecraft:poof ~ ~0.3 ~ 0.2 0.01 0.2 0.05 5
execute if score @s monkeyhue.time1 matches 102 positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute if score @s monkeyhue.time1 matches 103 run setblock ~ ~ ~ barrier destroy
execute if score @s monkeyhue.time1 matches 104.. run scoreboard players set @s monkeyhue.entity.AIState 1