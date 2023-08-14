execute as @a[distance=..40] unless score @s btl.w.battleID matches 0.. run scoreboard players set @s btl.w.battleID 1
title @a[scores={btl.w.battleID=1}] title {"translate":"battle.btl.blue","color":"#83FFFF"}
title @a[scores={btl.w.battleID=1}] subtitle [{"translate":"battle.btl.ui.rating","color":"#83FFFF"},{"text":"★☆☆☆☆","color":"gold"}]

playsound minecraft:entity.player.levelup master @a[scores={btl.w.battleID=1}] ~ ~ ~ 1 1 1

#// Bossbar
bossbar add btl:blue "Icebound Battleground"
bossbar set btl:blue color blue
bossbar set btl:blue players @a[scores={btl.w.battleID=1}]
bossbar set btl:blue max 120