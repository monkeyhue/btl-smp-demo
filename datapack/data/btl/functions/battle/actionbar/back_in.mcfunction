data modify storage smithed.actionbar:input message set value {json:'{"translate":"actionbar.btl.battle.back_in","color": "green"}',priority:'notification'}
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
function #smithed.actionbar:message
scoreboard players reset @s btl.w.penalty