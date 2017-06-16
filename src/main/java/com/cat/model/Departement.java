package com.cat.model;

public class Departement {

	private int id;
	private int idRegion;
	private String codeDep;
	private String nom;
	
	public Departement(int id, int idRegion, String codeDep, String nom) {
		super();
		this.id = id;
		this.idRegion = idRegion;
		this.codeDep = codeDep;
		this.nom = nom;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIdRegion() {
		return idRegion;
	}

	public void setIdRegion(int idRegion) {
		this.idRegion = idRegion;
	}

	public String getCodeDep() {
		return codeDep;
	}

	public void setCodeDep(String codeDep) {
		this.codeDep = codeDep;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}
	
}
