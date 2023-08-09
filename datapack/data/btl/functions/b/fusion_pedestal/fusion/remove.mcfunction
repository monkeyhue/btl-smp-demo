execute at @s run particle cloud ~ ~1.4 ~ 0.05 0.05 0.05 0.02 8

tag @s remove btl.temp.fp_hasitem
execute on passengers on passengers run data modify entity @s item set value {}