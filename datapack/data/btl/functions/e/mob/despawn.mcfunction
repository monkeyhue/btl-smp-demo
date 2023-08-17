execute unless score @s btl.w.battleID matches -1 run particle minecraft:large_smoke ~ ~0.5 ~ 0.4 0.4 0.4 0.05 40 force

execute unless score @s btl.w.battleID matches -1 run data remove storage btl:temp despawn
execute unless score @s btl.w.battleID matches -1 run data modify storage btl:temp despawn append value {id:0}
execute unless score @s btl.w.battleID matches -1 store result storage btl:temp despawn[-1].id int 1 run scoreboard players get @s btl.w.battleID

execute on passengers on passengers run scoreboard players reset @s
execute on passengers run scoreboard players reset @s
scoreboard players reset @s
tp @s ~ -200 ~
execute on passengers on passengers run data modify entity @s Size set value 0b
execute on passengers on passengers run kill @s
execute on passengers run kill @s
kill @s