#// Setup
function btl:technical/tick
function btl:technical/monkeylib_load
tellraw @a {"text":"Battledoors Reloaded"}

#// Click Detections
scoreboard objectives add btl.player.hit minecraft.used:minecraft.stone_sword
scoreboard objectives add btl.player.use minecraft.used:minecraft.warped_fungus_on_a_stick

#// General scores
scoreboard objectives add btl.damage dummy
scoreboard objectives add btl.player.power dummy
scoreboard objectives add btl.player.melee_reload dummy
scoreboard objectives add btl.player.ranged_reload dummy
scoreboard objectives add btl.sum dummy

#// Information for blocks
scoreboard objectives add btl.b.sockets dummy
scoreboard objectives add btl.b.baseRotation dummy

#// Information for wave battles
scoreboard objectives add btl.w.battleID dummy
scoreboard objectives add btl.w.waveID dummy
scoreboard objectives add btl.w.tempID dummy
scoreboard objectives add btl.w.progress dummy
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
scoreboard players set #btl.50 monkeyhue.temp1 50
scoreboard players set #btl.100 monkeyhue.temp1 100
scoreboard players set #btl.5000 monkeyhue.temp1 5000
