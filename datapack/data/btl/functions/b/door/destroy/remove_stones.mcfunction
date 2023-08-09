#// Weird yet necesarry tree for socket removal. Optimize this someday
execute if score @s btl.b.sockets matches 1 on passengers on passengers on passengers on passengers run function btl:b/door/interact/unsocket
execute if score @s btl.b.sockets matches 2 on passengers on passengers on passengers on passengers on passengers run function btl:b/door/interact/unsocket
execute if score @s btl.b.sockets matches 3 on passengers on passengers on passengers on passengers on passengers on passengers run function btl:b/door/interact/unsocket
execute if score @s btl.b.sockets matches 4 on passengers on passengers on passengers on passengers on passengers on passengers on passengers run function btl:b/door/interact/unsocket

execute if score #btl.returnedItem monkeyhue.temp1 matches 1.. run function btl:b/door/destroy/return_stones