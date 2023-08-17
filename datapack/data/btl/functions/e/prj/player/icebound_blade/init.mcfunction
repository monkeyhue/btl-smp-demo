#// Initial Data Change
tag @s add btl.entity
tag @s add btl.prj
tag @s add btl.prj.icebound_blade

#// Fx
playsound minecraft:entity.phantom.ambient player @a ~ ~ ~ 0.5 0.5
execute rotated as @p[scores={btl.player.hit=1..}] run teleport @s ~ ~ ~ ~ ~

#// Damage
scoreboard players set @s btl.damage 500
scoreboard players operation @s btl.player.power = @p[scores={btl.player.hit=1..}] btl.player.power
function btl:e/prj/player/calculate_damage