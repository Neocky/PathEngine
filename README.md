# PathEngine
A path engine as a datapack for minecraft.

Let your entities move in a simple and efficient way. 
Place signs which are considered as waypoints under the path and let the entity run from one sign to another in a straight line. 
They can go up and down half slabs & stairs. The entity will get the new direction from the reached sign and will change direction.  
The entities can go in 4 directions:
```Python
North
  1
4 0 2          # 0 is standing still
  3
South
```

Check the video out to see how easy it is to set up!


https://user-images.githubusercontent.com/13088544/169710849-7029d304-0440-4162-925c-76a2054ee028.mp4


## ⚙ Installation
1. Download the datapack and put it in your datapack folder
2. Place down signs under a path to create waypoints
3. Give your entity the score `pe_direction` from `1 to 4` to get it moving

## 🚧 Signs
These are the lines for the waypoint signs.
```Python
Pathengine              # needed on every waypoint
<direction>             # a direction from 0 to 4
f<function_id>          # a function id
<empty/doesn't matter>
```
### Example
![Waypoint_Sign](https://user-images.githubusercontent.com/13088544/169711358-fc7e1dce-9ae3-4afd-934c-00546d7a0b0a.png)
> When entity reached this sign the entity will change direction to west and will run the function with the id `0` upon reaching the waypoint. 


## 📣 Function calling
Call your own functions upon entitys reaching waypoints:
1. Edit the file [function_call.mcfunction](/PathEngine/data/pathengine/functions/function_call.mcfunction) and add your path to your functions in there and uncomment the needed line
2. Create a waypoint sign with the third line `f<functionID>`. For example `f0` to call the first function in [function_call.mcfunction](/PathEngine/data/pathengine/functions/function_call.mcfunction)


## ⛔ Ignore Message on reload
Give yourself the tag `pe_noannouncement` so you won't get the loaded message on the reload command.

