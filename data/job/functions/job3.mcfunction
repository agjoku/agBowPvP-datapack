##reloadtime初期化
scoreboard players add @a[scores={job=3}] reloadtime 0

##リロード完了時タグを付与
tag @a[scores={reloadtime=0}] add shotready

##望遠鏡を右手、かつsneak=1以上の時発射処理(飛距離100m)
execute as @a[scores={job=3,sneak=1..},tag=shotready,nbt={SelectedItem:{id:"minecraft:spyglass"}}] at @s anchored eyes positioned ~ ~1.65 ~ run function job:job3_line

##発射処理の対象プレイヤーにタグを付与
tag @a[scores={job=3,sneak=1..},nbt={SelectedItem:{id:"minecraft:spyglass"}}] add reload

##reloadタグが付与されているプレイヤーのタグを削除
tag @a[tag=reload,scores={job=3}] remove shotready

##reloadタグが付与されているプレイヤーのリロードカウント(1から開始、0の時リロード完了(後に200以上で0にセットする))
scoreboard players add @a[tag=reload,scores={job=3}] reloadtime 1
tag @a[scores={reloadtime=200..,job=3}] remove reload

##リロード1秒間隔毎にアクションバーに残り時間表示
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

##reloadtime200以上でreloadtime0にセット
scoreboard players set @a[scores={reloadtime=200..,job=3}] reloadtime 0

##deathcount1のプレイヤーが存在する時、job=3,sneak=1のプレイヤーのjob_killを1増やす(能力によるKill処理)
execute if entity @e[scores={deathcount=1}] run scoreboard players add @a[scores={job=3,sneak=1}] job_kill 1

##sneak=1以上のプレイヤーのsneakリセット
scoreboard players set @a[scores={job=3,sneak=1..}] sneak 0
