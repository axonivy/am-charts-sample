package ch.ivy.bb;

import java.awt.Color;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.security.PermitAll;
import javax.inject.Singleton;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import amch.DataItem;
import ch.ivyteam.ivy.environment.Ivy;

/**
 * Simple RESTful service. The REST interface is defined by the JAX-RS
 * annotations on the methods and its path.<br/>
 * 
 * <p>
 * <b>URL</b><br/>
 * The external URL of this service will be: <br/>
 * - designer: <code>http://localhost:8081/ivy/api/designer/datas</code><br/>
 * - engine: <code>http://localhost:8081/ivy/api/myApplicationName/datas</code>
 * </p>
 */
@Singleton
@PermitAll
@Path("datas")
public class DataService {

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("items")
	public List<DataItem> items() {
		List<DataItem> result = new ArrayList<DataItem>();

		DataItem it = new DataItem();
		it.setCountry("Belgum");
		it.setLitres(60.0);
		it.setUnit(5d);
		result.add(it);

		it = new DataItem();
		it.setCountry("Swiss");
		it.setLitres(120d);
		it.setUnit(4d);
		result.add(it);

		it = new DataItem();
		it.setCountry("Germany");
		it.setLitres(55.5);
		it.setUnit(3d);
		result.add(it);

		it = new DataItem();
		it.setCountry("France");
		it.setLitres(45.5);
		it.setUnit(5d);
		result.add(it);

		it = new DataItem();
		it.setCountry("Italy");
		it.setLitres(99.2);
		it.setUnit(6d);
		result.add(it);

		Ivy.log().debug("DataService: " + result);

		return result;
	}

	@SuppressWarnings("deprecation")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("animateditems")
	public List<AnimatedDataItem> animatedItems() {
		List<AnimatedDataItem> result = new ArrayList<AnimatedDataItem>();

		var open = 100;
		var close = 250;

		for (var i = 1; i <365; i++) {
			open += Math.round((Math.random() < 0.5 ? 1 : -1) * Math.random() * 4);
			close = (int) Math
					.round(open + Math.random() * 4.5 + i / 5 - (Math.random() < 0.5 ? 1 : -1) * Math.random() * 2);
			AnimatedDataItem it = new AnimatedDataItem();
			it.setDate(new Date(118, 0, i));
			it.setOpen(open);
			it.setClose(close);
			result.add(it);
		}

		Ivy.log().debug("DataService: " + result);
		return result;
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("countries")
	public List<CountryDataItem> countryItems() {
		List<CountryDataItem> result = new ArrayList<CountryDataItem>();

		CountryDataItem it = new CountryDataItem();
		it.setId("CH");
		it.setName("Switzerland");
		it.setValue(80);
		it.setFill("#FF5C5C");
		result.add(it);
		
		it = new CountryDataItem();
		it.setId("US");
		it.setName("United States");
		it.setValue(50);
		it.setFill("#b7c416");
		result.add(it);

		Ivy.log().debug("DataService: " + result);
		return result;
	}	

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("heat")
	public List<HeatItem> HeatItems() {
		List<HeatItem> result = new ArrayList<HeatItem>();

		HeatItem it = new HeatItem();
		it.setId("CH-AG");
		it.setValue(Math.random()*100);
		result.add(it);
		
		it = new HeatItem();
		it.setId("CH-BE");
		it.setValue(Math.random()*70);
		result.add(it);		

		it = new HeatItem();
		it.setId("CH-GR");
		it.setValue(Math.random()*80);
		result.add(it);			
		
		it = new HeatItem();
		it.setId("CH-LU");
		it.setValue(Math.random()*100);
		result.add(it);		
		
		it = new HeatItem();
		it.setId("CH-NE");
		it.setValue(Math.random()*80);
		result.add(it);			
		
		it = new HeatItem();
		it.setId("CH-NW");
		it.setValue(Math.random()*90);
		result.add(it);			

		it = new HeatItem();
		it.setId("CH-SG");
		it.setValue(Math.random()*80);
		result.add(it);			
		
		it = new HeatItem();
		it.setId("CH-SZ");
		it.setValue(Math.random()*80);
		result.add(it);			
		
		it = new HeatItem();
		it.setId("CH-TI");
		it.setValue(Math.random()*80);
		result.add(it);			
		
		it = new HeatItem();
		it.setId("CH-ZG");
		it.setValue(Math.random()*100);
		result.add(it);	

		it = new HeatItem();		
		it.setId("CH-ZH");
		it.setValue(Math.random()*130);
		result.add(it);	
		
		Ivy.log().debug("DataService: " + result);
		return result;
	}	
	
}
