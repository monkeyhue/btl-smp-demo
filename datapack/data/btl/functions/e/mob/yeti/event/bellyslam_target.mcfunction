#// Do the cool thing!
data modify storage btl:temp throw.pos1 set from entity @s Pos
execute facing entity @p feet run tp @s ~ ~ ~ ~ ~
teleport @s ^ ^-0.1 ^0.2
data modify storage btl:temp throw.pos2 set from entity @s Pos

#// This part is repeated for every snow thing summoned... yikes. Luckily it's only ran in this attack
execute store result score #btl.throw1 monkeyhue.temp1 run data get storage btl:temp throw.pos1[0] 1000
execute store result score #btl.throw1 monkeyhue.temp2 run data get storage btl:temp throw.pos1[1] 1000
execute store result score #btl.throw1 monkeyhue.temp3 run data get storage btl:temp throw.pos1[2] 1000

execute store result score #btl.throw2 monkeyhue.temp1 run data get storage btl:temp throw.pos2[0] 1000
execute store result score #btl.throw2 monkeyhue.temp2 run data get storage btl:temp throw.pos2[1] 1000
execute store result score #btl.throw2 monkeyhue.temp3 run data get storage btl:temp throw.pos2[2] 1000

data merge storage btl:temp {throw:{out:[0.0d,0.0d,0.0d]}}
scoreboard players operation #btl.throw2 monkeyhue.temp1 -= #btl.throw1 monkeyhue.temp1
scoreboard players operation #btl.throw2 monkeyhue.temp2 -= #btl.throw1 monkeyhue.temp2
scoreboard players operation #btl.throw2 monkeyhue.temp3 -= #btl.throw1 monkeyhue.temp3

execute store result storage btl:temp throw.out[0] double 0.002 run scoreboard players get #btl.throw2 monkeyhue.temp1
execute store result storage btl:temp throw.out[1] double 0.003 run scoreboard players get #btl.throw2 monkeyhue.temp2
execute store result storage btl:temp throw.out[2] double 0.002 run scoreboard players get #btl.throw2 monkeyhue.temp3

data modify entity @s Motion set from storage btl:temp throw.out