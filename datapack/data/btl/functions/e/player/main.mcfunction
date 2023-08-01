execute if score @s btl.player.hit matches 1.. run function btl:i/hit
execute if score @s btl.player.use matches 1.. run function btl:i/use
execute if score @s btl.player.melee_reload matches 1.. run scoreboard players remove @s btl.player.melee_reload 1
advancement revoke @s only btl:technical/tick