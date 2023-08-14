say you lost lol
bossbar remove btl:blue
execute as @a[scores={btl.w.battleID=1}] run scoreboard players reset @s btl.w.battleID
function btl:battle/end

execute as @e[scores={btl.w.battleID=1}] run scoreboard players set @s monkeyhue.time1 999999999