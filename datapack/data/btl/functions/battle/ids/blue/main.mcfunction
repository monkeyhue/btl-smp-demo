
#// Initialize
execute unless score @s btl.w.waveID matches 0.. run function btl:battle/ids/blue/wave/init

#--- Wave tree ---
# Wave 1
execute if score @s btl.w.waveID matches 1 run function btl:battle/ids/blue/wave/1

# Wave 2
execute if score @s btl.w.waveID matches 2 run function btl:battle/ids/blue/wave/2

# Wave 3
execute if score @s btl.w.waveID matches 3 run function btl:battle/ids/blue/wave/3
execute if score @s btl.w.waveID matches 4 run function btl:battle/ids/blue/wave/4

# Final Wave
execute if score @s btl.w.waveID matches 5 run function btl:battle/ids/blue/wave/boss


#--- Loss determination ---
execute if score @s btl.w.progress matches ..-40 run function btl:battle/ids/blue/loss