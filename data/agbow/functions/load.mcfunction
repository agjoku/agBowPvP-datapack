#GMの初期化
kill @e[tag=gm]
kill @e[tag=job2_tick]

#GM(発言用）作成
summon armor_stand 0 0 0 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["gm"],CustomName:'{"text":"GM"}'}

#スコアボードの作成
scoreboard objectives add JoinagPvP dummy
scoreboard objectives add job dummy
scoreboard objectives add tick dummy
scoreboard objectives add count dummy
scoreboard objectives add startpre dummy
scoreboard objectives add startmatchtriger dummy
scoreboard objectives add bad_spawnegg_used minecraft.used:bat_spawn_egg
scoreboard objectives add carrot_on_a_stick minecraft.used:carrot_on_a_stick
scoreboard objectives add feather_dropped minecraft.dropped:feather
scoreboard objectives add job2_tick dummy
scoreboard objectives add job2_count dummy
scoreboard objectives add spyglass_used minecraft.used:spyglass
scoreboard objectives add featherpoints dummy
scoreboard objectives add sneak minecraft.custom:sneak_time
scoreboard objectives add job1_count dummy
scoreboard objectives add job1_tick dummy
scoreboard objectives add job1_addtick dummy
scoreboard objectives add spyglass_dropped minecraft.dropped:minecraft.spyglass
scoreboard objectives add arrow_deathtime dummy
scoreboard objectives add left_click minecraft.custom:minecraft.damage_dealt
scoreboard objectives add reloadtime dummy
scoreboard objectives add lingering_potionpoint dummy
scoreboard objectives add job4_tick dummy

forceload add 0 0
forceload add -1 0
forceload add -1 -1
forceload add 0 -1
forceload add 1 16
forceload add -17 0
forceload add -17 -1
forceload add -16 -17
forceload add 0 -17
forceload add 16 -16
forceload add 17 0
forceload add 16 16
forceload add -17 16
forceload add -17 -17

#job2用カウンタアマスタ
summon armor_stand 0 0 0 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["job2_tick"],CustomName:'{"text":"job2_tick"}'}

execute as @e[tag=gm] run say agBowPvPの導入に成功しました

gamerule fallDamage false
