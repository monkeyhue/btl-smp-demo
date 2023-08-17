execute if score @s monkeyhue.time1 matches 1 run spreadplayers ~ ~ 8 24 true @s

execute if score @s monkeyhue.time1 matches 2 run particle explosion ~ ~0.2 ~ 0 0 0 0 1
execute if score @s monkeyhue.time1 matches 2 run playsound minecraft:entity.enderman.teleport block @a ~ ~ ~ 2
execute if score @s monkeyhue.time1 matches 2 run function btl:battle/ids/blue2/summon/snowfiend