# $(x) $(y) $(z)
# $(y2):i
# $(rows):i
# $(cols):i
# $(curr_row):i
# $(curr_col):i
# $(is_clear):b
scoreboard players add _count Math 1
$scoreboard players set _is_clear Math $(is_clear)

scoreboard players reset _x1 Math
scoreboard players reset _z1 Math
scoreboard players reset _x2 Math
scoreboard players reset _z2 Math

# Set curr rows
# r_c = (curr rows * 16)
# x + r_c => x to use
$scoreboard players set _x1 Math $(x)
$scoreboard players set _c_rows Math $(curr_row)
scoreboard players operation _c_rows Math *= #16 Constants
scoreboard players operation _x1 Math += _c_rows Math
scoreboard players operation _x2 Math = _x1 Math
scoreboard players operation _x2 Math += #15 Constants

# Set curr cols
# c_c = (curr cols * 16)
# z + c_c => z to use
$scoreboard players set _z1 Math $(z)
$scoreboard players set _c_cols Math $(curr_col)
scoreboard players operation _c_cols Math *= #16 Constants
scoreboard players operation _z1 Math += _c_cols Math
scoreboard players operation _z2 Math = _z1 Math
scoreboard players operation _z2 Math += #15 Constants

$scoreboard players set _y1 Math $(y)
$scoreboard players set _y2 Math $(y2)

execute store result storage mines_and_mobs:math cord.x1 float 1 run scoreboard players get _x1 Math
execute store result storage mines_and_mobs:math cord.y1 float 1 run scoreboard players get _y1 Math
execute store result storage mines_and_mobs:math cord.z1 float 1 run scoreboard players get _z1 Math

execute store result storage mines_and_mobs:math cord.x2 float 1 run scoreboard players get _x2 Math
execute store result storage mines_and_mobs:math cord.y2 float 1 run scoreboard players get _y2 Math
execute store result storage mines_and_mobs:math cord.z2 float 1 run scoreboard players get _z2 Math

# Prepare next hit ---
$scoreboard players set _c_rows Math $(curr_row)
$scoreboard players set _c_cols Math $(curr_col)

# Set corner pieces
scoreboard players reset _is_corner Math
execute if score _c_rows Math matches 0 if score _c_cols Math matches 0 run scoreboard players set _is_corner Math 1
$execute if score _c_rows Math matches 0 if score _c_cols Math matches $(cols) run scoreboard players set _is_corner Math 1
$execute if score _c_cols Math matches 0 if score _c_rows Math matches $(rows) run scoreboard players set _is_corner Math 1
$execute if score _c_rows Math matches $(rows) if score _c_cols Math matches $(cols) run scoreboard players set _is_corner Math 1

# Set edge pieces
scoreboard players reset _is_edge Math
execute if score _c_rows Math matches 0 run scoreboard players set _is_edge Math 1
execute if score _c_cols Math matches 0 run scoreboard players set _is_edge Math 1
$execute if score _c_rows Math matches $(rows) run scoreboard players set _is_edge Math 1
$execute if score _c_cols Math matches $(cols) run scoreboard players set _is_edge Math 1

# Apply Clear
function mines_and_mobs:map/grid/summon with storage mines_and_mobs:math cord

# Check for end of fn
$execute if score _c_rows Math matches $(rows) if score _c_cols Math matches $(cols) run return 0

# Check for next col
$execute if score _c_rows Math matches $(rows) run scoreboard players set _c_rows Math -1
execute if score _c_rows Math matches -1 run scoreboard players add _c_cols Math 1
scoreboard players add _c_rows Math 1

$scoreboard players set _x1 Math $(x)
$scoreboard players set _z1 Math $(z)
execute store result storage mines_and_mobs:math step.x float 1 run scoreboard players get _x1 Math
execute store result storage mines_and_mobs:math step.y float 1 run scoreboard players get _y1 Math
$data modify storage mines_and_mobs:math step.y2 set value $(y2)
execute store result storage mines_and_mobs:math step.z float 1 run scoreboard players get _z1 Math
$data modify storage mines_and_mobs:math step.rows set value $(rows)
$data modify storage mines_and_mobs:math step.cols set value $(cols)
execute store result storage mines_and_mobs:math step.curr_row float 1 run scoreboard players get _c_rows Math
execute store result storage mines_and_mobs:math step.curr_col float 1 run scoreboard players get _c_cols Math
execute store result storage mines_and_mobs:math step.is_clear int 1 run scoreboard players get _is_clear Math

# Recursion
function mines_and_mobs:map/grid/step with storage mines_and_mobs:math step