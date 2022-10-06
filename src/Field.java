import java.util.ArrayList;

//Prototype implementation of Field class
//Mandatory assignment 2
//Course 02158 Concurrent Programming, DTU, Fall 2022

//Hans Henrik Lovengreen     Sep 26, 2022

public class Field {

    // Matrix (nested arraylist) of semaphores for each field
    private ArrayList<ArrayList<Semaphore>> fieldMutex = new ArrayList<ArrayList<Semaphore>>();

    public Field() {
        for (int i = 0; i < 11; i++) {
            this.fieldMutex.add(new ArrayList<Semaphore>());
            for (int j = 0; j < 12; j++) {
                this.fieldMutex.get(i).add(new Semaphore(1));
            }
        }
    }

    /* Block until car no. may safely enter tile at pos */
    public void enter(int no, Pos pos) throws InterruptedException {
        this.fieldMutex.get(pos.row).get(pos.col).P();
    }

    /* Release tile at position pos */
    public void leave(Pos pos) {
        this.fieldMutex.get(pos.row).get(pos.col).V();
    }

}
