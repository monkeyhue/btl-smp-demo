execute if score @s monkeyhue.time1 matches 1 run spreadplayers ~ ~ 12 28 true @s
execute if score @s monkeyhue.time1 matches 1 run playsound minecraft:entity.zombie.hurt master @a ~ ~ ~ 0.1 0.5
execute if score @s monkeyhue.time1 matches 1 run function btl:technical/rng/10

execute if score @s monkeyhue.time1 matches 2 positioned over motion_blocking_no_leaves run tp @s ~ ~ ~

#// Frozen Zombie
execute if score @s monkeyhue.time1 matches 2 if score @s monkeyhue.rng.out matches 0..4 run summon vindicator ~ ~ ~ {PersistenceRequired:1b,Silent:1b,CanPickUpLoot:0b,Health:1024f,CanJoinRaid:0b,Tags:["smithed.entity","btl.entity","btl.e.snow_zombie","btl.hitbox","btl.hitbox.vehicle","btl.w.tier0"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.follow_range,Base:64},{Name:generic.knockback_resistance,Base:0.6},{Name:generic.max_health,Base:1024},{Name:generic.movement_speed,Base:0.22},{Name:generic.attack_damage,Base:0}],ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0},CustomModelData:6540008}}]}

#// Chillager
execute if score @s monkeyhue.time1 matches 2 if score @s monkeyhue.rng.out matches 5..7 run summon vindicator ~ ~ ~ {PersistenceRequired:1b,Silent:1b,CanPickUpLoot:0b,Health:1024f,CanJoinRaid:0b,Tags:["smithed.entity","btl.entity","btl.e.chillager","btl.hitbox","btl.hitbox.vehicle","btl.w.tier0"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:-1,ShowParticles:0b}],Attributes:[{Name:generic.follow_range,Base:64},{Name:generic.knockback_resistance,Base:0.4},{Name:generic.max_health,Base:1024},{Name:generic.movement_speed,Base:0.35},{Name:generic.attack_damage,Base:0}],ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0},CustomModelData:6540012}}]}

#// Blizzy
execute if score @s monkeyhue.time1 matches 2 if score @s monkeyhue.rng.out matches 8..9 run summon item_display ~ ~ ~ {Silent:1b,Tags:["smithed.entity","smithed.strict","btl.entity","btl.e.blizzy","btl.w.tier0"],Passengers:[{id:"minecraft:item_display",view_range:2f,shadow_radius:1f,Passengers:[{id:"minecraft:slime",Silent:1b,DeathLootTable:"tta:empty",PersistenceRequired:1b,NoAI:1b,Health:1024f,Size:4,Tags:["smithed.entity","smithed.strict","btl.entity","btl.hitbox","btl.hitbox.s1"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1024}]}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0},CustomModelData:6540011}}}]}