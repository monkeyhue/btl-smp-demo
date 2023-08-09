execute on passengers on passengers on passengers on passengers run function btl:battle/init/recursion

#--- Tree for getting battle id ---
execute if score #btl.id.blue monkeyhue.temp4 matches 1 run scoreboard players set @s btl.w.battleID 1

#--- Tree for announcing the battle being played ---
execute if score @s btl.w.battleID matches 1 run function btl:battle/ids/blue/start

scoreboard players reset * monkeyhue.temp4