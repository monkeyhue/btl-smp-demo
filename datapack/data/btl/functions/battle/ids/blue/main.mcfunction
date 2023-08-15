#-------------------------------------------------------------#
#
# Battle Handler for Icebound Battleground (Tier I)
#
#-------------------------------------------------------------#

#--- Wave tree ---
# Break
execute if entity @s[tag=btl.door.buffer] run function btl:battle/ids/blue/buffer

# Wave 1
execute if score @s[tag=!btl.door.buffer] btl.w.waveID matches 1 run function btl:battle/ids/blue/wave1/main

# Wave 2
execute if score @s[tag=!btl.door.buffer] btl.w.waveID matches 2 run function btl:battle/ids/blue/wave2a/main
execute if score @s[tag=!btl.door.buffer] btl.w.waveID matches 3 run function btl:battle/ids/blue/wave2b/main

# Wave 3
execute if score @s[tag=!btl.door.buffer] btl.w.waveID matches 4 run function btl:battle/ids/blue/wave3/main

# Final Wave
execute if score @s[tag=!btl.door.buffer] btl.w.waveID matches 5 run function btl:battle/ids/blue/boss/main

#--- Execute on players and ensure that they're not going too far ---
execute as @a[scores={btl.w.battleID=1},distance=36..] at @s run function btl:battle/actionbar/too_far/main
execute as @a[scores={btl.w.battleID=1,btl.w.penalty=1..},distance=..36] at @s run function btl:battle/actionbar/back_in

#// Checks for despawned mobs
execute if data storage btl:temp despawn[{id:1}] run function btl:battle/ids/blue/despawn

#--- Loss determination ---
execute unless entity @p[scores={btl.w.battleID=1}] run function btl:battle/ids/blue/loss
execute if score @s btl.w.progress matches ..-40 run function btl:battle/ids/blue/loss