scoreboard players add @e[tag=tick] tick 1
execute if entity @e[scores={tick=20}] run scoreboard players add @e[tag=count] count 1
scoreboard players set @e[scores={tick=20}] tick 0

##経験値バーカウンタ
execute if entity @e[scores={count=0}] run xp set @a 15 levels
execute if entity @e[scores={count=1}] run xp set @a 14 levels
execute if entity @e[scores={count=2}] run xp set @a 13 levels
execute if entity @e[scores={count=3}] run xp set @a 12 levels
execute if entity @e[scores={count=4}] run xp set @a 11 levels
execute if entity @e[scores={count=5}] run xp set @a 10 levels
execute if entity @e[scores={count=6}] run xp set @a 9 levels
execute if entity @e[scores={count=7}] run xp set @a 8 levels
execute if entity @e[scores={count=8}] run xp set @a 7 levels
execute if entity @e[scores={count=9}] run xp set @a 6 levels
execute if entity @e[scores={count=10}] run xp set @a 5 levels
execute if entity @e[scores={count=11}] run xp set @a 4 levels
execute if entity @e[scores={count=12}] run xp set @a 3 levels
execute if entity @e[scores={count=13}] run xp set @a 2 levels
execute if entity @e[scores={count=14}] run xp set @a 1 levels
execute if entity @e[scores={count=15}] run xp set @a 0 levels

##締め切り処理
execute if entity @e[scores={count=15}] run tag @a remove jointoken
execute as @e[tag=gm] if entity @e[scores={count=15}] run say 締め切りました


##参加者開始処理
##execute as @a[tag=JoinagPvP] run gamemode adventure

##観戦参加処理
##execute as @a[tag=spectatingagPvP] run gamemode spectator

execute if entity @e[scores={count=15}] run kill @e[tag=tick]
kill @e[scores={count=15..}]

