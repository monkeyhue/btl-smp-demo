#--- Starting init ---
execute unless score @s btl.w.tempID matches 5 run scoreboard players reset @s monkeyhue.time1
execute unless score @s btl.w.tempID matches 5 run scoreboard players set @s monkeyhue.time5 240
execute unless score @s btl.w.tempID matches 5 run bossbar set btl:blue2 name {"translate": "battle.btl.wave.generic4"}
execute unless score @s btl.w.tempID matches 5 run scoreboard players set @s btl.w.maxProgress 5500
execute unless score @s btl.w.tempID matches 5 at @a[scores={btl.w.battleID=2}] run scoreboard players add @s btl.w.maxProgress 2000
execute unless score @s btl.w.tempID matches 5 store result bossbar btl:blue2 max run scoreboard players get @s btl.w.maxProgress
execute unless score @s btl.w.tempID matches 5 run scoreboard players set @s btl.w.progress 600
execute unless score @s btl.w.tempID matches 5 run scoreboard players set @s btl.w.maxMobs 20
execute unless score @s btl.w.tempID matches 5 run scoreboard players set @s btl.w.mobs 0
execute unless score @s btl.w.tempID matches 5 at @a[scores={btl.w.battleID=2}] run scoreboard players add @s btl.w.maxMobs 4
execute unless score @s btl.w.tempID matches 5 run scoreboard players set @s btl.w.tempID 5

#--- Mob Spawning ---
scoreboard players add @s monkeyhue.time1 1
execute at @a[scores={btl.w.battleID=2}] run scoreboard players add @s monkeyhue.time1 1

#// Peons
execute if score @s btl.w.mobs matches ..10 if score @s monkeyhue.time1 matches 6.. run function btl:battle/ids/blue2/wave4a/summon
execute if score @s btl.w.mobs matches 11..20 if score @s monkeyhue.time1 matches 60.. run function btl:battle/ids/blue2/wave4a/summon
execute if score @s monkeyhue.time1 matches 400.. if score @s btl.w.mobs < @s btl.w.maxMobs run function btl:battle/ids/blue2/wave4a/summon

#//Blizzies
execute if score @s monkeyhue.time5 matches ..899 run scoreboard players add @s monkeyhue.time5 2
execute if score @s monkeyhue.time5 matches ..899 at @a[scores={btl.w.battleID=2}] run scoreboard players add @s monkeyhue.time1 1
execute if score @s monkeyhue.time5 matches 300.. if score @s btl.w.mobs < @s btl.w.maxMobs run function btl:battle/ids/blue2/summon/blizzy_forced

#--- Tickly progress counting ---
scoreboard players remove @s btl.w.progress 1
execute if data storage btl:root activeBattles[{id:2}].kills[0] run function btl:battle/ids/blue2/wave4a/kill
execute store result bossbar btl:blue2 value run scoreboard players get @s btl.w.progress

#--- Determine if win ---
execute if score @s btl.w.progress >= @s btl.w.maxProgress run tag @s add btl.door.buffer

#--- Determine if end ---
execute if score @s btl.w.progress matches ..-40 run function btl:battle/ids/blue2/win
execute unless entity @p[scores={btl.w.battleID=2}] run function btl:battle/ids/blue2/win