// Create chart instance
var map = am4core.create("chartdiv", am4maps.MapChart);
map.geodata = am4geodata_switzerlandHigh;
map.projection = new am4maps.projections.Mercator();
map.language.locale = am4lang_de_CH;

// Create map polygon series
var polygonSeries = map.series.push(new am4maps.MapPolygonSeries());

//Set min/max fill color for each area
polygonSeries.heatRules.push({
	property : "fill",
	target : polygonSeries.mapPolygons.template,
	min : am4core.color("#c7d426").brighten(1),
	max : am4core.color("#c7d426").brighten(-0.3)
});

polygonSeries.useGeodata = true;

// load data from REST service in Json format
polygonSeries.dataSource.url = "/ivy/api/"+appNam+"/datas/heat";

/*e.g. heatmap values 
polygonSeries.data = [ {
	id : "CH-GE",
	value : 44.47
}, {
	id : "CH-ZG",
	value : 6.2
} ];
*/

// Set up heat legend
let heatLegend = map.createChild(am4maps.HeatLegend);
heatLegend.series = polygonSeries;
heatLegend.align = "right";
heatLegend.valign = "bottom";
heatLegend.width = am4core.percent(20);
heatLegend.marginRight = am4core.percent(4);
heatLegend.minValue = 0;
heatLegend.maxValue = 40000000;

// Set up custom heat map legend labels using axis ranges
var minRange = heatLegend.valueAxis.axisRanges.create();
minRange.value = heatLegend.minValue;
minRange.label.text = "Min";
var maxRange = heatLegend.valueAxis.axisRanges.create();
maxRange.value = heatLegend.maxValue;
maxRange.label.text = "Max";

// Blank out internal heat legend value axis labels
heatLegend.valueAxis.renderer.labels.template.adapter.add("text", function(
		labelText) {
	return "";
});

// Configure series tooltip
var polygonTemplate = polygonSeries.mapPolygons.template;
polygonTemplate.tooltipText = "{name} {id}: {value}";
polygonTemplate.nonScalingStroke = true;
polygonTemplate.strokeWidth = 0.5;

// Create hover state and set alternative fill color
var hs = polygonTemplate.states.create("hover");
hs.properties.fill = am4core.color("#007095");
