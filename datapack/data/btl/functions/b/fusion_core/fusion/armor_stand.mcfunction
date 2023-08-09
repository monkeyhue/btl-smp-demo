data modify entity @s ArmorItems[3] set from storage btl:temp fusion.item[0][0]
item modify entity @s armor.head btl:initialize_fused_item
data modify storage btl:temp fusion.output set from entity @s ArmorItems[3]

data modify storage btl:temp fusion.output.tag.display.Lore[0] set from storage btl:temp fusion.output.tag.display.Lore[-1]
data remove storage btl:temp fusion.output.tag.display.Lore[-1]
