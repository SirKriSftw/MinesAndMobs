# $(x) $(y) $(z)
# $(rows):i
# $(cols):i
# $(curr_row):i
# $(curr_col):i
scoreboard players add _count Math 1

scoreboard players reset _x Math
scoreboard players reset _z Math

# Set curr rows
# Get x
# Get current row #
# x = x + (current row * 16)
$scoreboard players set _x Math $(x)
$scoreboard players set _c_rows Math $(curr_row)
scoreboard players operation _c_rows Math *= #16 Constants
scoreboard players operation _x Math += _c_rows Math

# Set curr cols
# Get z
# Get current col #
# z = z + (current col * 16)
$scoreboard players set _z Math $(z)
$scoreboard players set _c_cols Math $(curr_col)
scoreboard players operation _c_cols Math *= #16 Constants
scoreboard players operation _z Math += _c_cols Math

$scoreboard players set _y Math $(y)

# Store full cords in cord object for later use
execute store result storage mines_and_mobs:math cord.x float 1 run scoreboard players get _x Math
execute store result storage mines_and_mobs:math cord.y float 1 run scoreboard players get _y Math
execute store result storage mines_and_mobs:math cord.z float 1 run scoreboard players get _z Math

# Reset current col/rows (was *16 earlier)
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

# Summon map node (armor stand)
function mines_and_mobs:map/grid/summon with storage mines_and_mobs:math cord

# Check for end of fn (c_rows/c_cols == rows/cols)
$execute if score _c_rows Math matches $(rows) if score _c_cols Math matches $(cols) run return 0

# Check for next col
# If final ROW then reset to -1 (because adding 1 later)
$execute if score _c_rows Math matches $(rows) run scoreboard players set _c_rows Math -1
# If final ROW (_c_rows == -1) add 1 to col count
execute if score _c_rows Math matches -1 run scoreboard players add _c_cols Math 1
# Increment row count
scoreboard players add _c_rows Math 1

# Setup 'step' obj for next run
# Cords --
$scoreboard players set _x Math $(x)
$scoreboard players set _z Math $(z)
execute store result storage mines_and_mobs:math step.x float 1 run scoreboard players get _x Math
execute store result storage mines_and_mobs:math step.y float 1 run scoreboard players get _y Math
execute store result storage mines_and_mobs:math step.z float 1 run scoreboard players get _z Math
# Rows/Cols --
$data modify storage mines_and_mobs:math step.rows set value $(rows)
$data modify storage mines_and_mobs:math step.cols set value $(cols)
execute store result storage mines_and_mobs:math step.curr_row float 1 run scoreboard players get _c_rows Math
execute store result storage mines_and_mobs:math step.curr_col float 1 run scoreboard players get _c_cols Math

# Recursion
function mines_and_mobs:map/grid/step with storage mines_and_mobs:math step