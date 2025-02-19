SELECT  
	DISTINCT echoId
	, collection.time_stamp
	, collection.time_bin
	, time_bins.time_start as time_bin_start
	, time_bins.time_stop as time_bin_stop
	, rf_class_probability.value as class_prob
	, rfclasses.name as class_name 
	, rf_classification.class as class_no
	, weather.value as percent_blind_time
	, protocol.pulseType 
	, mtr_fact,
	, collection.feature1 as altitude 
	, collection.feature2 as azimuth 
	, collection.feature3 as speed
	, collection.feature4 as wing_beat_frequency
	, collection.feature17 as RCS 
FROM collection
INNER JOIN time_bins ON collection.time_bin = time_bins.id
INNER JOIN weather ON time_bins.id = weather.time_bin
INNER JOIN protocol ON protocol.protocolID = collection.protocolID
INNER JOIN rf_classification ON rf_classification.echo = collection.row
INNER JOIN rfclasses ON rfclasses.id = rf_classification.class
INNER JOIN rf_class_probability ON rf_class_probability.echo = rf_classification.echo
WHERE weather.weather_property = 5 
	AND rf_class_probability.value >= 0.3 
	AND time_stamp between '2021-03-11 00:00:00' 
	AND '2021-09-01 00:00:00' 
ORDER BY time_stamp ASC