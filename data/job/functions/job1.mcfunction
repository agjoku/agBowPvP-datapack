#5秒間移動速度上昇LV.4付与(tickタグ)
#effect give @a[scores={job=1}] speed 5 3 true

scoreboard players add @a[scores={job=1}] job1_count 0
scoreboard players add @a[scores={sneak=1..,job=1}] job1_addtick 1
scoreboard players add @a[scores={job=1,job1_addtick=20,job1_count=29}] job1_count 1
scoreboard players add @a[scores={job=1,job1_addtick=20,job1_count=..28}] job1_count 2
effect give @a[scores={job=1,job1_count=1..,job1_tick=0}] speed 1 4 true
scoreboard players add @a[scores={job=1,sneak=0}] job1_tick 1
scoreboard players remove @a[scores={job=1,job1_tick=20..,job1_count=1..}] job1_count 1
scoreboard players set @a[scores={job1_tick=20..}] job1_tick 0
scoreboard players set @a[scores={job=1,sneak=1..}] sneak 0
scoreboard players set @a[scores={job1_addtick=20..}] job1_addtick 0

#job1_countの分だけエメラルドを付与(0のときはバリアブロック)
item replace entity @a[scores={job1_count=0,job=1}] hotbar.8 with barrier{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 1
item replace entity @a[scores={job1_count=1,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 1
item replace entity @a[scores={job1_count=2,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 2
item replace entity @a[scores={job1_count=3,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 3
item replace entity @a[scores={job1_count=4,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 4
item replace entity @a[scores={job1_count=5,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 5
item replace entity @a[scores={job1_count=6,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 6
item replace entity @a[scores={job1_count=7,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 7
item replace entity @a[scores={job1_count=8,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 8
item replace entity @a[scores={job1_count=9,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 9
item replace entity @a[scores={job1_count=10,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 10
item replace entity @a[scores={job1_count=11,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 11
item replace entity @a[scores={job1_count=12,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 12
item replace entity @a[scores={job1_count=13,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 13
item replace entity @a[scores={job1_count=14,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 14
item replace entity @a[scores={job1_count=15,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 15
item replace entity @a[scores={job1_count=16,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 16
item replace entity @a[scores={job1_count=17,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 17
item replace entity @a[scores={job1_count=18,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 18
item replace entity @a[scores={job1_count=19,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 19
item replace entity @a[scores={job1_count=20,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 20
item replace entity @a[scores={job1_count=21,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 21
item replace entity @a[scores={job1_count=22,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 22
item replace entity @a[scores={job1_count=23,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 23
item replace entity @a[scores={job1_count=24,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 24
item replace entity @a[scores={job1_count=25,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 25
item replace entity @a[scores={job1_count=26,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 26
item replace entity @a[scores={job1_count=27,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 27
item replace entity @a[scores={job1_count=28,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 28
item replace entity @a[scores={job1_count=29,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 29
item replace entity @a[scores={job1_count=30,job=1}] hotbar.8 with emerald{display:{Name:'{"text":"トークン","color":"aqua"}',Lore:['{"text":"トークンがここに表示されます"}']}} 30

kill @e[nbt={Item: {id: "minecraft:barrier", Count: 1b, tag: {display: {Lore: ['{"text":"トークンがここに表示されます"}'], Name: '{"text":"トークン","color":"aqua"}'}}}}]
kill @e[nbt={Item: {id: "minecraft:emerald", Count: 1b, tag: {display: {Lore: ['{"text":"トークンがここに表示されます"}'], Name: '{"text":"トークン","color":"aqua"}'}}}}]