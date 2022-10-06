/* Mutual exclusion with a busy-wait semaphore. */

#define N 8// Number of cars

byte upSem = 1;
byte downSem = 1;

int down = 0;
int up = 0;

active [N] proctype C() {
	do
	::
		if
		::
			_pid < 5 -> 
				do 
				:: 
					downSem > 0;
					downSem--;
					if
					::
						down == 0 ->
							do 
							:: 
								atomic { upSem > 0; upSem--; };
							od
					fi // Acquire the up semaphore
					down++; // Increment the down counter
					downSem++;
					break;
				od
			:: else -> 
				do 
				:: 
					upSem > 0;
					upSem--;
					if
					::
						up == 0 ->
							do
							::
								atomic { downSem > 0; downSem--; }
							od
					fi
crit2:					up++; // Increment the down counter
					upSem++;
					break;
				od
		fi
	od

  	do // leave
  	::
		if
		:: _pid < 5 ->
			down--;
			if :: down == 0 -> upSem++; fi // Release the up semaphore
		:: else ->
			up--;
			if :: up == 0 -> downSem++; fi // Release the up semaphore
		fi
	od
}

