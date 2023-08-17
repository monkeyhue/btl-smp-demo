#-------------------------------------------------------------#
#
# Battle Handler for Icebound Battleground (Tier II)
#
#-------------------------------------------------------------#

#--- Wave tree ---
# Break
execute if entity @s[tag=btl.door.buffer] run function btl:battle/ids/blue2/buffer

#--- Wave 1 ---
#// Standard
execute if score @s[tag=!btl.door.buffer] btl.w.waveID matches 1 run function btl:battle/ids/blue2/wave1/main

#--- Wave 2 ---
#// Blizzies
execute if score @s[tag=!btl.door.buffer] btl.w.waveID matches 2 run function btl:battle/ids/blue2/wave2a/main
#// Snowfiends
execute if score @s[tag=!btl.door.buffer] btl.w.waveID matches 3 run function btl:battle/ids/blue2/wave2b/main

#--- Wave 3 ---
#// Snowflakes of doom + Snowfiends
execute if score @s[tag=!btl.door.buffer] btl.w.waveID matches 4 run function btl:battle/ids/blue2/wave3/main

#--- Wave 4 ---
#// Defeat the Blizzies + Zombie spam
execute if score @s[tag=!btl.door.buffer] btl.w.waveID matches 5 run function btl:battle/ids/blue2/wave4a/main
#// (Survive) Chillagers + Snowfiends + Snowflakes of doom
execute if score @s[tag=!btl.door.buffer] btl.w.waveID matches 6 run function btl:battle/ids/blue2/wave4b/main

#--- Wave 5 ---
#// Standard
execute if score @s[tag=!btl.door.buffer] btl.w.waveID matches 7 run function btl:battle/ids/blue2/wave5/main

# Final Wave
execute if score @s[tag=!btl.door.buffer] btl.w.waveID matches 8 run function btl:battle/ids/blue2/boss/main

#--- Execute on players and ensure that they're not going too far ---
execute as @a[scores={btl.w.battleID=2},distance=36..] at @s run function btl:battle/actionbar/too_far/main
execute as @a[scores={btl.w.battleID=2,btl.w.penalty=1..},distance=..36] at @s run function btl:battle/actionbar/back_in

#// Checks for despawned mobs
execute if data storage btl:temp despawn[{id:2}] run function btl:battle/ids/blue2/despawn
