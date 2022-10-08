//Skeleton implementation of an Alley class  using passing-the-baton
//Mandatory assignment 2
//Course 02158 Concurrent Programming, DTU, Fall 2022

//Hans Henrik Lovengreen     Sep 26, 2022

public class BatonAlley extends Alley {

    int nu = 0; // number of cars going up
    int nd = 0; // number of cars going down

    Semaphore e = new Semaphore(1); // entry semaphore
    Semaphore u = new Semaphore(0); // up semaphore
    Semaphore d = new Semaphore(0); // down semaphore

    int du = 0; // number of cars delayed going up
    int dd = 0; // number of cars delayed going down

    protected BatonAlley() {}

    /* Block until car no. may enter alley */
    public void enter(int no) throws InterruptedException {
        e.P();
        if (no < 5) {
            if (nu > 0) {
                dd++;
                e.V();
                d.P();
            }
            nd++;
            if (dd > 0) {
                dd--;
                d.V();
            } else {
                e.V();
            }
        } else {
            if (nd > 0) {
                du++;
                e.V();
                u.P();
            }
            nu++;
            if (du > 0) {
                du--;
                u.V();
            } else {
                e.V();
            }
        }
     }

    /* Register that car no. has left the alley */
    public void leave(int no) {
        try {
            e.P();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        if (no < 5) {
            nd--;
            if (nd == 0 && du > 0) {
                du--;
                u.V();
            } else {
                e.V();
            }
        } else {
            nu--;
            if (nu == 0 && dd > 0) {
                dd--;
                d.V();
            } else {
                e.V();
            }
        }
    }

}
