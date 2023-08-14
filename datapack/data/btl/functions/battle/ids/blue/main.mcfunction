
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

#--- Execute on players and ensure that they're not going too far ---
execute as @a[scores={btl.w.battleID=1},distance=40..] at @s run function btl:battle/actionbar/too_far/main
execute as @a[scores={btl.w.battleID=1,btl.w.penalty=1..},distance=..40] at @s run function btl:battle/actionbar/back_in 

#--- Loss determination ---
execute if score @s btl.w.progress matches ..-40 run function btl:battle/ids/blue/loss
execute unless entity @p[scores={btl.w.battleID=1}] run function btl:battle/ids/blue/loss