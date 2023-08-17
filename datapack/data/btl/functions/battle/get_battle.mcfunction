execute on passengers on passengers on passengers on passengers run function btl:battle/init/recursion

#--- Tree for getting battle id ---
execute if score #btl.id.blue monkeyhue.temp4 matches 1 unless entity @a[scores={btl.w.waveID=1}] run scoreboard players set @s btl.w.battleID 1
execute if score #btl.id.blue monkeyhue.temp4 matches 2 unless entity @a[scores={btl.w.waveID=2}] run scoreboard players set @s btl.w.battleID 2
execute if score #btl.id.blue monkeyhue.temp4 matches 3 unless entity @a[scores={btl.w.waveID=3}] run scoreboard players set @s btl.w.battleID 3

#// Finish Up
tag @s add btl.door.buffer
scoreboard players reset * monkeyhue.temp4