execute if score @s btl.player.ranged_reload matches 1.. run function btl:i/actionbar/wait
execute unless score @s btl.player.ranged_reload matches 1.. run playsound minecraft:item.crossbow.shoot master @a ~ ~ ~ 1 0.8
execute unless score @s btl.player.ranged_reload matches 1.. positioned ^ ^1.51 ^1 summon item_display run function btl:e/prj/player/grave_danger/init
execute unless score @s btl.player.ranged_reload matches 1.. run scoreboard players set @s btl.player.ranged_reload 40