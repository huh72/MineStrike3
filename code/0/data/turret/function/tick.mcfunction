scoreboard players set @s right_click 0

tag @s add .temp
tag @e remove target
execute as @e[tag=type.hittable, distance=..32] unless score @s teamID = @n[tag=.temp] teamID facing entity @s eyes run function turret:cast/start
execute as @e[tag=type.hittable] if entity @s[tag=target] run scoreboard players set @n[tag=.temp] right_click 1
tag @s remove .temp

#g define angle to turn to reach the target
execute store result score .currAngleX g run data get entity @s Rotation[0]
execute store result score .currAngleY g run data get entity @s Rotation[1]
execute store result storage turret:angle rotationX int 1 run data get entity @s Rotation[0]
execute store result storage turret:angle rotationY int 1 run data get entity @s Rotation[1]
rotate @s facing entity @p[tag=target] eyes
execute store result score .toTargetAngleX g run data get entity @s Rotation[0]
execute store result score .toTargetAngleY g run data get entity @s Rotation[1]
execute store result storage turret:targetangle rotationX int 1 run data get entity @s Rotation[0]
execute store result storage turret:targetangle rotationY int 1 run data get entity @s Rotation[1]
data modify entity @s Rotation[0] set from storage turret:angle rotationX
data modify entity @s Rotation[1] set from storage turret:angle rotationY


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
execute if score .toTargetAngleX g matches 4.. run rotate @s ~4 ~
execute if score .toTargetAngleX g matches ..-4 run rotate @s ~-4 ~
execute if score .toTargetAngleX g matches -3..3 run data modify entity @s Rotation[0] set from storage turret:targetangle rotationX

#g align by Y
execute if score .toTargetAngleY g matches 4.. run rotate @s ~ ~4
execute if score .toTargetAngleY g matches ..-4 run rotate @s ~ ~-4

#g shoot system handler
function guns:turret/handler

#g destroy
execute as @e[type=item_display, tag=turret] at @s if score @s health matches ..0 run function turret:destroy