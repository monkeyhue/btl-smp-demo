#// Initial Data Change
tag @s add btl.entity
tag @s add btl.prj
tag @s add btl.prj.snowbrush

#// Fx
function btl:technical/rng/3
execute rotated as @p[scores={btl.player.use=1..}] run teleport @s ~ ~ ~ ~-25 ~
execute if score @s monkeyhue.rng.out matches 0 run summon item_display ~ ~ ~ {item_display:"ground",billboard:"center",Tags:["btl.display","btl.display.snowbrush"],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:0},CustomModelData:6541004}}}
execute if score @s monkeyhue.rng.out matches 1 run summon item_display ~ ~ ~ {item_display:"ground",billboard:"center",Tags:["btl.display","btl.display.snowbrush"],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:0},CustomModelData:6541005}}}
execute if score @s monkeyhue.rng.out matches 2 run summon item_display ~ ~ ~ {item_display:"ground",billboard:"center",Tags:["btl.display","btl.display.snowbrush"],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:0},CustomModelData:6541006}}}
ride @e[type=item_display,limit=1,sort=nearest,tag=btl.display.snowbrush,distance=0..1] mount @s
execute rotated as @s on passengers run tp @s ~ ~ ~ ~ ~

#// Damage
scoreboard players set @s btl.damage 120
scoreboard players operation @s btl.player.power = @p[scores={btl.player.use=1..}] btl.player.power
function btl:e/prj/player/calculate_damage