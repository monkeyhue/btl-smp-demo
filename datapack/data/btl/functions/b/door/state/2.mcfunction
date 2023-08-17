execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players reset @s monkeyhue.time1
execute unless score @s monkeyhue.tempAI matches 2 run function btl:b/door/display/anim/opened
execute unless score @s monkeyhue.tempAI matches 2 run scoreboard players set @s monkeyhue.tempAI 2

particle dust 0.514 1.000 1.000 1 ~ ~1.2 ~ 0.4 0.6 0.4 2 2 normal

#--- Tree for battle ids. Unavoidable for now, unfortunately ---
execute if score @s btl.w.battleID matches 1 run function btl:battle/ids/blue/main
execute if score @s btl.w.battleID matches 2 run function btl:battle/ids/blue2/main