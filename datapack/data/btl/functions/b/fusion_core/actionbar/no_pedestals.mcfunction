scoreboard players reset @s monkeyhue.time1
scoreboard players reset @s monkeyhue.temp1
data modify storage smithed.actionbar:input message set value {json:'{"text":"Not enough active Marble Pedestals nearby!","color": "red"}',priority:'notification'}
execute on target run playsound btl:ui.error master @s ~ ~ ~ 1 1
execute on target run function #smithed.actionbar:message