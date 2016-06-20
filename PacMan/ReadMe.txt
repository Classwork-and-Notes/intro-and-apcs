Sandy Fang, Boying Tang, Amanda Chiu
Period 9
PacMan


Directions to Start:
Have everything in one folder named Driver and run code in Processing.


Directions to Play:
-Press Space, then any key to begin
-Move PacMan using the wasd keys
-Eat pellets (the dots) to win
-Avoid getting caught by the ghosts or you'll die
—Press SPACE to start new game after death

Concepts Implemented:
-We tried to have the ghost find the shortest path to PacMan using recursive backtracking, but a) it was taking too long to find a solution because of the many possibilities b) when it did find one we also had to consider if it was the shortest. We decided that it was not a viable approach to the Ghost AI and instead calculated the straight line distance from the ghost to PacMan from each of four possible directions to move in, and ranked them by distance. The Driver would try to move the ghost in the order the directions are ranked, going to the direction with the next priority if one wasn't a valid direction because of the existence of an obstacle.

Known Bugs:
-PacMan can't go off the screen, please refrain from trying to do so.
-When PacMan is on same x or y, Ghost goes back and forth between two tiles because shortest path is blocked and shortest route is checked every time it moves, resulting in 0 displacement.


