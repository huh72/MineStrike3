scoreboard players operation raycast.iterations g = raycast.maxIterations g
scoreboard players operation playerID g = @s playerID
scoreboard players operation teamID g = @s teamID

#g acc setup ::
scoreboard players set accuracy g 100
scoreboard players set .result accuracy 1

#g all acc changed due to player movement state should go here -->
# shift :
execute if predicate guns:issneaking unless predicate guns:isjupming run function guns:shoot/accuracy/sneak
# walk :
# execute unless predicate guns:issneaking unless predicate guns:issprinting run function guns:shoot/accuracy/walk
# jump :
execute if predicate guns:isjupming unless predicate guns:issprinting run function guns:shoot/accuracy/jump
# sprint :
execute if predicate guns:issprinting run function guns:shoot/accuracy/sprint


#g start the raycast
function guns:shoot/loop