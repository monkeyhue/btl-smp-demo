#--- Starting init ---
execute unless score @s btl.w.tempID matches 1 run bossbar set btl:blue name "Wave 1"
execute unless score @s btl.w.tempID matches 1 run bossbar set btl:blue max 5000
execute unless score @s btl.w.tempID matches 1 run scoreboard players set @s btl.w.progress 400
execute unless score @s btl.w.tempID matches 1 run scoreboard players set @s btl.w.tempID 1

#--- Tickly progress and credit application ---
scoreboard players remove @s btl.w.progress 1

#--- Mob Spawning ---
#// implementing this tomorrow. just recycle the yeti spawning code and merge with internal credit system

#// Everything below is just for testing purposes before I add the actual waves in. As long as this code works otherwise, implementation should be very simple and lag-free!
execute if score @s btl.w.progress matches 399 run tellraw @a "Well, if this message is showing, everything has worked so far. Hooray!"
execute if score @s btl.w.progress matches 320 run tellraw @a "I mostly wanted to test this part of the pack instead of the actual enemy code, since those seem to work fine?"
execute if score @s btl.w.progress matches 200 run tellraw @a "I can't leave you guys hanging though, so let's skip to the good part, shall we?"
execute if score @s btl.w.progress matches 100 run tellraw @a "Ready..."
execute if score @s btl.w.progress matches 80 run tellraw @a "Set..."
execute if score @s btl.w.progress matches 60 run tellraw @a "Go!"
execute if score @s btl.w.progress matches ..60 run scoreboard players set @s btl.w.waveID 5

#--- Bossbar storage ---
execute store result bossbar btl:blue value run scoreboard players get @s btl.w.progress