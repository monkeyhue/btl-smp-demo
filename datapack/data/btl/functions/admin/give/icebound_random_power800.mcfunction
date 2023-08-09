function btl:technical/rng/100
scoreboard players add @s monkeyhue.rng.out 800
execute store result storage btl:temp lootBasePower int 1.0 run scoreboard players get @s monkeyhue.rng.out
loot give @s loot btl:item/icebound_edge
scoreboard players reset @s monkeyhue.rng.out