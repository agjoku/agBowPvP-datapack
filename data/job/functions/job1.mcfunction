##5秒間移動速度上昇LV.4付与(tickタグ)
##effect give @a[scores={job=1}] speed 5 3 true

scoreboard players add @a[scores={job=1}] job1_count 0
scoreboard players add @a[scores={sneak=1..,job=1}] job1_addtick 1
scoreboard players add @a[scores={job=1,job1_addtick=20,job1_count=29}] job1_count 1
scoreboard players add @a[scores={job=1,job1_addtick=20,job1_count=..28}] job1_count 2
effect give @a[scores={job=1,job1_count=1..,job1_tick=0}] speed 1 4 true
scoreboard players add @a[scores={job=1,sneak=0}] job1_tick 1
scoreboard players remove @a[scores={job=1,job1_tick=20..,job1_count=1..}] job1_count 1
scoreboard players set @a[scores={job1_tick=20..}] job1_tick 0
scoreboard players set @a[scores={job=1,sneak=1..}] sneak 0
scoreboard players set @a[scores={job1_addtick=20..}] job1_addtick 0