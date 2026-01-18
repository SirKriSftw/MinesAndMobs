execute if score _state GameStates matches 1 as @a unless score @s isCrouching matches 1 run scoreboard players set _state GameStates 0
scoreboard players set @a[scores={isCrouching=1}] isCrouching 0