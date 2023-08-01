# btl:e is for entities, "btl:e(ntity)"
execute as @e[type=item_display,tag=btl.entity] at @s run function btl:e/main
execute as @e[type=armor_stand,tag=btl.entity] at @s run function btl:e/main
execute as @e[type=interaction,tag=btl.block] at @s run function btl:b/main

#Add time to gametime
scoreboard players add %monkeyhue.gametime monkeyhue.temp1 1

schedule function btl:technical/tick 1t