#Initial Data Getting
data merge entity @s {Duration:2,Tags:["btl.temp","btl.t.throw_direction"]}
data modify storage btl:temp throw.pos1 set from entity @s Pos
execute facing entity @e[type=item_display,tag=btl.e.yeti,limit=1,distance=..8] feet run tp @s ~ ~ ~ ~ ~
execute facing entity @r[distance=..24] feet run teleport @s ^ ^0.1 ^0.3
data modify storage btl:temp throw.pos2 set from entity @s Pos

summon snowball ~ ~ ~ {Item:{id:"minecraft:egg",Count:1b,tag:{CustomModelData:6540000}},Tags:["btl.t.snow_throw"],Passengers:[{id:"minecraft:item_display",Tags:["btl.entity","btl.prj","btl.prj.avalanche","btl.prj.avalanche.snow"],item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:0},CustomModelData:6540011}}}]}
execute as @e[type=snowball,tag=btl.t.snow_throw,limit=15,distance=..6] run function btl:e/mob/yeti/event/apply_motion