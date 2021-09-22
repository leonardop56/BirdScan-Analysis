select distinct echoId, collection.time_stamp, collection.time_bin,
time_bins.time_start as time_bin_start, time_bins.time_stop as time_bin_stop,
rf_class_probability.value as class_prob,
rfclasses.name as class_name, rf_classification.class as class_no,
weather.value as percent_blind_time, protocol.pulseType, mtr_fact,
collection.feature1 as altitude, collection.feature2 as azimuth, collection.feature3 as speed, 
collection.feature4 as wing_beat_frequency, collection.feature17 as RCS from collection
inner join time_bins on collection.time_bin = time_bins.id
inner join weather on time_bins.id = weather.time_bin
inner join protocol on protocol.protocolID = collection.protocolID
inner join rf_classification on rf_classification.echo = collection.row
inner join rfclasses on rfclasses.id = rf_classification.class
inner join rf_class_probability on rf_class_probability.echo = rf_classification.echo
where weather.weather_property = 5 and rf_class_probability.value >= 0.3 
and time_stamp between '2021-03-11 00:00:00' and '2021-09-01 00:00:00' order by time_stamp asc
