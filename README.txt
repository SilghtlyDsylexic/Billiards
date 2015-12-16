Billiards

Mark Redman
Abby Sawyer

Demo Instructions:


1. Make sure that the following things are in the same directory as Billiards.rkt:
	- Sounds.rkt
	- Images.rkt
	- sounds/

2. Run Billiards.rkt. This will automatically start the game with player 1
	able to place the cue ball on the left side of the table.

3. To place the cue ball, move the cursor so that the ball shown is in the
	desired location, then press space. This will transition the game
	to allow player 1 to hit the cue ball.

4. To hit the cue ball, move the cursor around the ball to rotate the
	stick relative the the ball. The force with which the cue ball
	will be pushed is determined by the distance between the cursor
	and the center of the ball. To hit the ball, press space. This
	will transition the game to a portion where user input takes no
	effect.

5. Enjoy the imperfect physics as the balls move/collide and are pocketed.
	Warning: In high-velocity collisions, especially when breaking,
	the balls may get stuck together and constantly be colliding and
	producing the softer collision sound. Hitting these balls will
	often solve this issue.

6. Once the balls are all stationary/pocketed, the game will transition
	to the appropriate stage, where either player 1 or player 2 can
	hit the cue ball again or the other player will be allowed to
	place the cue ball in the event that player 1 scratched.

7. In the case of a scratch, when a player is placing the ball, do NOT
	place the cue ball inside any other balls. It shouldn't cause
	any serious problems, but it's cheap so don't do it.

RULES OF THE GAME

1. Both players start by going for both solid balls (1-7)
	and striped balls (9-15), until one player knocks a ball in. Then
	that player goes for that kind of ball and the other player goes
	for the other. Once a player pockets each of their type of ball,
	they then target the 8 ball. The first player to pocket the 8
	ball under these circumstances wins.

2.	-If a player pockets the 8 ball before pocketing all of their balls,
	they lose.

	-If a player knocks the cue ball in, it is known as a scratch and
	the other play will be able to place the cue ball for their next
	hit.
	
	-If a player scratches when targeting the 8 ball, they lose.

	-If a player pockets one of their type of ball, they get to take
	another turn.