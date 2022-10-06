//Attempted implementation of Alley class with multiple cars
//Mandatory assignment 2
//Course 02158 Concurrent Programming, DTU, Fall 2022

//Hans Henrik Lovengreen     Sep 26, 2022

public class MultiAlley extends Alley {

    int up, down;
    Semaphore upSem, downSem;
    
    protected MultiAlley() {
        up = 0;   down = 0;
        upSem   = new Semaphore(1);
        downSem = new Semaphore(1);
    }

    /* Block until car no. may enter alley */
    public void enter(int no) throws InterruptedException {
        if (no < 5) {
            System.out.println("Car " + no + " waiting for downSem");
            downSem.P();
            System.out.println("Car " + no + " has taken downSem");
            if (down == 0) {
                upSem.P();
                System.out.println("Car " + no + " has taken upSem");
            }    // block for up-going cars
            
            System.out.println("Car " + no + " sleeping");
            Thread.sleep(800);
            down++;
            System.out.println("Car " + no + " has incremented down");
            downSem.V();
            System.out.println("Car " + no + " has released downSem");
        } else {
            System.out.println("Car " + no + " waiting for upSem");
            upSem.P();
            System.out.println("Car " + no + " has taken upSem");
            if (up == 0)  {
                downSem.P();
                System.out.println("Car " + no + " has taken downSem");
            }
            
            up++;
            System.out.println("Car " + no + " has incremented up");
            upSem.V();
            System.out.println("Car " + no + " has released upSem");
        }

     }

    /* Register that car no. has left the alley */
    public void leave(int no) {
        if (no < 5) {
            down--;
            System.out.println("Car " + no + " has decremented down");
            if (down == 0) upSem.V();    // enable up-going cars again
            System.out.println("Car " + no + " has released upSem");
        } else {
            System.out.println("Car " + no + " has decremented up");
            up--; 
            if (up == 0) downSem.V();    // enable down-going cars again
            System.out.println("Car " + no + " has released downSem");
        }
    }

}
