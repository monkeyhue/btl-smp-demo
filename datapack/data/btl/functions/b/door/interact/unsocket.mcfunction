scoreboard players add @s monkeyhue.temp1 1
execute on vehicle run scoreboard players add @s monkeyhue.temp1 1
execute unless entity @s[tag=btl.b.door.socketed] if score @s monkeyhue.temp1 < @s btl.b.sockets on vehicle run function btl:b/door/interact/unsocket

execute if entity @s[tag=btl.b.door.socketed] run function btl:b/door/interact/remove_stone

scoreboard players reset @s monkeyhue.temp1