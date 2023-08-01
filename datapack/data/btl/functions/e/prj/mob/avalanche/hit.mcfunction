execute if entity @s[tag=btl.prj.avalanche.ice] run playsound minecraft:block.glass.break block @a ~ ~ ~ 1.5 1
execute if entity @s[tag=btl.prj.avalanche.snow] run playsound minecraft:block.snow.break block @a ~ ~ ~ 1.5 1
execute if entity @s[tag=btl.prj.avalanche.zombie] run summon vindicator ~ ~ ~ {Silent:1b,CanPickUpLoot:0b,Health:1024f,CanJoinRaid:0b,Tags:["btl.entity","btl.hitbox","btl.hitbox.vehicle"],Passengers:[{id:"minecraft:item_display",Tags:["btl.entity","btl.e.snow_zombie","btl.t.avalanched"],view_range:2f,shadow_radius:0.5f,shadow_strength:2f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-1f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0},CustomModelData:6540008,Damage:3}}}],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.knockback_resistance,Base:1.0},{Name:generic.max_health,Base:1024},{Name:generic.movement_speed,Base:0.22},{Name:generic.attack_damage,Base:0},{Name:generic.follow_range,Base:64}]}

execute as @e[tag=!btl.entity,distance=..4,limit=4] run damage @s 20 btl:yeti/avalanche
particle snowflake ~ ~0.2 ~ 0.2 0.2 0.2 0.2 50
particle explosion ~ ~0.2 ~ 0 0 0 0 1
kill @s

