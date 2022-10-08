#define N 8 // Number of cars


int nu = 0; // Number up
int nd = 0; // Number down
int du = 0; // Delayed up
int dd = 0; // Delayed down


//Semaphores
int e = 1; //Entry
int u = 0; //Up
int d = 0; //Down


// Semaphore actions
#define P(s) atomic { s > 0 -> s--; };
#define V(s) s++;


inline SIGNAL() {
  if
  :: (nu == 0 && dd > 0) -> {
    // Awaken a car going down
    dd--;
    V(d);
  }
  :: (nd == 0 && du > 0) -> {
    // Awaken a car going up
    du--;
    V(u);
  }
  :: else -> V(e);
  fi
}


// Enter logic
inline enter(direction) {
  if
  :: direction == 0 -> {
    // Car going up
    P(e);
    if
    :: nd > 0 -> {
      du++;
      V(e);
      P(u);
    }
    :: else -> skip;
    fi;
    nu++;
    SIGNAL();
    P(e);
    nu--;
    SIGNAL();
  }
  :: direction == 1 -> {
    // Car going down
    P(e);
    if
    :: nu > 0 -> {
      dd++;
      V(e);
      P(d);
    }
    :: else -> skip;
    fi;
    nd++;
    SIGNAL();
    P(e);
    nd--;
    SIGNAL();    
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
