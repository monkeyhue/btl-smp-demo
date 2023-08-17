function btl:e/player/event/calculate_power

execute if data storage btl:temp inventory.SelectedItem.tag{btl:{id:"grave_danger"}} run function btl:i/weapons/grave_danger
execute if data storage btl:temp inventory.SelectedItem.tag{btl:{id:"skull_staff"}} run function btl:i/weapons/skull_staff
execute if data storage btl:temp inventory.SelectedItem.tag{btl:{id:"kernel_blaster"}} run function btl:i/weapons/kernel_blaster
execute if data storage btl:temp inventory.SelectedItem.tag{btl:{id:"snowbrush"}} run function btl:i/weapons/snowbrush

scoreboard players reset @s btl.player.use
data remove storage btl:temp inventory