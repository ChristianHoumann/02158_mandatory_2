/* Mutual exclusion with a busy-wait semaphore. */

#define N 8// Number of cars

byte upSem = 1;
byte downSem = 1;

int down = 0;
int up = 0;

#define P(s) atomic { s > 0 -> s--; };
#define V(s) s++;
#define enterDown { P(downSem); if :: down == 0 -> P(upSem); :: else -> skip fi; down++; V(downSem) }
#define enterUp { P(upSem); if :: up == 0 -> P(downSem); :: else -> skip fi; up++; up++; }
#define leaveDown {down--; if :: down == 0 -> V(upSem); fi}
#define leaveUp {up--; if :: up == 0 -> V(downSem); fi}

int inDown = 0;
int inUp = 0;

active [N] proctype C() {
	do
	::
		if
		:: _pid < 5 ->
			enterDown;
			assert(inUp == 0);
			inDown++;
			leaveDown;
			inDown--;
		:: else -> 
			enterUp;
			assert(inDown == 0);
			inUp++;
			leaveUp;
			inUp--;
		fi
	od
}

