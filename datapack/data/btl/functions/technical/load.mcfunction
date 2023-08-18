#// Setup
data modify storage btl:temp lootBasePower set value 100
function btl:technical/tick
function btl:technical/monkeylib_load
#tellraw @a {"text":"Battledoors Reloaded"}

#// Click Detections
scoreboard objectives add btl.player.hit minecraft.used:minecraft.stone_sword
scoreboard objectives add btl.player.use minecraft.used:minecraft.warped_fungus_on_a_stick

#// General scores
scoreboard objectives add btl.loggedOut minecraft.custom:minecraft.leave_game
scoreboard objectives add btl.deaths minecraft.custom:minecraft.deaths
scoreboard objectives add btl.damage dummy
scoreboard objectives add btl.player.power dummy
scoreboard objectives add btl.player.melee_reload dummy
scoreboard objectives add btl.player.ranged_reload dummy
scoreboard objectives add btl.sum dummy
scoreboard objectives add btl.tempWeapon dummy

#// Information for blocks
scoreboard objectives add btl.b.sockets dummy
scoreboard objectives add btl.b.baseRotation dummy

#// Information for wave battles
scoreboard objectives add btl.w.battleID dummy
scoreboard objectives add btl.w.waveID dummy
scoreboard objectives add btl.w.tempID dummy
scoreboard objectives add btl.w.progress dummy
scoreboard objectives add btl.w.maxProgress dummy
scoreboard objectives add btl.w.maxMobs dummy
scoreboard objectives add btl.w.mobs dummy
scoreboard objectives add btl.w.credits dummy
scoreboard objectives add btl.w.penalty dummy

#// Players
scoreboard objectives add btl.p.incDmg dummy
scoreboard objectives add btl.p.dmgID dummy

#// Constants
scoreboard players set #btl.0 monkeyhue.temp1 0
scoreboard players set #btl.1 monkeyhue.temp1 1
scoreboard players set #btl.20 monkeyhue.temp1 20
scoreboard players set #btl.25 monkeyhue.temp1 25
scoreboard players set #btl.50 monkeyhue.temp1 50
scoreboard players set #btl.100 monkeyhue.temp1 100
scoreboard players set #btl.5000 monkeyhue.temp1 5000
scoreboard players set #btl.10000 monkeyhue.temp1 10000

#// Gamerules
execute unless score #btl.postDragon btl.sum matches 0.. run scoreboard players set #btl.postDragon btl.sum 0
scoreboard players set #btl.gamerule.doMobSpawning btl.sum 1
scoreboard players set #btl.gamerule.spawnTime btl.sum 6000
