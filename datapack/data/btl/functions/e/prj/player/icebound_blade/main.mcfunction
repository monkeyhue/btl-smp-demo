execute if score @s monkeyhue.time1 matches 8.. run kill @s
teleport @s ^ ^ ^1 ~ 0

particle snowflake ^ ^0.4 ^ 0.1 0.1 0.1 0.05 2 force
particle soul_fire_flame ^ ^-0.8 ^ 0.1 0.1 0.1 0.01 2 force
particle snowflake ^ ^ ^ 0.1 0.1 0.1 0.05 2 force
particle soul_fire_flame ^ ^0.8 ^ 0.1 0.1 0.1 0.01 2 force
particle snowflake ^ ^0.4 ^ 0.1 0.1 0.1 0.05 2 force

execute if score @s monkeyhue.time1 matches ..7 positioned ~ ~-0.5 ~ as @e[dx=0,dy=1,type=#btl:mobs,limit=2] run scoreboard players operation @s btl.damage = @e[type=item_display,tag=btl.prj.icebound_blade,distance=..4,limit=1,sort=nearest] btl.damage
execute if score @s monkeyhue.time1 matches ..7 positioned ~ ~-0.5 ~ as @e[dx=0,dy=1,type=#btl:mobs,limit=2,scores={btl.damage=1..}] run function btl:e/damage
