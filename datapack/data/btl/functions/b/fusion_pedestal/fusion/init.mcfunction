scoreboard players add @e[type=interaction,tag=btl.b.fusion_core,distance=..2,scores={monkeyhue.time1=0..},limit=1] monkeyhue.temp1 1
execute at @s run particle cloud ~ ~1.4 ~ 0.05 0.05 0.05 0.02 8

tag @s remove btl.temp.fp_hasitem
execute on passengers on passengers run data modify storage btl:temp fusion append from entity @s item
execute on passengers on passengers run data modify entity @s item set value {}