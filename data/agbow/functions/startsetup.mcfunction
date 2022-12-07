##初期化
kill @e[tag=count]
kill @e[tag=tick]
xp set @a 129 levels
xp set @a 1002 points
xp set @a 15 levels

##カウンタ用アーマースタンド召喚
summon armor_stand 0 0 0 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["tick"],CustomName:'{"text":"tick"}'}
summon armor_stand 0 0 0 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["count"],CustomName:'{"text":"count"}'}
scoreboard players set @e[tag=count] count 0

##参加・観戦の選択
execute as @a[tag=jointoken] run tellraw @s {"text":"参加","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set @s[tag=jointoken] JoinagPvP 1"}}
execute as @a[tag=jointoken] run tellraw @p {"text":"観戦","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @s[tag=jointoken] JoinagPvP 0"}}

execute as @e[tag=gm] run say 15秒後に締め切ります
