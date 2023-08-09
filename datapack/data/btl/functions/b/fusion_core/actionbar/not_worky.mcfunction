data modify storage smithed.actionbar:input message set value {json:'{"translate":"actionbar.btl.fusion_core.not_worky","color": "red"}',priority:'notification'}
execute on target run playsound btl:ui.error master @s ~ ~ ~ 1 1
execute on target run function #smithed.actionbar:message
data remove storage btl:temp fusion.item[-1]