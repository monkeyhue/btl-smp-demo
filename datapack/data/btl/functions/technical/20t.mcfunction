#// Add to global mob spawning
execute if score #btl.postDragon btl.sum matches 1.. at @a if biome ~ ~ ~ #btl:spawning/blue run scoreboard players add #btl.mobTimer monkeyhue.time1 1
execute if score #btl.mobTimer monkeyhue.time1 >= #btl.gamerule.spawnTime btl.sum as @r at @s if biome ~ ~ ~ #btl:spawning/blue run function btl:e/mob/natural_spawn


schedule function btl:technical/20t 20t