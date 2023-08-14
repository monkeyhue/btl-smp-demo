#--- Starting init ---
execute unless score @s btl.w.tempID matches 1 run bossbar set btl:blue name "Wave 1"
execute unless score @s btl.w.tempID matches 1 run bossbar set btl:blue max 5000
execute unless score @s btl.w.tempID matches 1 run scoreboard players set @s btl.w.progress 400
execute unless score @s btl.w.tempID matches 1 run scoreboard players set @s btl.w.tempID 1

#--- Tickly progress and credit application ---
scoreboard players remove @s btl.w.progress 1

#--- Mob Spawning ---

#// Everything below is just for testing purposes before I add the actual waves in. As long as this code works otherwise, implementation should be very simple and lag-free!
execute if score @s btl.w.progress matches 1.. run scoreboard players set @s btl.w.waveID 5

#--- Bossbar storage ---
execute store result bossbar btl:blue value run scoreboard players get @s btl.w.progress