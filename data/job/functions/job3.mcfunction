#reloadtime初期化
scoreboard players add @a[scores={job=3}] reloadtime 0

tag @a[scores={reloadtime=0}] add shotwait

execute rotated as @a[scores={job=3,sneak=1..},nbt={SelectedItem:{id:"minecraft:spyglass"}},tag=shotwait] positioned 0.0 0.0 0.0 run summon armor_stand ^ ^ ^10 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["vector_stand"],CustomName:'{"text":"vector_stand"}'}
execute as @a[scores={job=3,sneak=1..},nbt={SelectedItem:{id:"minecraft:spyglass"}},tag=shotwait] anchored eyes at @s run summon arrow ^ ^0.3 ^1 {NoGravity:1b,Glowing:1b,damage:1d,Tags:["vector_arrows"],CustomName:'{"text":"vector_arrow"}'}
execute as @a[scores={job=3,sneak=1..}] run data modify entity @e[type=arrow,limit=1,name="vector_arrow"] Owner set from entity @s UUID

tag @a[scores={job=3,sneak=1..},nbt={SelectedItem:{id:"minecraft:spyglass"}}] add reload
tag @a[tag=reload,scores={job=3}] remove shotwait
scoreboard players add @a[tag=reload,scores={job=3}] reloadtime 1
tag @a[scores={reloadtime=200..,job=3}] remove reload

title @a[scores={reloadtime=1}] actionbar {"text":"リロード完了まで残り10秒"}
title @a[scores={reloadtime=20}] actionbar {"text":"リロード完了まで残り9秒"}
title @a[scores={reloadtime=40}] actionbar {"text":"リロード完了まで残り8秒"}
title @a[scores={reloadtime=60}] actionbar {"text":"リロード完了まで残り7秒"}
title @a[scores={reloadtime=80}] actionbar {"text":"リロード完了まで残り6秒"}
title @a[scores={reloadtime=100}] actionbar {"text":"リロード完了まで残り5秒"}
title @a[scores={reloadtime=120}] actionbar {"text":"リロード完了まで残り4秒"}
title @a[scores={reloadtime=140}] actionbar {"text":"リロード完了まで残り3秒"}
title @a[scores={reloadtime=160}] actionbar {"text":"リロード完了まで残り2秒"}
title @a[scores={reloadtime=180}] actionbar {"text":"リロード完了まで残り1秒"}
title @a[scores={reloadtime=200}] actionbar {"text":"リロード完了"}
scoreboard players set @a[scores={reloadtime=200..,job=3}] reloadtime 0

tag @e[tag=vector_arrows] add vector_arrow
data modify entity @e[limit=1,tag=vector_arrow] Motion set from entity @e[name="vector_stand",limit=1] Pos
tag @e[tag=vector_arrows] remove vector_arrows
tag @e[tag=vector_arrow] remove vector_arrow
kill @e[nbt={Item:{id:"minecraft:spyglass"}}]
scoreboard players set @a[scores={job=3,sneak=1..}] sneak 0
kill @e[name="vector_stand"]

scoreboard players add @e[name="vector_arrow"] arrow_deathtime 1
kill @e[scores={arrow_deathtime=60..},name="vector_arrow"]