function btl:technical/rng/20
scoreboard players add @s monkeyhue.rng.out 100
execute store result storage btl:temp lootBasePower int 1.0 run scoreboard players get @s monkeyhue.rng.out

playsound minecraft:entity.item.pickup block @a ~ ~ ~ 1 1
particle minecraft:firework ~ ~0.5 ~ 0 0 0 0.2 4 force
loot spawn ~ ~0.7 ~ loot btl:loot/blue1/2