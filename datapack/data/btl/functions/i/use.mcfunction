function btl:e/player/event/calculate_power

execute if data storage btl:temp inventory.SelectedItem.tag{btl:{id:"snowbrush"}} run function btl:i/weapon/snowbrush/use

scoreboard players reset @s btl.player.use
data remove storage btl:temp inventory