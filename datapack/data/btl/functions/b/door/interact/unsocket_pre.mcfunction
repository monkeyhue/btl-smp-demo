#// Weird yet necesarry tree for socket removal. Optimize this someday
execute if score @s btl.b.sockets matches 1 unless data storage btl:temp heldItem.doorItem on passengers on passengers on passengers on passengers run function btl:b/door/interact/unsocket
execute if score @s btl.b.sockets matches 2 unless data storage btl:temp heldItem.doorItem on passengers on passengers on passengers on passengers on passengers run function btl:b/door/interact/unsocket
execute if score @s btl.b.sockets matches 3 unless data storage btl:temp heldItem.doorItem on passengers on passengers on passengers on passengers on passengers on passengers run function btl:b/door/interact/unsocket
execute if score @s btl.b.sockets matches 4 unless data storage btl:temp heldItem.doorItem on passengers on passengers on passengers on passengers on passengers on passengers on passengers run function btl:b/door/interact/unsocket

execute if score #btl.returnedItem monkeyhue.temp1 matches 1.. run function btl:b/door/interact/return_stone