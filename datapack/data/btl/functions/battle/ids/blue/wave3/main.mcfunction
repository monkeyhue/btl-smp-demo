#--- Starting init ---
execute unless score @s btl.w.tempID matches 4 run scoreboard players reset @s monkeyhue.time1
execute unless score @s btl.w.tempID matches 4 run bossbar set btl:blue name {"translate": "battle.btl.wave.generic3"}
execute unless score @s btl.w.tempID matches 4 run scoreboard players set @s btl.w.progress 400
execute unless score @s btl.w.tempID matches 4 run bossbar set btl:blue max 8000
execute unless score @s btl.w.tempID matches 4 run scoreboard players set @s btl.w.maxMobs 11
execute unless score @s btl.w.tempID matches 4 run scoreboard players set @s btl.w.mobs 0
execute unless score @s btl.w.tempID matches 4 at @a[scores={btl.w.battleID=1}] run scoreboard players add @s btl.w.maxMobs 5
execute unless score @s btl.w.tempID matches 4 run scoreboard players set @s btl.w.tempID 4

#--- Mob Spawning ---
scoreboard players add @s monkeyhue.time1 1
execute unless score @s btl.w.credits matches 800.. run scoreboard players add @s btl.w.credits 1
execute at @a[scores={btl.w.battleID=1}] run scoreboard players add @s monkeyhue.time1 1

#// Peons
execute if score @s btl.w.mobs matches ..5 if score @s monkeyhue.time1 matches 40.. run function btl:battle/ids/blue/wave3/summon
execute if score @s btl.w.mobs matches 5..9 if score @s monkeyhue.time1 matches 100.. run function btl:battle/ids/blue/wave3/summon
execute if score @s btl.w.mobs matches 10..13 if score @s monkeyhue.time1 matches 400.. run function btl:battle/ids/blue/wave3/summon
execute if score @s monkeyhue.time1 matches 800.. if score @s btl.w.mobs < @s btl.w.maxMobs run function btl:battle/ids/blue/wave3/summon

#// Credits
execute if score @s btl.w.mobs matches 5..8 if score @s btl.w.credits matches 600.. run function btl:battle/ids/blue/wave3/credit_summon

#--- Tickly progress counting ---
scoreboard players remove @s btl.w.progress 1
execute if data storage btl:root activeBattles[{id:1}].kills[0] run function btl:battle/ids/blue/wave3/kill
execute store result bossbar btl:blue value run scoreboard players get @s btl.w.progress

#--- Determine if win ---
execute if score @s btl.w.progress matches 8000.. run tag @s add btl.door.buffer