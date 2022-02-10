
set val(chan)   Channel/WirelessChannel    ;# channel type
set val(prop)   Propagation/TwoRayGround   ;# radio-propagation model
set val(netif)  Phy/WirelessPhy            ;# network interface type
set val(mac)    Mac/802_11                 ;# MAC type
set val(ifq)    Queue/DropTail/PriQueue   ;# interface queue type
set val(ll)     LL                         ;# link layer type
set val(ant)    Antenna/OmniAntenna        ;# antenna model
set val(ifqlen) 50                         ;# max packet in ifq
set val(nn)     50                         ;# number of mobilenodes
set val(rp)     DSDV                       ;# routing protocol
set val(x)      670                      ;# X dimension of topography
set val(y)      670                      ;# Y dimension of topography
set val(stop)   200.0                         ;# time of simulation end


set ns_ [new Simulator]


set topo       [new Topography]
$topo load_flatgrid $val(x) $val(y)
set god_ [create-god $val(nn)]



$ns_ use-newtrace
#Open the NS trace file
set tracefile [open dsdvms_1.tr w]
$ns_ trace-all $tracefile
#$ns use-newtrace
#Open the NAM trace file
set namfile [open dsdvms_1.nam w]
$ns_ namtrace-all $namfile
$ns_ namtrace-all-wireless $namfile $val(x) $val(y)
set chan [new $val(chan)];#Create wireless channel


$ns_ node-config -adhocRouting  $val(rp) \
                -llType        $val(ll) \
                -macType       $val(mac) \
                -ifqType       $val(ifq) \
                -ifqLen        $val(ifqlen) \
                -antType       $val(ant) \
                -propType      $val(prop) \
                -phyType       $val(netif) \
                -channel       $chan \
                -topoInstance  $topo \
                -agentTrace    ON \
                -routerTrace   ON \
                -macTrace      ON \
                -movementTrace ON

#===================================
#        Nodes Definition        
#===================================
#Create 50 nodes
for {set i 0}  {$i < $val(nn) } {incr i} {
    set node_($i) [$ns_ node] 

 }



#
# nodes: 50, pause: 1.00, max speed: 1.00, max x: 670.00, max y: 670.00
#
$node_(0) set X_ 320.404253577368
$node_(0) set Y_ 97.088936596294
$node_(0) set Z_ 0.000000000000
$node_(1) set X_ 169.449559255854
$node_(1) set Y_ 373.006547287889
$node_(1) set Z_ 0.000000000000
$node_(2) set X_ 586.965574843073
$node_(2) set Y_ 242.832173895811
$node_(2) set Z_ 0.000000000000
$node_(3) set X_ 626.363100524415
$node_(3) set Y_ 359.477338749284
$node_(3) set Z_ 0.000000000000
$node_(4) set X_ 536.422305967621
$node_(4) set Y_ 565.301139318067
$node_(4) set Z_ 0.000000000000
$node_(5) set X_ 647.623696421676
$node_(5) set Y_ 363.285156386744
$node_(5) set Z_ 0.000000000000
$node_(6) set X_ 610.165073560629
$node_(6) set Y_ 505.810640756649
$node_(6) set Z_ 0.000000000000
$node_(7) set X_ 368.842034672653
$node_(7) set Y_ 348.240265665570
$node_(7) set Z_ 0.000000000000
$node_(8) set X_ 71.195146310746
$node_(8) set Y_ 145.789006839998
$node_(8) set Z_ 0.000000000000
$node_(9) set X_ 16.665730014553
$node_(9) set Y_ 165.049827727574
$node_(9) set Z_ 0.000000000000
$node_(10) set X_ 14.116025554513
$node_(10) set Y_ 3.116537695341
$node_(10) set Z_ 0.000000000000
$node_(11) set X_ 391.828131529096
$node_(11) set Y_ 338.755299062725
$node_(11) set Z_ 0.000000000000
$node_(12) set X_ 53.687467253067
$node_(12) set Y_ 152.658573692428
$node_(12) set Z_ 0.000000000000
$node_(13) set X_ 647.840245824952
$node_(13) set Y_ 618.172886474049
$node_(13) set Z_ 0.000000000000
$node_(14) set X_ 226.801716074058
$node_(14) set Y_ 533.488724600909
$node_(14) set Z_ 0.000000000000
$node_(15) set X_ 626.076561558043
$node_(15) set Y_ 656.373078349419
$node_(15) set Z_ 0.000000000000
$node_(16) set X_ 243.514540351700
$node_(16) set Y_ 630.353891182134
$node_(16) set Z_ 0.000000000000
$node_(17) set X_ 78.368992991920
$node_(17) set Y_ 103.812683968115
$node_(17) set Z_ 0.000000000000
$node_(18) set X_ 313.167955865836
$node_(18) set Y_ 301.270328074281
$node_(18) set Z_ 0.000000000000
$node_(19) set X_ 317.885011185445
$node_(19) set Y_ 323.828147353198
$node_(19) set Z_ 0.000000000000
$node_(20) set X_ 210.507717699652
$node_(20) set Y_ 165.786322954473
$node_(20) set Z_ 0.000000000000
$node_(21) set X_ 407.043791349304
$node_(21) set Y_ 67.349270821700
$node_(21) set Z_ 0.000000000000
$node_(22) set X_ 416.480277503817
$node_(22) set Y_ 458.726153658945
$node_(22) set Z_ 0.000000000000
$node_(23) set X_ 275.522426999795
$node_(23) set Y_ 294.287876510499
$node_(23) set Z_ 0.000000000000
$node_(24) set X_ 441.678154126056
$node_(24) set Y_ 547.892888242314
$node_(24) set Z_ 0.000000000000
$node_(25) set X_ 423.607371710318
$node_(25) set Y_ 532.206352869729
$node_(25) set Z_ 0.000000000000
$node_(26) set X_ 174.065822403806
$node_(26) set Y_ 260.034599862340
$node_(26) set Z_ 0.000000000000
$node_(27) set X_ 120.034122580452
$node_(27) set Y_ 527.877842965208
$node_(27) set Z_ 0.000000000000
$node_(28) set X_ 157.963255649981
$node_(28) set Y_ 160.872695148345
$node_(28) set Z_ 0.000000000000
$node_(29) set X_ 377.950752131584
$node_(29) set Y_ 624.872247530946
$node_(29) set Z_ 0.000000000000
$node_(30) set X_ 570.952272740675
$node_(30) set Y_ 593.454946463143
$node_(30) set Z_ 0.000000000000
$node_(31) set X_ 637.192991442546
$node_(31) set Y_ 163.032927261863
$node_(31) set Z_ 0.000000000000
$node_(32) set X_ 176.563765496310
$node_(32) set Y_ 579.128598107199
$node_(32) set Z_ 0.000000000000
$node_(33) set X_ 512.157483175107
$node_(33) set Y_ 20.644413624899
$node_(33) set Z_ 0.000000000000
$node_(34) set X_ 23.449176793785
$node_(34) set Y_ 258.643333031287
$node_(34) set Z_ 0.000000000000
$node_(35) set X_ 447.293322078653
$node_(35) set Y_ 7.896498775219
$node_(35) set Z_ 0.000000000000
$node_(36) set X_ 214.528998036876
$node_(36) set Y_ 310.321657682514
$node_(36) set Z_ 0.000000000000
$node_(37) set X_ 558.032569666573
$node_(37) set Y_ 482.240768504813
$node_(37) set Z_ 0.000000000000
$node_(38) set X_ 409.948987273823
$node_(38) set Y_ 110.341121489404
$node_(38) set Z_ 0.000000000000
$node_(39) set X_ 619.732860285890
$node_(39) set Y_ 632.125415800160
$node_(39) set Z_ 0.000000000000
$node_(40) set X_ 304.211186211539
$node_(40) set Y_ 635.680632142250
$node_(40) set Z_ 0.000000000000
$node_(41) set X_ 261.051264560936
$node_(41) set Y_ 22.502155657962
$node_(41) set Z_ 0.000000000000
$node_(42) set X_ 433.612036102289
$node_(42) set Y_ 47.203914615888
$node_(42) set Z_ 0.000000000000
$node_(43) set X_ 536.309163081997
$node_(43) set Y_ 311.936213435310
$node_(43) set Z_ 0.000000000000
$node_(44) set X_ 283.976066009379
$node_(44) set Y_ 177.154538116451
$node_(44) set Z_ 0.000000000000
$node_(45) set X_ 372.392455525145
$node_(45) set Y_ 334.842158178140
$node_(45) set Z_ 0.000000000000
$node_(46) set X_ 616.703218434534
$node_(46) set Y_ 61.884429869699
$node_(46) set Z_ 0.000000000000
$node_(47) set X_ 83.834008972038
$node_(47) set Y_ 216.913190637236
$node_(47) set Z_ 0.000000000000
$node_(48) set X_ 375.188191798316
$node_(48) set Y_ 559.765977622318
$node_(48) set Z_ 0.000000000000
$node_(49) set X_ 18.715568057457
$node_(49) set Y_ 138.911119288186
$node_(49) set Z_ 0.000000000000
$god_ set-dist 0 1 2
$god_ set-dist 0 2 2
$god_ set-dist 0 3 3
$god_ set-dist 0 4 3
$god_ set-dist 0 5 3
$god_ set-dist 0 6 3
$god_ set-dist 0 7 2
$god_ set-dist 0 8 2
$god_ set-dist 0 9 2
$god_ set-dist 0 10 2
$god_ set-dist 0 11 2
$god_ set-dist 0 12 2
$god_ set-dist 0 13 3
$god_ set-dist 0 14 2
$god_ set-dist 0 15 3
$god_ set-dist 0 16 3
$god_ set-dist 0 17 1
$god_ set-dist 0 18 1
$god_ set-dist 0 19 1
$god_ set-dist 0 20 1
$god_ set-dist 0 21 1
$god_ set-dist 0 22 2
$god_ set-dist 0 23 1
$god_ set-dist 0 24 2
$god_ set-dist 0 25 2
$god_ set-dist 0 26 1
$god_ set-dist 0 27 2
$god_ set-dist 0 28 1
$god_ set-dist 0 29 3
$god_ set-dist 0 30 3
$god_ set-dist 0 31 2
$god_ set-dist 0 32 3
$god_ set-dist 0 33 1
$god_ set-dist 0 34 2
$god_ set-dist 0 35 1
$god_ set-dist 0 36 1
$god_ set-dist 0 37 2
$god_ set-dist 0 38 1
$god_ set-dist 0 39 3
$god_ set-dist 0 40 3
$god_ set-dist 0 41 1
$god_ set-dist 0 42 1
$god_ set-dist 0 43 2
$god_ set-dist 0 44 1
$god_ set-dist 0 45 1
$god_ set-dist 0 46 2
$god_ set-dist 0 47 2
$god_ set-dist 0 48 2
$god_ set-dist 0 49 2
$god_ set-dist 1 2 2
$god_ set-dist 1 3 2
$god_ set-dist 1 4 3
$god_ set-dist 1 5 3
$god_ set-dist 1 6 3
$god_ set-dist 1 7 1
$god_ set-dist 1 8 1
$god_ set-dist 1 9 2
$god_ set-dist 1 10 2
$god_ set-dist 1 11 1
$god_ set-dist 1 12 1
$god_ set-dist 1 13 3
$god_ set-dist 1 14 1
$god_ set-dist 1 15 3
$god_ set-dist 1 16 2
$god_ set-dist 1 17 2
$god_ set-dist 1 18 1
$god_ set-dist 1 19 1
$god_ set-dist 1 20 1
$god_ set-dist 1 21 2
$god_ set-dist 1 22 2
$god_ set-dist 1 23 1
$god_ set-dist 1 24 2
$god_ set-dist 1 25 2
$god_ set-dist 1 26 1
$god_ set-dist 1 27 1
$god_ set-dist 1 28 1
$god_ set-dist 1 29 2
$god_ set-dist 1 30 3
$god_ set-dist 1 31 3
$god_ set-dist 1 32 1
$god_ set-dist 1 33 3
$god_ set-dist 1 34 1
$god_ set-dist 1 35 2
$god_ set-dist 1 36 1
$god_ set-dist 1 37 2
$god_ set-dist 1 38 2
$god_ set-dist 1 39 3
$god_ set-dist 1 40 2
$god_ set-dist 1 41 2
$god_ set-dist 1 42 2
$god_ set-dist 1 43 2
$god_ set-dist 1 44 1
$god_ set-dist 1 45 1
$god_ set-dist 1 46 3
$god_ set-dist 1 47 1
$god_ set-dist 1 48 2
$god_ set-dist 1 49 2
$god_ set-dist 2 3 1
$god_ set-dist 2 4 2
$god_ set-dist 2 5 1
$god_ set-dist 2 6 2
$god_ set-dist 2 7 1
$god_ set-dist 2 8 3
$god_ set-dist 2 9 3
$god_ set-dist 2 10 3
$god_ set-dist 2 11 1
$god_ set-dist 2 12 3
$god_ set-dist 2 13 2
$god_ set-dist 2 14 2
$god_ set-dist 2 15 2
$god_ set-dist 2 16 3
$god_ set-dist 2 17 3
$god_ set-dist 2 18 2
$god_ set-dist 2 19 2
$god_ set-dist 2 20 2
$god_ set-dist 2 21 2
$god_ set-dist 2 22 2
$god_ set-dist 2 23 2
$god_ set-dist 2 24 2
$god_ set-dist 2 25 2
$god_ set-dist 2 26 2
$god_ set-dist 2 27 3
$god_ set-dist 2 28 3
$god_ set-dist 2 29 2
$god_ set-dist 2 30 2
$god_ set-dist 2 31 1
$god_ set-dist 2 32 3
$god_ set-dist 2 33 1
$god_ set-dist 2 34 3
$god_ set-dist 2 35 2
$god_ set-dist 2 36 2
$god_ set-dist 2 37 1
$god_ set-dist 2 38 1
$god_ set-dist 2 39 2
$god_ set-dist 2 40 3
$god_ set-dist 2 41 2
$god_ set-dist 2 42 1
$god_ set-dist 2 43 1
$god_ set-dist 2 44 2
$god_ set-dist 2 45 1
$god_ set-dist 2 46 1
$god_ set-dist 2 47 3
$god_ set-dist 2 48 2
$god_ set-dist 2 49 3
$god_ set-dist 3 4 1
$god_ set-dist 3 5 1
$god_ set-dist 3 6 1
$god_ set-dist 3 7 2
$god_ set-dist 3 8 3
$god_ set-dist 3 9 3
$god_ set-dist 3 10 4
$god_ set-dist 3 11 1
$god_ set-dist 3 12 3
$god_ set-dist 3 13 2
$god_ set-dist 3 14 2
$god_ set-dist 3 15 2
$god_ set-dist 3 16 2
$god_ set-dist 3 17 3
$god_ set-dist 3 18 2
$god_ set-dist 3 19 2
$god_ set-dist 3 20 3
$god_ set-dist 3 21 2
$god_ set-dist 3 22 1
$god_ set-dist 3 23 2
$god_ set-dist 3 24 2
$god_ set-dist 3 25 2
$god_ set-dist 3 26 2
$god_ set-dist 3 27 3
$god_ set-dist 3 28 3
$god_ set-dist 3 29 2
$god_ set-dist 3 30 1
$god_ set-dist 3 31 1
$god_ set-dist 3 32 3
$god_ set-dist 3 33 2
$god_ set-dist 3 34 3
$god_ set-dist 3 35 2
$god_ set-dist 3 36 2
$god_ set-dist 3 37 1
$god_ set-dist 3 38 2
$god_ set-dist 3 39 2
$god_ set-dist 3 40 2
$god_ set-dist 3 41 3
$god_ set-dist 3 42 2
$god_ set-dist 3 43 1
$god_ set-dist 3 44 2
$god_ set-dist 3 45 2
$god_ set-dist 3 46 2
$god_ set-dist 3 47 3
$god_ set-dist 3 48 2
$god_ set-dist 3 49 3
$god_ set-dist 4 5 1
$god_ set-dist 4 6 1
$god_ set-dist 4 7 2
$god_ set-dist 4 8 4
$god_ set-dist 4 9 4
$god_ set-dist 4 10 4
$god_ set-dist 4 11 2
$god_ set-dist 4 12 4
$god_ set-dist 4 13 1
$god_ set-dist 4 14 2
$god_ set-dist 4 15 1
$god_ set-dist 4 16 2
$god_ set-dist 4 17 4
$god_ set-dist 4 18 2
$god_ set-dist 4 19 2
$god_ set-dist 4 20 3
$god_ set-dist 4 21 3
$god_ set-dist 4 22 1
$god_ set-dist 4 23 2
$god_ set-dist 4 24 1
$god_ set-dist 4 25 1
$god_ set-dist 4 26 3
$god_ set-dist 4 27 2
$god_ set-dist 4 28 3
$god_ set-dist 4 29 1
$god_ set-dist 4 30 1
$god_ set-dist 4 31 2
$god_ set-dist 4 32 2
$god_ set-dist 4 33 3
$god_ set-dist 4 34 4
$god_ set-dist 4 35 3
$god_ set-dist 4 36 3
$god_ set-dist 4 37 1
$god_ set-dist 4 38 3
$god_ set-dist 4 39 1
$god_ set-dist 4 40 1
$god_ set-dist 4 41 4
$god_ set-dist 4 42 3
$god_ set-dist 4 43 2
$god_ set-dist 4 44 3
$god_ set-dist 4 45 2
$god_ set-dist 4 46 3
$god_ set-dist 4 47 3
$god_ set-dist 4 48 1
$god_ set-dist 4 49 4
$god_ set-dist 5 6 1
$god_ set-dist 5 7 2
$god_ set-dist 5 8 4
$god_ set-dist 5 9 4
$god_ set-dist 5 10 4
$god_ set-dist 5 11 2
$god_ set-dist 5 12 4
$god_ set-dist 5 13 2
$god_ set-dist 5 14 3
$god_ set-dist 5 15 2
$god_ set-dist 5 16 3
$god_ set-dist 5 17 4
$god_ set-dist 5 18 2
$god_ set-dist 5 19 2
$god_ set-dist 5 20 3
$god_ set-dist 5 21 2
$god_ set-dist 5 22 2
$god_ set-dist 5 23 3
$god_ set-dist 5 24 2
$god_ set-dist 5 25 2
$god_ set-dist 5 26 3
$god_ set-dist 5 27 3
$god_ set-dist 5 28 3
$god_ set-dist 5 29 2
$god_ set-dist 5 30 1
$god_ set-dist 5 31 1
$god_ set-dist 5 32 3
$god_ set-dist 5 33 2
$god_ set-dist 5 34 4
$god_ set-dist 5 35 2
$god_ set-dist 5 36 3
$god_ set-dist 5 37 1
$god_ set-dist 5 38 2
$god_ set-dist 5 39 2
$god_ set-dist 5 40 2
$god_ set-dist 5 41 3
$god_ set-dist 5 42 2
$god_ set-dist 5 43 1
$god_ set-dist 5 44 3
$god_ set-dist 5 45 2
$god_ set-dist 5 46 2
$god_ set-dist 5 47 3
$god_ set-dist 5 48 2
$god_ set-dist 5 49 4
$god_ set-dist 6 7 2
$god_ set-dist 6 8 4
$god_ set-dist 6 9 4
$god_ set-dist 6 10 4
$god_ set-dist 6 11 2
$god_ set-dist 6 12 4
$god_ set-dist 6 13 1
$god_ set-dist 6 14 2
$god_ set-dist 6 15 1
$god_ set-dist 6 16 2
$god_ set-dist 6 17 4
$god_ set-dist 6 18 2
$god_ set-dist 6 19 2
$god_ set-dist 6 20 3
$god_ set-dist 6 21 3
$god_ set-dist 6 22 1
$god_ set-dist 6 23 2
$god_ set-dist 6 24 1
$god_ set-dist 6 25 1
$god_ set-dist 6 26 3
$god_ set-dist 6 27 3
$god_ set-dist 6 28 3
$god_ set-dist 6 29 2
$god_ set-dist 6 30 1
$god_ set-dist 6 31 2
$god_ set-dist 6 32 2
$god_ set-dist 6 33 3
$god_ set-dist 6 34 4
$god_ set-dist 6 35 3
$god_ set-dist 6 36 3
$god_ set-dist 6 37 1
$god_ set-dist 6 38 2
$god_ set-dist 6 39 1
$god_ set-dist 6 40 2
$god_ set-dist 6 41 3
$god_ set-dist 6 42 3
$god_ set-dist 6 43 1
$god_ set-dist 6 44 3
$god_ set-dist 6 45 2
$god_ set-dist 6 46 3
$god_ set-dist 6 47 3
$god_ set-dist 6 48 1
$god_ set-dist 6 49 4
$god_ set-dist 7 8 2
$god_ set-dist 7 9 2
$god_ set-dist 7 10 3
$god_ set-dist 7 11 1
$god_ set-dist 7 12 2
$god_ set-dist 7 13 2
$god_ set-dist 7 14 1
$god_ set-dist 7 15 2
$god_ set-dist 7 16 2
$god_ set-dist 7 17 2
$god_ set-dist 7 18 1
$god_ set-dist 7 19 1
$god_ set-dist 7 20 1
$god_ set-dist 7 21 2
$god_ set-dist 7 22 1
$god_ set-dist 7 23 1
$god_ set-dist 7 24 1
$god_ set-dist 7 25 1
$god_ set-dist 7 26 1
$god_ set-dist 7 27 2
$god_ set-dist 7 28 2
$god_ set-dist 7 29 2
$god_ set-dist 7 30 2
$god_ set-dist 7 31 2
$god_ set-dist 7 32 2
$god_ set-dist 7 33 2
$god_ set-dist 7 34 2
$god_ set-dist 7 35 2
$god_ set-dist 7 36 1
$god_ set-dist 7 37 1
$god_ set-dist 7 38 1
$god_ set-dist 7 39 2
$god_ set-dist 7 40 2
$god_ set-dist 7 41 2
$god_ set-dist 7 42 2
$god_ set-dist 7 43 1
$god_ set-dist 7 44 1
$god_ set-dist 7 45 1
$god_ set-dist 7 46 2
$god_ set-dist 7 47 2
$god_ set-dist 7 48 1
$god_ set-dist 7 49 2
$god_ set-dist 8 9 1
$god_ set-dist 8 10 1
$god_ set-dist 8 11 2
$god_ set-dist 8 12 1
$god_ set-dist 8 13 4
$god_ set-dist 8 14 2
$god_ set-dist 8 15 4
$god_ set-dist 8 16 3
$god_ set-dist 8 17 1
$god_ set-dist 8 18 2
$god_ set-dist 8 19 2
$god_ set-dist 8 20 1
$god_ set-dist 8 21 2
$god_ set-dist 8 22 3
$god_ set-dist 8 23 2
$god_ set-dist 8 24 3
$god_ set-dist 8 25 3
$god_ set-dist 8 26 1
$god_ set-dist 8 27 2
$god_ set-dist 8 28 1
$god_ set-dist 8 29 3
$god_ set-dist 8 30 4
$god_ set-dist 8 31 3
$god_ set-dist 8 32 2
$god_ set-dist 8 33 3
$god_ set-dist 8 34 1
$god_ set-dist 8 35 2
$god_ set-dist 8 36 1
$god_ set-dist 8 37 3
$god_ set-dist 8 38 2
$god_ set-dist 8 39 4
$god_ set-dist 8 40 3
$god_ set-dist 8 41 1
$god_ set-dist 8 42 2
$god_ set-dist 8 43 3
$god_ set-dist 8 44 1
$god_ set-dist 8 45 2
$god_ set-dist 8 46 3
$god_ set-dist 8 47 1
$god_ set-dist 8 48 3
$god_ set-dist 8 49 1
$god_ set-dist 9 10 1
$god_ set-dist 9 11 2
$god_ set-dist 9 12 1
$god_ set-dist 9 13 4
$god_ set-dist 9 14 2
$god_ set-dist 9 15 4
$god_ set-dist 9 16 3
$god_ set-dist 9 17 1
$god_ set-dist 9 18 2
$god_ set-dist 9 19 2
$god_ set-dist 9 20 1
$god_ set-dist 9 21 2
$god_ set-dist 9 22 3
$god_ set-dist 9 23 2
$god_ set-dist 9 24 3
$god_ set-dist 9 25 3
$god_ set-dist 9 26 1
$god_ set-dist 9 27 2
$god_ set-dist 9 28 1
$god_ set-dist 9 29 3
$god_ set-dist 9 30 4
$god_ set-dist 9 31 3
$god_ set-dist 9 32 3
$god_ set-dist 9 33 3
$god_ set-dist 9 34 1
$god_ set-dist 9 35 3
$god_ set-dist 9 36 1
$god_ set-dist 9 37 3
$god_ set-dist 9 38 2
$god_ set-dist 9 39 4
$god_ set-dist 9 40 3
$god_ set-dist 9 41 2
$god_ set-dist 9 42 3
$god_ set-dist 9 43 3
$god_ set-dist 9 44 2
$god_ set-dist 9 45 2
$god_ set-dist 9 46 3
$god_ set-dist 9 47 1
$god_ set-dist 9 48 3
$god_ set-dist 9 49 1
$god_ set-dist 10 11 3
$god_ set-dist 10 12 1
$god_ set-dist 10 13 4
$god_ set-dist 10 14 3
$god_ set-dist 10 15 4
$god_ set-dist 10 16 4
$god_ set-dist 10 17 1
$god_ set-dist 10 18 2
$god_ set-dist 10 19 2
$god_ set-dist 10 20 2
$god_ set-dist 10 21 2
$god_ set-dist 10 22 3
$god_ set-dist 10 23 2
$god_ set-dist 10 24 4
$god_ set-dist 10 25 3
$god_ set-dist 10 26 2
$god_ set-dist 10 27 3
$god_ set-dist 10 28 1
$god_ set-dist 10 29 4
$god_ set-dist 10 30 4
$god_ set-dist 10 31 3
$god_ set-dist 10 32 3
$god_ set-dist 10 33 3
$god_ set-dist 10 34 2
$god_ set-dist 10 35 2
$god_ set-dist 10 36 2
$god_ set-dist 10 37 4
$god_ set-dist 10 38 2
$god_ set-dist 10 39 4
$god_ set-dist 10 40 4
$god_ set-dist 10 41 1
$god_ set-dist 10 42 2
$god_ set-dist 10 43 3
$god_ set-dist 10 44 2
$god_ set-dist 10 45 3
$god_ set-dist 10 46 3
$god_ set-dist 10 47 1
$god_ set-dist 10 48 3
$god_ set-dist 10 49 1
$god_ set-dist 11 12 2
$god_ set-dist 11 13 2
$god_ set-dist 11 14 2
$god_ set-dist 11 15 2
$god_ set-dist 11 16 2
$god_ set-dist 11 17 2
$god_ set-dist 11 18 1
$god_ set-dist 11 19 1
$god_ set-dist 11 20 2
$god_ set-dist 11 21 2
$god_ set-dist 11 22 1
$god_ set-dist 11 23 1
$god_ set-dist 11 24 1
$god_ set-dist 11 25 1
$god_ set-dist 11 26 1
$god_ set-dist 11 27 2
$god_ set-dist 11 28 2
$god_ set-dist 11 29 2
$god_ set-dist 11 30 2
$god_ set-dist 11 31 2
$god_ set-dist 11 32 2
$god_ set-dist 11 33 2
$god_ set-dist 11 34 2
$god_ set-dist 11 35 2
$god_ set-dist 11 36 1
$god_ set-dist 11 37 1
$god_ set-dist 11 38 1
$god_ set-dist 11 39 2
$god_ set-dist 11 40 2
$god_ set-dist 11 41 2
$god_ set-dist 11 42 2
$god_ set-dist 11 43 1
$god_ set-dist 11 44 1
$god_ set-dist 11 45 1
$god_ set-dist 11 46 2
$god_ set-dist 11 47 2
$god_ set-dist 11 48 1
$god_ set-dist 11 49 2
$god_ set-dist 12 13 4
$god_ set-dist 12 14 2
$god_ set-dist 12 15 4
$god_ set-dist 12 16 3
$god_ set-dist 12 17 1
$god_ set-dist 12 18 2
$god_ set-dist 12 19 2
$god_ set-dist 12 20 1
$god_ set-dist 12 21 2
$god_ set-dist 12 22 3
$god_ set-dist 12 23 2
$god_ set-dist 12 24 3
$god_ set-dist 12 25 3
$god_ set-dist 12 26 1
$god_ set-dist 12 27 2
$god_ set-dist 12 28 1
$god_ set-dist 12 29 3
$god_ set-dist 12 30 4
$god_ set-dist 12 31 3
$god_ set-dist 12 32 2
$god_ set-dist 12 33 3
$god_ set-dist 12 34 1
$god_ set-dist 12 35 2
$god_ set-dist 12 36 1
$god_ set-dist 12 37 3
$god_ set-dist 12 38 2
$god_ set-dist 12 39 4
$god_ set-dist 12 40 3
$god_ set-dist 12 41 1
$god_ set-dist 12 42 2
$god_ set-dist 12 43 3
$god_ set-dist 12 44 1
$god_ set-dist 12 45 2
$god_ set-dist 12 46 3
$god_ set-dist 12 47 1
$god_ set-dist 12 48 3
$god_ set-dist 12 49 1
$god_ set-dist 13 14 2
$god_ set-dist 13 15 1
$god_ set-dist 13 16 2
$god_ set-dist 13 17 4
$god_ set-dist 13 18 3
$god_ set-dist 13 19 2
$god_ set-dist 13 20 3
$god_ set-dist 13 21 4
$god_ set-dist 13 22 2
$god_ set-dist 13 23 3
$god_ set-dist 13 24 1
$god_ set-dist 13 25 1
$god_ set-dist 13 26 3
$god_ set-dist 13 27 3
$god_ set-dist 13 28 3
$god_ set-dist 13 29 2
$god_ set-dist 13 30 1
$god_ set-dist 13 31 3
$god_ set-dist 13 32 3
$god_ set-dist 13 33 3
$god_ set-dist 13 34 4
$god_ set-dist 13 35 4
$god_ set-dist 13 36 3
$god_ set-dist 13 37 1
$god_ set-dist 13 38 3
$god_ set-dist 13 39 1
$god_ set-dist 13 40 2
$god_ set-dist 13 41 4
$god_ set-dist 13 42 3
$god_ set-dist 13 43 2
$god_ set-dist 13 44 3
$god_ set-dist 13 45 2
$god_ set-dist 13 46 3
$god_ set-dist 13 47 4
$god_ set-dist 13 48 2
$god_ set-dist 13 49 4
$god_ set-dist 14 15 2
$god_ set-dist 14 16 1
$god_ set-dist 14 17 2
$god_ set-dist 14 18 1
$god_ set-dist 14 19 1
$god_ set-dist 14 20 2
$god_ set-dist 14 21 3
$god_ set-dist 14 22 1
$god_ set-dist 14 23 1
$god_ set-dist 14 24 1
$god_ set-dist 14 25 1
$god_ set-dist 14 26 2
$god_ set-dist 14 27 1
$god_ set-dist 14 28 2
$god_ set-dist 14 29 1
$god_ set-dist 14 30 2
$god_ set-dist 14 31 3
$god_ set-dist 14 32 1
$god_ set-dist 14 33 3
$god_ set-dist 14 34 2
$god_ set-dist 14 35 3
$god_ set-dist 14 36 1
$god_ set-dist 14 37 2
$god_ set-dist 14 38 2
$god_ set-dist 14 39 2
$god_ set-dist 14 40 1
$god_ set-dist 14 41 3
$god_ set-dist 14 42 3
$god_ set-dist 14 43 2
$god_ set-dist 14 44 2
$god_ set-dist 14 45 1
$god_ set-dist 14 46 3
$god_ set-dist 14 47 2
$god_ set-dist 14 48 1
$god_ set-dist 14 49 3
$god_ set-dist 15 16 2
$god_ set-dist 15 17 4
$god_ set-dist 15 18 3
$god_ set-dist 15 19 2
$god_ set-dist 15 20 3
$god_ set-dist 15 21 4
$god_ set-dist 15 22 2
$god_ set-dist 15 23 3
$god_ set-dist 15 24 1
$god_ set-dist 15 25 1
$god_ set-dist 15 26 3
$god_ set-dist 15 27 3
$god_ set-dist 15 28 3
$god_ set-dist 15 29 2
$god_ set-dist 15 30 1
$god_ set-dist 15 31 3
$god_ set-dist 15 32 3
$god_ set-dist 15 33 3
$god_ set-dist 15 34 4
$god_ set-dist 15 35 4
$god_ set-dist 15 36 3
$god_ set-dist 15 37 1
$god_ set-dist 15 38 3
$god_ set-dist 15 39 1
$god_ set-dist 15 40 2
$god_ set-dist 15 41 4
$god_ set-dist 15 42 3
$god_ set-dist 15 43 2
$god_ set-dist 15 44 3
$god_ set-dist 15 45 2
$god_ set-dist 15 46 3
$god_ set-dist 15 47 4
$god_ set-dist 15 48 2
$god_ set-dist 15 49 4
$god_ set-dist 16 17 3
$god_ set-dist 16 18 2
$god_ set-dist 16 19 2
$god_ set-dist 16 20 3
$god_ set-dist 16 21 4
$god_ set-dist 16 22 1
$god_ set-dist 16 23 2
$god_ set-dist 16 24 1
$god_ set-dist 16 25 1
$god_ set-dist 16 26 3
$god_ set-dist 16 27 1
$god_ set-dist 16 28 3
$god_ set-dist 16 29 1
$god_ set-dist 16 30 2
$god_ set-dist 16 31 3
$god_ set-dist 16 32 1
$god_ set-dist 16 33 4
$god_ set-dist 16 34 3
$god_ set-dist 16 35 4
$god_ set-dist 16 36 2
$god_ set-dist 16 37 2
$god_ set-dist 16 38 3
$god_ set-dist 16 39 2
$god_ set-dist 16 40 1
$god_ set-dist 16 41 4
$god_ set-dist 16 42 4
$god_ set-dist 16 43 2
$god_ set-dist 16 44 3
$god_ set-dist 16 45 2
$god_ set-dist 16 46 4
$god_ set-dist 16 47 3
$god_ set-dist 16 48 1
$god_ set-dist 16 49 4
$god_ set-dist 17 18 2
$god_ set-dist 17 19 2
$god_ set-dist 17 20 1
$god_ set-dist 17 21 2
$god_ set-dist 17 22 3
$god_ set-dist 17 23 2
$god_ set-dist 17 24 3
$god_ set-dist 17 25 3
$god_ set-dist 17 26 1
$god_ set-dist 17 27 2
$god_ set-dist 17 28 1
$god_ set-dist 17 29 3
$god_ set-dist 17 30 4
$god_ set-dist 17 31 3
$god_ set-dist 17 32 3
$god_ set-dist 17 33 2
$god_ set-dist 17 34 1
$god_ set-dist 17 35 2
$god_ set-dist 17 36 1
$god_ set-dist 17 37 3
$god_ set-dist 17 38 2
$god_ set-dist 17 39 4
$god_ set-dist 17 40 3
$god_ set-dist 17 41 1
$god_ set-dist 17 42 2
$god_ set-dist 17 43 3
$god_ set-dist 17 44 1
$god_ set-dist 17 45 2
$god_ set-dist 17 46 3
$god_ set-dist 17 47 1
$god_ set-dist 17 48 3
$god_ set-dist 17 49 1
$god_ set-dist 18 19 1
$god_ set-dist 18 20 1
$god_ set-dist 18 21 2
$god_ set-dist 18 22 1
$god_ set-dist 18 23 1
$god_ set-dist 18 24 2
$god_ set-dist 18 25 2
$god_ set-dist 18 26 1
$god_ set-dist 18 27 2
$god_ set-dist 18 28 1
$god_ set-dist 18 29 2
$god_ set-dist 18 30 2
$god_ set-dist 18 31 2
$god_ set-dist 18 32 2
$god_ set-dist 18 33 2
$god_ set-dist 18 34 2
$god_ set-dist 18 35 2
$god_ set-dist 18 36 1
$god_ set-dist 18 37 2
$god_ set-dist 18 38 1
$god_ set-dist 18 39 3
$god_ set-dist 18 40 2
$god_ set-dist 18 41 2
$god_ set-dist 18 42 2
$god_ set-dist 18 43 1
$god_ set-dist 18 44 1
$god_ set-dist 18 45 1
$god_ set-dist 18 46 2
$god_ set-dist 18 47 1
$god_ set-dist 18 48 2
$god_ set-dist 18 49 2
$god_ set-dist 19 20 1
$god_ set-dist 19 21 2
$god_ set-dist 19 22 1
$god_ set-dist 19 23 1
$god_ set-dist 19 24 2
$god_ set-dist 19 25 1
$god_ set-dist 19 26 1
$god_ set-dist 19 27 2
$god_ set-dist 19 28 1
$god_ set-dist 19 29 2
$god_ set-dist 19 30 2
$god_ set-dist 19 31 2
$god_ set-dist 19 32 2
$god_ set-dist 19 33 2
$god_ set-dist 19 34 2
$god_ set-dist 19 35 2
$god_ set-dist 19 36 1
$god_ set-dist 19 37 2
$god_ set-dist 19 38 1
$god_ set-dist 19 39 2
$god_ set-dist 19 40 2
$god_ set-dist 19 41 2
$god_ set-dist 19 42 2
$god_ set-dist 19 43 1
$god_ set-dist 19 44 1
$god_ set-dist 19 45 1
$god_ set-dist 19 46 2
$god_ set-dist 19 47 2
$god_ set-dist 19 48 1
$god_ set-dist 19 49 2
$god_ set-dist 20 21 1
$god_ set-dist 20 22 2
$god_ set-dist 20 23 1
$god_ set-dist 20 24 2
$god_ set-dist 20 25 2
$god_ set-dist 20 26 1
$god_ set-dist 20 27 2
$god_ set-dist 20 28 1
$god_ set-dist 20 29 3
$god_ set-dist 20 30 3
$god_ set-dist 20 31 2
$god_ set-dist 20 32 2
$god_ set-dist 20 33 2
$god_ set-dist 20 34 1
$god_ set-dist 20 35 2
$god_ set-dist 20 36 1
$god_ set-dist 20 37 2
$god_ set-dist 20 38 1
$god_ set-dist 20 39 3
$god_ set-dist 20 40 3
$god_ set-dist 20 41 1
$god_ set-dist 20 42 2
$god_ set-dist 20 43 2
$god_ set-dist 20 44 1
$god_ set-dist 20 45 1
$god_ set-dist 20 46 2
$god_ set-dist 20 47 1
$god_ set-dist 20 48 2
$god_ set-dist 20 49 1
$god_ set-dist 21 22 3
$god_ set-dist 21 23 2
$god_ set-dist 21 24 3
$god_ set-dist 21 25 3
$god_ set-dist 21 26 2
$god_ set-dist 21 27 3
$god_ set-dist 21 28 2
$god_ set-dist 21 29 4
$god_ set-dist 21 30 3
$god_ set-dist 21 31 1
$god_ set-dist 21 32 3
$god_ set-dist 21 33 1
$god_ set-dist 21 34 2
$god_ set-dist 21 35 1
$god_ set-dist 21 36 2
$god_ set-dist 21 37 3
$god_ set-dist 21 38 1
$god_ set-dist 21 39 4
$god_ set-dist 21 40 4
$god_ set-dist 21 41 1
$god_ set-dist 21 42 1
$god_ set-dist 21 43 2
$god_ set-dist 21 44 1
$god_ set-dist 21 45 2
$god_ set-dist 21 46 1
$god_ set-dist 21 47 2
$god_ set-dist 21 48 3
$god_ set-dist 21 49 2
$god_ set-dist 22 23 1
$god_ set-dist 22 24 1
$god_ set-dist 22 25 1
$god_ set-dist 22 26 2
$god_ set-dist 22 27 2
$god_ set-dist 22 28 2
$god_ set-dist 22 29 1
$god_ set-dist 22 30 1
$god_ set-dist 22 31 2
$god_ set-dist 22 32 2
$god_ set-dist 22 33 3
$god_ set-dist 22 34 3
$god_ set-dist 22 35 3
$god_ set-dist 22 36 2
$god_ set-dist 22 37 1
$god_ set-dist 22 38 2
$god_ set-dist 22 39 2
$god_ set-dist 22 40 1
$god_ set-dist 22 41 3
$god_ set-dist 22 42 3
$god_ set-dist 22 43 1
$god_ set-dist 22 44 2
$god_ set-dist 22 45 1
$god_ set-dist 22 46 3
$god_ set-dist 22 47 2
$god_ set-dist 22 48 1
$god_ set-dist 22 49 3
$god_ set-dist 23 24 2
$god_ set-dist 23 25 2
$god_ set-dist 23 26 1
$god_ set-dist 23 27 2
$god_ set-dist 23 28 1
$god_ set-dist 23 29 2
$god_ set-dist 23 30 2
$god_ set-dist 23 31 2
$god_ set-dist 23 32 2
$god_ set-dist 23 33 2
$god_ set-dist 23 34 2
$god_ set-dist 23 35 2
$god_ set-dist 23 36 1
$god_ set-dist 23 37 2
$god_ set-dist 23 38 1
$god_ set-dist 23 39 3
$god_ set-dist 23 40 2
$god_ set-dist 23 41 2
$god_ set-dist 23 42 2
$god_ set-dist 23 43 2
$god_ set-dist 23 44 1
$god_ set-dist 23 45 1
$god_ set-dist 23 46 2
$god_ set-dist 23 47 1
$god_ set-dist 23 48 2
$god_ set-dist 23 49 2
$god_ set-dist 24 25 1
$god_ set-dist 24 26 2
$god_ set-dist 24 27 2
$god_ set-dist 24 28 3
$god_ set-dist 24 29 1
$god_ set-dist 24 30 1
$god_ set-dist 24 31 3
$god_ set-dist 24 32 2
$god_ set-dist 24 33 3
$god_ set-dist 24 34 3
$god_ set-dist 24 35 3
$god_ set-dist 24 36 2
$god_ set-dist 24 37 1
$god_ set-dist 24 38 2
$god_ set-dist 24 39 1
$god_ set-dist 24 40 1
$god_ set-dist 24 41 3
$god_ set-dist 24 42 3
$god_ set-dist 24 43 2
$god_ set-dist 24 44 2
$god_ set-dist 24 45 1
$god_ set-dist 24 46 3
$god_ set-dist 24 47 3
$god_ set-dist 24 48 1
$god_ set-dist 24 49 3
$god_ set-dist 25 26 2
$god_ set-dist 25 27 2
$god_ set-dist 25 28 2
$god_ set-dist 25 29 1
$god_ set-dist 25 30 1
$god_ set-dist 25 31 2
$god_ set-dist 25 32 2
$god_ set-dist 25 33 3
$god_ set-dist 25 34 3
$god_ set-dist 25 35 3
$god_ set-dist 25 36 2
$god_ set-dist 25 37 1
$god_ set-dist 25 38 2
$god_ set-dist 25 39 1
$god_ set-dist 25 40 1
$god_ set-dist 25 41 3
$god_ set-dist 25 42 3
$god_ set-dist 25 43 1
$god_ set-dist 25 44 2
$god_ set-dist 25 45 1
$god_ set-dist 25 46 3
$god_ set-dist 25 47 3
$god_ set-dist 25 48 1
$god_ set-dist 25 49 3
$god_ set-dist 26 27 2
$god_ set-dist 26 28 1
$god_ set-dist 26 29 3
$god_ set-dist 26 30 3
$god_ set-dist 26 31 3
$god_ set-dist 26 32 2
$god_ set-dist 26 33 2
$god_ set-dist 26 34 1
$god_ set-dist 26 35 2
$god_ set-dist 26 36 1
$god_ set-dist 26 37 2
$god_ set-dist 26 38 2
$god_ set-dist 26 39 3
$god_ set-dist 26 40 3
$god_ set-dist 26 41 2
$god_ set-dist 26 42 2
$god_ set-dist 26 43 2
$god_ set-dist 26 44 1
$god_ set-dist 26 45 1
$god_ set-dist 26 46 3
$god_ set-dist 26 47 1
$god_ set-dist 26 48 2
$god_ set-dist 26 49 1
$god_ set-dist 27 28 2
$god_ set-dist 27 29 2
$god_ set-dist 27 30 3
$god_ set-dist 27 31 4
$god_ set-dist 27 32 1
$god_ set-dist 27 33 3
$god_ set-dist 27 34 2
$god_ set-dist 27 35 3
$god_ set-dist 27 36 1
$god_ set-dist 27 37 3
$god_ set-dist 27 38 3
$god_ set-dist 27 39 3
$god_ set-dist 27 40 1
$god_ set-dist 27 41 3
$god_ set-dist 27 42 3
$god_ set-dist 27 43 3
$god_ set-dist 27 44 2
$god_ set-dist 27 45 2
$god_ set-dist 27 46 4
$god_ set-dist 27 47 2
$god_ set-dist 27 48 2
$god_ set-dist 27 49 3
$god_ set-dist 28 29 3
$god_ set-dist 28 30 3
$god_ set-dist 28 31 3
$god_ set-dist 28 32 2
$god_ set-dist 28 33 2
$god_ set-dist 28 34 1
$god_ set-dist 28 35 2
$god_ set-dist 28 36 1
$god_ set-dist 28 37 3
$god_ set-dist 28 38 2
$god_ set-dist 28 39 3
$god_ set-dist 28 40 3
$god_ set-dist 28 41 1
$god_ set-dist 28 42 2
$god_ set-dist 28 43 2
$god_ set-dist 28 44 1
$god_ set-dist 28 45 2
$god_ set-dist 28 46 3
$god_ set-dist 28 47 1
$god_ set-dist 28 48 2
$god_ set-dist 28 49 1
$god_ set-dist 29 30 1
$god_ set-dist 29 31 3
$god_ set-dist 29 32 1
$god_ set-dist 29 33 3
$god_ set-dist 29 34 3
$god_ set-dist 29 35 4
$god_ set-dist 29 36 2
$god_ set-dist 29 37 1
$god_ set-dist 29 38 3
$god_ set-dist 29 39 1
$god_ set-dist 29 40 1
$god_ set-dist 29 41 4
$god_ set-dist 29 42 3
$god_ set-dist 29 43 2
$god_ set-dist 29 44 3
$god_ set-dist 29 45 2
$god_ set-dist 29 46 3
$god_ set-dist 29 47 3
$god_ set-dist 29 48 1
$god_ set-dist 29 49 4
$god_ set-dist 30 31 2
$god_ set-dist 30 32 2
$god_ set-dist 30 33 3
$god_ set-dist 30 34 4
$god_ set-dist 30 35 3
$god_ set-dist 30 36 3
$god_ set-dist 30 37 1
$god_ set-dist 30 38 3
$god_ set-dist 30 39 1
$god_ set-dist 30 40 2
$god_ set-dist 30 41 4
$god_ set-dist 30 42 3
$god_ set-dist 30 43 2
$god_ set-dist 30 44 3
$god_ set-dist 30 45 2
$god_ set-dist 30 46 3
$god_ set-dist 30 47 3
$god_ set-dist 30 48 1
$god_ set-dist 30 49 4
$god_ set-dist 31 32 4
$god_ set-dist 31 33 1
$god_ set-dist 31 34 3
$god_ set-dist 31 35 1
$god_ set-dist 31 36 3
$god_ set-dist 31 37 2
$god_ set-dist 31 38 1
$god_ set-dist 31 39 3
$god_ set-dist 31 40 3
$god_ set-dist 31 41 2
$god_ set-dist 31 42 1
$god_ set-dist 31 43 1
$god_ set-dist 31 44 2
$god_ set-dist 31 45 2
$god_ set-dist 31 46 1
$god_ set-dist 31 47 3
$god_ set-dist 31 48 3
$god_ set-dist 31 49 3
$god_ set-dist 32 33 4
$god_ set-dist 32 34 2
$god_ set-dist 32 35 3
$god_ set-dist 32 36 2
$god_ set-dist 32 37 2
$god_ set-dist 32 38 3
$god_ set-dist 32 39 2
$god_ set-dist 32 40 1
$god_ set-dist 32 41 3
$god_ set-dist 32 42 3
$god_ set-dist 32 43 3
$god_ set-dist 32 44 2
$god_ set-dist 32 45 2
$god_ set-dist 32 46 4
$god_ set-dist 32 47 2
$god_ set-dist 32 48 1
$god_ set-dist 32 49 3
$god_ set-dist 33 34 3
$god_ set-dist 33 35 1
$god_ set-dist 33 36 2
$god_ set-dist 33 37 2
$god_ set-dist 33 38 1
$god_ set-dist 33 39 3
$god_ set-dist 33 40 4
$god_ set-dist 33 41 2
$god_ set-dist 33 42 1
$god_ set-dist 33 43 2
$god_ set-dist 33 44 2
$god_ set-dist 33 45 2
$god_ set-dist 33 46 1
$god_ set-dist 33 47 3
$god_ set-dist 33 48 3
$god_ set-dist 33 49 3
$god_ set-dist 34 35 3
$god_ set-dist 34 36 1
$god_ set-dist 34 37 3
$god_ set-dist 34 38 2
$god_ set-dist 34 39 4
$god_ set-dist 34 40 3
$god_ set-dist 34 41 2
$god_ set-dist 34 42 3
$god_ set-dist 34 43 3
$god_ set-dist 34 44 2
$god_ set-dist 34 45 2
$god_ set-dist 34 46 3
$god_ set-dist 34 47 1
$god_ set-dist 34 48 3
$god_ set-dist 34 49 1
$god_ set-dist 35 36 2
$god_ set-dist 35 37 3
$god_ set-dist 35 38 1
$god_ set-dist 35 39 4
$god_ set-dist 35 40 4
$god_ set-dist 35 41 1
$god_ set-dist 35 42 1
$god_ set-dist 35 43 2
$god_ set-dist 35 44 1
$god_ set-dist 35 45 2
$god_ set-dist 35 46 1
$god_ set-dist 35 47 2
$god_ set-dist 35 48 3
$god_ set-dist 35 49 3
$god_ set-dist 36 37 2
$god_ set-dist 36 38 2
$god_ set-dist 36 39 3
$god_ set-dist 36 40 2
$god_ set-dist 36 41 2
$god_ set-dist 36 42 2
$god_ set-dist 36 43 2
$god_ set-dist 36 44 1
$god_ set-dist 36 45 1
$god_ set-dist 36 46 3
$god_ set-dist 36 47 1
$god_ set-dist 36 48 2
$god_ set-dist 36 49 2
$god_ set-dist 37 38 2
$god_ set-dist 37 39 1
$god_ set-dist 37 40 2
$god_ set-dist 37 41 3
$god_ set-dist 37 42 2
$god_ set-dist 37 43 1
$god_ set-dist 37 44 2
$god_ set-dist 37 45 1
$god_ set-dist 37 46 2
$god_ set-dist 37 47 3
$god_ set-dist 37 48 1
$god_ set-dist 37 49 3
$god_ set-dist 38 39 3
$god_ set-dist 38 40 3
$god_ set-dist 38 41 1
$god_ set-dist 38 42 1
$god_ set-dist 38 43 1
$god_ set-dist 38 44 1
$god_ set-dist 38 45 1
$god_ set-dist 38 46 1
$god_ set-dist 38 47 2
$god_ set-dist 38 48 2
$god_ set-dist 38 49 2
$god_ set-dist 39 40 2
$god_ set-dist 39 41 4
$god_ set-dist 39 42 3
$god_ set-dist 39 43 2
$god_ set-dist 39 44 3
$god_ set-dist 39 45 2
$god_ set-dist 39 46 3
$god_ set-dist 39 47 4
$god_ set-dist 39 48 2
$god_ set-dist 39 49 4
$god_ set-dist 40 41 4
$god_ set-dist 40 42 4
$god_ set-dist 40 43 2
$god_ set-dist 40 44 3
$god_ set-dist 40 45 2
$god_ set-dist 40 46 4
$god_ set-dist 40 47 3
$god_ set-dist 40 48 1
$god_ set-dist 40 49 4
$god_ set-dist 41 42 1
$god_ set-dist 41 43 2
$god_ set-dist 41 44 1
$god_ set-dist 41 45 2
$god_ set-dist 41 46 2
$god_ set-dist 41 47 2
$god_ set-dist 41 48 3
$god_ set-dist 41 49 2
$god_ set-dist 42 43 2
$god_ set-dist 42 44 1
$god_ set-dist 42 45 2
$god_ set-dist 42 46 1
$god_ set-dist 42 47 2
$god_ set-dist 42 48 3
$god_ set-dist 42 49 3
$god_ set-dist 43 44 2
$god_ set-dist 43 45 1
$god_ set-dist 43 46 2
$god_ set-dist 43 47 2
$god_ set-dist 43 48 2
$god_ set-dist 43 49 3
$god_ set-dist 44 45 1
$god_ set-dist 44 46 2
$god_ set-dist 44 47 1
$god_ set-dist 44 48 2
$god_ set-dist 44 49 2
$god_ set-dist 45 46 2
$god_ set-dist 45 47 2
$god_ set-dist 45 48 1
$god_ set-dist 45 49 2
$god_ set-dist 46 47 3
$god_ set-dist 46 48 3
$god_ set-dist 46 49 3
$god_ set-dist 47 48 3
$god_ set-dist 47 49 1
$god_ set-dist 48 49 3
$ns_ at 1.000000000000 "$node_(0) setdest 490.939917675104 467.894372409682 0.766441544383"
$ns_ at 1.000000000000 "$node_(1) setdest 89.937251407408 157.688378672857 0.516133424909"
$ns_ at 1.000000000000 "$node_(2) setdest 169.741134882475 446.353537154276 0.407823705307"
$ns_ at 1.000000000000 "$node_(3) setdest 112.805699418202 154.284515320598 0.002542844165"
$ns_ at 1.000000000000 "$node_(4) setdest 42.226149924807 514.693222045011 0.591061652624"
$ns_ at 1.000000000000 "$node_(5) setdest 31.655896213936 378.852068153496 0.933748288597"
$ns_ at 1.000000000000 "$node_(6) setdest 1.957478732140 220.541365624546 0.712202992322"
$ns_ at 1.000000000000 "$node_(7) setdest 352.199121179855 340.326644086266 0.703409273948"
$ns_ at 1.000000000000 "$node_(8) setdest 37.233768046047 526.714745095621 0.565923676992"
$ns_ at 1.000000000000 "$node_(9) setdest 632.145650267204 452.094661236203 0.663644546419"
$ns_ at 1.000000000000 "$node_(10) setdest 319.956173331217 324.152933550954 0.429026958588"
$ns_ at 1.000000000000 "$node_(11) setdest 398.140550347333 614.796390998561 0.779911633865"
$ns_ at 1.000000000000 "$node_(12) setdest 102.422145952891 265.309803465949 0.401431489153"
$ns_ at 1.000000000000 "$node_(13) setdest 422.153247009934 76.650784558934 0.250485314080"
$ns_ at 1.000000000000 "$node_(14) setdest 385.687193466103 122.610498080725 0.848964548340"
$ns_ at 1.000000000000 "$node_(15) setdest 452.555582493442 122.448964912767 0.768922659088"
$ns_ at 1.000000000000 "$node_(16) setdest 182.594262065740 272.255331116987 0.083986227510"
$ns_ at 1.000000000000 "$node_(17) setdest 368.398366164616 415.091807222715 0.636543671694"
$ns_ at 1.000000000000 "$node_(18) setdest 262.888286197736 490.395719537584 0.545742653197"
$ns_ at 1.000000000000 "$node_(19) setdest 388.110139194622 197.869200258701 0.031908366279"
$ns_ at 1.000000000000 "$node_(20) setdest 315.411995871853 88.363208735722 0.775524479642"
$ns_ at 1.000000000000 "$node_(21) setdest 511.366169828494 185.727548641462 0.780811956248"
$ns_ at 1.000000000000 "$node_(22) setdest 288.848316513572 57.291288372732 0.131540875267"
$ns_ at 1.000000000000 "$node_(23) setdest 357.942013950539 656.102518420509 0.347845538601"
$ns_ at 1.000000000000 "$node_(24) setdest 583.869041363886 155.209976018796 0.930736920702"
$ns_ at 1.000000000000 "$node_(25) setdest 277.504016712968 232.962300809137 0.841468956560"
$ns_ at 1.000000000000 "$node_(26) setdest 147.948398600162 460.721056740726 0.653429898413"
$ns_ at 1.000000000000 "$node_(27) setdest 486.615337167399 331.970078914840 0.718186495449"
$ns_ at 1.000000000000 "$node_(28) setdest 180.813334288349 606.679435730754 0.055541923398"
$ns_ at 1.000000000000 "$node_(29) setdest 309.309312060088 335.634789383513 0.502932571250"
$ns_ at 1.000000000000 "$node_(30) setdest 450.583635238324 563.042767442040 0.224016999732"
$ns_ at 1.000000000000 "$node_(31) setdest 522.515838051516 404.422186368568 0.809409505771"
$ns_ at 1.000000000000 "$node_(32) setdest 288.736319422525 447.875496949559 0.656915482748"
$ns_ at 1.000000000000 "$node_(33) setdest 287.831990483462 455.947634255772 0.642370135433"
$ns_ at 1.000000000000 "$node_(34) setdest 487.839105990840 293.658380401540 0.593887987437"
$ns_ at 1.000000000000 "$node_(35) setdest 484.366844552174 105.497957319854 0.857142274334"
$ns_ at 1.000000000000 "$node_(36) setdest 277.898035890607 477.987761861052 0.957515386670"
$ns_ at 1.000000000000 "$node_(37) setdest 144.364979487824 643.479988284837 0.871804477259"
$ns_ at 1.000000000000 "$node_(38) setdest 172.801786349800 489.779281898888 0.835114182835"
$ns_ at 1.000000000000 "$node_(39) setdest 633.045048467668 356.404784122062 0.413935986836"
$ns_ at 1.000000000000 "$node_(40) setdest 282.853844536841 669.762752819958 0.217431645893"
$ns_ at 1.000000000000 "$node_(41) setdest 452.590175193911 208.657958789462 0.623470950332"
$ns_ at 1.000000000000 "$node_(42) setdest 517.792261608595 120.420621008959 0.678699365624"
$ns_ at 1.000000000000 "$node_(43) setdest 375.022620971944 431.276349377697 0.817353423920"
$ns_ at 1.000000000000 "$node_(44) setdest 311.839799618506 261.411536227353 0.284012755396"
$ns_ at 1.000000000000 "$node_(45) setdest 530.298401478694 270.626728655854 0.330413546117"
$ns_ at 1.000000000000 "$node_(46) setdest 377.189847658269 296.143449879679 0.178207791426"
$ns_ at 1.000000000000 "$node_(47) setdest 275.572414530689 538.704037077362 0.178439035806"
$ns_ at 1.000000000000 "$node_(48) setdest 469.639809258534 363.418774910063 0.820948743903"
$ns_ at 1.000000000000 "$node_(49) setdest 5.872309215237 227.316238990002 0.036670277041"
$ns_ at 1.082145602178 "$god_ set-dist 5 14 2"
$ns_ at 1.082145602178 "$god_ set-dist 5 16 2"
$ns_ at 1.082145602178 "$god_ set-dist 5 22 1"
$ns_ at 1.082145602178 "$god_ set-dist 5 23 2"
$ns_ at 1.677278727083 "$god_ set-dist 4 8 3"
$ns_ at 1.677278727083 "$god_ set-dist 4 9 3"
$ns_ at 1.677278727083 "$god_ set-dist 4 12 3"
$ns_ at 1.677278727083 "$god_ set-dist 4 17 3"
$ns_ at 1.677278727083 "$god_ set-dist 4 34 3"
$ns_ at 1.677278727083 "$god_ set-dist 4 36 2"
$ns_ at 1.677278727083 "$god_ set-dist 5 8 3"
$ns_ at 1.677278727083 "$god_ set-dist 5 9 3"
$ns_ at 1.677278727083 "$god_ set-dist 5 12 3"
$ns_ at 1.677278727083 "$god_ set-dist 5 17 3"
$ns_ at 1.677278727083 "$god_ set-dist 5 34 3"
$ns_ at 1.677278727083 "$god_ set-dist 5 36 2"
$ns_ at 1.677278727083 "$god_ set-dist 6 8 3"
$ns_ at 1.677278727083 "$god_ set-dist 6 9 3"
$ns_ at 1.677278727083 "$god_ set-dist 6 12 3"
$ns_ at 1.677278727083 "$god_ set-dist 6 17 3"
$ns_ at 1.677278727083 "$god_ set-dist 6 34 3"
$ns_ at 1.677278727083 "$god_ set-dist 6 36 2"
$ns_ at 1.677278727083 "$god_ set-dist 8 22 2"
$ns_ at 1.677278727083 "$god_ set-dist 8 30 3"
$ns_ at 1.677278727083 "$god_ set-dist 9 22 2"
$ns_ at 1.677278727083 "$god_ set-dist 9 30 3"
$ns_ at 1.677278727083 "$god_ set-dist 12 22 2"
$ns_ at 1.677278727083 "$god_ set-dist 12 30 3"
$ns_ at 1.677278727083 "$god_ set-dist 17 22 2"
$ns_ at 1.677278727083 "$god_ set-dist 17 30 3"
$ns_ at 1.677278727083 "$god_ set-dist 22 34 2"
$ns_ at 1.677278727083 "$god_ set-dist 22 36 1"
$ns_ at 1.677278727083 "$god_ set-dist 30 34 3"
$ns_ at 1.677278727083 "$god_ set-dist 30 36 2"
$ns_ at 1.777809671409 "$god_ set-dist 15 29 1"
$ns_ at 1.777809671409 "$god_ set-dist 15 32 2"
$ns_ at 2.450761371344 "$god_ set-dist 2 21 1"
$ns_ at 2.450761371344 "$god_ set-dist 13 21 3"
$ns_ at 2.450761371344 "$god_ set-dist 15 21 3"
$ns_ at 2.450761371344 "$god_ set-dist 21 29 3"
$ns_ at 2.450761371344 "$god_ set-dist 21 37 2"
$ns_ at 2.450761371344 "$god_ set-dist 21 39 3"
$ns_ at 2.499525217731 "$god_ set-dist 8 33 2"
$ns_ at 2.499525217731 "$god_ set-dist 10 33 2"
$ns_ at 2.499525217731 "$god_ set-dist 12 33 2"
$ns_ at 2.499525217731 "$god_ set-dist 33 41 1"
$ns_ at 2.990903138864 "$god_ set-dist 13 32 2"
$ns_ at 2.990903138864 "$god_ set-dist 25 32 1"
$ns_ at 2.990903138864 "$god_ set-dist 31 32 3"
$ns_ at 2.990903138864 "$god_ set-dist 32 43 2"
$ns_ at 3.599986628322 "$god_ set-dist 24 31 2"
$ns_ at 3.599986628322 "$god_ set-dist 24 43 1"
$ns_ at 4.806096976794 "$god_ set-dist 11 14 1"
$ns_ at 5.766593233840 "$god_ set-dist 13 18 2"
$ns_ at 5.766593233840 "$god_ set-dist 13 47 3"
$ns_ at 5.766593233840 "$god_ set-dist 15 18 2"
$ns_ at 5.766593233840 "$god_ set-dist 15 47 3"
$ns_ at 5.766593233840 "$god_ set-dist 18 25 1"
$ns_ at 5.766593233840 "$god_ set-dist 18 39 2"
$ns_ at 5.766593233840 "$god_ set-dist 25 47 2"
$ns_ at 5.766593233840 "$god_ set-dist 39 47 3"
$ns_ at 6.001154913258 "$god_ set-dist 0 7 1"
$ns_ at 6.133674450488 "$god_ set-dist 9 42 2"
$ns_ at 6.133674450488 "$god_ set-dist 20 42 1"
$ns_ at 6.133674450488 "$god_ set-dist 34 42 2"
$ns_ at 6.133674450488 "$god_ set-dist 42 49 2"
$ns_ at 7.159664508410 "$god_ set-dist 4 38 2"
$ns_ at 7.159664508410 "$god_ set-dist 4 41 3"
$ns_ at 7.159664508410 "$god_ set-dist 4 43 1"
$ns_ at 7.879010991373 "$god_ set-dist 1 5 2"
$ns_ at 7.879010991373 "$god_ set-dist 5 11 1"
$ns_ at 7.879010991373 "$god_ set-dist 5 26 2"
$ns_ at 7.879010991373 "$god_ set-dist 5 44 2"
$ns_ at 7.879010991373 "$god_ set-dist 5 49 3"
$ns_ at 8.467692449912 "$god_ set-dist 1 9 1"
$ns_ at 8.467692449912 "$god_ set-dist 9 32 2"
$ns_ at 9.576745670780 "$god_ set-dist 4 17 4"
$ns_ at 9.576745670780 "$god_ set-dist 6 17 4"
$ns_ at 9.576745670780 "$god_ set-dist 14 17 3"
$ns_ at 9.576745670780 "$god_ set-dist 16 17 4"
$ns_ at 9.576745670780 "$god_ set-dist 17 22 3"
$ns_ at 9.576745670780 "$god_ set-dist 17 27 3"
$ns_ at 9.576745670780 "$god_ set-dist 17 29 4"
$ns_ at 9.576745670780 "$god_ set-dist 17 30 4"
$ns_ at 9.576745670780 "$god_ set-dist 17 36 2"
$ns_ at 9.576745670780 "$god_ set-dist 17 40 4"
$ns_ at 10.829482034241 "$god_ set-dist 23 34 1"
$ns_ at 11.207403034165 "$god_ set-dist 10 24 3"
$ns_ at 11.207403034165 "$god_ set-dist 19 24 1"
$ns_ at 11.207403034165 "$god_ set-dist 24 28 2"
$ns_ at 13.562158473954 "$god_ set-dist 2 28 2"
$ns_ at 13.562158473954 "$god_ set-dist 28 31 2"
$ns_ at 13.562158473954 "$god_ set-dist 28 38 1"
$ns_ at 13.562158473954 "$god_ set-dist 28 46 2"
$ns_ at 15.337883266619 "$god_ set-dist 10 21 3"
$ns_ at 15.337883266619 "$god_ set-dist 10 33 3"
$ns_ at 15.337883266619 "$god_ set-dist 10 35 3"
$ns_ at 15.337883266619 "$god_ set-dist 10 41 2"
$ns_ at 15.337883266619 "$god_ set-dist 10 42 3"
$ns_ at 15.404762938375 "$god_ set-dist 18 48 1"
$ns_ at 15.404762938375 "$god_ set-dist 47 48 2"
$ns_ at 16.412372711557 "$god_ set-dist 0 32 2"
$ns_ at 16.412372711557 "$god_ set-dist 32 33 3"
$ns_ at 16.412372711557 "$god_ set-dist 32 36 1"
$ns_ at 16.777425370456 "$god_ set-dist 23 43 1"
$ns_ at 16.777425370456 "$god_ set-dist 34 43 2"
$ns_ at 17.413133338218 "$god_ set-dist 3 24 1"
$ns_ at 18.369512868984 "$god_ set-dist 5 24 1"
$ns_ at 18.545240406950 "$god_ set-dist 0 3 2"
$ns_ at 18.545240406950 "$god_ set-dist 3 20 2"
$ns_ at 18.545240406950 "$god_ set-dist 3 45 1"
$ns_ at 19.143846735514 "$god_ set-dist 1 4 2"
$ns_ at 19.143846735514 "$god_ set-dist 4 11 1"
$ns_ at 19.143846735514 "$god_ set-dist 4 17 3"
$ns_ at 19.143846735514 "$god_ set-dist 4 26 2"
$ns_ at 19.143846735514 "$god_ set-dist 4 44 2"
$ns_ at 19.143846735514 "$god_ set-dist 4 49 3"
$ns_ at 20.726840319328 "$god_ set-dist 6 29 1"
$ns_ at 22.165217177893 "$god_ set-dist 16 17 3"
$ns_ at 22.165217177893 "$god_ set-dist 16 26 2"
$ns_ at 22.165217177893 "$god_ set-dist 16 49 3"
$ns_ at 22.165217177893 "$god_ set-dist 17 27 2"
$ns_ at 22.165217177893 "$god_ set-dist 17 40 3"
$ns_ at 22.165217177893 "$god_ set-dist 26 27 1"
$ns_ at 22.165217177893 "$god_ set-dist 26 40 2"
$ns_ at 22.165217177893 "$god_ set-dist 27 49 2"
$ns_ at 22.165217177893 "$god_ set-dist 40 49 3"
$ns_ at 22.204980525439 "$god_ set-dist 1 6 2"
$ns_ at 22.204980525439 "$god_ set-dist 6 11 1"
$ns_ at 22.204980525439 "$god_ set-dist 6 17 3"
$ns_ at 22.204980525439 "$god_ set-dist 6 26 2"
$ns_ at 22.204980525439 "$god_ set-dist 6 44 2"
$ns_ at 22.204980525439 "$god_ set-dist 6 49 3"
$ns_ at 22.565702194666 "$god_ set-dist 14 17 2"
$ns_ at 22.565702194666 "$god_ set-dist 14 26 1"
$ns_ at 22.565702194666 "$god_ set-dist 14 49 2"
$ns_ at 22.565702194666 "$god_ set-dist 17 29 3"
$ns_ at 22.565702194666 "$god_ set-dist 26 29 2"
$ns_ at 22.565702194666 "$god_ set-dist 29 49 3"
$ns_ at 22.882789477792 "$god_ set-dist 5 13 1"
$ns_ at 22.882789477792 "$god_ set-dist 13 31 2"
$ns_ at 22.882789477792 "$god_ set-dist 13 35 3"
$ns_ at 22.923550737235 "$god_ set-dist 13 18 3"
$ns_ at 22.923550737235 "$god_ set-dist 13 25 2"
$ns_ at 22.923550737235 "$god_ set-dist 13 32 3"
$ns_ at 22.923550737235 "$god_ set-dist 13 47 4"
$ns_ at 22.983376359438 "$god_ set-dist 0 5 2"
$ns_ at 22.983376359438 "$god_ set-dist 5 20 2"
$ns_ at 22.983376359438 "$god_ set-dist 5 45 1"
$ns_ at 23.362865614443 "$god_ set-dist 6 27 2"
$ns_ at 23.362865614443 "$god_ set-dist 27 30 2"
$ns_ at 23.362865614443 "$god_ set-dist 27 37 2"
$ns_ at 23.362865614443 "$god_ set-dist 27 48 1"
$ns_ at 23.640798095291 "$god_ set-dist 27 39 2"
$ns_ at 23.640798095291 "$god_ set-dist 39 48 1"
$ns_ at 23.721824464910 "$god_ set-dist 10 34 1"
$ns_ at 25.078537230235 "$god_ set-dist 3 10 3"
$ns_ at 25.078537230235 "$god_ set-dist 5 10 3"
$ns_ at 25.078537230235 "$god_ set-dist 7 10 2"
$ns_ at 25.078537230235 "$god_ set-dist 10 20 1"
$ns_ at 25.078537230235 "$god_ set-dist 10 21 2"
$ns_ at 25.078537230235 "$god_ set-dist 10 37 3"
$ns_ at 25.078537230235 "$god_ set-dist 10 42 2"
$ns_ at 25.078537230235 "$god_ set-dist 10 45 2"
$ns_ at 25.551331736623 "$god_ set-dist 12 33 3"
$ns_ at 25.551331736623 "$god_ set-dist 12 41 2"
$ns_ at 26.985071195955 "$god_ set-dist 15 23 2"
$ns_ at 26.985071195955 "$god_ set-dist 15 34 3"
$ns_ at 26.985071195955 "$god_ set-dist 23 25 1"
$ns_ at 26.985071195955 "$god_ set-dist 23 39 2"
$ns_ at 26.985071195955 "$god_ set-dist 25 34 2"
$ns_ at 26.985071195955 "$god_ set-dist 34 39 3"
$ns_ at 27.018375486685 "$god_ set-dist 9 22 3"
$ns_ at 27.018375486685 "$god_ set-dist 9 30 4"
$ns_ at 27.018375486685 "$god_ set-dist 9 36 2"
$ns_ at 27.198921191715 "$node_(7) setdest 352.199121179855 340.326644086265 0.000000000000"
$ns_ at 27.669786144838 "$god_ set-dist 2 35 1"
$ns_ at 27.669786144838 "$god_ set-dist 15 35 3"
$ns_ at 27.669786144838 "$god_ set-dist 29 35 3"
$ns_ at 27.669786144838 "$god_ set-dist 35 37 2"
$ns_ at 27.669786144838 "$god_ set-dist 35 39 3"
$ns_ at 28.198921191715 "$node_(7) setdest 382.339915518347 656.033797109274 0.091941677063"
$ns_ at 28.958469760774 "$god_ set-dist 2 6 1"
$ns_ at 28.958469760774 "$god_ set-dist 6 21 2"
$ns_ at 28.958469760774 "$god_ set-dist 6 33 2"
$ns_ at 28.958469760774 "$god_ set-dist 6 35 2"
$ns_ at 28.958469760774 "$god_ set-dist 6 42 2"
$ns_ at 28.958469760774 "$god_ set-dist 6 46 2"
$ns_ at 29.896460745331 "$god_ set-dist 27 31 3"
$ns_ at 29.896460745331 "$god_ set-dist 27 43 2"
$ns_ at 29.896460745331 "$god_ set-dist 31 48 2"
$ns_ at 29.896460745331 "$god_ set-dist 43 48 1"
$ns_ at 29.957374007287 "$god_ set-dist 11 29 1"
$ns_ at 29.957374007287 "$god_ set-dist 29 38 2"
$ns_ at 29.957374007287 "$god_ set-dist 29 41 3"
$ns_ at 29.957374007287 "$god_ set-dist 29 44 2"
$ns_ at 30.027767114886 "$god_ set-dist 13 18 2"
$ns_ at 30.027767114886 "$god_ set-dist 13 47 3"
$ns_ at 30.027767114886 "$god_ set-dist 18 24 1"
$ns_ at 30.027767114886 "$god_ set-dist 24 47 2"
$ns_ at 30.352248680897 "$god_ set-dist 14 21 2"
$ns_ at 30.352248680897 "$god_ set-dist 16 21 3"
$ns_ at 30.352248680897 "$god_ set-dist 21 22 2"
$ns_ at 30.352248680897 "$god_ set-dist 21 24 2"
$ns_ at 30.352248680897 "$god_ set-dist 21 25 2"
$ns_ at 30.352248680897 "$god_ set-dist 21 40 3"
$ns_ at 30.352248680897 "$god_ set-dist 21 45 1"
$ns_ at 30.352248680897 "$god_ set-dist 21 48 2"
$ns_ at 32.322214020691 "$god_ set-dist 1 17 1"
$ns_ at 32.322214020691 "$god_ set-dist 17 32 2"
$ns_ at 32.572663582184 "$god_ set-dist 3 32 2"
$ns_ at 32.572663582184 "$god_ set-dist 5 32 2"
$ns_ at 32.572663582184 "$god_ set-dist 22 32 1"
$ns_ at 34.009243360741 "$god_ set-dist 8 15 3"
$ns_ at 34.009243360741 "$god_ set-dist 8 25 2"
$ns_ at 34.009243360741 "$god_ set-dist 8 39 3"
$ns_ at 34.009243360741 "$god_ set-dist 12 15 3"
$ns_ at 34.009243360741 "$god_ set-dist 12 25 2"
$ns_ at 34.009243360741 "$god_ set-dist 12 39 3"
$ns_ at 34.009243360741 "$god_ set-dist 15 36 2"
$ns_ at 34.009243360741 "$god_ set-dist 25 36 1"
$ns_ at 34.009243360741 "$god_ set-dist 36 39 2"
$ns_ at 34.419205522981 "$god_ set-dist 5 25 1"
$ns_ at 34.904692246801 "$god_ set-dist 15 27 2"
$ns_ at 34.904692246801 "$god_ set-dist 27 29 1"
$ns_ at 35.328625673546 "$god_ set-dist 9 35 2"
$ns_ at 35.328625673546 "$god_ set-dist 9 44 1"
$ns_ at 35.423813779777 "$god_ set-dist 15 48 1"
$ns_ at 36.111180357519 "$god_ set-dist 23 27 1"
$ns_ at 36.111180357519 "$god_ set-dist 27 38 2"
$ns_ at 36.111180357519 "$god_ set-dist 27 46 3"
$ns_ at 36.722436266201 "$god_ set-dist 8 48 2"
$ns_ at 36.722436266201 "$god_ set-dist 12 48 2"
$ns_ at 36.722436266201 "$god_ set-dist 34 48 2"
$ns_ at 36.722436266201 "$god_ set-dist 36 48 1"
$ns_ at 39.108770511084 "$god_ set-dist 23 48 1"
$ns_ at 39.119300585218 "$god_ set-dist 10 35 2"
$ns_ at 39.119300585218 "$god_ set-dist 20 35 1"
$ns_ at 39.119300585218 "$god_ set-dist 34 35 2"
$ns_ at 39.119300585218 "$god_ set-dist 35 49 2"
$ns_ at 41.479065747110 "$god_ set-dist 3 13 1"
$ns_ at 42.130553050124 "$god_ set-dist 18 27 1"
$ns_ at 43.006247705120 "$god_ set-dist 34 44 1"
$ns_ at 43.976078377865 "$god_ set-dist 2 37 2"
$ns_ at 43.976078377865 "$god_ set-dist 33 37 3"
$ns_ at 43.976078377865 "$god_ set-dist 35 37 3"
$ns_ at 43.976078377865 "$god_ set-dist 37 42 3"
$ns_ at 43.976078377865 "$god_ set-dist 37 46 3"
$ns_ at 45.015471367778 "$god_ set-dist 5 39 1"
$ns_ at 45.015471367778 "$god_ set-dist 31 39 2"
$ns_ at 49.216046621605 "$god_ set-dist 8 33 3"
$ns_ at 49.216046621605 "$god_ set-dist 8 41 2"
$ns_ at 50.227453133586 "$god_ set-dist 12 15 4"
$ns_ at 50.227453133586 "$god_ set-dist 12 22 3"
$ns_ at 50.227453133586 "$god_ set-dist 12 25 3"
$ns_ at 50.227453133586 "$god_ set-dist 12 30 4"
$ns_ at 50.227453133586 "$god_ set-dist 12 36 2"
$ns_ at 50.227453133586 "$god_ set-dist 12 39 4"
$ns_ at 50.227453133586 "$god_ set-dist 12 48 3"
$ns_ at 50.501409921790 "$god_ set-dist 5 7 1"
$ns_ at 50.510383900522 "$god_ set-dist 4 21 2"
$ns_ at 50.510383900522 "$god_ set-dist 21 43 1"
$ns_ at 50.890037522530 "$god_ set-dist 0 6 2"
$ns_ at 50.890037522530 "$god_ set-dist 6 10 3"
$ns_ at 50.890037522530 "$god_ set-dist 6 20 2"
$ns_ at 50.890037522530 "$god_ set-dist 6 45 1"
$ns_ at 51.901982041064 "$god_ set-dist 18 32 1"
$ns_ at 51.901982041064 "$god_ set-dist 32 38 2"
$ns_ at 51.901982041064 "$god_ set-dist 32 46 3"
$ns_ at 52.367089134060 "$god_ set-dist 19 47 1"
$ns_ at 53.837090746155 "$god_ set-dist 19 27 1"
$ns_ at 54.680239386788 "$god_ set-dist 1 49 1"
$ns_ at 54.680239386788 "$god_ set-dist 32 49 2"
$ns_ at 55.101112053479 "$god_ set-dist 5 27 2"
$ns_ at 55.101112053479 "$god_ set-dist 25 27 1"
$ns_ at 55.414265479201 "$god_ set-dist 13 16 3"
$ns_ at 55.414265479201 "$god_ set-dist 16 24 2"
$ns_ at 55.873700719199 "$god_ set-dist 1 33 2"
$ns_ at 55.873700719199 "$god_ set-dist 8 33 2"
$ns_ at 55.873700719199 "$god_ set-dist 9 33 2"
$ns_ at 55.873700719199 "$god_ set-dist 12 33 2"
$ns_ at 55.873700719199 "$god_ set-dist 33 34 2"
$ns_ at 55.873700719199 "$god_ set-dist 33 44 1"
$ns_ at 55.873700719199 "$god_ set-dist 33 47 2"
$ns_ at 56.044450589884 "$god_ set-dist 3 39 1"
$ns_ at 57.859320714710 "$god_ set-dist 23 32 1"
$ns_ at 57.944130011918 "$god_ set-dist 2 16 2"
$ns_ at 57.944130011918 "$god_ set-dist 2 22 1"
$ns_ at 57.944130011918 "$god_ set-dist 2 32 2"
$ns_ at 57.944130011918 "$god_ set-dist 2 40 2"
$ns_ at 57.944130011918 "$god_ set-dist 16 33 3"
$ns_ at 57.944130011918 "$god_ set-dist 16 35 3"
$ns_ at 57.944130011918 "$god_ set-dist 16 42 3"
$ns_ at 57.944130011918 "$god_ set-dist 16 46 3"
$ns_ at 57.944130011918 "$god_ set-dist 22 33 2"
$ns_ at 57.944130011918 "$god_ set-dist 22 35 2"
$ns_ at 57.944130011918 "$god_ set-dist 22 42 2"
$ns_ at 57.944130011918 "$god_ set-dist 22 46 2"
$ns_ at 57.944130011918 "$god_ set-dist 33 40 3"
$ns_ at 57.944130011918 "$god_ set-dist 35 40 3"
$ns_ at 57.944130011918 "$god_ set-dist 40 42 3"
$ns_ at 57.944130011918 "$god_ set-dist 40 46 3"
$ns_ at 58.641072137128 "$god_ set-dist 5 48 1"
$ns_ at 59.020457440258 "$god_ set-dist 5 15 1"
$ns_ at 59.020457440258 "$god_ set-dist 15 31 2"
$ns_ at 59.377742171975 "$god_ set-dist 29 39 2"
$ns_ at 60.270447623938 "$god_ set-dist 25 39 2"
$ns_ at 60.726501586119 "$god_ set-dist 19 21 1"
$ns_ at 60.726501586119 "$god_ set-dist 21 27 2"
$ns_ at 62.136473530145 "$god_ set-dist 11 32 1"
$ns_ at 63.284825560969 "$god_ set-dist 26 32 1"
$ns_ at 63.776060684418 "$god_ set-dist 8 15 4"
$ns_ at 63.776060684418 "$god_ set-dist 8 22 3"
$ns_ at 63.776060684418 "$god_ set-dist 8 25 3"
$ns_ at 63.776060684418 "$god_ set-dist 8 30 4"
$ns_ at 63.776060684418 "$god_ set-dist 8 36 2"
$ns_ at 63.776060684418 "$god_ set-dist 8 39 4"
$ns_ at 63.776060684418 "$god_ set-dist 8 48 3"
$ns_ at 64.378916482050 "$god_ set-dist 0 2 1"
$ns_ at 64.378916482050 "$god_ set-dist 2 17 2"
$ns_ at 65.861561721932 "$god_ set-dist 0 29 2"
$ns_ at 65.861561721932 "$god_ set-dist 7 29 1"
$ns_ at 65.861561721932 "$god_ set-dist 10 29 3"
$ns_ at 65.861561721932 "$god_ set-dist 20 29 2"
$ns_ at 65.874646357118 "$god_ set-dist 3 15 1"
$ns_ at 66.885146333804 "$god_ set-dist 1 31 2"
$ns_ at 66.885146333804 "$god_ set-dist 14 31 2"
$ns_ at 66.885146333804 "$god_ set-dist 26 31 2"
$ns_ at 66.885146333804 "$god_ set-dist 31 36 2"
$ns_ at 66.885146333804 "$god_ set-dist 31 45 1"
$ns_ at 66.999040293498 "$god_ set-dist 2 27 2"
$ns_ at 66.999040293498 "$god_ set-dist 7 27 1"
$ns_ at 67.740801159255 "$god_ set-dist 7 32 1"
$ns_ at 69.123792395822 "$god_ set-dist 13 23 2"
$ns_ at 69.123792395822 "$god_ set-dist 13 34 3"
$ns_ at 69.123792395822 "$god_ set-dist 23 24 1"
$ns_ at 69.123792395822 "$god_ set-dist 24 34 2"
$ns_ at 69.153541286519 "$god_ set-dist 0 4 2"
$ns_ at 69.153541286519 "$god_ set-dist 0 43 1"
$ns_ at 69.153541286519 "$god_ set-dist 17 43 2"
$ns_ at 69.583060337831 "$god_ set-dist 10 33 2"
$ns_ at 69.583060337831 "$god_ set-dist 20 33 1"
$ns_ at 69.583060337831 "$god_ set-dist 33 49 2"
$ns_ at 69.607749624447 "$god_ set-dist 19 32 1"
$ns_ at 69.607749624447 "$god_ set-dist 21 32 2"
$ns_ at 70.373415738489 "$god_ set-dist 0 36 2"
$ns_ at 70.681387005632 "$god_ set-dist 15 22 1"
$ns_ at 71.087442254030 "$god_ set-dist 8 43 2"
$ns_ at 71.087442254030 "$god_ set-dist 9 43 2"
$ns_ at 71.087442254030 "$god_ set-dist 12 43 2"
$ns_ at 71.087442254030 "$god_ set-dist 43 44 1"
$ns_ at 71.720570708704 "$god_ set-dist 18 34 1"
$ns_ at 71.785674613287 "$god_ set-dist 13 17 3"
$ns_ at 71.785674613287 "$god_ set-dist 15 17 3"
$ns_ at 71.785674613287 "$god_ set-dist 17 22 2"
$ns_ at 71.785674613287 "$god_ set-dist 17 23 1"
$ns_ at 71.785674613287 "$god_ set-dist 17 24 2"
$ns_ at 71.785674613287 "$god_ set-dist 17 25 2"
$ns_ at 71.785674613287 "$god_ set-dist 17 30 3"
$ns_ at 71.785674613287 "$god_ set-dist 17 39 3"
$ns_ at 71.785674613287 "$god_ set-dist 17 48 2"
$ns_ at 71.789567297822 "$god_ set-dist 2 24 1"
$ns_ at 71.789567297822 "$god_ set-dist 24 33 2"
$ns_ at 71.789567297822 "$god_ set-dist 24 35 2"
$ns_ at 71.789567297822 "$god_ set-dist 24 42 2"
$ns_ at 71.789567297822 "$god_ set-dist 24 46 2"
$ns_ at 72.017642693699 "$god_ set-dist 37 40 1"
$ns_ at 72.601392701826 "$god_ set-dist 10 16 3"
$ns_ at 72.601392701826 "$god_ set-dist 16 20 2"
$ns_ at 72.601392701826 "$god_ set-dist 16 28 2"
$ns_ at 72.601392701826 "$god_ set-dist 16 34 2"
$ns_ at 72.601392701826 "$god_ set-dist 16 36 1"
$ns_ at 72.601392701826 "$god_ set-dist 16 41 3"
$ns_ at 72.601392701826 "$god_ set-dist 16 44 2"
$ns_ at 72.601392701826 "$god_ set-dist 16 47 2"
$ns_ at 74.026574432673 "$god_ set-dist 28 29 2"
$ns_ at 74.026574432673 "$god_ set-dist 29 34 2"
$ns_ at 74.026574432673 "$god_ set-dist 29 36 1"
$ns_ at 74.026574432673 "$god_ set-dist 29 47 2"
$ns_ at 74.076120917639 "$god_ set-dist 2 19 1"
$ns_ at 74.076120917639 "$god_ set-dist 2 47 2"
$ns_ at 74.283159013624 "$god_ set-dist 13 36 2"
$ns_ at 74.283159013624 "$god_ set-dist 24 36 1"
$ns_ at 74.746832167225 "$god_ set-dist 36 43 1"
$ns_ at 75.001326434071 "$god_ set-dist 3 27 2"
$ns_ at 75.001326434071 "$god_ set-dist 11 27 1"
$ns_ at 75.372554569565 "$god_ set-dist 14 37 1"
$ns_ at 76.629675049014 "$god_ set-dist 0 30 2"
$ns_ at 76.629675049014 "$god_ set-dist 8 30 3"
$ns_ at 76.629675049014 "$god_ set-dist 9 30 3"
$ns_ at 76.629675049014 "$god_ set-dist 12 30 3"
$ns_ at 76.629675049014 "$god_ set-dist 21 30 2"
$ns_ at 76.629675049014 "$god_ set-dist 30 38 2"
$ns_ at 76.629675049014 "$god_ set-dist 30 41 3"
$ns_ at 76.629675049014 "$god_ set-dist 30 43 1"
$ns_ at 76.629675049014 "$god_ set-dist 30 44 2"
$ns_ at 77.104154278532 "$god_ set-dist 6 7 1"
$ns_ at 77.228680489380 "$god_ set-dist 1 30 2"
$ns_ at 77.228680489380 "$god_ set-dist 11 30 1"
$ns_ at 77.228680489380 "$god_ set-dist 26 30 2"
$ns_ at 77.228680489380 "$god_ set-dist 30 49 3"
$ns_ at 78.284152045534 "$god_ set-dist 16 20 3"
$ns_ at 78.284152045534 "$god_ set-dist 20 36 2"
$ns_ at 78.321138968297 "$god_ set-dist 22 27 1"
$ns_ at 79.587785151215 "$god_ set-dist 18 46 3"
$ns_ at 79.587785151215 "$god_ set-dist 23 46 3"
$ns_ at 79.587785151215 "$god_ set-dist 28 46 3"
$ns_ at 79.587785151215 "$god_ set-dist 38 46 2"
$ns_ at 80.933569818773 "$god_ set-dist 7 21 1"
$ns_ at 80.933569818773 "$god_ set-dist 21 29 2"
$ns_ at 82.312309819773 "$god_ set-dist 18 29 1"
$ns_ at 83.925542299334 "$god_ set-dist 18 37 1"
$ns_ at 83.925542299334 "$god_ set-dist 28 37 2"
$ns_ at 83.925542299334 "$god_ set-dist 34 37 2"
$ns_ at 83.925542299334 "$god_ set-dist 37 47 2"
$ns_ at 85.928272354448 "$god_ set-dist 1 4 3"
$ns_ at 85.928272354448 "$god_ set-dist 1 11 2"
$ns_ at 85.928272354448 "$god_ set-dist 1 30 3"
$ns_ at 86.990245416679 "$god_ set-dist 24 40 2"
$ns_ at 88.872964795812 "$god_ set-dist 14 43 1"
$ns_ at 89.135760926017 "$god_ set-dist 5 19 1"
$ns_ at 89.135760926017 "$god_ set-dist 5 28 2"
$ns_ at 89.135760926017 "$god_ set-dist 5 47 2"
$ns_ at 89.305885386642 "$god_ set-dist 1 4 2"
$ns_ at 89.305885386642 "$god_ set-dist 4 14 1"
$ns_ at 89.675683052337 "$god_ set-dist 26 38 1"
$ns_ at 89.831201709218 "$god_ set-dist 14 42 2"
$ns_ at 89.831201709218 "$god_ set-dist 25 42 2"
$ns_ at 89.831201709218 "$god_ set-dist 37 42 2"
$ns_ at 89.831201709218 "$god_ set-dist 42 45 1"
$ns_ at 89.831201709218 "$god_ set-dist 42 48 2"
$ns_ at 89.844582441515 "$god_ set-dist 4 16 1"
$ns_ at 89.844582441515 "$god_ set-dist 13 16 2"
$ns_ at 90.182938284444 "$god_ set-dist 2 34 2"
$ns_ at 90.182938284444 "$god_ set-dist 5 34 2"
$ns_ at 90.182938284444 "$god_ set-dist 19 34 1"
$ns_ at 91.389316854275 "$god_ set-dist 29 31 2"
$ns_ at 91.389316854275 "$god_ set-dist 29 43 1"
$ns_ at 92.408813163926 "$god_ set-dist 20 49 2"
$ns_ at 92.408813163926 "$god_ set-dist 21 49 3"
$ns_ at 92.408813163926 "$god_ set-dist 33 49 3"
$ns_ at 92.408813163926 "$god_ set-dist 35 49 3"
$ns_ at 92.408813163926 "$god_ set-dist 42 49 3"
$ns_ at 92.408813163926 "$god_ set-dist 46 49 4"
$ns_ at 92.409558290037 "$god_ set-dist 4 7 1"
$ns_ at 92.409558290037 "$god_ set-dist 4 10 3"
$ns_ at 92.409558290037 "$god_ set-dist 4 20 2"
$ns_ at 92.600553685602 "$god_ set-dist 16 38 2"
$ns_ at 92.600553685602 "$god_ set-dist 36 38 1"
$ns_ at 92.960159479565 "$god_ set-dist 9 13 3"
$ns_ at 92.960159479565 "$god_ set-dist 9 15 3"
$ns_ at 92.960159479565 "$god_ set-dist 9 22 2"
$ns_ at 92.960159479565 "$god_ set-dist 9 23 1"
$ns_ at 92.960159479565 "$god_ set-dist 9 24 2"
$ns_ at 92.960159479565 "$god_ set-dist 9 25 2"
$ns_ at 92.960159479565 "$god_ set-dist 9 39 3"
$ns_ at 92.960159479565 "$god_ set-dist 9 48 2"
$ns_ at 93.506589281466 "$god_ set-dist 4 42 2"
$ns_ at 93.506589281466 "$god_ set-dist 4 45 1"
$ns_ at 96.074519922986 "$god_ set-dist 17 31 2"
$ns_ at 96.074519922986 "$god_ set-dist 17 38 1"
$ns_ at 96.466612789774 "$god_ set-dist 4 35 2"
$ns_ at 96.466612789774 "$god_ set-dist 14 35 2"
$ns_ at 96.466612789774 "$god_ set-dist 25 35 2"
$ns_ at 96.466612789774 "$god_ set-dist 35 37 2"
$ns_ at 96.466612789774 "$god_ set-dist 35 45 1"
$ns_ at 96.466612789774 "$god_ set-dist 35 48 2"
$ns_ at 96.809785783585 "$god_ set-dist 6 31 1"
$ns_ at 96.871154451416 "$god_ set-dist 19 37 1"
$ns_ at 98.007284512271 "$god_ set-dist 1 3 3"
$ns_ at 98.007284512271 "$god_ set-dist 1 31 3"
$ns_ at 98.007284512271 "$god_ set-dist 1 45 2"
$ns_ at 100.454951849145 "$god_ set-dist 15 25 2"
$ns_ at 100.571460745426 "$god_ set-dist 3 48 1"
$ns_ at 100.707844977702 "$god_ set-dist 16 28 3"
$ns_ at 100.707844977702 "$god_ set-dist 28 36 2"
$ns_ at 103.486494168089 "$god_ set-dist 14 33 2"
$ns_ at 103.486494168089 "$god_ set-dist 14 41 2"
$ns_ at 103.486494168089 "$god_ set-dist 14 44 1"
$ns_ at 103.486494168089 "$god_ set-dist 40 41 3"
$ns_ at 103.486494168089 "$god_ set-dist 40 44 2"
$ns_ at 104.224121157934 "$god_ set-dist 3 4 2"
$ns_ at 105.111005900999 "$god_ set-dist 36 37 1"
$ns_ at 106.073844791126 "$god_ set-dist 24 31 1"
$ns_ at 106.750657389589 "$god_ set-dist 10 27 2"
$ns_ at 106.750657389589 "$god_ set-dist 10 40 3"
$ns_ at 106.750657389589 "$god_ set-dist 27 34 1"
$ns_ at 106.750657389589 "$god_ set-dist 34 40 2"
$ns_ at 107.269744557976 "$god_ set-dist 13 32 2"
$ns_ at 107.269744557976 "$god_ set-dist 32 37 1"
$ns_ at 107.643356983796 "$god_ set-dist 5 18 1"
$ns_ at 108.356897239293 "$god_ set-dist 2 25 1"
$ns_ at 108.356897239293 "$god_ set-dist 25 33 2"
$ns_ at 108.356897239293 "$god_ set-dist 25 46 2"
$ns_ at 108.738292806275 "$god_ set-dist 11 16 1"
$ns_ at 108.762516910264 "$god_ set-dist 8 25 2"
$ns_ at 108.762516910264 "$god_ set-dist 12 25 2"
$ns_ at 108.762516910264 "$god_ set-dist 25 26 1"
$ns_ at 108.762516910264 "$god_ set-dist 25 49 2"
$ns_ at 108.774669788175 "$god_ set-dist 5 21 1"
$ns_ at 108.774669788175 "$god_ set-dist 5 41 2"
$ns_ at 108.774669788175 "$god_ set-dist 13 21 2"
$ns_ at 108.774669788175 "$god_ set-dist 13 41 3"
$ns_ at 108.774669788175 "$god_ set-dist 15 21 2"
$ns_ at 108.774669788175 "$god_ set-dist 15 41 3"
$ns_ at 108.774669788175 "$god_ set-dist 21 39 2"
$ns_ at 108.774669788175 "$god_ set-dist 39 41 3"
$ns_ at 109.655299006635 "$god_ set-dist 4 33 2"
$ns_ at 109.655299006635 "$god_ set-dist 33 37 2"
$ns_ at 109.655299006635 "$god_ set-dist 33 45 1"
$ns_ at 109.655299006635 "$god_ set-dist 33 48 2"
$ns_ at 109.870486562875 "$god_ set-dist 1 31 2"
$ns_ at 109.870486562875 "$god_ set-dist 1 38 1"
$ns_ at 110.446785970564 "$god_ set-dist 16 37 1"
$ns_ at 111.358055822627 "$god_ set-dist 36 40 1"
$ns_ at 111.358055822627 "$god_ set-dist 38 40 2"
$ns_ at 111.358055822627 "$god_ set-dist 40 47 2"
$ns_ at 111.652915369329 "$god_ set-dist 4 32 1"
$ns_ at 111.721960801106 "$god_ set-dist 0 15 2"
$ns_ at 111.721960801106 "$god_ set-dist 8 15 3"
$ns_ at 111.721960801106 "$god_ set-dist 12 15 3"
$ns_ at 111.721960801106 "$god_ set-dist 15 38 2"
$ns_ at 111.721960801106 "$god_ set-dist 15 43 1"
$ns_ at 111.721960801106 "$god_ set-dist 15 44 2"
$ns_ at 112.176715555726 "$god_ set-dist 4 34 2"
$ns_ at 112.176715555726 "$god_ set-dist 10 14 2"
$ns_ at 112.176715555726 "$god_ set-dist 14 34 1"
$ns_ at 112.332546162742 "$god_ set-dist 19 41 1"
$ns_ at 112.332546162742 "$god_ set-dist 22 41 2"
$ns_ at 112.332546162742 "$god_ set-dist 24 41 2"
$ns_ at 112.332546162742 "$god_ set-dist 25 41 2"
$ns_ at 112.332546162742 "$god_ set-dist 27 41 2"
$ns_ at 112.332546162742 "$god_ set-dist 32 41 2"
$ns_ at 112.332546162742 "$god_ set-dist 37 41 2"
$ns_ at 112.332546162742 "$god_ set-dist 41 48 2"
$ns_ at 113.763331104965 "$god_ set-dist 2 48 1"
$ns_ at 113.763331104965 "$god_ set-dist 46 48 2"
$ns_ at 114.142777038279 "$god_ set-dist 13 27 2"
$ns_ at 114.142777038279 "$god_ set-dist 13 48 1"
$ns_ at 114.340795583298 "$god_ set-dist 9 29 2"
$ns_ at 114.340795583298 "$god_ set-dist 17 29 2"
$ns_ at 114.340795583298 "$god_ set-dist 23 29 1"
$ns_ at 115.145313738165 "$god_ set-dist 20 26 2"
$ns_ at 116.001992771839 "$god_ set-dist 0 31 1"
$ns_ at 116.306038841175 "$god_ set-dist 11 15 1"
$ns_ at 116.306038841175 "$god_ set-dist 15 26 2"
$ns_ at 116.306038841175 "$god_ set-dist 15 49 3"
$ns_ at 116.493165993802 "$god_ set-dist 18 20 2"
$ns_ at 117.170229137971 "$god_ set-dist 11 40 1"
$ns_ at 117.673516158779 "$god_ set-dist 5 17 2"
$ns_ at 117.673516158779 "$god_ set-dist 5 38 1"
$ns_ at 117.673516158779 "$god_ set-dist 13 38 2"
$ns_ at 117.673516158779 "$god_ set-dist 38 39 2"
$ns_ at 118.244021562548 "$god_ set-dist 25 44 1"
$ns_ at 118.453616472586 "$god_ set-dist 17 19 1"
$ns_ at 118.453616472586 "$god_ set-dist 17 37 2"
$ns_ at 119.049767876307 "$god_ set-dist 25 38 1"
$ns_ at 119.772811172449 "$god_ set-dist 0 26 2"
$ns_ at 120.211802715909 "$god_ set-dist 19 29 1"
$ns_ at 120.211802715909 "$god_ set-dist 29 41 2"
$ns_ at 120.797133963553 "$god_ set-dist 0 1 1"
$ns_ at 122.213691894878 "$god_ set-dist 29 33 2"
$ns_ at 122.213691894878 "$god_ set-dist 29 35 2"
$ns_ at 122.213691894878 "$god_ set-dist 29 42 2"
$ns_ at 122.213691894878 "$god_ set-dist 29 45 1"
$ns_ at 122.806400865128 "$node_(35) setdest 484.366844552174 105.497957319854 0.000000000000"
$ns_ at 123.408726868667 "$god_ set-dist 4 36 1"
$ns_ at 123.408726868667 "$god_ set-dist 4 47 2"
$ns_ at 123.630918264402 "$god_ set-dist 5 9 2"
$ns_ at 123.630918264402 "$god_ set-dist 5 23 1"
$ns_ at 123.806400865128 "$node_(35) setdest 340.762388594117 495.972145749770 0.326803473983"
$ns_ at 125.605799089565 "$god_ set-dist 0 5 1"
$ns_ at 125.605799089565 "$god_ set-dist 0 13 2"
$ns_ at 125.605799089565 "$god_ set-dist 0 39 2"
$ns_ at 127.013115106680 "$god_ set-dist 22 38 1"
$ns_ at 127.200221566706 "$god_ set-dist 7 10 3"
$ns_ at 127.200221566706 "$god_ set-dist 7 20 2"
$ns_ at 127.251774729306 "$god_ set-dist 14 38 1"
$ns_ at 127.591952604505 "$god_ set-dist 8 20 2"
$ns_ at 128.763759253418 "$god_ set-dist 0 16 2"
$ns_ at 128.763759253418 "$god_ set-dist 0 25 1"
$ns_ at 128.763759253418 "$god_ set-dist 0 40 2"
$ns_ at 129.554469014579 "$god_ set-dist 1 20 2"
$ns_ at 129.624510216630 "$god_ set-dist 9 37 2"
$ns_ at 129.624510216630 "$god_ set-dist 23 37 1"
$ns_ at 130.069550398763 "$god_ set-dist 11 26 2"
$ns_ at 130.069550398763 "$god_ set-dist 11 49 3"
$ns_ at 130.069550398763 "$god_ set-dist 15 26 3"
$ns_ at 130.069550398763 "$god_ set-dist 15 49 4"
$ns_ at 130.160619857341 "$god_ set-dist 3 26 3"
$ns_ at 130.160619857341 "$god_ set-dist 3 49 4"
$ns_ at 130.160619857341 "$god_ set-dist 26 45 2"
$ns_ at 130.160619857341 "$god_ set-dist 45 49 3"
$ns_ at 130.199212995040 "$god_ set-dist 2 8 2"
$ns_ at 130.199212995040 "$god_ set-dist 2 9 2"
$ns_ at 130.199212995040 "$god_ set-dist 2 12 2"
$ns_ at 130.199212995040 "$god_ set-dist 2 44 1"
$ns_ at 130.772658553306 "$god_ set-dist 4 47 3"
$ns_ at 130.772658553306 "$god_ set-dist 16 47 3"
$ns_ at 130.772658553306 "$god_ set-dist 36 47 2"
$ns_ at 130.772658553306 "$god_ set-dist 40 47 3"
$ns_ at 130.858183301873 "$god_ set-dist 4 18 1"
$ns_ at 130.858183301873 "$god_ set-dist 4 28 2"
$ns_ at 130.858183301873 "$god_ set-dist 4 47 2"
$ns_ at 131.991190690272 "$god_ set-dist 6 18 1"
$ns_ at 131.991190690272 "$god_ set-dist 6 28 2"
$ns_ at 131.991190690272 "$god_ set-dist 6 34 2"
$ns_ at 131.991190690272 "$god_ set-dist 6 47 2"
$ns_ at 133.393084918121 "$god_ set-dist 27 37 1"
$ns_ at 133.709756440802 "$god_ set-dist 22 40 2"
$ns_ at 134.829390569304 "$god_ set-dist 8 11 3"
$ns_ at 134.829390569304 "$god_ set-dist 11 12 3"
$ns_ at 134.829390569304 "$god_ set-dist 11 44 2"
$ns_ at 135.323270750747 "$god_ set-dist 6 17 2"
$ns_ at 135.323270750747 "$god_ set-dist 6 19 1"
$ns_ at 135.323270750747 "$god_ set-dist 6 41 2"
$ns_ at 135.695695556346 "$god_ set-dist 20 34 2"
$ns_ at 135.743926897597 "$god_ set-dist 5 29 1"
$ns_ at 136.329867938347 "$god_ set-dist 25 49 3"
$ns_ at 136.329867938347 "$god_ set-dist 26 49 2"
$ns_ at 136.329867938347 "$god_ set-dist 30 49 4"
$ns_ at 137.444225538833 "$god_ set-dist 31 32 2"
$ns_ at 137.444225538833 "$god_ set-dist 32 43 1"
$ns_ at 137.692211836863 "$god_ set-dist 6 9 2"
$ns_ at 137.692211836863 "$god_ set-dist 9 19 1"
$ns_ at 138.267485696487 "$god_ set-dist 9 31 2"
$ns_ at 138.267485696487 "$god_ set-dist 9 38 1"
$ns_ at 139.007545383434 "$god_ set-dist 0 14 1"
$ns_ at 139.183676345574 "$god_ set-dist 31 34 2"
$ns_ at 139.183676345574 "$god_ set-dist 34 38 1"
$ns_ at 139.618157001342 "$god_ set-dist 16 18 1"
$ns_ at 139.618157001342 "$god_ set-dist 16 28 2"
$ns_ at 139.618157001342 "$god_ set-dist 16 47 2"
$ns_ at 140.854474879799 "$god_ set-dist 22 39 1"
$ns_ at 140.920451335181 "$god_ set-dist 16 31 2"
$ns_ at 140.920451335181 "$god_ set-dist 22 31 1"
$ns_ at 140.920451335181 "$god_ set-dist 27 31 2"
$ns_ at 141.447003988029 "$god_ set-dist 25 40 2"
$ns_ at 141.632918510822 "$god_ set-dist 7 31 1"
$ns_ at 141.833607565698 "$god_ set-dist 31 40 2"
$ns_ at 141.833607565698 "$god_ set-dist 31 48 1"
$ns_ at 141.907731585885 "$god_ set-dist 0 22 1"
$ns_ at 143.383124981021 "$god_ set-dist 3 41 2"
$ns_ at 143.383124981021 "$god_ set-dist 4 41 2"
$ns_ at 143.383124981021 "$god_ set-dist 41 45 1"
$ns_ at 143.553242982686 "$god_ set-dist 5 14 1"
$ns_ at 144.126831389040 "$god_ set-dist 31 40 3"
$ns_ at 144.126831389040 "$god_ set-dist 40 48 2"
$ns_ at 144.756114923843 "$god_ set-dist 3 37 2"
$ns_ at 145.069846217403 "$god_ set-dist 27 43 1"
$ns_ at 145.126784451985 "$god_ set-dist 6 14 1"
$ns_ at 146.102183504108 "$god_ set-dist 31 47 2"
$ns_ at 146.102183504108 "$god_ set-dist 38 47 1"
$ns_ at 146.192874579533 "$god_ set-dist 14 47 1"
$ns_ at 146.192874579533 "$god_ set-dist 40 47 2"
$ns_ at 147.497174275527 "$god_ set-dist 4 27 1"
$ns_ at 147.824387387069 "$god_ set-dist 16 48 2"
$ns_ at 148.002532537866 "$god_ set-dist 12 20 2"
$ns_ at 148.003695517626 "$god_ set-dist 24 38 1"
$ns_ at 148.250467977872 "$god_ set-dist 3 11 2"
$ns_ at 148.250467977872 "$god_ set-dist 3 40 3"
$ns_ at 148.292641745057 "$god_ set-dist 0 13 3"
$ns_ at 148.292641745057 "$god_ set-dist 5 13 2"
$ns_ at 148.292641745057 "$god_ set-dist 13 21 3"
$ns_ at 148.528774847425 "$god_ set-dist 38 48 1"
$ns_ at 148.578801260084 "$god_ set-dist 0 13 2"
$ns_ at 148.578801260084 "$god_ set-dist 0 24 1"
$ns_ at 148.920488816531 "$god_ set-dist 3 21 1"
$ns_ at 148.920488816531 "$god_ set-dist 13 21 2"
$ns_ at 149.283880747630 "$god_ set-dist 20 47 2"
$ns_ at 149.679686847225 "$god_ set-dist 8 22 2"
$ns_ at 149.679686847225 "$god_ set-dist 8 39 3"
$ns_ at 149.679686847225 "$god_ set-dist 12 22 2"
$ns_ at 149.679686847225 "$god_ set-dist 12 39 3"
$ns_ at 149.679686847225 "$god_ set-dist 22 44 1"
$ns_ at 149.679686847225 "$god_ set-dist 39 44 2"
$ns_ at 149.716621693804 "$god_ set-dist 6 36 1"
$ns_ at 150.680860409195 "$god_ set-dist 3 10 4"
$ns_ at 150.680860409195 "$god_ set-dist 10 20 2"
$ns_ at 150.680860409195 "$god_ set-dist 10 21 3"
$ns_ at 150.680860409195 "$god_ set-dist 10 33 3"
$ns_ at 150.680860409195 "$god_ set-dist 10 35 3"
$ns_ at 150.680860409195 "$god_ set-dist 10 42 3"
$ns_ at 150.680860409195 "$god_ set-dist 10 45 3"
$ns_ at 150.680860409195 "$god_ set-dist 10 46 4"
$ns_ at 151.065963175926 "$god_ set-dist 4 28 3"
$ns_ at 151.065963175926 "$god_ set-dist 16 28 3"
$ns_ at 151.065963175926 "$god_ set-dist 18 28 2"
$ns_ at 152.045957112980 "$god_ set-dist 0 40 3"
$ns_ at 152.045957112980 "$god_ set-dist 14 40 2"
$ns_ at 152.045957112980 "$god_ set-dist 40 47 3"
$ns_ at 152.155798858341 "$god_ set-dist 20 23 2"
$ns_ at 154.219942190342 "$god_ set-dist 0 48 1"
$ns_ at 155.285324917387 "$god_ set-dist 6 23 1"
$ns_ at 155.837902551061 "$god_ set-dist 5 36 1"
$ns_ at 156.445657594030 "$god_ set-dist 5 12 2"
$ns_ at 156.445657594030 "$god_ set-dist 6 12 2"
$ns_ at 156.445657594030 "$god_ set-dist 11 12 2"
$ns_ at 156.445657594030 "$god_ set-dist 12 13 3"
$ns_ at 156.445657594030 "$god_ set-dist 12 23 1"
$ns_ at 156.445657594030 "$god_ set-dist 12 24 2"
$ns_ at 156.445657594030 "$god_ set-dist 12 29 2"
$ns_ at 156.445657594030 "$god_ set-dist 12 37 2"
$ns_ at 156.445657594030 "$god_ set-dist 12 48 2"
$ns_ at 157.782071614448 "$god_ set-dist 9 41 1"
$ns_ at 158.555523656646 "$god_ set-dist 5 42 1"
$ns_ at 158.555523656646 "$god_ set-dist 15 42 2"
$ns_ at 158.555523656646 "$god_ set-dist 30 42 2"
$ns_ at 158.555523656646 "$god_ set-dist 39 42 2"
$ns_ at 158.819817486096 "$god_ set-dist 21 24 1"
$ns_ at 159.035061828072 "$god_ set-dist 5 8 2"
$ns_ at 159.035061828072 "$god_ set-dist 5 44 1"
$ns_ at 161.032053724930 "$god_ set-dist 4 9 2"
$ns_ at 161.032053724930 "$god_ set-dist 9 16 2"
$ns_ at 161.032053724930 "$god_ set-dist 9 18 1"
$ns_ at 161.391297906716 "$god_ set-dist 11 39 1"
$ns_ at 162.183652807152 "$god_ set-dist 7 10 2"
$ns_ at 162.183652807152 "$god_ set-dist 7 34 1"
$ns_ at 163.385532584440 "$god_ set-dist 5 35 1"
$ns_ at 163.385532584440 "$god_ set-dist 15 35 2"
$ns_ at 163.385532584440 "$god_ set-dist 30 35 2"
$ns_ at 163.385532584440 "$god_ set-dist 35 39 2"
$ns_ at 165.281743510588 "$god_ set-dist 19 33 1"
$ns_ at 165.281743510588 "$god_ set-dist 27 33 2"
$ns_ at 165.281743510588 "$god_ set-dist 32 33 2"
$ns_ at 165.382219407540 "$node_(42) setdest 517.792261608595 120.420621008959 0.000000000000"
$ns_ at 165.981019753095 "$god_ set-dist 25 31 1"
$ns_ at 166.382219407540 "$node_(42) setdest 335.496999200754 622.254304568957 0.015670848838"
$ns_ at 166.455662113550 "$god_ set-dist 9 14 1"
$ns_ at 166.951281400742 "$god_ set-dist 1 10 1"
$ns_ at 166.951281400742 "$god_ set-dist 10 32 2"
$ns_ at 167.255153505140 "$god_ set-dist 1 25 1"
$ns_ at 167.255153505140 "$god_ set-dist 1 30 2"
$ns_ at 167.255153505140 "$god_ set-dist 10 25 2"
$ns_ at 167.255153505140 "$god_ set-dist 10 30 3"
$ns_ at 167.255153505140 "$god_ set-dist 25 49 2"
$ns_ at 167.255153505140 "$god_ set-dist 30 49 3"
$ns_ at 167.470437442880 "$god_ set-dist 15 31 1"
$ns_ at 167.470437442880 "$god_ set-dist 15 33 2"
$ns_ at 167.470437442880 "$god_ set-dist 15 46 2"
$ns_ at 167.506059912719 "$god_ set-dist 4 20 3"
$ns_ at 167.506059912719 "$god_ set-dist 20 45 2"
$ns_ at 167.708033501566 "$god_ set-dist 2 23 1"
$ns_ at 167.708033501566 "$god_ set-dist 23 46 2"
$ns_ at 167.723180547610 "$god_ set-dist 4 17 2"
$ns_ at 167.723180547610 "$god_ set-dist 16 17 2"
$ns_ at 167.723180547610 "$god_ set-dist 17 18 1"
$ns_ at 169.119976585117 "$node_(20) setdest 315.411995871853 88.363208735722 0.000000000000"
$ns_ at 170.119976585117 "$node_(20) setdest 652.541862791103 566.873694406759 0.745366777535"
$ns_ at 170.520546495220 "$god_ set-dist 4 20 2"
$ns_ at 170.520546495220 "$god_ set-dist 20 45 1"
$ns_ at 170.801230932853 "$god_ set-dist 1 30 3"
$ns_ at 170.801230932853 "$god_ set-dist 10 30 4"
$ns_ at 170.801230932853 "$god_ set-dist 25 30 2"
$ns_ at 170.801230932853 "$god_ set-dist 26 30 3"
$ns_ at 170.801230932853 "$god_ set-dist 30 49 4"
$ns_ at 171.291558741401 "$god_ set-dist 14 17 1"
$ns_ at 171.687895740785 "$god_ set-dist 9 31 3"
$ns_ at 171.687895740785 "$god_ set-dist 31 38 2"
$ns_ at 171.687895740785 "$god_ set-dist 31 47 3"
$ns_ at 172.659662764860 "$god_ set-dist 5 33 1"
$ns_ at 172.659662764860 "$god_ set-dist 30 33 2"
$ns_ at 172.659662764860 "$god_ set-dist 33 39 2"
$ns_ at 172.690982393897 "$god_ set-dist 4 12 2"
$ns_ at 172.690982393897 "$god_ set-dist 4 23 1"
$ns_ at 172.690982393897 "$god_ set-dist 4 28 2"
$ns_ at 172.906299737046 "$god_ set-dist 8 13 3"
$ns_ at 172.906299737046 "$god_ set-dist 8 48 2"
$ns_ at 172.906299737046 "$god_ set-dist 13 44 2"
$ns_ at 172.906299737046 "$god_ set-dist 44 48 1"
$ns_ at 174.761300980402 "$god_ set-dist 27 35 2"
$ns_ at 174.761300980402 "$god_ set-dist 27 42 2"
$ns_ at 174.761300980402 "$god_ set-dist 27 45 1"
$ns_ at 175.192955037302 "$god_ set-dist 6 32 1"
$ns_ at 175.694812663827 "$god_ set-dist 32 35 2"
$ns_ at 175.694812663827 "$god_ set-dist 32 42 2"
$ns_ at 175.694812663827 "$god_ set-dist 32 45 1"
$ns_ at 178.595226427248 "$god_ set-dist 12 38 1"
$ns_ at 178.749418379323 "$god_ set-dist 34 36 2"
$ns_ at 179.930565849678 "$god_ set-dist 27 38 1"
$ns_ at 181.157277297670 "$god_ set-dist 27 44 1"
$ns_ at 181.223965476852 "$god_ set-dist 2 41 1"
$ns_ at 181.907970746054 "$god_ set-dist 11 38 2"
$ns_ at 182.183801438574 "$god_ set-dist 5 42 2"
$ns_ at 182.183801438574 "$god_ set-dist 30 42 3"
$ns_ at 182.183801438574 "$god_ set-dist 39 42 3"
$ns_ at 184.210094676520 "$god_ set-dist 19 35 1"
$ns_ at 184.744335244648 "$god_ set-dist 8 16 2"
$ns_ at 184.744335244648 "$god_ set-dist 12 16 2"
$ns_ at 184.744335244648 "$god_ set-dist 16 26 1"
$ns_ at 184.744335244648 "$god_ set-dist 16 28 2"
$ns_ at 185.013691765103 "$god_ set-dist 14 28 1"
$ns_ at 185.125093031126 "$god_ set-dist 16 25 2"
$ns_ at 185.759207143851 "$god_ set-dist 5 32 1"
$ns_ at 185.880286500651 "$god_ set-dist 36 44 2"
$ns_ at 185.982166995334 "$node_(40) setdest 282.853844536841 669.762752819958 0.000000000000"
$ns_ at 186.027091895110 "$god_ set-dist 9 46 2"
$ns_ at 186.027091895110 "$god_ set-dist 10 46 3"
$ns_ at 186.027091895110 "$god_ set-dist 17 46 2"
$ns_ at 186.027091895110 "$god_ set-dist 28 46 2"
$ns_ at 186.027091895110 "$god_ set-dist 41 46 1"
$ns_ at 186.027091895110 "$god_ set-dist 46 49 3"
$ns_ at 186.038371769486 "$god_ set-dist 0 6 1"
$ns_ at 186.066058967580 "$god_ set-dist 0 1 2"
$ns_ at 186.069104933416 "$god_ set-dist 0 34 1"
$ns_ at 186.982166995334 "$node_(40) setdest 103.345999106757 556.365851167146 0.746511569078"
$ns_ at 187.533454520230 "$god_ set-dist 8 29 2"
$ns_ at 187.533454520230 "$god_ set-dist 15 26 2"
$ns_ at 187.533454520230 "$god_ set-dist 26 29 1"
$ns_ at 187.533454520230 "$god_ set-dist 26 30 2"
$ns_ at 187.961820558230 "$god_ set-dist 7 33 1"
$ns_ at 188.194503617409 "$node_(36) setdest 277.898035890607 477.987761861052 0.000000000000"
$ns_ at 189.006206411367 "$god_ set-dist 32 34 1"
$ns_ at 189.194503617409 "$node_(36) setdest 584.848773257934 249.196613191835 0.762266022514"
$ns_ at 189.230725488110 "$god_ set-dist 6 27 1"
$ns_ at 189.690135107836 "$god_ set-dist 2 15 1"
$ns_ at 189.690135107836 "$god_ set-dist 15 41 2"
$ns_ at 189.789934048581 "$god_ set-dist 21 48 1"
$ns_ at 190.197817686208 "$god_ set-dist 32 38 1"
$ns_ at 190.256535759156 "$god_ set-dist 25 34 1"
$ns_ at 190.398945398163 "$god_ set-dist 5 27 1"
$ns_ at 190.662595479926 "$god_ set-dist 36 44 1"
$ns_ at 191.142950853971 "$god_ set-dist 11 13 1"
$ns_ at 191.785994541035 "$god_ set-dist 7 41 1"
$ns_ at 193.113342803891 "$god_ set-dist 0 9 1"
$ns_ at 193.113342803891 "$god_ set-dist 9 31 2"
$ns_ at 193.227755750164 "$god_ set-dist 19 31 1"
$ns_ at 193.227755750164 "$god_ set-dist 31 47 2"
$ns_ at 193.285194650168 "$god_ set-dist 20 34 1"
$ns_ at 195.287157416394 "$god_ set-dist 7 17 1"
$ns_ at 196.029603307130 "$god_ set-dist 13 33 2"
$ns_ at 196.029603307130 "$god_ set-dist 24 33 1"
$ns_ at 196.418362625917 "$god_ set-dist 2 14 1"
$ns_ at 196.418362625917 "$god_ set-dist 14 46 2"
$ns_ at 196.427822124653 "$god_ set-dist 8 24 2"
$ns_ at 196.427822124653 "$god_ set-dist 24 44 1"
$ns_ at 196.961355661383 "$god_ set-dist 13 35 2"
$ns_ at 196.961355661383 "$god_ set-dist 24 35 1"
$ns_ at 197.463483023245 "$god_ set-dist 15 20 2"
$ns_ at 197.463483023245 "$god_ set-dist 15 45 1"
$ns_ at 197.733081554562 "$god_ set-dist 31 39 1"
$ns_ at 197.733081554562 "$god_ set-dist 39 42 2"
$ns_ at 197.733081554562 "$god_ set-dist 39 46 2"
$ns_ at 198.377388251895 "$god_ set-dist 3 26 2"
$ns_ at 198.377388251895 "$god_ set-dist 26 43 1"


#===================================
#        Agents Definition   
set tcp0 [new Agent/TCP]
$ns_ attach-agent $node_(2) $tcp0
set sink2 [new Agent/TCPSink]
$ns_ attach-agent $node_(4) $sink2
$ns_ connect $tcp0 $sink2
$tcp0 set packetSize_ 512


#===================================
#        Applications Definition        
#===================================
#Setup a FTP Application over TCP connection
set ftp0 [new Application/FTP]
$ftp0 attach-agent $tcp0
$ns_ at 1.0 "$ftp0 start"
$ns_ at 200.0 "$ftp0 stop"  
     
#===================================
#Setup a TCP connection

#===================================
#        Termination        
#===================================
#Define a 'finish' procedure
proc finish {} {
    global ns_ tracefile namfile
    $ns_ flush-trace
    close $tracefile
    close $namfile
    exec nam dsdvms_1.nam &
    exit 0
}
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns_ at $val(stop) "\$node_($i) reset"
}
$ns_ at $val(stop) "$ns_ nam-end-wireless $val(stop)"
$ns_ at $val(stop) "finish"
$ns_ at $val(stop) "puts \"done\" ; $ns_ halt"
$ns_ run






