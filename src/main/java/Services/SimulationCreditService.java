package Services;

public class SimulationCreditService {

    public int CalculeSimulation(int montant,int taux_dinteret,int nbrmois_parpret){
        double double_taux_dinteret = Double.parseDouble(Integer.toString(taux_dinteret));
        double resultat_simulation =  (montant*((double_taux_dinteret/100)/12))/
               (1-Math.pow((1+(double_taux_dinteret/100)/12),-nbrmois_parpret*12));
        resultat_simulation = resultat_simulation*(1+0.014);
        return (int) resultat_simulation;

    }
}
