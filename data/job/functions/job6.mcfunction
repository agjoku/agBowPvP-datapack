##job:隠密

##やりたいこと
##花火の星を捨てると3秒間透明
##最大スタック数3
##15秒にひとつ支給

##花火の星を捨てると、三秒間透明化
effect give @a[scores={job=6,firework_star_dropped=1..}] invisibility 3 1 true
effect give @a[scores={job=6,firework_star_dropped=1..}] speed 3 1 true

##カウントリセット、花火の星を殺すﾃﾞﾃﾞﾝ
scoreboard players set @a[scores={job=6,firework_star_dropped=1..}] firework_star_dropped 0
kill @e[type=item,nbt={Item:{id:"minecraft:firework_star"}}]

##所持数の初期化&代入
execute as @a[scores={job=6}] store result score @s firework_star_count run clear @s minecraft:firework_star 0

##所持数が2以下の時カウント
scoreboard players add @a[scores={job=6,firework_star_count=..2}] job6_tick 1

##カウントが300(15秒)、星の所持数が2以下の時にgive
give @a[scores={job=6,job6_tick=300,firework_star_count=..2}] firework_star{display:{Name:'{"text":"隠れ玉","color":"gray"}'}}

##カウントリセット
scoreboard players set @a[scores={job6_tick=300..}] job6_tick 0

##4つ持っているときの処理
clear @a[scores={job=6,firework_star_count=4..}] firework_star
give @a[scores={job=6,firework_star_count=4..}] firework_star{display:{Name:'{"text":"隠れ玉","color":"gray"}'}} 3
scoreboard players set @a[scores={firework_star_count=4..}] job6_tick 0
