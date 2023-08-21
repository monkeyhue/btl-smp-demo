playsound btl:entity.yeti.stomp hostile @a ~ ~ ~ 2 1
particle minecraft:explosion_emitter ~ ~1 ~
particle cloud ~ ~0.2 ~ 0.2 0.1 0.2 0.25 30
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["btl.entity","btl.temp","btl.shield_breaker"],HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{CustomModelData:6540000}},{}]}
execute as @a[distance=..6] run damage @s 0.01 btl:knockback by @e[type=armor_stand,limit=1,distance=..10,tag=btl.shield_breaker,sort=nearest]
execute as @a[distance=..6] run damage @s 0.01 btl:knockback by @e[type=armor_stand,limit=1,distance=..10,tag=btl.shield_breaker,sort=nearest]
execute as @a[distance=..6] run damage @s 0.01 btl:knockback by @e[type=armor_stand,limit=1,distance=..10,tag=btl.shield_breaker,sort=nearest]
execute as @a[distance=..6] run damage @s 16 btl:yeti/smash by @e[type=armor_stand,limit=1,distance=..10,tag=btl.shield_breaker,sort=nearest]