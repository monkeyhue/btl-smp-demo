data modify entity @s item.tag.Damage set value 0

execute store result score %temp monkeyhue.objmc1 run time query gametime
scoreboard players set %btl.animLength monkeyhue.objmc1 32

# Get Autoanimation Frame
scoreboard players operation %temp monkeyhue.objmc1 %= %24000 monkeyhue.temp1
scoreboard players operation %temp monkeyhue.objmc1 %= %btl.animLength monkeyhue.objmc1

#Append frame to G
scoreboard players operation %temp monkeyhue.objmc1 *= %256 monkeyhue.temp1
scoreboard players operation %sum monkeyhue.objmc1 += %temp monkeyhue.objmc1

#Append rotation to R
execute store result score %temp monkeyhue.objmc1 run data get entity @s Rotation[0] 0.708333333
scoreboard players operation %temp monkeyhue.objmc1 %= %256 monkeyhue.temp1
scoreboard players operation %temp monkeyhue.objmc1 *= %256 monkeyhue.temp1
scoreboard players operation %temp monkeyhue.objmc1 *= %256 monkeyhue.temp1
scoreboard players operation %sum monkeyhue.objmc1 += %temp monkeyhue.objmc1

#Update Data
execute store result entity @s item.tag.display.color int 1 run scoreboard players get %sum monkeyhue.objmc1
scoreboard players reset %temp monkeyhue.objmc1
scoreboard players reset %sum monkeyhue.objmc1
scoreboard players reset %btl.animLength monkeyhue.objmc1