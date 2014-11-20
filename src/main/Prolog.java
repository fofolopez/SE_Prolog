package main;
import jpl.Query;
import java.util.Hashtable;

public class Prolog {

    public static void main(String[] args) {
        String t1 = "consult('src/prolog/familia.pl')";
        Query q1 = new Query(t1);
        System.out.println(t1 + " " + (q1.hasSolution() ? "correcto" : "fallo"));
        
        String t2 = "female(X)";
        Query q2 = new Query(t2);
        System.out.println("La solución para " + t2 +" :");
        Hashtable s;
        while(q2.hasMoreSolutions()){
            s = q2.nextSolution();
            System.out.println("X = " + s.get("X"));
        }   
    }
    
}
