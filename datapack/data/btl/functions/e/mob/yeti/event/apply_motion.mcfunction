#// Animation time
function btl:technical/rng/200
scoreboard players operation %temp monkeyhue.objmc1 = @s monkeyhue.rng.out

#Append frame to G
scoreboard players operation %temp monkeyhue.objmc1 *= #256 monkeyhue.temp1
scoreboard players operation %sum monkeyhue.objmc1 += %temp monkeyhue.objmc1

#Update Data
execute on passengers store result entity @s item.tag.display.color int 1 run scoreboard players get %sum monkeyhue.objmc1
scoreboard players reset %temp monkeyhue.objmc1
scoreboard players reset %sum monkeyhue.objmc1

execute on passengers facing entity @p eyes run tp @s ^ ^ ^ ~180 ~

#// This part is repeated for every snow thing summoned... yikes. Luckily it's only ran in this attack
execute store result score #btl.throw1 monkeyhue.temp1 run data get storage btl:temp throw.pos1[0] 1000
execute store result score #btl.throw1 monkeyhue.temp2 run data get storage btl:temp throw.pos1[1] 1000
execute store result score #btl.throw1 monkeyhue.temp3 run data get storage btl:temp throw.pos1[2] 1000

execute store result score #btl.throw2 monkeyhue.temp1 run data get storage btl:temp throw.pos2[0] 1000
execute store result score #btl.throw2 monkeyhue.temp2 run data get storage btl:temp throw.pos2[1] 1000
execute store result score #btl.throw2 monkeyhue.temp3 run data get storage btl:temp throw.pos2[2] 1000

data merge storage btl:temp {throw:{out:[0.0d,0.0d,0.0d]}}
scoreboard players operation #btl.throw2 monkeyhue.temp1 -= #btl.throw1 monkeyhue.temp1
function btl:technical/rng/300_mid
scoreboard players operation #btl.throw2 monkeyhue.temp1 += @s monkeyhue.rng.out
scoreboard players operation #btl.throw2 monkeyhue.temp2 -= #btl.throw1 monkeyhue.temp2
function btl:technical/rng/400
scoreboard players operation #btl.throw2 monkeyhue.temp2 += @s monkeyhue.rng.out
scoreboard players operation #btl.throw2 monkeyhue.temp3 -= #btl.throw1 monkeyhue.temp3
function btl:technical/rng/300_mid
scoreboard players operation #btl.throw2 monkeyhue.temp3 += @s monkeyhue.rng.out

execute store result storage btl:temp throw.out[0] double 0.0015 run scoreboard players get #btl.throw2 monkeyhue.temp1
execute store result storage btl:temp throw.out[1] double 0.0025 run scoreboard players get #btl.throw2 monkeyhue.temp2
execute store result storage btl:temp throw.out[2] double 0.0015 run scoreboard players get #btl.throw2 monkeyhue.temp3

data modify entity @s Motion set from storage btl:temp throw.out