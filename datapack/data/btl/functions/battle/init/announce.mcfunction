#--- Tree for announcing the battle being played ---
execute if score @s btl.w.battleID matches 1 run function btl:battle/ids/blue/start
execute if score @s btl.w.battleID matches 2 run function btl:battle/ids/blue2/start
execute if score @s btl.w.battleID matches 3 run function btl:battle/ids/blue3/start