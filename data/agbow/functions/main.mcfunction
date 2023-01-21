##参加処理
execute as @a[scores={JoinagPvP=1}] run say 参加登録しました
tag @a[scores={JoinagPvP=1}] add JoinagPvP
scoreboard players reset @a[scores={JoinagPvP=1}] JoinagPvP

##観戦参加処理
execute as @a[scores={JoinagPvP=0}] run say 観戦登録しました
tag @a[scores={JoinagPvP=0}] add spectatingagPvP
scoreboard players reset @a[scores={JoinagPvP=0}] JoinagPvP

##joinトークン未所持時
execute as @e[scores={JoinagPvP=2}] run tellraw @s {"text":"トークンが無効です","color": "red"}
scoreboard players reset @a[scores={JoinagPvP=2}] JoinagPvP


##tpmarkerコウモリとtppointアマスタ置き換え(一体のみ設置可能、1体以上いる場合はエラー)
execute as @a[scores={bad_spawnegg_used=1}] if entity @e[tag=tppoint] run tellraw @s {"text": "既にtppointが存在しているため設置できません","color": "red"}
execute as @e[tag=tpmarker] at @s unless entity @e[tag=tppoint] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["tppoint"]}
kill @e[tag=tpmarker]
scoreboard players set @a[scores={bad_spawnegg_used=1}] bad_spawnegg_used 0

##job_death初期化
scoreboard players add @a job_death 0
