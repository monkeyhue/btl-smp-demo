#--- Wrap it up ---
execute on target run data modify storage btl:temp heldItem set from entity @s SelectedItem.tag.btl
execute if score @s monkeyhue.entity.AIState matches 0 if data storage btl:temp heldItem.portalstone run function btl:b/door/interact/socket_pre
execute if score @s monkeyhue.entity.AIState matches 0 unless data storage btl:temp heldItem.doorItem run function btl:b/door/interact/unsocket_pre

scoreboard players reset #btl.returnedItem monkeyhue.temp1
data remove storage btl:temp heldItem
data remove entity @s interaction