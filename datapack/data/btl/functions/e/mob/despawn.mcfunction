particle minecraft:large_smoke ~ ~0.5 ~ 0.4 0.4 0.4 0.05 40 force

tp @s ~ -200 ~
scoreboard players reset @s
execute on passengers on passengers run data modify entity @s Size set value 0b
execute on passengers on passengers run kill @s
execute on passengers run kill @s
kill @s