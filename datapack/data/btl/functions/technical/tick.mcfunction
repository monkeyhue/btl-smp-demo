# btl:e is for entities, "btl:e(ntity)"
execute as @a at @s run function btl:e/player/main
execute as @e[type=#btl:tickly,tag=btl.entity] at @s run function btl:e/main
execute as @e[type=interaction,tag=btl.block,tag=!btl.unticked] at @s run function btl:b/main

#Add time to gametime
scoreboard players add %monkeyhue.gametime monkeyhue.temp1 1

schedule function btl:technical/tick 1t