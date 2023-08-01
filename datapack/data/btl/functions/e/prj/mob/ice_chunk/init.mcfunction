data merge entity @s {Tags:["btl.entity","btl.prj","btl.prj.chillager_ice"]}
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
function btl:e/prj/mob/ice_chunk/anim/spawn
execute facing entity @p[gamemode=!creative,gamemode=!spectator] eyes run tp @s ~ ~ ~ ~180 0