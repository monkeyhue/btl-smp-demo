bossbar remove btl:blue
execute on passengers on passengers on passengers on passengers run function btl:b/door/interact/destroy
stopsound @a[scores={btl.w.battleID=1}] music btl:music.blue.boss
scoreboard players reset @a[scores={btl.w.battleID=1}] btl.w.battleID
function btl:battle/end

execute as @e[scores={btl.w.battleID=1}] run scoreboard players set @s monkeyhue.time1 999999999