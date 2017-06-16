package com.cat.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.cat.model.Departement;
import com.cat.model.Region;

public enum DAO {

	INSTANCE;

	public List<Region> getRegions() {

		List<Region> retour = new ArrayList<>();

		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/france", "root", "root");
				Statement statement = connection.createStatement();
				ResultSet resultSet = statement.executeQuery("select * from regions order by nom");) {

			while (resultSet.next()) {
				retour.add(new Region(resultSet.getInt("id"), resultSet.getString("nom")));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return retour;
	}


	public List<Departement> getDepartementsByIdRegion(int id) {
		List<Departement> retour = new ArrayList<>();

		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/france", "root", "root");
				PreparedStatement statement = connection
						.prepareStatement("select * from departements where id_region = ? order by nom");) {

			statement.setInt(1, id);

			ResultSet resultSet = statement.executeQuery();

			while (resultSet.next()) {
				retour.add(new Departement(resultSet.getInt("id"), 
						resultSet.getInt("id_region"),
						resultSet.getString("code_dep"), 
						resultSet.getString("nom")));
			}
			
			resultSet.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return retour;
	}

}
