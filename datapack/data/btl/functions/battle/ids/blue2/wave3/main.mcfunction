#--- Starting init ---
execute unless score @s btl.w.tempID matches 4 run scoreboard players reset @s monkeyhue.time1
execute unless score @s btl.w.tempID matches 4 run scoreboard players reset @s monkeyhue.time5
execute unless score @s btl.w.tempID matches 4 run bossbar set btl:blue2 name {"translate": "battle.btl.wave.generic3"}
execute unless score @s btl.w.tempID matches 4 run scoreboard players set @s btl.w.maxProgress 4000
execute unless score @s btl.w.tempID matches 4 at @a[scores={btl.w.battleID=2}] run scoreboard players add @s btl.w.maxProgress 4000
execute unless score @s btl.w.tempID matches 4 store result bossbar btl:blue2 max run scoreboard players get @s btl.w.maxProgress
execute unless score @s btl.w.tempID matches 4 run scoreboard players set @s btl.w.progress 400
execute unless score @s btl.w.tempID matches 4 run scoreboard players set @s btl.w.maxMobs 6
execute unless score @s btl.w.tempID matches 4 run scoreboard players set @s btl.w.mobs 0
execute unless score @s btl.w.tempID matches 4 at @a[scores={btl.w.battleID=2}] run scoreboard players add @s btl.w.maxMobs 4
execute unless score @s btl.w.tempID matches 4 run scoreboard players set @s btl.w.tempID 4

#--- Mob Spawning ---
scoreboard players add @s monkeyhue.time1 1
execute unless score @s btl.w.credits matches 800.. run scoreboard players add @s btl.w.credits 1
execute at @a[scores={btl.w.battleID=2}] run scoreboard players add @s monkeyhue.time1 1

#// Peons
execute if score @s btl.w.mobs matches ..3 if score @s monkeyhue.time1 matches 10.. run function btl:battle/ids/blue2/wave3/summon
execute if score @s btl.w.mobs matches 4..8 if score @s monkeyhue.time1 matches 100.. run function btl:battle/ids/blue2/wave3/summon
execute if score @s monkeyhue.time1 matches 800.. if score @s btl.w.mobs < @s btl.w.maxMobs run function btl:battle/ids/blue2/wave3/summon

#// Snowflakes
scoreboard players add @s monkeyhue.time5 1
execute if score @s monkeyhue.time5 matches 20 run summon item_display ~ ~ ~ {Tags:["btl.entity","btl.temp","btl.spawner.snowflake"]}
execute if score @s monkeyhue.time5 matches 40 run summon item_display ~ ~ ~ {Tags:["btl.entity","btl.temp","btl.spawner.snowflake_player"]}
execute if score @s monkeyhue.time5 matches 40.. run scoreboard players reset @s monkeyhue.time5

#// Credits
execute if score @s btl.w.mobs matches 5..8 if score @s btl.w.credits matches 600.. run function btl:battle/ids/blue2/wave3/credit_summon

#--- Tickly progress counting ---
scoreboard players remove @s btl.w.progress 1
execute if data storage btl:root activeBattles[{id:2}].kills[0] run function btl:battle/ids/blue2/wave3/kill
execute store result bossbar btl:blue2 value run scoreboard players get @s btl.w.progress

#--- Determine if win ---
execute if score @s btl.w.progress >= @s btl.w.maxProgress run tag @s add btl.door.buffer

#--- Determine if end ---
execute if score @s btl.w.progress matches ..-40 run function btl:battle/ids/blue2/lose
execute unless entity @p[scores={btl.w.battleID=2}] run function btl:battle/ids/blue2/lose