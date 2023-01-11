##羽を捨てたときfeather_droppedが1増える
##feather_droppedが1の時1秒間跳躍力上昇LV.11付与、その後feather_droppedが1以上の人は0にし羽をkill
effect give @a[scores={job=2,feather_dropped=1},nbt={OnGround:1b}] jump_boost 1 10 true
execute as @a[scores={job=2,feather_dropped=1},nbt={OnGround:0b}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:25,Amplifier:20b,Duration:5,ShowParticles:0b}]}
function job:summon_slime
scoreboard players add @e[tag=job2,type=slime] killtime 1
kill @e[scores={killtime=20..},type=slime]
scoreboard players set @a[scores={job=2,feather_dropped=1..}] feather_dropped 0
kill @e[type=item,nbt={Item:{id:"minecraft:feather"}}]

##10秒に1枚羽を配る(3枚以上持っている人には配らない)
execute as @a[scores={job=2}] store result score @s featherpoints run clear @s minecraft:feather 0
scoreboard players add @a[scores={job=2,featherpoints=..2}] job2_tick 1
execute as @a[scores={job=2,featherpoints=..2,job2_tick=20}] run scoreboard players add @s job2_count 1
give @a[scores={job=2,job2_count=10,featherpoints=..2}] feather{display:{Name:'{"text":"大ジャンプ","color": "aqua"}'}} 1
scoreboard players set @a[scores={job2_tick=20..}] job2_tick 0
scoreboard players set @a[scores={job2_count=10..}] job2_count 0

##羽を4つ以上持っているときの処理(羽を削除し3枚付与。tick,countを初期化)
clear @a[scores={job=2,featherpoints=4..}] feather
give @a[scores={job=2,featherpoints=4..}] feather{display:{Name:'{"text":"大ジャンプ","color": "aqua"}'}} 3
scoreboard players set @a[scores={featherpoints=4..}] job2_tick 0
scoreboard players set @a[scores={featherpoints=4..}] job2_count 0