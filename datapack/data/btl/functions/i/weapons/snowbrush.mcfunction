execute unless score @s btl.player.ranged_reload matches 1.. run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1.2
execute unless score @s btl.player.ranged_reload matches 1.. run playsound minecraft:block.snow.place player @a ~ ~ ~ 1 1
execute unless score @s btl.player.ranged_reload matches 1.. positioned ~ ~1.51 ~ positioned ^0.2 ^ ^1 summon item_display run function btl:e/prj/player/snowbrush/init_1
execute unless score @s btl.player.ranged_reload matches 1.. positioned ~ ~1.51 ~ positioned ^ ^ ^1 summon item_display run function btl:e/prj/player/snowbrush/init_2
execute unless score @s btl.player.ranged_reload matches 1.. positioned ~ ~1.51 ~ positioned ^-0.2 ^ ^1 summon item_display run function btl:e/prj/player/snowbrush/init_3

#// Check reload
execute unless score @s[gamemode=!creative] btl.player.ranged_reload matches 1.. run scoreboard players set @s btl.player.ranged_reload 5