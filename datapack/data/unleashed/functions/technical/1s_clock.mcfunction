# Anchor clock
execute as @e[type=allay,tag=unleashed.anchor] run function unleashed:anchor/clock

# Reset clock
schedule function unleashed:technical/1s_clock 1s replace