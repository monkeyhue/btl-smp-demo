#// Initial Data Change
tag @s add btl.entity
tag @s add btl.prj
tag @s add btl.prj.kernel_blaster

#// Fx
playsound btl:item.kernel_blaster.shoot player @a ~ ~ ~ 1 1
execute rotated as @p[scores={btl.player.use=1..}] run teleport @s ~ ~ ~ ~ ~
summon item_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},Tags:["btl.display","btl.display.kernel_blaster"],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:0},CustomModelData:6541003}}}
ride @e[type=item_display,limit=1,sort=nearest,tag=btl.display.kernel_blaster,distance=0..1] mount @s
execute rotated as @s on passengers run tp @s ~ ~ ~ ~ ~

#// Damage
scoreboard players set @s btl.damage 600
scoreboard players operation @s btl.player.power = @p[scores={btl.player.use=1..}] btl.player.power
function btl:e/prj/player/calculate_damage