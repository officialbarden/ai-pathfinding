![AI Pathfinder Title Card](https://cdn.modrinth.com/data/cached_images/a6e0780a7f9e464ddb33f0f5a43985136b64a1b9_0.webp)
```
```
# AI Pathfinder
- **Force a Custom Entity to Pathfind to a Fixed Position in the World!** (useful for mapmaking)
- **Force Entities to Chase Other Entities!**
- **Supported versions: 1.21.2+**

[AI Pathfinder](https://github.com/officialbarden/ai-pathfinding) datapack allows you to directly plug smart pathfinding to your custom Mob/Monster/NPC for **MapMaking** or **MiniGame** purposes. This datapack does all the heavy lifting of the AI for you — Gone are the days of Retexturing Entities!
```
```
# Credits
[![CJDev's Credits :3](https://cdn.modrinth.com/data/cached_images/d301d944d3ac44dd811490b57c8bf772ee923954.png)](https://modrinth.com/datapack/a-star-pathfinding)
<p align="center">This datapack is built upon CJDev's A* Pathfinding datapack!</p>

```
```

# How to Use?
- ### First, choose your base entity.
This entity will be the body of your custom entity. This entity may also be the hitbox of your entity, if you decide to not implement a custom hitbox system. If you are on Minecraft Version 1.21.9+, we recommend you choose a [Mannequin Entity](https://minecraft.wiki/w/Mannequin) as your base entity.
- ### Second, link your entity with your custom entity display.
Depending on your implementation, link your "custom entity display" with this base entity. This could be something as simple as a static model or as complicated as an [Animated-Java](https://animated-java.dev/)[ Rig](https://animated-java.dev/docs/rigs/overview). Linking can be done via an ID system that the datapack inherently doesn't provide.
- ### Thirdly, give your entity the `ai.pathfinding` tag
Using the /tag command, give your entity the `ai.pathfinding` tag:
```
/tag <entity> add ai.pathfinding
```
Once this tag is added, this datapack will initialize some base values for the AI. Values like the MovementSpeed of the AI, the State of the AI, the JumpStrength, the Reach, it's View Range and View Cone.


**There you have it! An Entity with custom AI that is willing to listen to your commands!**
Now, for the big list of customizable things:
```
```
# Modifyable Values

```
```

### Scoreboards
```
ai.State: It stores the State of the AI.
                          |__________ Idle = 0;
                          |__________ Walking = 1;
                          |__________ Sprinting = 2;

ai.Mode: It stores the "Mode" of the AI.
                          |__________ Idle = 0;
                          |__________ Roaming Only = 1;
                          |__________ Chasing Target Entity = 2;

Time Values:
ai.PathfindingDuration: It stores how long the AI waits before creating another path. This value ticks down when a Path is Generated.
ai.ChasingEntityMemoryDuration: It stores the value of how long the AI can remember an entity until it forgets.
ai.baseLostEntityGracePeriod: The amount of time the AI waits after it has lost the target entity, before it begins to pathfind.

AI Values:
ai.baseMovementSpeed: It stores the Custom Value for Movement Speed of the AI (it changes depending on the value of ai.State) (x1000)
ai.baseSprintSpeed: It stores the Custom Value for Movement Speed of the AI (it changes depending on the value of ai.State) (x1000)
ai.baseJumpStrength: It stores the Custom Value for Jump Strength of the AI. (x1000)
ai.baseViewAngle: It stores the half angle of the View Cone of the AI (x1000)
ai.baseViewRange: It stores the Radius of the Half Angle of View Cone (x1000)
ai.baseReach: It stores the Reach of the AI Entity (used for actions/break_block API)

Setting the score of the AI on a scoreboard with a name with the ai.base... prefix is optional. Not setting them will result in the datapack using the base values assigned below. These base values can be modified as well, as they're stored in the ai.Values scoreboard.
```

```
```

### Base Values
These values are initialized in `ai:global/load` and are scaled (x1000)
```
baseMovementSpeed = 150
baseSprintSpeed = 220
baseJumpStrength = 410
baseViewHalfAngle = 30000 // 60° Cone.
baseLostEntityGracePeriod = 200 // AI stands still for 10 seconds before it starts moving again.

// These values are scaled (x10) since they're used in raycasting.
baseViewRange = 300 // AI can see up to 30 blocks away (view cone radius is 30 blocks)
```

By Modifying these values, you can tune the AI to meet your needs!

```
```

### Additional Examples:
- Say you wanted to make it so that your base entity only runs when you want it to. To make it run from one location to another, set its ai.State score to 2. If you want it to only walk everywhere, set its ai.State score to 1.
- Say you want your AI entity to only roam but not chase any entity. Set its ai.Mode to 1.

```
```

Now, the API that the datapack provides:
### API
```
"ai:api/pathfind"
Usage: execute as <ai> at <location_marker_entity> run function ai:api/pathfind
Once this function is ran, the AI will formulate a path towards the position of <location_marker_entity>. Once the path is formed, it will begin travelling through it.


"ai:api/set_mode/chasing"
Usage: execute as <ai> at @s as <target_entity> run function ai:api/set_mode/chasing
Once this function is ran, <target_entity> will begin to be targetted by the AI. If <target_entity> appears in the View Cone of the AI, whose dimensions are specified by the ai.ViewRange and ai.ViewAngle scoreboards, the AI will start chasing <target_entity>.


"ai:api/set_mode/idle"
Usage: execute as <ai> run function ai:api/set_mode/idle
This function stops the AI from implementing pathfinding logic. Useful if you want to play an Animation.

"ai:api/set_mode/roaming"
Usage: execute as <ai> run function ai:api/set_mode/roaming
Once this function is ran, the AI will become passive. Alternatively, if there are entities of type #ai:node (by default, it only contains marker) and tag "ai.Node", the AI will randomly pathfind to this entity after random intervals of time.


"ai:api/actions/break_block"
Usage: execute as <ai> run function ai:api/actions/break_block
Once Ran, this entity will shoot a Raycast and breaks the block that got hit by the raycast. This Raycast is shot in the direction the entity faces.


"ai:api/toggle/can_open_doors/true | false"
Usage: execute as <ai> run function ai:api/toggle/can_open_doors/true or false
Once Ran, this entity will be able to Open (wooden) Doors and Pathfind through Open Iron Doors. Copper Doors have been excluded from this list by default.

"ai:api/toggle/can_close_doors"
Usage: execute as <ai> run function ai:api/toggle/can-close-doors/true or false
Once Ran, this entity will be able to Close (wooden) Doors after walking through them, similar to a villager in the base vanilla game. Copper Doors have been excluded from this list by default.

```

```
```

### Tags
Some Special Tags the AI Entity can have that Modify its behavior:
```
ai.CompletePathBeforeUpdating = There's a possibility that the AI may change path before reaching its destination first. This tag will prevent that from happening.

ai.LookOnlyAtPath = While Moving, The AI will only look at the Path it's travelling.

ai.RandomlyLookAnywhere = While Moving, The AI will Randomly Look either at a Random Yaw, Pitch, or at an interesting nearby entity, meant to heighten Realism and its Life.

ai.Node = Any Entity of Type #ai:node with this tag will act as Node that the entity can travel to while Roaming Around. Useful for fixing Locations.

ai.BeingTargetted = If an Entity with this tag and with the same score as the AI entity in scoreboard ai:id, enters the AI's view cone, the AI will start chasing it IF it's ai.Mode is set to 2 (Chase Mode)
```

```
```

# Examples
```
```
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/0P-fM50Ya50" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
<p align="center">Recreating the Minecraft Player with Mannequins!</p>

```
```