#専用残留ポーションにAEFを召喚、残留ポーションパーティクルキル
execute if entity @e[nbt={Effects: [{Ambient: 0b, ShowIcon: 1b, ShowParticles: 1b, Duration: 1, Id: 26, Amplifier: 0b}]}] at @e[nbt={Effects: [{Ambient: 0b, ShowIcon: 1b, ShowParticles: 1b, Duration: 1, Id: 26, Amplifier: 0b}]}] run summon area_effect_cloud ~ ~ ~ {Particle:"entity_effect",ReapplicationDelay:1,Radius:7f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:200,Color:16777215,Effects:[{Id:26,Amplifier:100b,Duration:20,ShowParticles:0b}]}
kill @e[nbt={Effects: [{Ambient: 0b, ShowIcon: 1b, ShowParticles: 1b, Duration: 1, Id: 26, Amplifier: 0b}]}]

#幸運Lv20の時job4ならスピートLV2,耐性LV2付与
effect give @a[scores={job=4},nbt={ActiveEffects: [{Id:26,Amplifier:100b}]}] speed 1 1 true
effect give @a[scores={job=4},nbt={ActiveEffects: [{Id:26,Amplifier:100b}]}] resistance 1 1 true

#幸運LV20の時job4以外に発光、鈍化LV4
effect give @a[scores={job=..3},nbt={ActiveEffects: [{Id:26,Amplifier:100b}]}] glowing 1 1 true
effect give @a[scores={job=5..},nbt={ActiveEffects: [{Id:26,Amplifier:100b}]}] glowing 1 1 true
effect give @a[scores={job=..3},nbt={ActiveEffects: [{Id:26,Amplifier:100b}]}] slowness 1 3 true
effect give @a[scores={job=5..},nbt={ActiveEffects: [{Id:26,Amplifier:100b}]}] slowness 1 3 true

#30秒に一個ポーション配布(上限1個まで)
execute as @a[scores={job=4}] store result score @s lingering_potionpoint run clear @s lingering_potion 0
scoreboard players add @a[scores={job=4,lingering_potionpoint=0}] job4_tick 1
execute as @a[scores={job=4,lingering_potionpoint=0,job4_tick=600..}] run give @s lingering_potion{display:{Name:'{"text":"フィールド展開","color":"aqua"}',Lore:['{"text":"半径7メートルのフィールドを10秒間展開する"}']},HideFlags:127,CustomPotionEffects:[{Id:26,Amplifier:250,Duration:1,ShowParticles:1b}],Potion:"minecraft:water",CustomPotionColor:16777215} 1
scoreboard players set @a[scores={job4_tick=600..}] job4_tick 0

#2個以上持っているときの処理
clear @a[scores={job=4,lingering_potionpoint=2..}] lingering_potion
give @a[scores={job=4,lingering_potionpoint=2..}] lingering_potion{display:{Name:'{"text":"フィールド展開","color":"aqua"}',Lore:['{"text":"半径7メートルのフィールドを10秒間展開する"}']},HideFlags:127,CustomPotionEffects:[{Id:26,Amplifier:250,Duration:1,ShowParticles:1b}],Potion:"minecraft:water",CustomPotionColor:16777215} 1
scoreboard players set @a[scores={job=4,lingering_potionpoint=2..}] lingering_potionpoint 0

title @a[scores={job4_tick=0}] actionbar "残り30秒"
title @a[scores={job4_tick=20}] actionbar "残り29秒"
title @a[scores={job4_tick=40}] actionbar "残り28秒"
title @a[scores={job4_tick=60}] actionbar "残り27秒"
title @a[scores={job4_tick=80}] actionbar "残り26秒"
title @a[scores={job4_tick=100}] actionbar "残り25秒"
title @a[scores={job4_tick=120}] actionbar "残り24秒"
title @a[scores={job4_tick=140}] actionbar "残り23秒"
title @a[scores={job4_tick=160}] actionbar "残り22秒"
title @a[scores={job4_tick=180}] actionbar "残り21秒"
title @a[scores={job4_tick=200}] actionbar "残り20秒"
title @a[scores={job4_tick=220}] actionbar "残り19秒"
title @a[scores={job4_tick=240}] actionbar "残り18秒"
title @a[scores={job4_tick=260}] actionbar "残り17秒"
title @a[scores={job4_tick=280}] actionbar "残り16秒"
title @a[scores={job4_tick=300}] actionbar "残り15秒"
title @a[scores={job4_tick=320}] actionbar "残り14秒"
title @a[scores={job4_tick=340}] actionbar "残り13秒"
title @a[scores={job4_tick=360}] actionbar "残り12秒"
title @a[scores={job4_tick=380}] actionbar "残り11秒"
title @a[scores={job4_tick=400}] actionbar "残り10秒"
title @a[scores={job4_tick=420}] actionbar "残り9秒"
title @a[scores={job4_tick=440}] actionbar "残り8秒"
title @a[scores={job4_tick=460}] actionbar "残り7秒"
title @a[scores={job4_tick=480}] actionbar "残り6秒"
title @a[scores={job4_tick=500}] actionbar "残り5秒"
title @a[scores={job4_tick=520}] actionbar "残り4秒"
title @a[scores={job4_tick=540}] actionbar "残り3秒"
title @a[scores={job4_tick=560}] actionbar "残り2秒"
title @a[scores={job4_tick=580}] actionbar "残り1秒"
title @a[scores={job4_tick=600}] actionbar "準備完了"
