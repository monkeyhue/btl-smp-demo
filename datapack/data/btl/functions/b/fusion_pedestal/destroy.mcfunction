#--- Destroy!!! ---
loot spawn ~ ~ ~ loot btl:block/fusion_pedestal
particle minecraft:item furnace{CustomModelData:6540004} ~ ~0.5 ~ 0.3 0.3 0.3 0.12 40 normal
playsound minecraft:block.stone.break block @a ~ ~ ~ 1 1
setblock ~ ~ ~ air
execute on passengers on passengers run function btl:b/fusion_pedestal/drop_item_destroyed
execute on passengers run kill @s
kill @s