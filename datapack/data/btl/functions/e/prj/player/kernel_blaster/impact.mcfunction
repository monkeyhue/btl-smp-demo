#// Fx
playsound minecraft:entity.firework_rocket.blast_far player @a ~ ~ ~ 1 1.2
execute positioned ^ ^ ^-0.1 run particle poof ~ ~0.3 ~ 0.1 0.1 0.1 0.06 3
execute positioned ^ ^ ^-0.1 run particle flame ~ ~0.3 ~ 0.1 0.1 0.1 0.15 2

execute on passengers run kill @s

kill @s