data modify storage smithed.actionbar:input message set value {json:'{"translate":"actionbar.btl.battle.too_far0","color": "red"}',priority:'notification'}
playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 2 0.6
function #smithed.actionbar:message
scoreboard players reset @s btl.w.battleID
scoreboard players reset @s btl.w.penalty