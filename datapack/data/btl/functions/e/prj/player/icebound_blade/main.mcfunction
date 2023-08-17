#// Trajectory
teleport @s ^ ^ ^1 ~ 0

#// Fx
particle snowflake ^ ^0.4 ^ 0.1 0.1 0.1 0.05 2 force
particle soul_fire_flame ^ ^-0.8 ^ 0.1 0.1 0.1 0.01 2 force
particle snowflake ^ ^ ^ 0.1 0.1 0.1 0.05 2 force
particle soul_fire_flame ^ ^0.8 ^ 0.1 0.1 0.1 0.01 2 force
particle snowflake ^ ^0.4 ^ 0.1 0.1 0.1 0.05 2 force

#// Death Cases

execute if score @s monkeyhue.time1 matches ..7 positioned ~ ~-0.5 ~ as @e[dx=0,dy=1,type=#btl:mobs,limit=3] unless score @s monkeyhue.entity.hurtTime matches 2.. run function btl:e/prj/player/icebound_blade/hit
execute if score @s monkeyhue.time1 matches 8.. run kill @s