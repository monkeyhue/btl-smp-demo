execute if block ~ ~ ~ minecraft:barrier run setblock ~ ~ ~ air
playsound minecraft:block.sand.place block @a ~ ~ ~ 1 0.5
particle poof ~ ~0.05 ~ 0.1 0.05 0.1 0.1 20 force
execute on passengers on passengers run kill @s
execute on passengers run kill @s
kill @s