playsound btl:block.dimensional_door.knock_wood master @a ~ ~ ~ 0.5 1
particle crit ~ ~1.5 ~ 0.3 0.2 0.3 0.2 1 force
execute on passengers on passengers on passengers on passengers if entity @s[tag=btl.b.door.socketed] on vehicle on vehicle on vehicle on vehicle run scoreboard players add @s monkeyhue.temp2 1
scoreboard players set @s monkeyhue.time2 30