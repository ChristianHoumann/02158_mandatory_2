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


// Enter logic
inline enter(direction) {
  P(e);
  if
  :: direction == 0 -> {
    // Car going up
    if
    :: nd > 0 -> {
      du++;
      V(e);
      P(u);
    }
    :: else -> skip;
    fi;
    nu++;
    if
    :: du > 0 -> {
      du--;
      V(u);
    }
    :: else -> V(e);
    fi;
  }
  :: direction == 1 -> {
    // Car going down
    if
    :: nu > 0 -> {
      dd++;
      V(e);
      P(d);
    }
    :: else -> skip;
    fi;
    nd++;
    if
    :: dd > 0 -> {
      dd--;
      V(d);
    }
    :: else -> V(e);
    fi;
  }
  :: else -> skip
  fi
}


// Exit logic
inline leave(direction) {
  P(e);
  if
  :: direction == 0 -> {
    // Car going up
    nu--;
    if
    :: nu == 0 && dd > 0 -> {
      dd--;
      V(d);
    }
    :: else -> V(e);
    fi;
  }
  :: direction == 1 -> {
    // Car going down
    nd--;
    if
    :: nd == 0 && du > 0 -> {
      du--;
      V(u);
    }
    :: else -> V(e);
    fi;
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
