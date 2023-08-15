scoreboard players add @s monkeyhue.time1 1

execute if entity @s[tag=btl.spawner.snow_zombie] run function btl:e/temp/spawner/snow_zombie
execute if entity @s[tag=btl.spawner.chillager] run function btl:e/temp/spawner/chillager
execute if entity @s[tag=btl.spawner.blizzy] run function btl:e/temp/spawner/blizzy
execute if entity @s[tag=btl.spawner.snowfiend] run function btl:e/temp/spawner/snowfiend

execute if score @s monkeyhue.time1 matches 2.. run function btl:e/temp/die