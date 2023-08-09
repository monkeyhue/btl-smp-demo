#--- Variables ---
#monkeyhue.temp1 - The custom model data of the door

#--- Setup ---
execute store result score @s monkeyhue.temp1 on passengers run data get entity @s item.tag.CustomModelData

#--- Function Tree ---
execute if score @s monkeyhue.temp1 matches 6540001 run function btl:b/doorframe/destroy/stone_1
execute if score @s monkeyhue.temp1 matches 6540002 run function btl:b/doorframe/destroy/stone_2
execute if score @s monkeyhue.temp1 matches 6540003 run function btl:b/doorframe/destroy/stone_3

scoreboard players reset @s monkeyhue.temp1

execute on passengers run kill @s
kill @s