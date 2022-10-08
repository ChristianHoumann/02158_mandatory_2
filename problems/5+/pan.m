#define rand	pan_rand
#if defined(HAS_CODE) && defined(VERBOSE)
	cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC alleySafety */
	case 3: /* STATE 1 - Man2Baton.pml:120 - [assert(!(((inUp>0)&&(inDown>0))))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		spin_assert( !(((now.inUp>0)&&(now.inDown>0))), " !(((inUp>0)&&(inDown>0)))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 2 - Man2Baton.pml:121 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC C */
	case 5: /* STATE 1 - Man2Baton.pml:104 - [((pid<5))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((int)((P0 *)this)->_pid)<5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 2 - Man2Baton.pml:41 - [((1==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		if (!((1==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 3 - Man2Baton.pml:43 - [((e>0))] (15:0:1 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		if (!((now.e>0)))
			continue;
		/* merge: e = (e-1)(0, 4, 15) */
		reached[0][4] = 1;
		(trpt+1)->bup.oval = now.e;
		now.e = (now.e-1);
#ifdef VAR_RANGES
		logval("e", now.e);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 8: /* STATE 6 - Man2Baton.pml:45 - [((nd>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][6] = 1;
		if (!((now.nd>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 7 - Man2Baton.pml:46 - [du = (du+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = now.du;
		now.du = (now.du+1);
#ifdef VAR_RANGES
		logval("du", now.du);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 8 - Man2Baton.pml:47 - [e = (e+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = now.e;
		now.e = (now.e+1);
#ifdef VAR_RANGES
		logval("e", now.e);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 9 - Man2Baton.pml:48 - [((u>0))] (17:0:1 - 1) */
		IfNotBlocked
		reached[0][9] = 1;
		if (!((now.u>0)))
			continue;
		/* merge: u = (u-1)(0, 10, 17) */
		reached[0][10] = 1;
		(trpt+1)->bup.oval = now.u;
		now.u = (now.u-1);
#ifdef VAR_RANGES
		logval("u", now.u);
#endif
		;
		/* merge: .(goto)(0, 16, 17) */
		reached[0][16] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 12: /* STATE 17 - Man2Baton.pml:52 - [nu = (nu+1)] (0:0:1 - 3) */
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.oval = now.nu;
		now.nu = (now.nu+1);
#ifdef VAR_RANGES
		logval("nu", now.nu);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 18 - Man2Baton.pml:23 - [(((nu==0)&&(dd>0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][18] = 1;
		if (!(((now.nu==0)&&(now.dd>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 19 - Man2Baton.pml:25 - [dd = (dd-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.oval = now.dd;
		now.dd = (now.dd-1);
#ifdef VAR_RANGES
		logval("dd", now.dd);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 20 - Man2Baton.pml:26 - [d = (d+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][20] = 1;
		(trpt+1)->bup.oval = now.d;
		now.d = (now.d+1);
#ifdef VAR_RANGES
		logval("d", now.d);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 22 - Man2Baton.pml:28 - [(((nd==0)&&(du>0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][22] = 1;
		if (!(((now.nd==0)&&(now.du>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 23 - Man2Baton.pml:30 - [du = (du-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][23] = 1;
		(trpt+1)->bup.oval = now.du;
		now.du = (now.du-1);
#ifdef VAR_RANGES
		logval("du", now.du);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 24 - Man2Baton.pml:31 - [u = (u+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][24] = 1;
		(trpt+1)->bup.oval = now.u;
		now.u = (now.u+1);
#ifdef VAR_RANGES
		logval("u", now.u);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 27 - Man2Baton.pml:33 - [e = (e+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][27] = 1;
		(trpt+1)->bup.oval = now.e;
		now.e = (now.e+1);
#ifdef VAR_RANGES
		logval("e", now.e);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 31 - Man2Baton.pml:54 - [((e>0))] (34:0:1 - 1) */
		IfNotBlocked
		reached[0][31] = 1;
		if (!((now.e>0)))
			continue;
		/* merge: e = (e-1)(0, 32, 34) */
		reached[0][32] = 1;
		(trpt+1)->bup.oval = now.e;
		now.e = (now.e-1);
#ifdef VAR_RANGES
		logval("e", now.e);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 21: /* STATE 34 - Man2Baton.pml:55 - [nu = (nu-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][34] = 1;
		(trpt+1)->bup.oval = now.nu;
		now.nu = (now.nu-1);
#ifdef VAR_RANGES
		logval("nu", now.nu);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 35 - Man2Baton.pml:23 - [(((nu==0)&&(dd>0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][35] = 1;
		if (!(((now.nu==0)&&(now.dd>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 36 - Man2Baton.pml:25 - [dd = (dd-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][36] = 1;
		(trpt+1)->bup.oval = now.dd;
		now.dd = (now.dd-1);
#ifdef VAR_RANGES
		logval("dd", now.dd);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 37 - Man2Baton.pml:26 - [d = (d+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.oval = now.d;
		now.d = (now.d+1);
#ifdef VAR_RANGES
		logval("d", now.d);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: /* STATE 39 - Man2Baton.pml:28 - [(((nd==0)&&(du>0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][39] = 1;
		if (!(((now.nd==0)&&(now.du>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 40 - Man2Baton.pml:30 - [du = (du-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][40] = 1;
		(trpt+1)->bup.oval = now.du;
		now.du = (now.du-1);
#ifdef VAR_RANGES
		logval("du", now.du);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 41 - Man2Baton.pml:31 - [u = (u+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][41] = 1;
		(trpt+1)->bup.oval = now.u;
		now.u = (now.u+1);
#ifdef VAR_RANGES
		logval("u", now.u);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: /* STATE 44 - Man2Baton.pml:33 - [e = (e+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][44] = 1;
		(trpt+1)->bup.oval = now.e;
		now.e = (now.e+1);
#ifdef VAR_RANGES
		logval("e", now.e);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 49 - Man2Baton.pml:58 - [((1==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][49] = 1;
		if (!((1==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 50 - Man2Baton.pml:60 - [((e>0))] (62:0:1 - 1) */
		IfNotBlocked
		reached[0][50] = 1;
		if (!((now.e>0)))
			continue;
		/* merge: e = (e-1)(0, 51, 62) */
		reached[0][51] = 1;
		(trpt+1)->bup.oval = now.e;
		now.e = (now.e-1);
#ifdef VAR_RANGES
		logval("e", now.e);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 31: /* STATE 53 - Man2Baton.pml:62 - [((nu>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][53] = 1;
		if (!((now.nu>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 54 - Man2Baton.pml:63 - [dd = (dd+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][54] = 1;
		(trpt+1)->bup.oval = now.dd;
		now.dd = (now.dd+1);
#ifdef VAR_RANGES
		logval("dd", now.dd);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: /* STATE 55 - Man2Baton.pml:64 - [e = (e+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][55] = 1;
		(trpt+1)->bup.oval = now.e;
		now.e = (now.e+1);
#ifdef VAR_RANGES
		logval("e", now.e);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: /* STATE 56 - Man2Baton.pml:65 - [((d>0))] (64:0:1 - 1) */
		IfNotBlocked
		reached[0][56] = 1;
		if (!((now.d>0)))
			continue;
		/* merge: d = (d-1)(0, 57, 64) */
		reached[0][57] = 1;
		(trpt+1)->bup.oval = now.d;
		now.d = (now.d-1);
#ifdef VAR_RANGES
		logval("d", now.d);
#endif
		;
		/* merge: .(goto)(0, 63, 64) */
		reached[0][63] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 35: /* STATE 64 - Man2Baton.pml:69 - [nd = (nd+1)] (0:0:1 - 3) */
		IfNotBlocked
		reached[0][64] = 1;
		(trpt+1)->bup.oval = now.nd;
		now.nd = (now.nd+1);
#ifdef VAR_RANGES
		logval("nd", now.nd);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: /* STATE 65 - Man2Baton.pml:23 - [(((nu==0)&&(dd>0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][65] = 1;
		if (!(((now.nu==0)&&(now.dd>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: /* STATE 66 - Man2Baton.pml:25 - [dd = (dd-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][66] = 1;
		(trpt+1)->bup.oval = now.dd;
		now.dd = (now.dd-1);
#ifdef VAR_RANGES
		logval("dd", now.dd);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: /* STATE 67 - Man2Baton.pml:26 - [d = (d+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][67] = 1;
		(trpt+1)->bup.oval = now.d;
		now.d = (now.d+1);
#ifdef VAR_RANGES
		logval("d", now.d);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: /* STATE 69 - Man2Baton.pml:28 - [(((nd==0)&&(du>0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][69] = 1;
		if (!(((now.nd==0)&&(now.du>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: /* STATE 70 - Man2Baton.pml:30 - [du = (du-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][70] = 1;
		(trpt+1)->bup.oval = now.du;
		now.du = (now.du-1);
#ifdef VAR_RANGES
		logval("du", now.du);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: /* STATE 71 - Man2Baton.pml:31 - [u = (u+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][71] = 1;
		(trpt+1)->bup.oval = now.u;
		now.u = (now.u+1);
#ifdef VAR_RANGES
		logval("u", now.u);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: /* STATE 74 - Man2Baton.pml:33 - [e = (e+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][74] = 1;
		(trpt+1)->bup.oval = now.e;
		now.e = (now.e+1);
#ifdef VAR_RANGES
		logval("e", now.e);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: /* STATE 78 - Man2Baton.pml:71 - [((e>0))] (81:0:1 - 1) */
		IfNotBlocked
		reached[0][78] = 1;
		if (!((now.e>0)))
			continue;
		/* merge: e = (e-1)(0, 79, 81) */
		reached[0][79] = 1;
		(trpt+1)->bup.oval = now.e;
		now.e = (now.e-1);
#ifdef VAR_RANGES
		logval("e", now.e);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 44: /* STATE 81 - Man2Baton.pml:72 - [nd = (nd-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][81] = 1;
		(trpt+1)->bup.oval = now.nd;
		now.nd = (now.nd-1);
#ifdef VAR_RANGES
		logval("nd", now.nd);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: /* STATE 82 - Man2Baton.pml:23 - [(((nu==0)&&(dd>0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][82] = 1;
		if (!(((now.nu==0)&&(now.dd>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: /* STATE 83 - Man2Baton.pml:25 - [dd = (dd-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][83] = 1;
		(trpt+1)->bup.oval = now.dd;
		now.dd = (now.dd-1);
#ifdef VAR_RANGES
		logval("dd", now.dd);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: /* STATE 84 - Man2Baton.pml:26 - [d = (d+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][84] = 1;
		(trpt+1)->bup.oval = now.d;
		now.d = (now.d+1);
#ifdef VAR_RANGES
		logval("d", now.d);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: /* STATE 86 - Man2Baton.pml:28 - [(((nd==0)&&(du>0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][86] = 1;
		if (!(((now.nd==0)&&(now.du>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 49: /* STATE 87 - Man2Baton.pml:30 - [du = (du-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][87] = 1;
		(trpt+1)->bup.oval = now.du;
		now.du = (now.du-1);
#ifdef VAR_RANGES
		logval("du", now.du);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: /* STATE 88 - Man2Baton.pml:31 - [u = (u+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][88] = 1;
		(trpt+1)->bup.oval = now.u;
		now.u = (now.u+1);
#ifdef VAR_RANGES
		logval("u", now.u);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: /* STATE 91 - Man2Baton.pml:33 - [e = (e+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][91] = 1;
		(trpt+1)->bup.oval = now.e;
		now.e = (now.e+1);
#ifdef VAR_RANGES
		logval("e", now.e);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: /* STATE 101 - Man2Baton.pml:106 - [inDown = (inDown+1)] (0:0:1 - 10) */
		IfNotBlocked
		reached[0][101] = 1;
		(trpt+1)->bup.oval = now.inDown;
		now.inDown = (now.inDown+1);
#ifdef VAR_RANGES
		logval("inDown", now.inDown);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: /* STATE 102 - Man2Baton.pml:107 - [inDown = (inDown-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][102] = 1;
		(trpt+1)->bup.oval = now.inDown;
		now.inDown = (now.inDown-1);
#ifdef VAR_RANGES
		logval("inDown", now.inDown);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 54: /* STATE 103 - Man2Baton.pml:83 - [((1==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][103] = 1;
		if (!((1==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: /* STATE 104 - Man2Baton.pml:85 - [nu = (nu-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][104] = 1;
		(trpt+1)->bup.oval = now.nu;
		now.nu = (now.nu-1);
#ifdef VAR_RANGES
		logval("nu", now.nu);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 56: /* STATE 107 - Man2Baton.pml:87 - [((1==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][107] = 1;
		if (!((1==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 57: /* STATE 108 - Man2Baton.pml:89 - [nd = (nd-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][108] = 1;
		(trpt+1)->bup.oval = now.nd;
		now.nd = (now.nd-1);
#ifdef VAR_RANGES
		logval("nd", now.nd);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: /* STATE 117 - Man2Baton.pml:41 - [((0==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][117] = 1;
		if (!((0==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 59: /* STATE 118 - Man2Baton.pml:43 - [((e>0))] (130:0:1 - 1) */
		IfNotBlocked
		reached[0][118] = 1;
		if (!((now.e>0)))
			continue;
		/* merge: e = (e-1)(0, 119, 130) */
		reached[0][119] = 1;
		(trpt+1)->bup.oval = now.e;
		now.e = (now.e-1);
#ifdef VAR_RANGES
		logval("e", now.e);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 60: /* STATE 121 - Man2Baton.pml:45 - [((nd>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][121] = 1;
		if (!((now.nd>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: /* STATE 122 - Man2Baton.pml:46 - [du = (du+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][122] = 1;
		(trpt+1)->bup.oval = now.du;
		now.du = (now.du+1);
#ifdef VAR_RANGES
		logval("du", now.du);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: /* STATE 123 - Man2Baton.pml:47 - [e = (e+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][123] = 1;
		(trpt+1)->bup.oval = now.e;
		now.e = (now.e+1);
#ifdef VAR_RANGES
		logval("e", now.e);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: /* STATE 124 - Man2Baton.pml:48 - [((u>0))] (132:0:1 - 1) */
		IfNotBlocked
		reached[0][124] = 1;
		if (!((now.u>0)))
			continue;
		/* merge: u = (u-1)(0, 125, 132) */
		reached[0][125] = 1;
		(trpt+1)->bup.oval = now.u;
		now.u = (now.u-1);
#ifdef VAR_RANGES
		logval("u", now.u);
#endif
		;
		/* merge: .(goto)(0, 131, 132) */
		reached[0][131] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 64: /* STATE 132 - Man2Baton.pml:52 - [nu = (nu+1)] (0:0:1 - 3) */
		IfNotBlocked
		reached[0][132] = 1;
		(trpt+1)->bup.oval = now.nu;
		now.nu = (now.nu+1);
#ifdef VAR_RANGES
		logval("nu", now.nu);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 65: /* STATE 133 - Man2Baton.pml:23 - [(((nu==0)&&(dd>0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][133] = 1;
		if (!(((now.nu==0)&&(now.dd>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 66: /* STATE 134 - Man2Baton.pml:25 - [dd = (dd-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][134] = 1;
		(trpt+1)->bup.oval = now.dd;
		now.dd = (now.dd-1);
#ifdef VAR_RANGES
		logval("dd", now.dd);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 67: /* STATE 135 - Man2Baton.pml:26 - [d = (d+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][135] = 1;
		(trpt+1)->bup.oval = now.d;
		now.d = (now.d+1);
#ifdef VAR_RANGES
		logval("d", now.d);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 68: /* STATE 137 - Man2Baton.pml:28 - [(((nd==0)&&(du>0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][137] = 1;
		if (!(((now.nd==0)&&(now.du>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 69: /* STATE 138 - Man2Baton.pml:30 - [du = (du-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][138] = 1;
		(trpt+1)->bup.oval = now.du;
		now.du = (now.du-1);
#ifdef VAR_RANGES
		logval("du", now.du);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 70: /* STATE 139 - Man2Baton.pml:31 - [u = (u+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][139] = 1;
		(trpt+1)->bup.oval = now.u;
		now.u = (now.u+1);
#ifdef VAR_RANGES
		logval("u", now.u);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 71: /* STATE 142 - Man2Baton.pml:33 - [e = (e+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][142] = 1;
		(trpt+1)->bup.oval = now.e;
		now.e = (now.e+1);
#ifdef VAR_RANGES
		logval("e", now.e);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 72: /* STATE 146 - Man2Baton.pml:54 - [((e>0))] (149:0:1 - 1) */
		IfNotBlocked
		reached[0][146] = 1;
		if (!((now.e>0)))
			continue;
		/* merge: e = (e-1)(0, 147, 149) */
		reached[0][147] = 1;
		(trpt+1)->bup.oval = now.e;
		now.e = (now.e-1);
#ifdef VAR_RANGES
		logval("e", now.e);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 73: /* STATE 149 - Man2Baton.pml:55 - [nu = (nu-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][149] = 1;
		(trpt+1)->bup.oval = now.nu;
		now.nu = (now.nu-1);
#ifdef VAR_RANGES
		logval("nu", now.nu);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 74: /* STATE 150 - Man2Baton.pml:23 - [(((nu==0)&&(dd>0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][150] = 1;
		if (!(((now.nu==0)&&(now.dd>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 75: /* STATE 151 - Man2Baton.pml:25 - [dd = (dd-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][151] = 1;
		(trpt+1)->bup.oval = now.dd;
		now.dd = (now.dd-1);
#ifdef VAR_RANGES
		logval("dd", now.dd);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 76: /* STATE 152 - Man2Baton.pml:26 - [d = (d+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][152] = 1;
		(trpt+1)->bup.oval = now.d;
		now.d = (now.d+1);
#ifdef VAR_RANGES
		logval("d", now.d);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: /* STATE 154 - Man2Baton.pml:28 - [(((nd==0)&&(du>0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][154] = 1;
		if (!(((now.nd==0)&&(now.du>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 78: /* STATE 155 - Man2Baton.pml:30 - [du = (du-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][155] = 1;
		(trpt+1)->bup.oval = now.du;
		now.du = (now.du-1);
#ifdef VAR_RANGES
		logval("du", now.du);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 79: /* STATE 156 - Man2Baton.pml:31 - [u = (u+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][156] = 1;
		(trpt+1)->bup.oval = now.u;
		now.u = (now.u+1);
#ifdef VAR_RANGES
		logval("u", now.u);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: /* STATE 159 - Man2Baton.pml:33 - [e = (e+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][159] = 1;
		(trpt+1)->bup.oval = now.e;
		now.e = (now.e+1);
#ifdef VAR_RANGES
		logval("e", now.e);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: /* STATE 164 - Man2Baton.pml:58 - [((0==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][164] = 1;
		if (!((0==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: /* STATE 165 - Man2Baton.pml:60 - [((e>0))] (177:0:1 - 1) */
		IfNotBlocked
		reached[0][165] = 1;
		if (!((now.e>0)))
			continue;
		/* merge: e = (e-1)(0, 166, 177) */
		reached[0][166] = 1;
		(trpt+1)->bup.oval = now.e;
		now.e = (now.e-1);
#ifdef VAR_RANGES
		logval("e", now.e);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 83: /* STATE 168 - Man2Baton.pml:62 - [((nu>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][168] = 1;
		if (!((now.nu>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 84: /* STATE 169 - Man2Baton.pml:63 - [dd = (dd+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][169] = 1;
		(trpt+1)->bup.oval = now.dd;
		now.dd = (now.dd+1);
#ifdef VAR_RANGES
		logval("dd", now.dd);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 85: /* STATE 170 - Man2Baton.pml:64 - [e = (e+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][170] = 1;
		(trpt+1)->bup.oval = now.e;
		now.e = (now.e+1);
#ifdef VAR_RANGES
		logval("e", now.e);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 86: /* STATE 171 - Man2Baton.pml:65 - [((d>0))] (179:0:1 - 1) */
		IfNotBlocked
		reached[0][171] = 1;
		if (!((now.d>0)))
			continue;
		/* merge: d = (d-1)(0, 172, 179) */
		reached[0][172] = 1;
		(trpt+1)->bup.oval = now.d;
		now.d = (now.d-1);
#ifdef VAR_RANGES
		logval("d", now.d);
#endif
		;
		/* merge: .(goto)(0, 178, 179) */
		reached[0][178] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 87: /* STATE 179 - Man2Baton.pml:69 - [nd = (nd+1)] (0:0:1 - 3) */
		IfNotBlocked
		reached[0][179] = 1;
		(trpt+1)->bup.oval = now.nd;
		now.nd = (now.nd+1);
#ifdef VAR_RANGES
		logval("nd", now.nd);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 88: /* STATE 180 - Man2Baton.pml:23 - [(((nu==0)&&(dd>0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][180] = 1;
		if (!(((now.nu==0)&&(now.dd>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 89: /* STATE 181 - Man2Baton.pml:25 - [dd = (dd-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][181] = 1;
		(trpt+1)->bup.oval = now.dd;
		now.dd = (now.dd-1);
#ifdef VAR_RANGES
		logval("dd", now.dd);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 90: /* STATE 182 - Man2Baton.pml:26 - [d = (d+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][182] = 1;
		(trpt+1)->bup.oval = now.d;
		now.d = (now.d+1);
#ifdef VAR_RANGES
		logval("d", now.d);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 91: /* STATE 184 - Man2Baton.pml:28 - [(((nd==0)&&(du>0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][184] = 1;
		if (!(((now.nd==0)&&(now.du>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 92: /* STATE 185 - Man2Baton.pml:30 - [du = (du-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][185] = 1;
		(trpt+1)->bup.oval = now.du;
		now.du = (now.du-1);
#ifdef VAR_RANGES
		logval("du", now.du);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 93: /* STATE 186 - Man2Baton.pml:31 - [u = (u+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][186] = 1;
		(trpt+1)->bup.oval = now.u;
		now.u = (now.u+1);
#ifdef VAR_RANGES
		logval("u", now.u);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 94: /* STATE 189 - Man2Baton.pml:33 - [e = (e+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][189] = 1;
		(trpt+1)->bup.oval = now.e;
		now.e = (now.e+1);
#ifdef VAR_RANGES
		logval("e", now.e);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 95: /* STATE 193 - Man2Baton.pml:71 - [((e>0))] (196:0:1 - 1) */
		IfNotBlocked
		reached[0][193] = 1;
		if (!((now.e>0)))
			continue;
		/* merge: e = (e-1)(0, 194, 196) */
		reached[0][194] = 1;
		(trpt+1)->bup.oval = now.e;
		now.e = (now.e-1);
#ifdef VAR_RANGES
		logval("e", now.e);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 96: /* STATE 196 - Man2Baton.pml:72 - [nd = (nd-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][196] = 1;
		(trpt+1)->bup.oval = now.nd;
		now.nd = (now.nd-1);
#ifdef VAR_RANGES
		logval("nd", now.nd);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 97: /* STATE 197 - Man2Baton.pml:23 - [(((nu==0)&&(dd>0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][197] = 1;
		if (!(((now.nu==0)&&(now.dd>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 98: /* STATE 198 - Man2Baton.pml:25 - [dd = (dd-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][198] = 1;
		(trpt+1)->bup.oval = now.dd;
		now.dd = (now.dd-1);
#ifdef VAR_RANGES
		logval("dd", now.dd);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 99: /* STATE 199 - Man2Baton.pml:26 - [d = (d+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][199] = 1;
		(trpt+1)->bup.oval = now.d;
		now.d = (now.d+1);
#ifdef VAR_RANGES
		logval("d", now.d);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 100: /* STATE 201 - Man2Baton.pml:28 - [(((nd==0)&&(du>0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][201] = 1;
		if (!(((now.nd==0)&&(now.du>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 101: /* STATE 202 - Man2Baton.pml:30 - [du = (du-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][202] = 1;
		(trpt+1)->bup.oval = now.du;
		now.du = (now.du-1);
#ifdef VAR_RANGES
		logval("du", now.du);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 102: /* STATE 203 - Man2Baton.pml:31 - [u = (u+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][203] = 1;
		(trpt+1)->bup.oval = now.u;
		now.u = (now.u+1);
#ifdef VAR_RANGES
		logval("u", now.u);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 103: /* STATE 206 - Man2Baton.pml:33 - [e = (e+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][206] = 1;
		(trpt+1)->bup.oval = now.e;
		now.e = (now.e+1);
#ifdef VAR_RANGES
		logval("e", now.e);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 104: /* STATE 216 - Man2Baton.pml:111 - [inUp = (inUp+1)] (0:0:1 - 10) */
		IfNotBlocked
		reached[0][216] = 1;
		(trpt+1)->bup.oval = now.inUp;
		now.inUp = (now.inUp+1);
#ifdef VAR_RANGES
		logval("inUp", now.inUp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 105: /* STATE 217 - Man2Baton.pml:112 - [inUp = (inUp-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][217] = 1;
		(trpt+1)->bup.oval = now.inUp;
		now.inUp = (now.inUp-1);
#ifdef VAR_RANGES
		logval("inUp", now.inUp);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 106: /* STATE 218 - Man2Baton.pml:83 - [((0==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][218] = 1;
		if (!((0==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 107: /* STATE 219 - Man2Baton.pml:85 - [nu = (nu-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][219] = 1;
		(trpt+1)->bup.oval = now.nu;
		now.nu = (now.nu-1);
#ifdef VAR_RANGES
		logval("nu", now.nu);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 108: /* STATE 222 - Man2Baton.pml:87 - [((0==1))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][222] = 1;
		if (!((0==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 109: /* STATE 223 - Man2Baton.pml:89 - [nd = (nd-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][223] = 1;
		(trpt+1)->bup.oval = now.nd;
		now.nd = (now.nd-1);
#ifdef VAR_RANGES
		logval("nd", now.nd);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 110: /* STATE 236 - Man2Baton.pml:116 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][236] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

