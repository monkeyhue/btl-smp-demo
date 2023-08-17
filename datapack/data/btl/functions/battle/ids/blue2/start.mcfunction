execute as @a[distance=..40,gamemode=!creative,gamemode=!spectator] unless score @s btl.w.battleID matches 0.. run scoreboard players set @s btl.w.battleID 2
title @a[scores={btl.w.battleID=2}] title {"translate":"battle.btl.blue","color":"#83FFFF"}
title @a[scores={btl.w.battleID=2}] subtitle [{"translate":"battle.btl.ui.rating","color":"#83FFFF"},{"text":"★★☆☆☆","color":"gold"}]

playsound minecraft:entity.player.levelup master @a[scores={btl.w.battleID=2}] ~ ~ ~ 1 1 1

#// Bossbar
bossbar add btl:blue2 {"translate": "battle.btl.wave.buffer"}
bossbar set btl:blue2 color blue
bossbar set btl:blue2 players @a[scores={btl.w.battleID=2}]