execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players set @s monkeyhue.time1 0
execute unless score @s monkeyhue.tempAI matches 3 on passengers run function btl:b/blender/display/anim/spit_in
execute unless score @s monkeyhue.tempAI matches 3 on passengers run function btl:b/blender/get_output
execute unless score @s monkeyhue.tempAI matches 3 run scoreboard players set @s monkeyhue.tempAI 3

scoreboard players add @s monkeyhue.time1 1
execute if score @s monkeyhue.time1 matches 8 run playsound btl:block.dimensional_blender.vocalize block @a ~ ~ ~ 1 1
execute if score @s monkeyhue.time1 matches 28 run playsound minecraft:entity.player.attack.sweep block @a ~ ~ ~ 1 1.1
execute if score @s monkeyhue.time1 matches 28 run particle item furnace{CustomModelData:6540011} ~ ~ ~ 0.2 0 0.2 0.1 4
execute if score @s monkeyhue.time1 matches 30 on passengers run function btl:b/blender/display/anim/spit
execute if score @s monkeyhue.time1 matches 31 on passengers run function btl:b/blender/spit_xp
execute if score @s monkeyhue.time1 matches 37 on passengers run function btl:b/blender/spit_item
execute if score @s monkeyhue.time1 matches 42.. on passengers if data entity @s item.tag.output[0].id on vehicle run scoreboard players set @s monkeyhue.time1 36
execute if score @s monkeyhue.time1 matches 43 on passengers run function btl:b/blender/display/anim/end
execute if score @s monkeyhue.time1 matches 45 run particle item furnace{CustomModelData:6540011} ~ ~ ~ 0.2 0 0.2 0.12 5
execute if score @s monkeyhue.time1 matches 45 run playsound minecraft:block.bamboo_wood.place master @a ~ ~ ~ 1 1
execute if score @s monkeyhue.time1 matches 53.. run scoreboard players set @s monkeyhue.entity.AIState 0