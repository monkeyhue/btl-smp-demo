scoreboard players set #btl.animLength monkeyhue.objmc1 94
execute store result score @s btl.b.baseRotation run data get storage btl:temp spawnDoor.color
data modify entity @s item.tag.Damage set value 9
function btl:e/display/anim/gen_block
execute on passengers run function btl:b/door/display/anim/spawn_boss