scoreboard players set @s btl.player.power 100
execute if score @s btl.w.battleID matches 1.. run tellraw @s {"translate":"tellraw.btl.respawn.event_kick","color":"red"}
execute if score @s btl.w.battleID matches 1.. run stopsound @s music
execute as @e[type=item,distance=..10,nbt={Item:{tag:{btl:{}}}}] run function btl:e/player/event/save_items

#// Reset all relevant scores
scoreboard players reset @s btl.player.melee_reload
scoreboard players reset @s btl.player.ranged_reload
scoreboard players reset @s btl.w.battleID
scoreboard players reset @s btl.w.penalty
scoreboard players reset @s btl.deaths