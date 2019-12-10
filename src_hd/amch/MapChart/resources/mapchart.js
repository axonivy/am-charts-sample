				// Create chart instance
				var map = am4core.create("chartdiv", am4maps.MapChart);
				map.geodata = am4geodata_worldLow;
				map.projection = new am4maps.projections.Mercator();

				var polygonSeries = new am4maps.MapPolygonSeries();
				polygonSeries.useGeodata = true;
				map.series.push(polygonSeries);
				polygonSeries.exclude = ["AQ"]; // exclude antarctica from map			
				
				// configure series
				var polygonTemplate = polygonSeries.mapPolygons.template;
				polygonTemplate.tooltipText = "{name}: {value}";
				polygonTemplate.fill = am4core.color("#c7d426");
				
				// create hover state and set alternative fill color
				var hs = polygonTemplate.states.create("hover");
				hs.properties.fill = am4core.color("#007095");
				polygonTemplate.propertyFields.fill = "fill";

				// add image series
				var imageSeries = map.series.push(new am4maps.MapImageSeries());
				var imageSeriesTemplate = imageSeries.mapImages.template;
				var circle = imageSeriesTemplate.createChild(am4core.Circle);
				circle.radius = 4;
				circle.fill = am4core.color("#00000");
				circle.stroke = am4core.color("#FFFFFF");
				circle.strokeWidth = 2;
				circle.nonScaling = true;
				circle.tooltipText = "{title}  ({latitude}; {longitude})";

				// bind latitude and longitude properties
				imageSeriesTemplate.propertyFields.latitude = "latitude";
				imageSeriesTemplate.propertyFields.longitude = "longitude";

				// image series data
				imageSeries.data = [ {
					"latitude" : 40.712775,
					"longitude" : -74.005973,
					"title" : "New York"
				}, {
					"latitude" : 47.166168,
					"longitude" : 8.515495,
					"title" : "Zug"
				} ];
				// add line series
				var lineSeries = map.series.push(new am4maps.MapLineSeries());
				lineSeries.data = [ {
					"multiGeoLine" : [ [ {
						"latitude" : 40.712775,
						"longitude" : -74.005973
					}, {
						"latitude" : 47.166168,
						"longitude" : 8.515495
					} ] ]
				} ];
				// line apperance
				lineSeries.mapLines.template.line.stroke = am4core.color("#007095");
				lineSeries.mapLines.template.line.strokeOpacity = 0.8;
				lineSeries.mapLines.template.line.strokeWidth = 4;
				lineSeries.mapLines.template.line.strokeDasharray = "3,3";