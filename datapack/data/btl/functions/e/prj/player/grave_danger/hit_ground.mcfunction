playsound minecraft:block.anvil.land player @a ~ ~ ~ 0.7 0.6
playsound minecraft:entity.zombie.death player @a ~ ~ ~ 1 0.5
playsound minecraft:entity.player.attack.knockback player @a ~ ~ ~ 1 0.8
execute on passengers run kill @s
execute positioned ^ ^ ^-0.5 run particle explosion ~ ~0.7 ~
execute positioned ^ ^ ^-0.5 run particle item deepslate_bricks ~ ~0.8 ~ 0.1 0.1 0.1 0.3 40
execute positioned ^ ^ ^-0.5 run particle large_smoke ~ ~0.7 ~ 0.1 0.1 0.1 0.15 10
kill @s