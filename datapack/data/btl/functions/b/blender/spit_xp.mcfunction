#// North
execute if score @s btl.b.baseRotation matches 0 run summon experience_orb ^ ^0.2 ^-0.2 {Value:60,Motion:[0.0,0.2,-0.2]}

#// East
execute if score @s btl.b.baseRotation matches 4194304 run summon experience_orb ^0.2 ^0.2 ^ {Value:60,Motion:[0.2,0.2,0.0]}

#// South
execute if score @s btl.b.baseRotation matches 8388608 run summon experience_orb ^ ^0.2 ^0.2 {Value:60,Motion:[0.0,0.2,0.2]}

#// West
execute if score @s btl.b.baseRotation matches 12582912 run summon experience_orb ^-0.2 ^0.2 ^ {Value:60,Motion:[-0.2,0.2,0.0]}

#// Fx
playsound minecraft:entity.player.burp block @a ~ ~ ~ 1 1
particle splash ~ ~0.3 ~ 0.3 0.1 0.3 1 3