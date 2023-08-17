scoreboard players set @s btl.player.power 100
execute if score @s btl.w.battleID matches 1.. run tellraw @s {"translate":"tellraw.btl.login.event_kick","color":"red"}

#// Reset all relevant scores
scoreboard players reset @s btl.player.melee_reload
scoreboard players reset @s btl.player.ranged_reload
scoreboard players reset @s btl.w.battleID
scoreboard players reset @s btl.w.penalty
scoreboard players reset @s btl.loggedOut