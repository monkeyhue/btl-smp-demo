playsound btl:entity.prj.ice_chunk.hit hostile @a ~ ~ ~ 0.6 2
execute if entity @s[tag=!btl.prj.chillager_ice.weak] as @a[distance=..2.5] run damage @s 8 btl:chillager
execute if entity @s[tag=btl.prj.chillager_ice.weak] as @a[distance=..1.5] run damage @s 4 btl:chillager
particle snowflake ~ ~0.2 ~ 0.2 0.2 0.2 0.3 60
particle explosion ~ ~0.2 ~ 0 0 0 0 1
kill @s