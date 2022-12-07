##金床の音
execute as @a at @s if entity @e[tag=gm,scores={startmatchtriger=..2}] run playsound minecraft:block.anvil.place master @s ~ ~ ~ 100 1 1

#スタートマッチトリガー設定(3以上でタイトルコマンド実行・レネルアップ音再生)
execute if entity @e[tag=gm,scores={startmatchtriger=3}] run title @a title {"text":"--START--"}
execute as @a at @s if entity @e[tag=gm,scores={startmatchtriger=3}] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 1 1
scoreboard players add @e[tag=gm,scores={startmatchtriger=..2}] startmatchtriger 1
##scoreboard players set @e[tag=gM,scores={startmatchtriger=3}] startmatchtriger 0