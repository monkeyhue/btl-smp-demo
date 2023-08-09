title @a[distance=0..48] title {"translate":"battle.btl.blue","color":"#653AA4"}
title @a[distance=0..48] subtitle [{"translate":"battle.btl.ui.rating","color":"#83FFFF"},{"text":"★☆☆☆☆","color":"gold"}]

playsound minecraft:entity.player.levelup master @a[distance=0..48] ~ ~ ~ 1 1 1

#// Bossbar
bossbar add btl:blue "Icebound Battleground"
bossbar set btl:blue color blue
bossbar set btl:blue players @a[distance=0..48]
bossbar set btl:blue max 120