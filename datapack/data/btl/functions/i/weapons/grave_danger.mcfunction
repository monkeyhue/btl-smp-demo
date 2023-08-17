execute unless score @s btl.player.ranged_reload matches 1.. positioned ~ ~1.51 ~ positioned ^ ^ ^1 summon item_display run function btl:e/prj/player/grave_danger/init

#// Check reload
execute if score @s[gamemode=!creative] btl.player.ranged_reload matches 11.. run function btl:i/actionbar/wait
execute unless score @s[gamemode=!creative] btl.player.ranged_reload matches 1.. run scoreboard players set @s btl.player.ranged_reload 40