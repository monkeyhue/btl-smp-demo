#--- Variables ---

#--- Wrap it up ---
execute on target run data modify storage btl:temp heldItem set from entity @s SelectedItem.tag.btl.door

data remove entity @s interaction