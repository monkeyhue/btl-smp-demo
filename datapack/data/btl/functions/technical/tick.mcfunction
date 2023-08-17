# btl:e is for entities, "btl:e(ntity)"
execute as @a at @s run function btl:e/player/main
execute as @e[type=#btl:tickly,tag=btl.entity] at @s run function btl:e/main
execute as @e[type=interaction,tag=btl.block,tag=!btl.unticked] at @s run function btl:b/main

#// Add time to gametime
scoreboard players add %monkeyhue.gametime monkeyhue.temp1 1

#// Add to global mob spawning
execute if score #btl.gamerule.doMobSpawning btl.sum matches 1.. at @a run scoreboard players add #btl.mobTimer monkeyhue.time1 1
execute if score #btl.mobTimer monkeyhue.time1 >= #btl.gamerule.spawnTime btl.sum as @r at @s run function btl:e/mob/natural_spawn


schedule function btl:technical/tick 1t