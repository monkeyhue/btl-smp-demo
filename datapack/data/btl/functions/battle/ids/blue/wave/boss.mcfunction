#--- Starting init ---
execute unless score @s btl.w.tempID matches 5 run scoreboard players set @s monkeyhue.time1 100
execute unless score @s btl.w.tempID matches 5 run function btl:admin/summon/yeti
execute unless score @s btl.w.tempID matches 5 run bossbar set btl:blue name "Defeat The Yeti!"
execute unless score @s btl.w.tempID matches 5 run scoreboard players set @s btl.w.maxMobs 4
execute unless score @s btl.w.tempID matches 5 run scoreboard players set @s btl.w.mobs 0
execute unless score @s btl.w.tempID matches 5 at @a[distance=..48] run scoreboard players add @s btl.w.maxMobs 4
execute unless score @s btl.w.tempID matches 5 run tellraw @a "I'll put a cool animation and startup here soon, but unfortunately art takes time. Check on the git tomorrow!"
execute unless score @s btl.w.tempID matches 5 run scoreboard players set @s btl.w.tempID 5

#--- Mob Spawning ---
scoreboard players add @s monkeyhue.time1 1
execute if score @s btl.w.mobs matches ..2 if score @s monkeyhue.time1 matches 100.. run function btl:battle/ids/blue/summon
execute if score @s monkeyhue.time1 matches 400.. if score @s btl.w.mobs < @s btl.w.maxMobs run function btl:battle/ids/blue/summon

#--- Music! ---
scoreboard players add @s monkeyhue.time3 1
execute if score @s monkeyhue.time3 matches 1 run stopsound @a[distance=..64] music
execute if score @s monkeyhue.time3 matches 2 run playsound btl:music.blue.boss music @a[distance=..64] ~ ~ ~ 1 1 1
execute if score @s monkeyhue.time3 matches 2820.. run scoreboard players reset @s monkeyhue.time2

#--- End the wave battle ---