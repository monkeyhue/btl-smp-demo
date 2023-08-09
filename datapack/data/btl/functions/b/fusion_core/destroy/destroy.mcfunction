#--- Destroy!!! ---
loot spawn ~ ~ ~ loot btl:block/fusion_core
particle minecraft:item furnace{CustomModelData:6540005} ~ ~0.5 ~ 0.3 0.3 0.3 0.12 40 normal
playsound minecraft:block.stone.break block @a ~ ~ ~ 1 1
setblock ~ ~ ~ air
execute on passengers run kill @s
kill @s
data remove entity @s attack