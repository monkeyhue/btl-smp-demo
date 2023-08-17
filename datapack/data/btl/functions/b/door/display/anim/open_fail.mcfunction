scoreboard players set #btl.animLength monkeyhue.objmc1 60
data modify entity @s item.tag.Damage set value 8
function btl:e/display/anim/gen_block
execute on passengers run function btl:b/door/display/anim/open_fail