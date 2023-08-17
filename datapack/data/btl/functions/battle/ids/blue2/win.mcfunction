scoreboard players set @s monkeyhue.entity.AIState 5
function btl:b/chest/summon
execute on passengers on passengers on passengers on passengers run function btl:b/door/interact/destroy
scoreboard players reset @s btl.w.battleID
scoreboard players reset @s btl.w.waveID
scoreboard players reset @s btl.w.tempID
scoreboard players reset @s btl.w.progress
scoreboard players reset @s btl.w.maxMobs
scoreboard players reset @s btl.w.mobs
scoreboard players reset @s btl.w.credits
stopsound @a[scores={btl.w.battleID=2}] music btl:music.blue.boss
execute as @a[scores={btl.w.battleID=2}] run scoreboard players reset @s btl.w.battleID
execute as @e[scores={btl.w.battleID=2}] run scoreboard players set @s monkeyhue.time1 999999999
bossbar remove btl:blue2