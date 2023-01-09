# Runs when raycast finds a fence

tag @s remove unleashed.playerLeashing

playsound minecraft:entity.leash_knot.place neutral @a ~ ~ ~
execute unless entity @e[type=minecraft:leash_knot,distance=..0.2] run summon leash_knot ~ ~ ~

# Anchor allay setup
execute if entity @s[gamemode=!creative] unless entity @e[type=minecraft:allay,tag=unleashed.anchor,distance=..0.3,nbt={Leash:{}}] run clear @s lead 1
execute unless entity @e[type=minecraft:allay,tag=unleashed.anchor,distance=..0.3] run summon allay ~ ~-.23 ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,CanDuplicate:0b,Tags:["unleashed.anchor"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:100000,ShowParticles:0b}]}
data modify entity @e[type=minecraft:allay,tag=unleashed.anchor,distance=..0.3,limit=1] Leash.UUID set from entity @s UUID


