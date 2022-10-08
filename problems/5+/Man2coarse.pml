#define N 8 // Number of cars

int nu = 0; // Number up
int nd = 0; // Number down

// Enter logic
inline enter(direction) {
  if
  :: direction == 0 -> {
    // Car going up
    atomic { /*await*/ nd == 0 -> nu++; }
  }
  :: direction == 1 -> {
    // Car going down
    atomic { /*await*/ nu == 0 -> nd++; }
  }
  :: else -> skip
  fi
}

// Exit logic
inline leave(direction) {
  if
  :: direction == 0 -> {
    // Car going up
    atomic { nu--; }
  }
  :: direction == 1 -> {
    // Car going down
    atomic { nd--; }
  }
  :: else -> skip
  fi
}

int inDown = 0;
int inUp = 0;

active [N] proctype C() {
	do
	::
		if
		:: _pid < 5 ->
			enter(1);
			inDown++;
			inDown--;
			leave(1);
		:: else -> 
			enter(0);
			inUp++;
			inUp--;
			leave(0);
		fi
	od
}

active proctype alleySafety() {
	assert(!(inUp > 0 && inDown > 0));
}
