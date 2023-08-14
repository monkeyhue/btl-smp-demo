scoreboard players set @s monkeyhue.entity.AIState 5
tellraw @a "Hey you guys won! Nice! There'd normally be a chest waiting for you here, but I got too lazy to make a loot table..."
scoreboard players reset @s btl.w.battleID
scoreboard players reset @s btl.w.waveID
scoreboard players reset @s btl.w.tempID
scoreboard players reset @s btl.w.progress
scoreboard players reset @s btl.w.maxMobs
scoreboard players reset @s btl.w.mobs
scoreboard players reset @s btl.w.credits
stopsound @a[scores={btl.w.battleID=1}] music btl:music.blue.boss
execute as @a[scores={btl.w.battleID=1}] run scoreboard players reset @s btl.w.battleID
bossbar remove btl:blue