data modify storage smithed.actionbar:input message set value {json:'{"text":"A fusion is already happening nearby!","color":"red"}',priority:'notification'}
execute on target run playsound btl:ui.error master @s ~ ~ ~ 1 1
execute on target run function #smithed.actionbar:message