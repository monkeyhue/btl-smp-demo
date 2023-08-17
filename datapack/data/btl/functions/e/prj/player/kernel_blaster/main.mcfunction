#// Trajectory
teleport @s ^ ^ ^1.8 ~ ~

#// Fx
execute if score @s monkeyhue.time1 matches 3.. run particle flame ^ ^0.2 ^ 0.1 0.1 0.1 0.02 1

#// Death Cases
execute if score @s monkeyhue.time1 matches 2.. positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=#btl:mobs,limit=1] run function btl:e/prj/player/kernel_blaster/hit
execute if score @s monkeyhue.time1 matches 20.. run function btl:e/prj/player/kernel_blaster/impact
execute positioned ~ ~-0.2 ~ unless block ^ ^ ^0.4 #btl:unsolid run function btl:e/prj/player/kernel_blaster/impact
execute positioned ~ ~-0.2 ~ unless block ^ ^ ^-0.4 #btl:unsolid run function btl:e/prj/player/kernel_blaster/impact
