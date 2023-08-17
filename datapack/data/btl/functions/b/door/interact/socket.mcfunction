scoreboard players add @s monkeyhue.temp1 1
execute on passengers run scoreboard players add @s monkeyhue.temp1 1
execute if entity @s[tag=btl.b.door.socketed] if score @s monkeyhue.temp1 > @s btl.b.sockets as @a[distance=..6,limit=2] run function btl:b/door/actionbar/full
execute if entity @s[tag=btl.b.door.socketed] if score @s monkeyhue.temp1 <= @s btl.b.sockets on passengers run function btl:b/door/interact/socket

execute unless entity @s[tag=btl.b.door.socketed] run function btl:b/door/interact/set_stone

scoreboard players reset @s monkeyhue.temp1