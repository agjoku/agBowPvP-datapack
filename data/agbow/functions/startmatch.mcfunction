##tppointに全員をテレポート、もしtppointが存在しない場合エラーメッセージ
execute unless entity @e[tag=tppoint] run tellraw @s {"text": "tppointが存在しません","color": "red"}
tp @a @e[tag=tppoint,limit=1]
scoreboard players set @e[tag=gm] startmatchtriger 0

#開始前サウンド関数遅延呼び出し
execute if entity @e[tag=tppoint] run schedule function agbow:sound_block.anvil.place 1s append
execute if entity @e[tag=tppoint] run schedule function agbow:sound_block.anvil.place 2s append
execute if entity @e[tag=tppoint] run schedule function agbow:sound_block.anvil.place 3s append
execute if entity @e[tag=tppoint] run schedule function agbow:sound_block.anvil.place 4s append