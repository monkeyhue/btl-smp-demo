execute store result storage btl:temp lootBasePower int 1.0 run scoreboard players get @s btl.sum
summon armor_stand ~ -68 ~ {Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["btl.entity","btl.temp","btl.t.fuse_end"],ArmorItems:[{},{},{},{}]}
execute positioned ~ -68 ~ as @e[type=armor_stand,tag=btl.t.fuse_end,limit=1,distance=..4] run function btl:b/fusion_core/fusion/armor_stand

summon item ~ ~1.2 ~ {PickupDelay:10,Tags:["btl.new"],Item:{id:"minecraft:egg",Count:1b,tag:{CustomModelData:6540001}},Motion:[0.0,0.2,0.0]}
execute as @e[type=item,tag=btl.new,limit=1,distance=..4] run function btl:b/fusion_core/fusion/spawn_item

playsound minecraft:entity.experience_orb.pickup block @a ~ ~ ~
particle firework ~ ~1.4 ~ 0.05 0.05 0.05 0.2 8

execute on passengers run data modify entity @s item.tag.CustomModelData set value 6540005
data remove storage btl:temp fusion
data remove storage btl:temp lootBasePower
scoreboard players reset @s