package com.cat.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cat.model.Departement;
import com.cat.model.Region;
import com.cat.persistence.DAO;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class ServiceServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private static GsonBuilder gson_builder = new GsonBuilder().serializeNulls().setDateFormat("MM/dd/yyyy");

	
	
	@Override
	public void init() throws ServletException {
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}



	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			response.setContentType("application/json");
			Gson gson = ServiceServlet.gson_builder.create();
			
			/* cf le tuto : paramètres 'go' ou 'id_region' */
			String goParam = request.getParameter("go");
			String idRegionParam = request.getParameter("id_region");
			
			if(goParam != null) {
				List<Region> regions = DAO.INSTANCE.getRegions();
				response.getWriter().write(gson.toJson(regions));
			} else if(idRegionParam != null) {
				int idRegion = Integer.parseInt(idRegionParam);
				List<Departement> departements = DAO.INSTANCE.getDepartementsByIdRegion(idRegion);

				response.getWriter().write(gson.toJson(departements));
			}
			
			
		} catch (Exception e) {
			response.getWriter().write("ERROR");
		}
	}

}
