##羽を捨てたときfeather_droppedが1増える
##feather_droppedが1の時1秒間跳躍力上昇LV.11付与
effect give @a[scores={job=2,feather_dropped=1},nbt={OnGround:1b}] jump_boost 1 10 true

##feather_droppedが1の時空中にいる場合、足元に大量のスライム召喚、Lv.20,5tickの浮遊を付与
##入力方向にジャンプ可能
execute as @a[scores={job=2,feather_dropped=1},nbt={OnGround:0b}] at @s run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:25,Amplifier:20b,Duration:5,ShowParticles:0b}]}
execute as @a[scores={job=2,feather_dropped=1},nbt={OnGround:0b}] at @s run function job:summon_slime

##召喚したスライム(killtime10以上)を座標( 0, 0, 0, )にTPし、Kill
scoreboard players add @e[type=slime,tag=job2] killtime 1
tp @e[type=slime,tag=job2,scores={killtime=10..}] 0 0 0
kill @e[type=slime,tag=job2,scores={killtime=10..}]

##feather_droppedのリセット、羽のKill
scoreboard players set @a[scores={job=2,feather_dropped=1..}] feather_dropped 0
kill @e[type=item,nbt={Item:{id:"minecraft:feather"}}]

##羽の所持数(feather_point)の初期化&代入
execute as @a[scores={job=2}] store result score @s featherpoints run clear @s minecraft:feather 0

##featherpointが2以下の時カウント
scoreboard players add @a[scores={job=2,featherpoints=..2}] job2_tick 1

##tickカウント(job2_tick)➡秒数カウント(job2_count)に変換
execute as @a[scores={job=2,featherpoints=..2,job2_tick=20}] run scoreboard players add @s job2_count 1

##秒数カウント10以上、羽所持数2以下の時に羽を付与
give @a[scores={job=2,job2_count=10,featherpoints=..2}] feather{display:{Name:'{"text":"大ジャンプ","color": "aqua"}'}} 1

##tick、秒数カウントがそれぞれ20,10以上の時リセット
scoreboard players set @a[scores={job2_tick=20..}] job2_tick 0
scoreboard players set @a[scores={job2_count=10..}] job2_count 0

##羽を4つ以上持っているときの処理(羽を削除し3枚付与。tick,countを初期化)
clear @a[scores={job=2,featherpoints=4..}] feather
give @a[scores={job=2,featherpoints=4..}] feather{display:{Name:'{"text":"大ジャンプ","color": "aqua"}'}} 3
scoreboard players set @a[scores={featherpoints=4..}] job2_tick 0
scoreboard players set @a[scores={featherpoints=4..}] job2_count 0