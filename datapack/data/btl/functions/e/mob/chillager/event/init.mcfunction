data merge entity @s {Tags:["btl.entity","btl.prj","btl.prj.icebound_blade"]}
playsound minecraft:entity.phantom.ambient player @a ~ ~ ~ 0.5 0.5
scoreboard players set @s btl.damage 500
scoreboard players operation @s btl.player.power = @p[scores={btl.player.hit=1..}] btl.player.power
function btl:e/prj/player/calculate_damage
execute rotated as @p[scores={btl.player.hit=1..}] run teleport @s ~ ~0.5 ~ ~ ~