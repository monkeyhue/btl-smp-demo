scoreboard players add @s monkeyhue.time1 1

#// Natural Spawners
execute if entity @s[tag=btl.spawner.natural.blue] run function btl:e/temp/spawner/natural/blue
execute if entity @s[tag=btl.spawner.natural.night] run function btl:e/temp/spawner/natural/night

#// Battle Spawners
execute if entity @s[tag=btl.spawner.snow_zombie] run function btl:e/temp/spawner/snow_zombie/1
execute if entity @s[tag=btl.spawner.chillager] run function btl:e/temp/spawner/chillager/1
execute if entity @s[tag=btl.spawner.blizzy] run function btl:e/temp/spawner/blizzy/1
execute if entity @s[tag=btl.spawner.snowfiend] run function btl:e/temp/spawner/snowfiend/1
execute if entity @s[tag=btl.spawner.snow_zombie2] run function btl:e/temp/spawner/snow_zombie/2
execute if entity @s[tag=btl.spawner.chillager2] run function btl:e/temp/spawner/chillager/2
execute if entity @s[tag=btl.spawner.blizzy2] run function btl:e/temp/spawner/blizzy/2
execute if entity @s[tag=btl.spawner.snowfiend2] run function btl:e/temp/spawner/snowfiend/2

#// Hazard Spawners
execute if entity @s[tag=btl.spawner.snowflake] run function btl:e/temp/spawner/snowflake/default
execute if entity @s[tag=btl.spawner.snowflake_player] run function btl:e/temp/spawner/snowflake/player

execute if score @s monkeyhue.time1 matches 2.. run function btl:e/temp/die