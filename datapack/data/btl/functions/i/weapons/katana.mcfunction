execute unless score @s btl.player.melee_reload matches 1.. run scoreboard players reset @s btl.tempWeapon

execute if score @s btl.player.melee_reload matches 1..20 run scoreboard players operation @s btl.player.power += @s btl.tempWeapon
execute if score @s btl.player.melee_reload matches 1..20 run scoreboard players add @s btl.tempWeapon 10

execute unless score @s btl.player.melee_reload matches 21.. run scoreboard players set @s btl.player.melee_reload 30