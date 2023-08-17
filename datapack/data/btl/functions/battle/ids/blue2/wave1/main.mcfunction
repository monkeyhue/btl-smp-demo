#--- Starting init ---
execute unless score @s btl.w.tempID matches 1 run scoreboard players reset @s monkeyhue.time1
execute unless score @s btl.w.tempID matches 1 run bossbar set btl:blue2 name {"translate": "battle.btl.wave.generic1"}
execute unless score @s btl.w.tempID matches 1 run scoreboard players set @s btl.w.maxProgress 2000
execute unless score @s btl.w.tempID matches 1 at @a[scores={btl.w.battleID=2}] run scoreboard players add @s btl.w.maxProgress 2000
execute unless score @s btl.w.tempID matches 1 store result bossbar btl:blue2 max run scoreboard players get @s btl.w.maxProgress
execute unless score @s btl.w.tempID matches 1 run scoreboard players set @s btl.w.progress 400
execute unless score @s btl.w.tempID matches 1 run scoreboard players set @s btl.w.maxMobs 10
execute unless score @s btl.w.tempID matches 1 run scoreboard players set @s btl.w.mobs 0
execute unless score @s btl.w.tempID matches 1 at @a[scores={btl.w.battleID=2}] run scoreboard players add @s btl.w.maxMobs 6
execute unless score @s btl.w.tempID matches 1 run scoreboard players set @s btl.w.tempID 1

#--- Mob Spawning ---
scoreboard players add @s monkeyhue.time1 1
execute at @a[scores={btl.w.battleID=2}] run scoreboard players add @s monkeyhue.time1 1
execute if score @s btl.w.mobs matches ..5 if score @s monkeyhue.time1 matches 12.. run function btl:battle/ids/blue2/wave1/summon
execute if score @s btl.w.mobs matches 6..11 if score @s monkeyhue.time1 matches 160.. run function btl:battle/ids/blue2/wave1/summon
execute if score @s monkeyhue.time1 matches 400.. if score @s btl.w.mobs < @s btl.w.maxMobs run function btl:battle/ids/blue2/wave1/summon

#--- Tickly progress counting ---
scoreboard players remove @s btl.w.progress 1
execute if data storage btl:root activeBattles[{id:2}].kills[0] run function btl:battle/ids/blue2/wave1/kill
execute store result bossbar btl:blue2 value run scoreboard players get @s btl.w.progress

#--- Determine if win ---
execute if score @s btl.w.progress >= @s btl.w.maxProgress run tag @s add btl.door.buffer

#--- Determine if end ---
execute if score @s btl.w.progress matches ..-40 run function btl:battle/ids/blue2/lose
execute unless entity @p[scores={btl.w.battleID=2}] run function btl:battle/ids/blue2/lose