execute on target run item modify entity @s[gamemode=!creative] weapon.mainhand btl:remove_1
execute on target run playsound minecraft:entity.horse.eat master @s
playsound btl:block.dimensional_blender.activate block @a ~ ~ ~ 0.8 1
execute on passengers run data modify entity @s item.tag.data set from storage btl:temp heldItem
scoreboard players set @s monkeyhue.entity.AIState 2