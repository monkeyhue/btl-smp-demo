#--- Destroy!!! ---
loot spawn ~ ~ ~ loot btl:block/dimensional_blender
particle minecraft:item furnace{CustomModelData:6540011} ~ ~0.5 ~ 0.3 0.3 0.3 0.12 30 normal
playsound minecraft:block.glass.break block @a ~ ~ ~ 1 1
execute if score @s monkeyhue.entity.AIState matches 1..2 on passengers run function btl:b/blender/destroy/drop_item_destroyed
execute on passengers run kill @s
kill @s
