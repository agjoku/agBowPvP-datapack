##GMの初期化
kill @e[tag=gm]
kill @e[tag=job2_tick]

##GM(発言用）作成
summon armor_stand 0 0 0 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["gm"],CustomName:'{"text":"GM"}'}

##スコアボードの作成
##システム関係
scoreboard objectives add JoinagPvP dummy
scoreboard objectives add job dummy
scoreboard objectives add tick dummy
scoreboard objectives add count dummy
scoreboard objectives add startpre dummy
scoreboard objectives add startmatchtriger dummy
scoreboard objectives add bad_spawnegg_used minecraft.used:bat_spawn_egg

##job共通
scoreboard objectives add sneak minecraft.custom:sneak_time
scoreboard objectives add arrow_deathtime dummy
scoreboard objectives add reloadtime dummy
scoreboard objectives add rclick minecraft.used:carrot_on_a_stick
scoreboard objectives add killtime dummy

##能力によるキルカウント用
scoreboard objectives add job_death deathCount
scoreboard objectives add job_kill playerKillCount

##job1
scoreboard objectives add job1_count dummy
scoreboard objectives add job1_tick dummy
scoreboard objectives add job1_addtick dummy

##job2
scoreboard objectives add feather_dropped minecraft.dropped:feather
scoreboard objectives add job2_tick dummy
scoreboard objectives add job2_count dummy
scoreboard objectives add featherpoints dummy

##job4
scoreboard objectives add lingering_potionpoint dummy
scoreboard objectives add job4_tick dummy

##テスト段階
scoreboard objectives add left_click minecraft.custom:minecraft.damage_dealt

##座標( 0, 0, 0, )付近の読み込み
forceload add 0 0
forceload add -1 0
forceload add -1 -1
forceload add 0 -1

##job2用カウンタアマスタ
summon armor_stand 0 0 0 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["job2_tick"],CustomName:'{"text":"job2_tick"}'}

##リロード時導入確認宣言
execute as @e[tag=gm] run say agBowPvPの導入に成功しました

##落下ダメージ無効
gamerule fallDamage false
