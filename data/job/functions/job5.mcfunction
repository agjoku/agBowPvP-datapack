tag @a[scores={job=5,reloadtime=200..}] add waittime

#rclick=1の時矢召喚
execute as @a[scores={job=5,rclick=1..,reloadtime=200..},tag=waittime] anchored eyes at @s run summon arrow ^ ^ ^1 {NoGravity:1b,Glowing:1b,Tags:["job5arrow"],damage:5d,CustomName:'{"text":"job5arrow"}'}

#タグ付与
tag @a[scores={job=5,rclick=1..,reloadtime=200..},tag=waittime] add reload
scoreboard players set @a[scores={job=5,reloadtime=200..,rclick=1..},tag=waittime] reloadtime 0
tag @e[name="job5arrow"] add job5arrow
tag @e[scores={job=5,rclick=1..}] add arrowoperator

#矢にベクトル付与 and UUID設定
execute rotated as @a[scores={job=5,sneak=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] positioned 0.0 0.0 0.0 run summon armor_stand ^ ^ ^0.5 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["operatearrow"],CustomName:'{"text":"operatearrow"}'}
execute as @a[scores={job=5,rclick=1}] run data modify entity @e[type=arrow,limit=1,name="job5arrow"] Owner set from entity @s UUID
execute if entity @a[scores={job=5,rclick=1}] run data modify entity @e[limit=1,tag=job5arrow] Motion set from entity @e[name="operatearrow",limit=1] Pos

#矢のデスタイムセット
scoreboard players add @e[tag=job5arrow] arrow_deathtime 1
kill @e[tag=job5arrow,scores={arrow_deathtime=100..}]

#アマスタキル
kill @e[name="operatearrow"]

#しゃがみ時、右クリック時アマスタ
execute rotated as @a[scores={job=5,sneak=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] positioned 0.0 0.0 0.0 run summon armor_stand ^ ^ ^-1.0 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["operatearrow"],CustomName:'{"text":"operatearrow"}'}
execute rotated as @a[scores={job=5,rclick=2},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] positioned 0.0 0.0 0.0 run summon armor_stand ^ ^ ^5.0 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["operatearrow"],CustomName:'{"text":"operatearrow"}'}
execute if entity @a[scores={job=5,rclick=2}] run data modify entity @e[limit=1,tag=job5arrow] Motion set from entity @e[name="operatearrow",limit=1] Pos

execute if entity @a[scores={job=5,rclick=1}] run data modify entity @e[tag=job5arrow,limit=1] damage set value 20d
execute if entity @a[scores={job=5,rclick=2}] run data modify entity @e[tag=job5arrow,limit=1] damage set value 2d

#スコアボード rclick セット
scoreboard players set @a[scores={job=5,sneak=1..}] sneak 0
scoreboard players add @a[scores={job=5,reloadtime=..200}] reloadtime 1
scoreboard players add @a[scores={job=5,rclick=2}] rclick 1
scoreboard players set @a[scores={job=5,reloadtime=200}] rclick 0

title @a[scores={job=5,reloadtime=0}] actionbar "リロード完了まで残り10秒"
title @a[scores={job=5,reloadtime=20}] actionbar "リロード完了まで残り9秒"
title @a[scores={job=5,reloadtime=40}] actionbar "リロード完了まで残り8秒"
title @a[scores={job=5,reloadtime=60}] actionbar "リロード完了まで残り7秒"
title @a[scores={job=5,reloadtime=80}] actionbar "リロード完了まで残り6秒"
title @a[scores={job=5,reloadtime=100}] actionbar "リロード完了まで残り5秒"
title @a[scores={job=5,reloadtime=120}] actionbar "リロード完了まで残り4秒"
title @a[scores={job=5,reloadtime=140}] actionbar "リロード完了まで残り3秒"
title @a[scores={job=5,reloadtime=160}] actionbar "リロード完了まで残り2秒"
title @a[scores={job=5,reloadtime=180}] actionbar "リロード完了まで残り1秒"
title @a[scores={job=5,reloadtime=200}] actionbar "リロード完了"

tag @a[scores={job=5,reloadtime=0}] remove waittime
tag @a[scores={job=5,reloadtime=200}] remove reload