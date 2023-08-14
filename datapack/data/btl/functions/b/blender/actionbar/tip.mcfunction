data modify storage smithed.actionbar:input message set value {json:'{"translate":"actionbar.btl.blender.tip","color": "gray","italic": "true"}',priority:'notification'}
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1
function #smithed.actionbar:message