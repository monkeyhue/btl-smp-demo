scoreboard players set @s monkeyhue.time1 0

#--- Locate two valid pedestals ---
execute as @e[type=interaction,tag=btl.temp.fp_hasitem,distance=..10,limit=2,sort=nearest] run function btl:b/fusion_pedestal/fusion/init

#//If this returns less than 2, stops the function entirely
execute unless score @s monkeyhue.temp1 matches 2.. run function btl:b/fusion_core/actionbar/no_pedestals
execute unless score @s monkeyhue.temp1 matches 2.. run return 0
scoreboard players reset @s monkeyhue.temp1

#--- Get the item and change the model ---
execute on target run data modify storage btl:temp SelectedItem set from entity @s SelectedItem
playsound minecraft:block.respawn_anchor.charge block @a ~ ~ ~ 1 1
execute store result score @s monkeyhue.time2 run data get storage btl:temp SelectedItem.tag.CustomModelData
execute on passengers run data modify entity @s item.tag.CustomModelData set from storage btl:temp SelectedItem.tag.CustomModelData

#--- Clean up ---
tag @p[tag=btl.t.activate_core] remove btl.t.activate_core
execute on target run item modify entity @s[gamemode=!creative] weapon.mainhand btl:remove_1
data remove storage btl:temp SelectedItem