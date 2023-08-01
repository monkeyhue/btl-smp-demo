#Setup
function btl:technical/tick
function btl:technical/monkeylib_load
tellraw @a {"text":"Battledoors Reloaded"}

#Click Detections
scoreboard objectives add btl.player.hit minecraft.used:minecraft.stone_sword
scoreboard objectives add btl.player.use minecraft.used:minecraft.warped_fungus_on_a_stick

scoreboard objectives add btl.damage dummy
scoreboard objectives add btl.player.power dummy
scoreboard objectives add btl.player.melee_reload dummy
scoreboard objectives add btl.sum dummy

#Preset scores
scoreboard players set %btl.0 monkeyhue.temp1 0
scoreboard players set %btl.1 monkeyhue.temp1 1
scoreboard players set %btl.20 monkeyhue.temp1 20
scoreboard players set %btl.50 monkeyhue.temp1 50
scoreboard players set %btl.100 monkeyhue.temp1 100
scoreboard players set %btl.5000 monkeyhue.temp1 5000
