execute unless score @s btl.w.battleID matches -1 run damage @p[distance=..2.75,gamemode=!creative,gamemode=!spectator] 10 btl:snow_zombie by @s
execute if score @s btl.w.battleID matches -1 run damage @p[distance=..2.75,gamemode=!creative,gamemode=!spectator] 6 btl:snow_zombie by @s
effect give @p[distance=..2.75,gamemode=!creative,gamemode=!spectator] slowness 6 1