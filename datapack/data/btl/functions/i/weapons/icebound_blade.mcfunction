playsound btl:item.icebound_edge.swing player @a ~ ~ ~ 1 1
execute unless score @s btl.player.melee_reload matches 1.. positioned ^ ^1.51 ^2 summon item_display run function btl:e/prj/player/icebound_blade/init
execute unless score @s btl.player.melee_reload matches 12.. run scoreboard players set @s btl.player.melee_reload 12