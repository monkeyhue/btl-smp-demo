#// Trajectory
execute if score @s monkeyhue.time1 matches ..8 run teleport @s ^ ^ ^0.8 ~ ~
execute if score @s monkeyhue.time1 matches 9..16 run teleport @s ^ ^ ^0.6 ~ ~
execute if score @s monkeyhue.time1 matches 17..24 run teleport @s ^ ^ ^0.4 ~ ~
execute if score @s monkeyhue.time1 matches 24.. run teleport @s ^ ^ ^0.2 ~ ~
execute facing entity @e[distance=0..3,type=#btl:hostile,type=!player,limit=1] eyes run tp @s ^ ^ ^0.4 ~ ~

#// Fx

#// Death Cases
execute if score @s monkeyhue.time1 matches 2.. positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=#btl:mobs,limit=1] run function btl:e/prj/player/snowbrush/hit
execute if score @s monkeyhue.time1 matches 32.. run function btl:e/prj/player/snowbrush/impact
execute positioned ~ ~-0.2 ~ unless block ^ ^ ^ #btl:unsolid run function btl:e/prj/player/snowbrush/impact
