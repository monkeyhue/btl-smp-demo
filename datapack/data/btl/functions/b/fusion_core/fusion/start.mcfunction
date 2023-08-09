#--- Locate two valid pedestals ---
execute at @e[type=interaction,tag=btl.temp.fp_hasitem,distance=..10,limit=2,sort=nearest] run scoreboard players add @s monkeyhue.temp1 1
scoreboard players set @s monkeyhue.time2 20

#//If this returns less than 2, stops the function entirely
execute unless score @s monkeyhue.temp1 matches 2 run function btl:b/fusion_core/actionbar/no_pedestals
data modify storage btl:temp fusion.item append value []
execute if score @s monkeyhue.temp1 matches 2 as @e[type=interaction,tag=btl.temp.fp_hasitem,distance=..10,limit=2,sort=nearest] on passengers on passengers run data modify storage btl:temp fusion.item[-1] append from entity @s item
scoreboard players reset @s monkeyhue.temp1

#--- Compare Items ---
#//If this returns 1, then the items are different. Force return of items at the end
data modify storage btl:temp fusion.compare set from storage btl:temp fusion.item.[-1][0].tag.btl.id
execute store result score @s monkeyhue.temp1 run data modify storage btl:temp fusion.compare set from storage btl:temp fusion.item.[-1][1].tag.btl.id

#--- Check if the items actually have power levels. If not, force return ---
execute unless data storage btl:temp fusion.item.[-1][1].tag.btl.power run scoreboard players set @s monkeyhue.temp1 1
#//If this returns 0, both checks have passed and fusion can commence

#--- Get the item and change the model ---
execute if score @s monkeyhue.temp1 matches 0 run function btl:b/fusion_core/fusion/begin_fusion
execute unless score @s monkeyhue.temp1 matches 0 run function btl:b/fusion_core/actionbar/not_worky

#--- Clean up ---
scoreboard players reset @s monkeyhue.temp1
data remove storage btl:temp SelectedItem
data remove storage btl:temp fusion.compare