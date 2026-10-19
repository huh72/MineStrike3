scoreboard objectives add g dummy

scoreboard players set raycast.maxIterations g 50
scoreboard players set raycast.maxIterationsRocket g 80
scoreboard players set raycast.maxIterationsRocketDamage g 8
scoreboard players set raycast.maxIterationsAutoRocket g 1000
scoreboard players set raycast.maxIterationsTurret g 100

#g turret look check setup
scoreboard players set lookCheckCd turret 8

scoreboard objectives add gun_id dummy
#g acc ::
scoreboard objectives add accuracy dummy
#g if player stands - 1x
#g if player walks - +0.5x?
#g if player jump - 2x
#g if player run - 4x

scoreboard players set -1 g -1

#g ::
scoreboard players set headshotDamageMultiplyer g 3

scoreboard objectives add ammo dummy
scoreboard objectives add shot_cd dummy
scoreboard objectives add reload_time dummy
scoreboard objectives add draw_time dummy
scoreboard objectives add burst_left dummy

scoreboard objectives add guns.general dummy
scoreboard objectives add m4a4 dummy
scoreboard objectives add rocket_launcher dummy
scoreboard objectives add rocket_launcher_auto dummy
scoreboard objectives add desert_eagle dummy
scoreboard objectives add p250 dummy
scoreboard objectives add negev dummy
scoreboard objectives add ak47 dummy
scoreboard objectives add usp dummy
scoreboard objectives add ssg008 dummy
scoreboard objectives add turret dummy

#g penetration
scoreboard players set block.hard g 8
scoreboard players set block.mid g 4
scoreboard players set block.player g 3
scoreboard players set block.mild g 2

#g general
scoreboard players set damage_fade_step_protect guns.general 11
scoreboard players set accuracy_penalty_step_protect guns.general 14

#g m4a4, ak47, ssg008, usp, p250, deagle, negev, rocket launcher

#g M4A4
scoreboard players set gun_id m4a4 1
scoreboard players set damage m4a4 24
scoreboard players set damage_fade m4a4 2
scoreboard players set damage_fade_step m4a4 5
scoreboard players set shot_cd m4a4 2
scoreboard players set draw_time m4a4 25
scoreboard players set reload_time m4a4 60
scoreboard players set mag_size m4a4 30
scoreboard players set burst m4a4 3
#g advanced ( 0 - 100 % ) ::
scoreboard players set penetration_power m4a4 40
scoreboard players set accuracy_penalty m4a4 14
scoreboard players set accuracy_penalty_step m4a4 3

#g Rocket Launcher
scoreboard players set gun_id rocket_launcher 2
scoreboard players set damage rocket_launcher 250

scoreboard players set damageR0 rocket_launcher 250
scoreboard players set damageR1 rocket_launcher 125
scoreboard players set damageR2 rocket_launcher 85
scoreboard players set damageR3 rocket_launcher 65
scoreboard players set damageR4 rocket_launcher 40
scoreboard players set damageR5 rocket_launcher 25

scoreboard players set damage_fade rocket_launcher 0
scoreboard players set damage_fade_step rocket_launcher 10
scoreboard players set shot_cd rocket_launcher 1
scoreboard players set draw_time rocket_launcher 15
scoreboard players set reload_time rocket_launcher 60
scoreboard players set mag_size rocket_launcher 1
scoreboard players set burst rocket_launcher 1
#g advanced ( 0 - 100 % ) ::
scoreboard players set penetration_power rocket_launcher 0

#g deagle
scoreboard players set gun_id desert_eagle 3
scoreboard players set damage desert_eagle 42
scoreboard players set damage_fade desert_eagle 3
scoreboard players set damage_fade_step desert_eagle 6
scoreboard players set shot_cd desert_eagle 8
scoreboard players set draw_time desert_eagle 23
scoreboard players set reload_time desert_eagle 75
scoreboard players set mag_size desert_eagle 7
scoreboard players set burst desert_eagle 1
#g advanced ( 0 - 100 % ) ::
scoreboard players set penetration_power desert_eagle 60

#g p250
scoreboard players set gun_id p250 4
scoreboard players set damage p250 23
scoreboard players set damage_fade p250 1
scoreboard players set damage_fade_step p250 2
scoreboard players set shot_cd p250 6
scoreboard players set draw_time p250 17
scoreboard players set reload_time p250 50
scoreboard players set mag_size p250 12
scoreboard players set burst p250 1
#g advanced ( 0 - 100 % ) ::
scoreboard players set penetration_power p250 10

#g negev
scoreboard players set gun_id negev 5
scoreboard players set damage negev 12
scoreboard players set damage_fade negev 3
scoreboard players set damage_fade_step negev 12
scoreboard players set shot_cd negev 2
scoreboard players set draw_time negev 35
scoreboard players set reload_time negev 120
scoreboard players set mag_size negev 150
scoreboard players set burst negev 2
#g advanced ( 0 - 100 % ) ::
scoreboard players set penetration_power negev 0

#g usp
scoreboard players set gun_id usp 6
scoreboard players set damage usp 16
scoreboard players set damage_fade usp 1
scoreboard players set damage_fade_step usp 6
scoreboard players set shot_cd usp 6
scoreboard players set draw_time usp 15
scoreboard players set reload_time usp 45
scoreboard players set mag_size usp 12
scoreboard players set burst usp 1
#g advanced ( 0 - 100 % ) ::
scoreboard players set penetration_power usp 10
scoreboard players set accuracy_penalty usp 14
scoreboard players set accuracy_penalty_step usp 3

#g ak47
scoreboard players set gun_id ak47 7
scoreboard players set damage ak47 29
scoreboard players set damage_fade ak47 4
scoreboard players set damage_fade_step ak47 6
scoreboard players set shot_cd ak47 2
scoreboard players set draw_time ak47 28
scoreboard players set reload_time ak47 65
scoreboard players set mag_size ak47 30
scoreboard players set burst ak47 3
#g advanced ( 0 - 100 % ) ::
scoreboard players set penetration_power ak47 70

#g ssg008
scoreboard players set gun_id ssg008 8
scoreboard players set damage ssg008 82
scoreboard players set damage_fade ssg008 1
scoreboard players set damage_fade_step ssg008 10
scoreboard players set shot_cd ssg008 42
scoreboard players set draw_time ssg008 22
scoreboard players set reload_time ssg008 50
scoreboard players set mag_size ssg008 10
scoreboard players set burst ssg008 1
#g advanced ( 0 - 100 % ) ::
scoreboard players set penetration_power ssg008 90
scoreboard players set accuracy_penalty ssg008 1
scoreboard players set accuracy_penalty_step ssg008 5

#g lock on rocket launcher
scoreboard players set gun_id rocket_launcher_auto 9
scoreboard players set damage rocket_launcher_auto 250

scoreboard players set damageR0 rocket_launcher_auto 250
scoreboard players set damageR1 rocket_launcher_auto 125
scoreboard players set damageR2 rocket_launcher_auto 85
scoreboard players set damageR3 rocket_launcher_auto 65
scoreboard players set damageR4 rocket_launcher_auto 40
scoreboard players set damageR5 rocket_launcher_auto 25

scoreboard players set damage_fade rocket_launcher_auto 0
scoreboard players set damage_fade_step rocket_launcher_auto 10
scoreboard players set shot_cd rocket_launcher_auto 1
scoreboard players set draw_time rocket_launcher_auto 15
scoreboard players set reload_time rocket_launcher_auto 15
scoreboard players set mag_size rocket_launcher_auto 1
scoreboard players set burst rocket_launcher_auto 1
#g advanced ( 0 - 100 % ) ::
scoreboard players set penetration_power rocket_launcher_auto 0

#g turret
scoreboard players set gun_id turret -99
scoreboard players set damage turret 21
scoreboard players set damage_fade turret 3
scoreboard players set damage_fade_step turret 12
scoreboard players set shot_cd turret 8
scoreboard players set draw_time turret 35
scoreboard players set reload_time turret 120
scoreboard players set mag_size turret 150
scoreboard players set burst turret 3
#g advanced ( 0 - 100 % ) ::
scoreboard players set penetration_power turret 30
scoreboard players set accuracy_penalty turret 3
scoreboard players set accuracy_penalty_step turret 3
scoreboard players set .health turret 250
