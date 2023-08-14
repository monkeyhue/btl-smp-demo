#--- If player right clicks with a valid item ---
execute on target run data modify storage btl:temp heldItem set from entity @s SelectedItem
execute unless score @s monkeyhue.entity.AIState matches 1.. if data storage btl:temp heldItem.tag.btl.power run function btl:b/blender/start
execute if score @s monkeyhue.entity.AIState matches 1 run scoreboard players set @s monkeyhue.entity.AIState 3
execute unless score @s monkeyhue.entity.AIState matches 1.. unless data storage btl:temp heldItem.tag.btl.power if data storage btl:temp heldItem on target run function btl:b/blender/actionbar/invalid

data remove storage btl:temp heldItem
data remove entity @s interaction