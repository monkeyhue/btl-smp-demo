scoreboard players add @s monkeyhue.time1 1

execute if score @s monkeyhue.time1 matches ..17 run particle block stone_bricks ~ ~0.1 ~ 0.5 0 0.5 1 4
execute if score @s monkeyhue.time1 matches 18 run particle explosion ~ ~0.2 ~ 0 0 0 0 1
execute if score @s monkeyhue.time1 matches 18..80 run particle dust 0.514 1.000 1.000 1 ~ ~1.2 ~ 0.4 0.6 0.4 2 1 normal

execute if score @s monkeyhue.time1 matches 82 run playsound minecraft:block.wooden_door.open block @a ~ ~ ~ 1 1
execute if score @s monkeyhue.time1 matches 82 run particle flash ~ ~1.5 ~ 0 0 0 0 1
execute if score @s monkeyhue.time1 matches 82 run particle firework ~ ~1.5 ~ 0.1 0.1 0.1 0.5 60

execute if score @s monkeyhue.time1 matches 113.. run tag @s remove btl.b.door.spawning
execute if score @s monkeyhue.time1 matches 113.. run scoreboard players set @s monkeyhue.entity.AIState 0