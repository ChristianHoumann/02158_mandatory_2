#define N 8 // Number of cars

byte upSem = 1;
byte downSem = 1;

int down = 0;
int up = 0;

// Semaphore actions
#define P(s) atomic { s > 0 -> s--; };
#define V(s) s++;

// Enter logic
inline enter(direction) {
  if
  :: direction == 0 ->
    P(downSem);
    if
    :: down == 0 -> P(upSem);
    :: else -> skip
    fi;
    int td = down; // Temp variable for down
    down = td + 1;
    V(downSem)
  :: direction == 1 ->
    P(upSem);
    if
    :: up == 0 -> P(downSem);
    :: else -> skip
    fi;
    int tu = up; // Temp variable for up
    up = tu + 1;
    V(upSem)
  fi
}

// Exit logic
inline leave(direction) {
  if
  :: direction == 0 ->
    down--;
    if
    :: down == 0 ->
      V(upSem);
    :: else ->
      skip
    fi
  :: direction == 1 ->
    up--;
    if
    :: up == 0 ->
      V(downSem);
    :: else ->
      skip
    fi
  fi
}

int inDown = 0;
int inUp = 0;

active [N] proctype C() {
	do
	::
		if
		:: _pid < 5 ->
			enter(0);
			inDown++;
      inDown--;
			leave(0);
		:: else -> 
			enter(1);
			inUp++;
      inUp--;
			leave(1);
		fi
	od
}

active proctype alleySafety() {
	assert(!(inUp > 0 && inDown > 0));
}