tag @s remove btl.t.snowflake

data merge storage btl:temp {throw:{out:[0.0d,0.0d,0.0d]}}
scoreboard players set #btl.throw2 monkeyhue.temp1 -50
function btl:technical/rng/100
scoreboard players operation #btl.throw2 monkeyhue.temp1 += @s monkeyhue.rng.out
scoreboard players set #btl.throw2 monkeyhue.temp2 100
function btl:technical/rng/20
scoreboard players operation #btl.throw2 monkeyhue.temp2 += @s monkeyhue.rng.out
scoreboard players set #btl.throw2 monkeyhue.temp3 -50
function btl:technical/rng/100
scoreboard players operation #btl.throw2 monkeyhue.temp3 += @s monkeyhue.rng.out

execute store result storage btl:temp throw.out[0] double 0.0075 run scoreboard players get #btl.throw2 monkeyhue.temp1
execute store result storage btl:temp throw.out[1] double 0.01 run scoreboard players get #btl.throw2 monkeyhue.temp2
execute store result storage btl:temp throw.out[2] double 0.0075 run scoreboard players get #btl.throw2 monkeyhue.temp3

data modify entity @s Motion set from storage btl:temp throw.out