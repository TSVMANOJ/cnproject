BEGIN {
	recv_size = 0 ;# Size of the received packets
	sTime = 1e6 ;# Start time
	spTime = 0 ;# Stop Time
}

#This awk file works only for new trace format
{
	event = $1 
	time = $3
	packet = $19
	packet_size = $37

	
	# Calculating the Start Time
	if (packet == "AGT" && (event == "+" || event == "s")) {
		if (time < sTime) {
			sTime = time
		}
	}
	
	# Counting the Total Size of Received Packets
	if (packet == "AGT" && event == "r") {
		if (time > spTime) {
			spTime = time
		}
		NumOfRecd++;
		recv_size += packet_size
	}

}


END {
	if (NumOfRecd == 0) {
		printf ("No packets! The simulation might be very small \n")
	}
	# printf ("Start Time %f\n", sTime)
	# printf ("Stop Time %f\n", spTime)
	# printf ("Received Packets Size %f\n", recv_size)
	# printf ("Received Packets%f\n", NumOfRecd)
	printf ("Average Throughput [Kbps] : %f\n", (recv_size * 8) / (1000 * (spTime - sTime)));
}
