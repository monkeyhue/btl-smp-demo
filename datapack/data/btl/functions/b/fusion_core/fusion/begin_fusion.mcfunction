#--- Update block and start particle effects ---
execute on target run data modify storage btl:temp SelectedItem set from entity @s SelectedItem
execute store result score @s monkeyhue.temp6 run data get storage btl:temp SelectedItem.tag.CustomModelData
playsound minecraft:block.respawn_anchor.charge block @a ~ ~ ~ 1 1
execute on passengers run data modify entity @s item.tag.CustomModelData set from storage btl:temp SelectedItem.tag.CustomModelData
execute on target run item modify entity @s[gamemode=!creative] weapon.mainhand btl:remove_1
scoreboard players add @s monkeyhue.time1 1

#--- Update those fusion pedestals ---
execute as @e[type=interaction,tag=btl.temp.fp_hasitem,distance=..10,limit=2,sort=nearest] run function btl:b/fusion_pedestal/fusion/remove

#--- Calculate power ---
#//Formula: g1 + p/(50+(|g1-g2|^2/20))
#//Because this part's so large, I stuffed it in one function
function btl:b/fusion_core/fusion/calculate_power
