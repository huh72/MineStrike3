#g define angle to turn to reach the target
execute store result score .currAngleX g run data get entity @s Rotation[0]
execute store result score .currAngleY g run data get entity @s Rotation[1]
execute store result storage lock_on_rocket:angle rotationX int 1 run data get entity @s Rotation[0]
execute store result storage lock_on_rocket:angle rotationY int 1 run data get entity @s Rotation[1]
rotate @s facing entity @n[type=villager] eyes
execute store result score .toTargetAngleX g run data get entity @s Rotation[0]
execute store result score .toTargetAngleY g run data get entity @s Rotation[1]
data modify entity @s Rotation[0] set from storage lock_on_rocket:angle rotationX
data modify entity @s Rotation[1] set from storage lock_on_rocket:angle rotationY


# g debug
# tellraw @a [{"text":"Curr angleX: "},{"score":{"name":".currAngleX","objective":"g"}},{"text":" | Target angleX: "},{"score":{"name":".toTargetAngleX","objective":"g"}}]

#g maths (вычитание)
scoreboard players operation .toTargetAngleX g -= .currAngleX g
scoreboard players operation .toTargetAngleY g -= .currAngleY g
#g debug #2
# tellraw @a [{"text":"Result angleX: "},{"score":{"name":".toTargetAngleX","objective":"g"}}]

#g normalize X (приводим разницу к диапазону -180..180) -- angle -180..180 break fix by DeepSeek🙏
execute if score .toTargetAngleX g matches 180.. run scoreboard players remove .toTargetAngleX g 360
execute if score .toTargetAngleX g matches ..-180 run scoreboard players add .toTargetAngleX g 360

#g align by X
execute if score .toTargetAngleX g matches 8.. run tp @s ~ ~ ~ ~8 ~
execute if score .toTargetAngleX g matches ..-8 run tp @s ~ ~ ~ ~-8 ~
execute if score .toTargetAngleX g matches -7..7 run tp @s ~ ~ ~
#g align by Y
execute if score .toTargetAngleY g matches 8.. run tp @s ~ ~ ~ ~ ~8
execute if score .toTargetAngleY g matches ..-8 run tp @s ~ ~ ~ ~ ~-8
execute if score .toTargetAngleY g matches -7..7 run tp @s ~ ~ ~



particle cloud ~ ~ ~ 0.1 0.1 0.1 0.01 1 force @a

#g entity hit
execute unless score @s playerID = @n[tag=!dead, tag=!lock_on_rocket, distance=..2] playerID run return run function guns:rocket_launcher_auto/shoot/explode

#g block hit check
execute unless block ^ ^ ^0.5 air run function guns:rocket_launcher_auto/shoot/explode
execute unless block ^ ^ ^1 air run function guns:rocket_launcher_auto/shoot/explode

#g reached limit
scoreboard players remove @s g 1
execute if score @s g matches 0 run function guns:rocket_launcher_auto/shoot/explode