execute unless entity @e[tag=tppoint] run tellraw @s {"text": "tppointが存在しません","color": "red"}
tp @a @e[tag=tppoint,limit=1]