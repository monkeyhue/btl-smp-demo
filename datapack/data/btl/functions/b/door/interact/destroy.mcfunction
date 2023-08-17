function btl:technical/rng/2
execute on passengers run function btl:b/door/interact/destroy

execute if score @s monkeyhue.rng.out matches 0 if entity @s[tag=btl.b.door.socketed] run function btl:b/door/interact/destroy_stone

scoreboard players reset @s monkeyhue.rng.out