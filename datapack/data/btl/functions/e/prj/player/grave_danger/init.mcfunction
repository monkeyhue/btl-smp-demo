data merge entity @s {Tags:["btl.entity","btl.prj","btl.prj.grave_danger"]}
summon item_display ~ ~ ~ {item_display:"ground",billboard:"center",Tags:["btl.display","btl.display.grave_danger"],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:0},CustomModelData:6541001}}}
ride @e[type=item_display,limit=1,sort=nearest,tag=btl.display.grave_danger,distance=0..1] mount @s
scoreboard players set @s btl.damage 1600
scoreboard players operation @s btl.player.power = @p[scores={btl.player.use=1..}] btl.player.power
function btl:e/prj/player/calculate_damage
execute rotated as @p[scores={btl.player.use=1..}] run teleport @s ~ ~ ~ ~ ~