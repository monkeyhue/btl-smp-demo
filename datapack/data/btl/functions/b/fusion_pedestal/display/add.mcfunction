execute on target run data modify storage btl:temp SelectedItem set from entity @s SelectedItem
execute if data storage btl:temp SelectedItem.id run function btl:b/fusion_pedestal/display/update_item
data remove storage btl:temp SelectedItem