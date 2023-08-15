function btl:e/player/event/calculate_power

execute if data storage btl:temp inventory.SelectedItem.tag{btl:{id:"icebound_edge"}} run function btl:i/weapons/icebound_blade
execute if data storage btl:temp inventory.SelectedItem.tag{btl:{id:"katana"}} run function btl:i/weapons/katana

scoreboard players reset @s btl.player.hit
data remove storage btl:temp inventory