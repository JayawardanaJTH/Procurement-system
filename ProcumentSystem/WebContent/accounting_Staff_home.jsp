<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Account Staff</title>
		<jsp:include page="header.jsp"></jsp:include>
	</head>
	<body>
		<div>
			<div class="row row-cols-2 mt-4">
	                <div class="col mb-4">
	                    <div class="card shadow bg-success">
	                        <div class="card-body text-center">
	                            <a href="#" class="text-decoration-none text-white">Add suppliers</a>
	                        </div>
	                        
	                    </div>
	                </div>
	                <div class="col mb-4">
	                    <div class="card shadow bg-secondary">
	                        <div class="card-body text-center">
	                            <a href="#" class="text-decoration-none text-white">Add items</a>
	                        </div>
	                        
	                    </div>
	                </div>
	                <div class="col mb-4 ">
	                    <div class="card shadow bg-primary">
	                        <div class="card-body text-center ">
	                            <a href="#" class="text-decoration-none text-white">View purchase orders</a>
	                        </div>
	
	                    </div>
	                </div>
	                
	            </div>
	
	            <!--chart-->
	            <div class="alert alert-warning">
	                <div class="container-fluid row justify-content-center">
	                    <div id="chartContainer" style="height: 500px; width: 75%;">
	                    </div>
	                </div>
	            </div>
	
	            <div class="alert alert-warning">
	                <div class="container-fluid row justify-content-center">
	                    <div id="statisticsChart" style="height: 300px; width: 75%;">
	                    </div>
	                </div>
	            </div>
	        </div>
    <script>
        window.onload = function () {
        
            var chart = new CanvasJS.Chart("chartContainer", {
            title:{
                text: "Weekly Revenue Analysis for First Quarter"
            },
            axisY:{
                title: "Orders",
                lineColor: "#C24642",
                tickColor: "#C24642",
                labelFontColor: "#C24642",
                titleFontColor: "#C24642",
                includeZero: true,
                
            },
            
            toolTip: {
                shared: true
            },
            legend: {
                cursor: "pointer",
                itemclick: toggleDataSeries
            },
            data: [{
                
                type: "line",
                name: "Orders",
                color: "#C24642",
                axisYIndex: 0,
                showInLegend: true,
                dataPoints: [
                    { x: new Date(2017, 00, 7), y: 32.3 }, 
                    { x: new Date(2017, 00, 14), y: 33.9 },
                    { x: new Date(2017, 00, 21), y: 26.0 },
                    { x: new Date(2017, 00, 28), y: 15.8 },
                    { x: new Date(2017, 01, 4), y: 18.6 },
                    { x: new Date(2017, 01, 11), y: 34.6 },
                    { x: new Date(2017, 01, 18), y: 37.7 },
                    { x: new Date(2017, 01, 25), y: 24.7 },
                    { x: new Date(2017, 02, 4), y: 35.9 },
                    { x: new Date(2017, 02, 11), y: 12.8 },
                    { x: new Date(2017, 02, 18), y: 38.1 },
                    { x: new Date(2017, 02, 25), y: 42.4 }
                ]
            
            }]


        });
        chart.render();
        
        function toggleDataSeries(e) {
            if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
                e.dataSeries.visible = false;
            } else {
                e.dataSeries.visible = true;
            }
            e.chart.render();
        }

//Statistics chart  
        var chart2 = new CanvasJS.Chart("statisticsChart", {
            animationEnabled: true,
            theme: "light2", // "light1", "light2", "dark1", "dark2"
            title:{
                text: "Statistics"
            },
            axisY: {
                title: "Count"
            },
            data: [{        
                type: "column",  
                dataPoints: [      
                    { y: 10, label: "Suppliers" },
                    { y: 5,  label: "Sites" },
                    { y: 16,  label: "Employees" },
                    { y: 3,  label: "Site Managers" },
                    { y: 2,  label: "Account Managers" }
                ]
            }]
        });
         chart2.render();
    	}
    
        </script>
        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	</body>
</html>