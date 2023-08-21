execute if entity @s[tag=btl.prj.avalanche.ice] run playsound minecraft:block.glass.break block @a ~ ~ ~ 1.5 1
execute if entity @s[tag=btl.prj.avalanche.snow] run playsound minecraft:block.snow.break block @a ~ ~ ~ 1.5 1
execute if entity @s[tag=btl.prj.avalanche.zombie] run summon vindicator ~ ~ ~ {PersistenceRequired:1b,Silent:1b,CanPickUpLoot:0b,Health:1024f,CanJoinRaid:0b,Tags:["btl.entity","btl.e.snow_zombie","btl.hitbox","btl.hitbox.vehicle","btl.t.avalanched"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.knockback_resistance,Base:0.6},{Name:generic.max_health,Base:1024},{Name:generic.movement_speed,Base:0.22},{Name:generic.attack_damage,Base:0}],ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0},CustomModelData:6540008}}]}

execute as @e[tag=!btl.entity,distance=..2.5,limit=2] run damage @s 12 btl:yeti/avalanche
particle snowflake ~ ~0.2 ~ 0.2 0.2 0.2 0.2 50
particle explosion ~ ~0.2 ~ 0 0 0 0 1
kill @s

