CREATE TABLE accident_data(
	id VARCHAR PRIMARY KEY,
	severity VARCHAR,
	day	VARCHAR,
	SpeedLimit INT,
	RoadConditions VARCHAR,
	weather VARCHAR
);

SELECT * FROM accident_data;




CREATE TABLE vehicle_data(
	id	VARCHAR,
	driverAge VARCHAR,
	vehicleAge	DECIMAL,
	make VARCHAR,
	model VARCHAR,
	sex VARCHAR,
	VehicleManoeuvre VARCHAR
);


SELECT * FROM vehicle_data;