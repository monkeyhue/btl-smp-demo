data modify storage btl:temp inventory set from entity @s

#Held Item
execute store result score @s monkeyhue.temp1 run data get storage btl:temp inventory.SelectedItem.tag.btl.power
scoreboard players operation @s monkeyhue.temp2 += @s monkeyhue.temp1

#Boots
execute store result score @s monkeyhue.temp1 run data get storage btl:temp inventory.Inventory.[{Slot:100b}].tag.btl.power
execute if score @s monkeyhue.temp1 matches 1.. run scoreboard players remove @s monkeyhue.temp1 100
scoreboard players operation @s monkeyhue.temp1 *= #btl.25 monkeyhue.temp1
scoreboard players operation @s monkeyhue.temp1 /= #btl.100 monkeyhue.temp1
scoreboard players operation @s monkeyhue.temp2 += @s monkeyhue.temp1

#Leggings
execute store result score @s monkeyhue.temp1 run data get storage btl:temp inventory.Inventory.[{Slot:101b}].tag.btl.power
execute if score @s monkeyhue.temp1 matches 1.. run scoreboard players remove @s monkeyhue.temp1 100
scoreboard players operation @s monkeyhue.temp1 *= #btl.25 monkeyhue.temp1
scoreboard players operation @s monkeyhue.temp1 /= #btl.100 monkeyhue.temp1
scoreboard players operation @s monkeyhue.temp2 += @s monkeyhue.temp1

#Chestplate
execute store result score @s monkeyhue.temp1 run data get storage btl:temp inventory.Inventory.[{Slot:102b}].tag.btl.power
execute if score @s monkeyhue.temp1 matches 1.. run scoreboard players remove @s monkeyhue.temp1 100
scoreboard players operation @s monkeyhue.temp1 *= #btl.25 monkeyhue.temp1
scoreboard players operation @s monkeyhue.temp1 /= #btl.100 monkeyhue.temp1
scoreboard players operation @s monkeyhue.temp2 += @s monkeyhue.temp1

#Helmet
execute store result score @s monkeyhue.temp1 run data get storage btl:temp inventory.Inventory.[{Slot:103b}].tag.btl.power
execute if score @s monkeyhue.temp1 matches 1.. run scoreboard players remove @s monkeyhue.temp1 100
scoreboard players operation @s monkeyhue.temp1 *= #btl.25 monkeyhue.temp1
scoreboard players operation @s monkeyhue.temp1 /= #btl.100 monkeyhue.temp1
scoreboard players operation @s monkeyhue.temp2 += @s monkeyhue.temp1

scoreboard players operation @s btl.player.power = @s monkeyhue.temp2
scoreboard players reset @s monkeyhue.temp1
scoreboard players reset @s monkeyhue.temp2