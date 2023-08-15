#--- Starting init ---
execute unless score @s btl.w.tempID matches 5 run scoreboard players set @s monkeyhue.time1 100
execute unless score @s btl.w.tempID matches 5 run function btl:admin/summon/yeti
execute unless score @s btl.w.tempID matches 5 run bossbar set btl:blue name {"translate": "battle.btl.wave.blue.boss"}
execute unless score @s btl.w.tempID matches 5 run scoreboard players set @s btl.w.maxMobs 4
execute unless score @s btl.w.tempID matches 5 run scoreboard players set @s btl.w.mobs 0
execute unless score @s btl.w.tempID matches 5 at @a[scores={btl.w.battleID=1}] run scoreboard players add @s btl.w.maxMobs 3
execute unless score @s btl.w.tempID matches 5 run scoreboard players set @s btl.w.tempID 5

#--- Mob Spawning ---
scoreboard players add @s monkeyhue.time1 1
execute at @a[scores={btl.w.battleID=1}] run scoreboard players add @s monkeyhue.time1 1
execute if score @s btl.w.mobs matches ..2 if score @s monkeyhue.time1 matches 200.. run function btl:battle/ids/blue/boss/summon
execute if score @s monkeyhue.time1 matches 600.. if score @s btl.w.mobs < @s btl.w.maxMobs run function btl:battle/ids/blue/boss/summon
scoreboard players add @s monkeyhue.time4 1
execute if score @s monkeyhue.time4 matches 1200.. run summon item_display ~ ~ ~ {Tags:["btl.entity","btl.temp","btl.spawner.blizzy"]}
execute if score @s monkeyhue.time4 matches 1200.. run scoreboard players reset @s monkeyhue.time4

#--- Music! ---
scoreboard players add @s monkeyhue.time3 1
execute if score @s monkeyhue.time3 matches 1 run stopsound @a[scores={btl.w.battleID=1}] music
execute if score @s monkeyhue.time3 matches 2 run playsound btl:music.blue.boss music @a[scores={btl.w.battleID=1}] ~ ~ ~ 1 1 1
execute if score @s monkeyhue.time3 matches 2822.. run scoreboard players reset @s monkeyhue.time3

#--- End the wave battle ---