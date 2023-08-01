#Initial Data Getting
data merge entity @s {Duration:2,Tags:["btl.temp","btl.t.throw_direction"]}
data modify storage btl:temp throw.pos1 set from entity @s Pos
execute facing entity @e[type=item_display,tag=btl.e.yeti,limit=1,distance=..8] feet run tp @s ~ ~ ~ ~ ~
teleport @s ^ ^0.1 ^0.2
data modify storage btl:temp throw.pos2 set from entity @s Pos

function btl:e/mob/yeti/event/summon_snow
execute as @e[type=snowball,tag=btl.t.snow_throw,limit=15,distance=..6] run function btl:e/mob/yeti/event/apply_motion