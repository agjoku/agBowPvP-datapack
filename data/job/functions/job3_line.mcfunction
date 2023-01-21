##パーティクル表示(演出)
particle minecraft:dust_color_transition 1 0 0 0.3 1 0 0 ^ ^ ^ 0 0 0 0 1 force @a

##音(範囲30m以下、ピッチ1)
execute if entity @a[distance=..30] run playsound entity.firework_rocket.large_blast master @a ~ ~ ~ 0.5 1 0.5

##ヒット処理
execute as @e[type=player,dx=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run effect give @s instant_damage 1 1 false

##再帰呼び出し(ブロック非貫通)
execute if block ~ ~ ~ air if entity @s[distance=..100] positioned ^ ^ ^0.1 run function job:job3_line