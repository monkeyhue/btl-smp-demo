#--- Starting init ---
execute unless score @s btl.w.tempID matches 0 as @e[scores={btl.w.battleID=2}] run scoreboard players set @s monkeyhue.time1 999999999
execute unless score @s btl.w.tempID matches 0 run playsound minecraft:entity.firework_rocket.launch master @a[scores={btl.w.battleID=2}] ~ ~ ~ 1 1 1
execute unless score @s btl.w.tempID matches 0 run scoreboard players reset @s monkeyhue.time1
execute unless score @s btl.w.tempID matches 0 run scoreboard players reset @s btl.w.maxProgress
execute unless score @s btl.w.tempID matches 0 run bossbar set btl:blue2 name {"translate": "battle.btl.wave.buffer"}
execute unless score @s btl.w.tempID matches 0 run scoreboard players set @s btl.w.progress 0
execute unless score @s btl.w.tempID matches 0 run bossbar set btl:blue2 max 200
execute unless score @s btl.w.tempID matches 0 if score @s btl.w.waveID matches 1 run function btl:technical/rng/2
execute unless score @s btl.w.tempID matches 0 if score @s btl.w.waveID matches 4 run function btl:technical/rng/2
execute unless score @s btl.w.tempID matches 0 run scoreboard players set @s btl.w.tempID 0

scoreboard players add @s btl.w.progress 1
execute store result bossbar btl:blue2 value run scoreboard players get @s btl.w.progress

#// Standard
execute if score @s btl.w.progress matches 200.. if score @s btl.w.waveID matches 2 run scoreboard players add @s btl.w.waveID 1
execute if score @s btl.w.progress matches 200.. if score @s btl.w.waveID matches 5 run scoreboard players add @s btl.w.waveID 1
execute if score @s btl.w.progress matches 200.. if score @s btl.w.waveID matches 1 if score @s monkeyhue.rng.out matches 1 run scoreboard players add @s btl.w.waveID 1
execute if score @s btl.w.progress matches 200.. if score @s btl.w.waveID matches 4 if score @s monkeyhue.rng.out matches 1 run scoreboard players add @s btl.w.waveID 1
execute if score @s btl.w.progress matches 200.. run scoreboard players add @s btl.w.waveID 1

execute if score @s btl.w.progress matches 170 if score @s btl.w.waveID matches 7 run scoreboard players set @s monkeyhue.entity.AIState 7

#// End
execute if score @s btl.w.progress matches 200.. run tag @s remove btl.door.buffer
execute if score @s btl.w.progress matches 200.. run data remove storage btl:root activeBattles[{id:2}].kills