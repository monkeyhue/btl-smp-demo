data modify storage smithed.actionbar:input message set value {json:'{"translate":"actionbar.btl.item.wait","color": "red"}',priority:'notification'}
execute at @s run playsound btl:ui.error master @s ~ ~ ~ 1 1
function #smithed.actionbar:message