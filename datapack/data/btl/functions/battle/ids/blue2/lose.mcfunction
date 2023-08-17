bossbar remove btl:blue2
execute on passengers on passengers on passengers on passengers run function btl:b/door/interact/destroy
stopsound @a[scores={btl.w.battleID=2}] music btl:music.blue.boss
scoreboard players reset @a[scores={btl.w.battleID=2}] btl.w.battleID
function btl:battle/end

execute as @e[scores={btl.w.battleID=2}] run scoreboard players set @s monkeyhue.time1 999999999