particle minecraft:large_smoke ~ ~0.5 ~ 0.4 0.4 0.4 0.05 40 force

data remove storage btl:temp despawn
data modify storage btl:temp despawn append value {id:0}
execute store result storage btl:temp despawn[-1].id int 1 run scoreboard players get @s btl.w.battleID

tp @s ~ -200 ~
scoreboard players reset @s
execute on passengers on passengers run data modify entity @s Size set value 0b
execute on passengers on passengers run kill @s
execute on passengers run kill @s
kill @s