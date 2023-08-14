data modify storage smithed.actionbar:input message set value {json:'{"translate":"actionbar.btl.door.invalid_recipe","color": "red"}',priority:'notification'}
execute on target run playsound btl:ui.error master @s ~ ~ ~ 1 1
function #smithed.actionbar:message