#// Item usage detection
execute if score @s btl.player.hit matches 1.. run function btl:i/hit
execute if score @s btl.player.use matches 1.. run function btl:i/use

#// Reload timers
execute if score @s btl.player.melee_reload matches 1.. run scoreboard players remove @s btl.player.melee_reload 1
execute if score @s btl.player.ranged_reload matches 1.. run scoreboard players remove @s btl.player.ranged_reload 1

#// Cases
execute if score @s btl.loggedOut matches 1.. run function btl:e/player/event/log_in
execute if score @s btl.deaths matches 1.. run function btl:e/player/event/respawn