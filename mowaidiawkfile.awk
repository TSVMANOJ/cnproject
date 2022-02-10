BEGIN {
	seqno = -1;
	count = 0;
	rt_pkts = 0;
}
{
	if($19 == "AGT" && $1 == "s" && seqno < $41) {
		seqno = $41;
	}
	else if(($19 == "AGT") && ($1 == "r")) {
		receivedPackets++;
	} 
	else if ($1 == "d" && $45 == "tcp" && $37 > 512){
		droppedPackets++;            
	} 
	if (($1 == "s" || $1 == "f") && $19 == "RTR" && ($35=="AODV" || $35 =="message" || $35 =="DSR" || $35 =="OLSR")) 
		rt_pkts++;
	if($19 == "AGT" && $1 == "s") {
		start_time[$41] = $3;
	}
	else if(($35 != "AODV" || $35 != "DSR" || $35 =="message") && ($1 == "r")) {
		end_time[$41] = $3;
	}
	else if($1 == "d" && ($35 != "AODV" || $35 != "DSR" || $35 =="message")) {
		end_time[$41] = -1;
	} 
}

 
END {        
	for(i=0; i<=seqno; i++) {
		if(end_time[i] > 0) {
			delay[i] = end_time[i] - start_time[i];
			count++;
		}
		else {
			delay[i] = -1;
		}
	}
	for(i=0; i<=seqno; i++) {
		if(delay[i] > 0) {
			n_to_n_delay = n_to_n_delay + delay[i];
		}         
	}
	n_to_n_delay = n_to_n_delay/count;
	printf("Packet Delivery Ratio = %.2f %%\n", receivedPackets/(seqno+1)*100);
	printf("Total Dropped Packets  %d\n ", droppedPackets);
	printf ("End to End Delay = %.2f ms \n", (n_to_n_delay)*100);
	printf("Average Routing Load = %f \n", rt_pkts/receivedPackets);
	
	print "\n";

} 
