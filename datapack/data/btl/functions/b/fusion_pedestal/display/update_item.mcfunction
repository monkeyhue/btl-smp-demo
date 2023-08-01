data modify storage btl:temp SelectedItem.Count set value 1b
execute on target run item modify entity @s weapon.mainhand btl:remove_1
execute on passengers on passengers run data modify entity @s item set from storage btl:temp SelectedItem
tag @s add btl.temp.fp_hasitem
playsound minecraft:entity.item.pickup block @a ~ ~ ~ 1 1