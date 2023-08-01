playsound minecraft:entity.ghast.hurt hostile @a ~ ~ ~ 1 1.4
execute positioned ^ ^ ^-2.5 run particle minecraft:explosion ~ ~ ~ 0 0 0 1 1 force
execute positioned ^ ^ ^-2.5 as @a[limit=3,distance=0..2.5] run damage @s 4 btl:spook/spook
execute positioned ^ ^ ^-2.5 run effect give @a[limit=3,distance=0..2.5] minecraft:weakness 4 0