package Models;

import java.util.Date;

public class Credit {
    private int id_credit ;
    private String nom;
    private String description;
    private Double montant;
    private int duree;
    private Double taux;
    private String simulation;
    private Date date_creation;

    public int getId_credit() {
        return id_credit;
    }

    public void setId_credit(int id_credit) {
        this.id_credit = id_credit;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getMontant() {
        return montant;
    }

    public void setMontant(Double montant) {
        this.montant = montant;
    }

    public int getDuree() {
        return duree;
    }

    public void setDuree(int duree) {
        this.duree = duree;
    }

    public Double getTaux() {
        return taux;
    }

    public void setTaux(Double taux) {
        this.taux = taux;
    }

    public String getSimulation() {
        return simulation;
    }

    public void setSimulation(String simulation) {
        this.simulation = simulation;
    }

    public Date getDate_creation() {
        return date_creation;
    }

    public void setDate_creation(Date date_creation) {
        this.date_creation = date_creation;
    }
    public Credit(){}

    public Credit(int id_credit, String nom, String description, Double montant, int duree, Double taux, String simulation, Date date_creation) {
        this.id_credit = id_credit;
        this.nom = nom;
        this.description = description;
        this.montant = montant;
        this.duree = duree;
        this.taux = taux;
        this.simulation = simulation;
        this.date_creation = date_creation;
    }

    @Override
    public String toString() {
        return "Credit{" +
                "id_credit=" + id_credit +
                ", nom='" + nom + '\'' +
                ", description='" + description + '\'' +
                ", montant=" + montant +
                ", duree=" + duree +
                ", taux=" + taux +
                ", simulation='" + simulation + '\'' +
                ", date_creation=" + date_creation +
                '}';
    }
}
