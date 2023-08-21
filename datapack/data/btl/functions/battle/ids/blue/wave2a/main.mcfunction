#--- Starting init ---
execute unless score @s btl.w.tempID matches 2 run scoreboard players reset @s monkeyhue.time1
execute unless score @s btl.w.tempID matches 2 run bossbar set btl:blue name {"translate": "battle.btl.wave.generic2"}
execute unless score @s btl.w.tempID matches 2 run scoreboard players set @s btl.w.maxProgress 2500
execute unless score @s btl.w.tempID matches 2 at @a[scores={btl.w.battleID=1}] run scoreboard players add @s btl.w.maxProgress 1500
execute unless score @s btl.w.tempID matches 2 store result bossbar btl:blue max run scoreboard players get @s btl.w.maxProgress
execute unless score @s btl.w.tempID matches 2 run scoreboard players set @s btl.w.progress 400
execute unless score @s btl.w.tempID matches 2 run scoreboard players set @s btl.w.maxMobs 5
execute unless score @s btl.w.tempID matches 2 run scoreboard players set @s btl.w.mobs 0
execute unless score @s btl.w.tempID matches 2 at @a[scores={btl.w.battleID=1}] run scoreboard players add @s btl.w.maxMobs 3
execute unless score @s btl.w.tempID matches 2 run scoreboard players set @s btl.w.tempID 2

#--- Mob Spawning ---
scoreboard players add @s monkeyhue.time1 1
execute at @a[scores={btl.w.battleID=1}] run scoreboard players add @s monkeyhue.time1 1

#// Peons
execute if score @s btl.w.mobs matches ..3 if score @s monkeyhue.time1 matches 20.. run function btl:battle/ids/blue/wave2a/summon
execute if score @s btl.w.mobs matches 4..6 if score @s monkeyhue.time1 matches 200.. run function btl:battle/ids/blue/wave2a/summon
execute if score @s monkeyhue.time1 matches 400.. if score @s btl.w.mobs < @s btl.w.maxMobs run function btl:battle/ids/blue/wave2a/summon

#--- Tickly progress counting ---
scoreboard players remove @s btl.w.progress 1
execute if data storage btl:root activeBattles[{id:1}].kills[0] run function btl:battle/ids/blue/wave2a/kill
execute store result bossbar btl:blue value run scoreboard players get @s btl.w.progress

#--- Determine if win ---
execute if score @s btl.w.progress >= @s btl.w.maxProgress run tag @s add btl.door.buffer

#--- Determine if end ---
execute if score @s btl.w.progress matches ..-40 run function btl:battle/ids/blue/loss
execute unless entity @p[scores={btl.w.battleID=1}] run function btl:battle/ids/blue/loss