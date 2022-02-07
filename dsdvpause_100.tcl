
set val(chan)   Channel/WirelessChannel    ;# channel type
set val(prop)   Propagation/TwoRayGround   ;# radio-propagation model
set val(netif)  Phy/WirelessPhy            ;# network interface type
set val(mac)    Mac/802_11                 ;# MAC type
set val(ifq)    Queue/DropTail/PriQueue  ;# interface queue type
set val(ll)     LL                         ;# link layer type
set val(ant)    Antenna/OmniAntenna        ;# antenna model
set val(ifqlen) 50                         ;# max packet in ifq
set val(nn)     50                         ;# number of mobilenodes
set val(rp)     DSDV                       ;# routing protocol
set val(x)      670                      ;# X dimension of topography
set val(y)      670                      ;# Y dimension of topography
set val(stop)   200.0                         ;# time of simulation end

#===================================
#        Initialization        
#===================================
#Create a ns simulator
set ns_ [new Simulator]

#Setup topography object
set topo       [new Topography]
$topo load_flatgrid $val(x) $val(y)
set god_ [create-god $val(nn)]



$ns_ use-newtrace
#Open the NS trace file
set tracefile [open dsdvpause_100.tr w]
$ns_ trace-all $tracefile
#$ns use-newtrace
#Open the NAM trace file
set namfile [open dsdvpause_100.nam w]
$ns_ namtrace-all $namfile
$ns_ namtrace-all-wireless $namfile $val(x) $val(y)
set chan [new $val(chan)];#Create wireless channel

#===================================
#     Mobile node parameter setup
#===================================
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











# nodes: 50, pause: 100.00, max speed: 20.00, max x: 670.00, max y: 670.00
#
$node_(0) set X_ 535.894078443751
$node_(0) set Y_ 523.574214196633
$node_(0) set Z_ 0.000000000000
$node_(1) set X_ 345.284793616561
$node_(1) set Y_ 512.349617716093
$node_(1) set Z_ 0.000000000000
$node_(2) set X_ 519.600827760755
$node_(2) set Y_ 159.692350613421
$node_(2) set Z_ 0.000000000000
$node_(3) set X_ 345.981657142794
$node_(3) set Y_ 469.380501983954
$node_(3) set Z_ 0.000000000000
$node_(4) set X_ 530.505378154367
$node_(4) set Y_ 631.798015568402
$node_(4) set Z_ 0.000000000000
$node_(5) set X_ 660.760861790799
$node_(5) set Y_ 667.733215386632
$node_(5) set Z_ 0.000000000000
$node_(6) set X_ 218.526172540952
$node_(6) set Y_ 587.435210846952
$node_(6) set Z_ 0.000000000000
$node_(7) set X_ 386.760518447540
$node_(7) set Y_ 240.648296762920
$node_(7) set Z_ 0.000000000000
$node_(8) set X_ 227.611796740269
$node_(8) set Y_ 548.799762576900
$node_(8) set Z_ 0.000000000000
$node_(9) set X_ 551.937340461409
$node_(9) set Y_ 357.962290848642
$node_(9) set Z_ 0.000000000000
$node_(10) set X_ 343.940237609104
$node_(10) set Y_ 169.421842726819
$node_(10) set Z_ 0.000000000000
$node_(11) set X_ 370.899168049690
$node_(11) set Y_ 440.203756739474
$node_(11) set Z_ 0.000000000000
$node_(12) set X_ 449.459671596440
$node_(12) set Y_ 150.834905203353
$node_(12) set Z_ 0.000000000000
$node_(13) set X_ 218.761108944265
$node_(13) set Y_ 74.382990647960
$node_(13) set Z_ 0.000000000000
$node_(14) set X_ 251.797012003087
$node_(14) set Y_ 32.586122762392
$node_(14) set Z_ 0.000000000000
$node_(15) set X_ 81.192226930983
$node_(15) set Y_ 581.388442590552
$node_(15) set Z_ 0.000000000000
$node_(16) set X_ 356.164841321829
$node_(16) set Y_ 80.067931016472
$node_(16) set Z_ 0.000000000000
$node_(17) set X_ 118.472496297275
$node_(17) set Y_ 567.593991733051
$node_(17) set Z_ 0.000000000000
$node_(18) set X_ 125.381919953376
$node_(18) set Y_ 533.489327839525
$node_(18) set Z_ 0.000000000000
$node_(19) set X_ 351.215101096952
$node_(19) set Y_ 78.025885312675
$node_(19) set Z_ 0.000000000000
$node_(20) set X_ 468.525330830195
$node_(20) set Y_ 433.047685707900
$node_(20) set Z_ 0.000000000000
$node_(21) set X_ 527.440901807907
$node_(21) set Y_ 581.850984183840
$node_(21) set Z_ 0.000000000000
$node_(22) set X_ 152.851717843012
$node_(22) set Y_ 562.369785269936
$node_(22) set Z_ 0.000000000000
$node_(23) set X_ 180.501703902696
$node_(23) set Y_ 341.525366573426
$node_(23) set Z_ 0.000000000000
$node_(24) set X_ 70.442528061579
$node_(24) set Y_ 67.860890330063
$node_(24) set Z_ 0.000000000000
$node_(25) set X_ 192.885695362982
$node_(25) set Y_ 559.206050977776
$node_(25) set Z_ 0.000000000000
$node_(26) set X_ 517.609476408169
$node_(26) set Y_ 138.558626545173
$node_(26) set Z_ 0.000000000000
$node_(27) set X_ 411.189169585087
$node_(27) set Y_ 232.024248070327
$node_(27) set Z_ 0.000000000000
$node_(28) set X_ 497.350640364209
$node_(28) set Y_ 47.630781984702
$node_(28) set Z_ 0.000000000000
$node_(29) set X_ 50.805378471855
$node_(29) set Y_ 256.035300373412
$node_(29) set Z_ 0.000000000000
$node_(30) set X_ 597.031174759028
$node_(30) set Y_ 263.473339984765
$node_(30) set Z_ 0.000000000000
$node_(31) set X_ 153.046729116170
$node_(31) set Y_ 600.993443009592
$node_(31) set Z_ 0.000000000000
$node_(32) set X_ 134.487116258433
$node_(32) set Y_ 158.916412753662
$node_(32) set Z_ 0.000000000000
$node_(33) set X_ 526.097005197820
$node_(33) set Y_ 238.223347414857
$node_(33) set Z_ 0.000000000000
$node_(34) set X_ 596.084201514142
$node_(34) set Y_ 1.437977342657
$node_(34) set Z_ 0.000000000000
$node_(35) set X_ 312.961799263967
$node_(35) set Y_ 570.602907104279
$node_(35) set Z_ 0.000000000000
$node_(36) set X_ 503.964802195476
$node_(36) set Y_ 356.159726351319
$node_(36) set Z_ 0.000000000000
$node_(37) set X_ 141.820116380366
$node_(37) set Y_ 143.755926569279
$node_(37) set Z_ 0.000000000000
$node_(38) set X_ 196.631493612507
$node_(38) set Y_ 464.660147961534
$node_(38) set Z_ 0.000000000000
$node_(39) set X_ 548.616374293856
$node_(39) set Y_ 497.194845372934
$node_(39) set Z_ 0.000000000000
$node_(40) set X_ 596.431001787458
$node_(40) set Y_ 600.370974856700
$node_(40) set Z_ 0.000000000000
$node_(41) set X_ 316.603512254900
$node_(41) set Y_ 64.156343337269
$node_(41) set Z_ 0.000000000000
$node_(42) set X_ 106.247391055677
$node_(42) set Y_ 319.118098774125
$node_(42) set Z_ 0.000000000000
$node_(43) set X_ 430.635128412886
$node_(43) set Y_ 35.567924531207
$node_(43) set Z_ 0.000000000000
$node_(44) set X_ 109.824455025021
$node_(44) set Y_ 646.144127905830
$node_(44) set Z_ 0.000000000000
$node_(45) set X_ 536.426846714873
$node_(45) set Y_ 537.961004503511
$node_(45) set Z_ 0.000000000000
$node_(46) set X_ 586.790394317918
$node_(46) set Y_ 285.615485894499
$node_(46) set Z_ 0.000000000000
$node_(47) set X_ 614.371159409453
$node_(47) set Y_ 223.641560030506
$node_(47) set Z_ 0.000000000000
$node_(48) set X_ 6.852676327191
$node_(48) set Y_ 334.353303400680
$node_(48) set Z_ 0.000000000000
$node_(49) set X_ 10.306762609120
$node_(49) set Y_ 653.734619502630
$node_(49) set Z_ 0.000000000000
$god_ set-dist 0 1 1
$god_ set-dist 0 2 2
$god_ set-dist 0 3 1
$god_ set-dist 0 4 1
$god_ set-dist 0 5 1
$god_ set-dist 0 6 2
$god_ set-dist 0 7 2
$god_ set-dist 0 8 2
$god_ set-dist 0 9 1
$god_ set-dist 0 10 2
$god_ set-dist 0 11 1
$god_ set-dist 0 12 2
$god_ set-dist 0 13 3
$god_ set-dist 0 14 3
$god_ set-dist 0 15 2
$god_ set-dist 0 16 3
$god_ set-dist 0 17 2
$god_ set-dist 0 18 2
$god_ set-dist 0 19 3
$god_ set-dist 0 20 1
$god_ set-dist 0 21 1
$god_ set-dist 0 22 2
$god_ set-dist 0 23 2
$god_ set-dist 0 24 4
$god_ set-dist 0 25 2
$god_ set-dist 0 26 2
$god_ set-dist 0 27 2
$god_ set-dist 0 28 3
$god_ set-dist 0 29 3
$god_ set-dist 0 30 2
$god_ set-dist 0 31 2
$god_ set-dist 0 32 3
$god_ set-dist 0 33 2
$god_ set-dist 0 34 3
$god_ set-dist 0 35 1
$god_ set-dist 0 36 1
$god_ set-dist 0 37 3
$god_ set-dist 0 38 2
$god_ set-dist 0 39 1
$god_ set-dist 0 40 1
$god_ set-dist 0 41 3
$god_ set-dist 0 42 3
$god_ set-dist 0 43 3
$god_ set-dist 0 44 2
$god_ set-dist 0 45 1
$god_ set-dist 0 46 1
$god_ set-dist 0 47 2
$god_ set-dist 0 48 3
$god_ set-dist 0 49 3
$god_ set-dist 1 2 2
$god_ set-dist 1 3 1
$god_ set-dist 1 4 1
$god_ set-dist 1 5 2
$god_ set-dist 1 6 1
$god_ set-dist 1 7 2
$god_ set-dist 1 8 1
$god_ set-dist 1 9 2
$god_ set-dist 1 10 2
$god_ set-dist 1 11 1
$god_ set-dist 1 12 2
$god_ set-dist 1 13 3
$god_ set-dist 1 14 3
$god_ set-dist 1 15 2
$god_ set-dist 1 16 3
$god_ set-dist 1 17 1
$god_ set-dist 1 18 1
$god_ set-dist 1 19 3
$god_ set-dist 1 20 1
$god_ set-dist 1 21 1
$god_ set-dist 1 22 1
$god_ set-dist 1 23 1
$god_ set-dist 1 24 3
$god_ set-dist 1 25 1
$god_ set-dist 1 26 2
$god_ set-dist 1 27 2
$god_ set-dist 1 28 3
$god_ set-dist 1 29 2
$god_ set-dist 1 30 2
$god_ set-dist 1 31 1
$god_ set-dist 1 32 2
$god_ set-dist 1 33 2
$god_ set-dist 1 34 3
$god_ set-dist 1 35 1
$god_ set-dist 1 36 1
$god_ set-dist 1 37 2
$god_ set-dist 1 38 1
$god_ set-dist 1 39 1
$god_ set-dist 1 40 2
$god_ set-dist 1 41 3
$god_ set-dist 1 42 2
$god_ set-dist 1 43 3
$god_ set-dist 1 44 2
$god_ set-dist 1 45 1
$god_ set-dist 1 46 2
$god_ set-dist 1 47 2
$god_ set-dist 1 48 2
$god_ set-dist 1 49 2
$god_ set-dist 2 3 2
$god_ set-dist 2 4 3
$god_ set-dist 2 5 3
$god_ set-dist 2 6 3
$god_ set-dist 2 7 1
$god_ set-dist 2 8 3
$god_ set-dist 2 9 1
$god_ set-dist 2 10 1
$god_ set-dist 2 11 2
$god_ set-dist 2 12 1
$god_ set-dist 2 13 2
$god_ set-dist 2 14 2
$god_ set-dist 2 15 4
$god_ set-dist 2 16 1
$god_ set-dist 2 17 3
$god_ set-dist 2 18 3
$god_ set-dist 2 19 1
$god_ set-dist 2 20 2
$god_ set-dist 2 21 2
$god_ set-dist 2 22 3
$god_ set-dist 2 23 2
$god_ set-dist 2 24 2
$god_ set-dist 2 25 3
$god_ set-dist 2 26 1
$god_ set-dist 2 27 1
$god_ set-dist 2 28 1
$god_ set-dist 2 29 3
$god_ set-dist 2 30 1
$god_ set-dist 2 31 3
$god_ set-dist 2 32 2
$god_ set-dist 2 33 1
$god_ set-dist 2 34 1
$god_ set-dist 2 35 3
$god_ set-dist 2 36 1
$god_ set-dist 2 37 2
$god_ set-dist 2 38 3
$god_ set-dist 2 39 2
$god_ set-dist 2 40 2
$god_ set-dist 2 41 1
$god_ set-dist 2 42 3
$god_ set-dist 2 43 1
$god_ set-dist 2 44 4
$god_ set-dist 2 45 2
$god_ set-dist 2 46 1
$god_ set-dist 2 47 1
$god_ set-dist 2 48 3
$god_ set-dist 2 49 4
$god_ set-dist 3 4 1
$god_ set-dist 3 5 2
$god_ set-dist 3 6 1
$god_ set-dist 3 7 1
$god_ set-dist 3 8 1
$god_ set-dist 3 9 1
$god_ set-dist 3 10 2
$god_ set-dist 3 11 1
$god_ set-dist 3 12 2
$god_ set-dist 3 13 2
$god_ set-dist 3 14 2
$god_ set-dist 3 15 2
$god_ set-dist 3 16 2
$god_ set-dist 3 17 1
$god_ set-dist 3 18 1
$god_ set-dist 3 19 2
$god_ set-dist 3 20 1
$god_ set-dist 3 21 1
$god_ set-dist 3 22 1
$god_ set-dist 3 23 1
$god_ set-dist 3 24 3
$god_ set-dist 3 25 1
$god_ set-dist 3 26 2
$god_ set-dist 3 27 1
$god_ set-dist 3 28 2
$god_ set-dist 3 29 2
$god_ set-dist 3 30 2
$god_ set-dist 3 31 1
$god_ set-dist 3 32 2
$god_ set-dist 3 33 2
$god_ set-dist 3 34 3
$god_ set-dist 3 35 1
$god_ set-dist 3 36 1
$god_ set-dist 3 37 2
$god_ set-dist 3 38 1
$god_ set-dist 3 39 1
$god_ set-dist 3 40 2
$god_ set-dist 3 41 2
$god_ set-dist 3 42 2
$god_ set-dist 3 43 2
$god_ set-dist 3 44 2
$god_ set-dist 3 45 1
$god_ set-dist 3 46 2
$god_ set-dist 3 47 2
$god_ set-dist 3 48 2
$god_ set-dist 3 49 2
$god_ set-dist 4 5 1
$god_ set-dist 4 6 2
$god_ set-dist 4 7 2
$god_ set-dist 4 8 2
$god_ set-dist 4 9 2
$god_ set-dist 4 10 3
$god_ set-dist 4 11 1
$god_ set-dist 4 12 3
$god_ set-dist 4 13 3
$god_ set-dist 4 14 3
$god_ set-dist 4 15 2
$god_ set-dist 4 16 3
$god_ set-dist 4 17 2
$god_ set-dist 4 18 2
$god_ set-dist 4 19 3
$god_ set-dist 4 20 1
$god_ set-dist 4 21 1
$god_ set-dist 4 22 2
$god_ set-dist 4 23 2
$god_ set-dist 4 24 4
$god_ set-dist 4 25 2
$god_ set-dist 4 26 3
$god_ set-dist 4 27 2
$god_ set-dist 4 28 3
$god_ set-dist 4 29 3
$god_ set-dist 4 30 2
$god_ set-dist 4 31 2
$god_ set-dist 4 32 3
$god_ set-dist 4 33 2
$god_ set-dist 4 34 3
$god_ set-dist 4 35 1
$god_ set-dist 4 36 2
$god_ set-dist 4 37 3
$god_ set-dist 4 38 2
$god_ set-dist 4 39 1
$god_ set-dist 4 40 1
$god_ set-dist 4 41 3
$god_ set-dist 4 42 3
$god_ set-dist 4 43 3
$god_ set-dist 4 44 2
$god_ set-dist 4 45 1
$god_ set-dist 4 46 2
$god_ set-dist 4 47 3
$god_ set-dist 4 48 3
$god_ set-dist 4 49 3
$god_ set-dist 5 6 3
$god_ set-dist 5 7 3
$god_ set-dist 5 8 3
$god_ set-dist 5 9 2
$god_ set-dist 5 10 3
$god_ set-dist 5 11 2
$god_ set-dist 5 12 3
$god_ set-dist 5 13 4
$god_ set-dist 5 14 4
$god_ set-dist 5 15 3
$god_ set-dist 5 16 4
$god_ set-dist 5 17 3
$god_ set-dist 5 18 3
$god_ set-dist 5 19 4
$god_ set-dist 5 20 2
$god_ set-dist 5 21 1
$god_ set-dist 5 22 3
$god_ set-dist 5 23 3
$god_ set-dist 5 24 5
$god_ set-dist 5 25 3
$god_ set-dist 5 26 3
$god_ set-dist 5 27 3
$god_ set-dist 5 28 3
$god_ set-dist 5 29 4
$god_ set-dist 5 30 2
$god_ set-dist 5 31 3
$god_ set-dist 5 32 4
$god_ set-dist 5 33 3
$god_ set-dist 5 34 4
$god_ set-dist 5 35 2
$god_ set-dist 5 36 2
$god_ set-dist 5 37 4
$god_ set-dist 5 38 3
$god_ set-dist 5 39 1
$god_ set-dist 5 40 1
$god_ set-dist 5 41 4
$god_ set-dist 5 42 4
$god_ set-dist 5 43 4
$god_ set-dist 5 44 3
$god_ set-dist 5 45 1
$god_ set-dist 5 46 2
$god_ set-dist 5 47 3
$god_ set-dist 5 48 4
$god_ set-dist 5 49 4
$god_ set-dist 6 7 2
$god_ set-dist 6 8 1
$god_ set-dist 6 9 2
$god_ set-dist 6 10 2
$god_ set-dist 6 11 1
$god_ set-dist 6 12 3
$god_ set-dist 6 13 3
$god_ set-dist 6 14 3
$god_ set-dist 6 15 1
$god_ set-dist 6 16 3
$god_ set-dist 6 17 1
$god_ set-dist 6 18 1
$god_ set-dist 6 19 3
$god_ set-dist 6 20 2
$god_ set-dist 6 21 2
$god_ set-dist 6 22 1
$god_ set-dist 6 23 1
$god_ set-dist 6 24 3
$god_ set-dist 6 25 1
$god_ set-dist 6 26 3
$god_ set-dist 6 27 2
$god_ set-dist 6 28 3
$god_ set-dist 6 29 2
$god_ set-dist 6 30 3
$god_ set-dist 6 31 1
$god_ set-dist 6 32 2
$god_ set-dist 6 33 3
$god_ set-dist 6 34 4
$god_ set-dist 6 35 1
$god_ set-dist 6 36 2
$god_ set-dist 6 37 2
$god_ set-dist 6 38 1
$god_ set-dist 6 39 2
$god_ set-dist 6 40 3
$god_ set-dist 6 41 3
$god_ set-dist 6 42 2
$god_ set-dist 6 43 3
$god_ set-dist 6 44 1
$god_ set-dist 6 45 2
$god_ set-dist 6 46 3
$god_ set-dist 6 47 3
$god_ set-dist 6 48 2
$god_ set-dist 6 49 1
$god_ set-dist 7 8 2
$god_ set-dist 7 9 1
$god_ set-dist 7 10 1
$god_ set-dist 7 11 1
$god_ set-dist 7 12 1
$god_ set-dist 7 13 1
$god_ set-dist 7 14 1
$god_ set-dist 7 15 3
$god_ set-dist 7 16 1
$god_ set-dist 7 17 2
$god_ set-dist 7 18 2
$god_ set-dist 7 19 1
$god_ set-dist 7 20 1
$god_ set-dist 7 21 2
$god_ set-dist 7 22 2
$god_ set-dist 7 23 1
$god_ set-dist 7 24 2
$god_ set-dist 7 25 2
$god_ set-dist 7 26 1
$god_ set-dist 7 27 1
$god_ set-dist 7 28 1
$god_ set-dist 7 29 2
$god_ set-dist 7 30 1
$god_ set-dist 7 31 2
$god_ set-dist 7 32 2
$god_ set-dist 7 33 1
$god_ set-dist 7 34 2
$god_ set-dist 7 35 2
$god_ set-dist 7 36 1
$god_ set-dist 7 37 2
$god_ set-dist 7 38 2
$god_ set-dist 7 39 2
$god_ set-dist 7 40 2
$god_ set-dist 7 41 1
$god_ set-dist 7 42 2
$god_ set-dist 7 43 1
$god_ set-dist 7 44 3
$god_ set-dist 7 45 2
$god_ set-dist 7 46 1
$god_ set-dist 7 47 1
$god_ set-dist 7 48 2
$god_ set-dist 7 49 3
$god_ set-dist 8 9 2
$god_ set-dist 8 10 2
$god_ set-dist 8 11 1
$god_ set-dist 8 12 3
$god_ set-dist 8 13 3
$god_ set-dist 8 14 3
$god_ set-dist 8 15 1
$god_ set-dist 8 16 3
$god_ set-dist 8 17 1
$god_ set-dist 8 18 1
$god_ set-dist 8 19 3
$god_ set-dist 8 20 2
$god_ set-dist 8 21 2
$god_ set-dist 8 22 1
$god_ set-dist 8 23 1
$god_ set-dist 8 24 3
$god_ set-dist 8 25 1
$god_ set-dist 8 26 3
$god_ set-dist 8 27 2
$god_ set-dist 8 28 3
$god_ set-dist 8 29 2
$god_ set-dist 8 30 3
$god_ set-dist 8 31 1
$god_ set-dist 8 32 2
$god_ set-dist 8 33 3
$god_ set-dist 8 34 4
$god_ set-dist 8 35 1
$god_ set-dist 8 36 2
$god_ set-dist 8 37 2
$god_ set-dist 8 38 1
$god_ set-dist 8 39 2
$god_ set-dist 8 40 3
$god_ set-dist 8 41 3
$god_ set-dist 8 42 2
$god_ set-dist 8 43 3
$god_ set-dist 8 44 1
$god_ set-dist 8 45 2
$god_ set-dist 8 46 3
$god_ set-dist 8 47 3
$god_ set-dist 8 48 2
$god_ set-dist 8 49 1
$god_ set-dist 9 10 2
$god_ set-dist 9 11 1
$god_ set-dist 9 12 1
$god_ set-dist 9 13 2
$god_ set-dist 9 14 2
$god_ set-dist 9 15 3
$god_ set-dist 9 16 2
$god_ set-dist 9 17 2
$god_ set-dist 9 18 2
$god_ set-dist 9 19 2
$god_ set-dist 9 20 1
$god_ set-dist 9 21 1
$god_ set-dist 9 22 2
$god_ set-dist 9 23 2
$god_ set-dist 9 24 3
$god_ set-dist 9 25 2
$god_ set-dist 9 26 1
$god_ set-dist 9 27 1
$god_ set-dist 9 28 2
$god_ set-dist 9 29 3
$god_ set-dist 9 30 1
$god_ set-dist 9 31 2
$god_ set-dist 9 32 3
$god_ set-dist 9 33 1
$god_ set-dist 9 34 2
$god_ set-dist 9 35 2
$god_ set-dist 9 36 1
$god_ set-dist 9 37 3
$god_ set-dist 9 38 2
$god_ set-dist 9 39 1
$god_ set-dist 9 40 1
$god_ set-dist 9 41 2
$god_ set-dist 9 42 3
$god_ set-dist 9 43 2
$god_ set-dist 9 44 3
$god_ set-dist 9 45 1
$god_ set-dist 9 46 1
$god_ set-dist 9 47 1
$god_ set-dist 9 48 3
$god_ set-dist 9 49 3
$god_ set-dist 10 11 2
$god_ set-dist 10 12 1
$god_ set-dist 10 13 1
$god_ set-dist 10 14 1
$god_ set-dist 10 15 3
$god_ set-dist 10 16 1
$god_ set-dist 10 17 2
$god_ set-dist 10 18 2
$god_ set-dist 10 19 1
$god_ set-dist 10 20 2
$god_ set-dist 10 21 2
$god_ set-dist 10 22 2
$god_ set-dist 10 23 1
$god_ set-dist 10 24 2
$god_ set-dist 10 25 2
$god_ set-dist 10 26 1
$god_ set-dist 10 27 1
$god_ set-dist 10 28 1
$god_ set-dist 10 29 2
$god_ set-dist 10 30 2
$god_ set-dist 10 31 3
$god_ set-dist 10 32 1
$god_ set-dist 10 33 1
$god_ set-dist 10 34 2
$god_ set-dist 10 35 3
$god_ set-dist 10 36 1
$god_ set-dist 10 37 1
$god_ set-dist 10 38 2
$god_ set-dist 10 39 2
$god_ set-dist 10 40 3
$god_ set-dist 10 41 1
$god_ set-dist 10 42 2
$god_ set-dist 10 43 1
$god_ set-dist 10 44 3
$god_ set-dist 10 45 2
$god_ set-dist 10 46 2
$god_ set-dist 10 47 2
$god_ set-dist 10 48 2
$god_ set-dist 10 49 3
$god_ set-dist 11 12 2
$god_ set-dist 11 13 2
$god_ set-dist 11 14 2
$god_ set-dist 11 15 2
$god_ set-dist 11 16 2
$god_ set-dist 11 17 2
$god_ set-dist 11 18 2
$god_ set-dist 11 19 2
$god_ set-dist 11 20 1
$god_ set-dist 11 21 1
$god_ set-dist 11 22 1
$god_ set-dist 11 23 1
$god_ set-dist 11 24 3
$god_ set-dist 11 25 1
$god_ set-dist 11 26 2
$god_ set-dist 11 27 1
$god_ set-dist 11 28 2
$god_ set-dist 11 29 2
$god_ set-dist 11 30 2
$god_ set-dist 11 31 2
$god_ set-dist 11 32 2
$god_ set-dist 11 33 2
$god_ set-dist 11 34 3
$god_ set-dist 11 35 1
$god_ set-dist 11 36 1
$god_ set-dist 11 37 2
$god_ set-dist 11 38 1
$god_ set-dist 11 39 1
$god_ set-dist 11 40 2
$god_ set-dist 11 41 2
$god_ set-dist 11 42 2
$god_ set-dist 11 43 2
$god_ set-dist 11 44 2
$god_ set-dist 11 45 1
$god_ set-dist 11 46 2
$god_ set-dist 11 47 2
$god_ set-dist 11 48 2
$god_ set-dist 11 49 2
$god_ set-dist 12 13 1
$god_ set-dist 12 14 1
$god_ set-dist 12 15 4
$god_ set-dist 12 16 1
$god_ set-dist 12 17 3
$god_ set-dist 12 18 3
$god_ set-dist 12 19 1
$god_ set-dist 12 20 2
$god_ set-dist 12 21 2
$god_ set-dist 12 22 3
$god_ set-dist 12 23 2
$god_ set-dist 12 24 2
$god_ set-dist 12 25 3
$god_ set-dist 12 26 1
$god_ set-dist 12 27 1
$god_ set-dist 12 28 1
$god_ set-dist 12 29 2
$god_ set-dist 12 30 1
$god_ set-dist 12 31 3
$god_ set-dist 12 32 2
$god_ set-dist 12 33 1
$god_ set-dist 12 34 1
$god_ set-dist 12 35 3
$god_ set-dist 12 36 1
$god_ set-dist 12 37 2
$god_ set-dist 12 38 3
$god_ set-dist 12 39 2
$god_ set-dist 12 40 2
$god_ set-dist 12 41 1
$god_ set-dist 12 42 3
$god_ set-dist 12 43 1
$god_ set-dist 12 44 4
$god_ set-dist 12 45 2
$god_ set-dist 12 46 1
$god_ set-dist 12 47 1
$god_ set-dist 12 48 3
$god_ set-dist 12 49 4
$god_ set-dist 13 14 1
$god_ set-dist 13 15 4
$god_ set-dist 13 16 1
$god_ set-dist 13 17 3
$god_ set-dist 13 18 3
$god_ set-dist 13 19 1
$god_ set-dist 13 20 2
$god_ set-dist 13 21 3
$god_ set-dist 13 22 3
$god_ set-dist 13 23 2
$god_ set-dist 13 24 1
$god_ set-dist 13 25 3
$god_ set-dist 13 26 2
$god_ set-dist 13 27 1
$god_ set-dist 13 28 2
$god_ set-dist 13 29 1
$god_ set-dist 13 30 2
$god_ set-dist 13 31 3
$god_ set-dist 13 32 1
$god_ set-dist 13 33 2
$god_ set-dist 13 34 2
$god_ set-dist 13 35 3
$god_ set-dist 13 36 2
$god_ set-dist 13 37 1
$god_ set-dist 13 38 3
$god_ set-dist 13 39 3
$god_ set-dist 13 40 3
$god_ set-dist 13 41 1
$god_ set-dist 13 42 2
$god_ set-dist 13 43 1
$god_ set-dist 13 44 4
$god_ set-dist 13 45 3
$god_ set-dist 13 46 2
$god_ set-dist 13 47 2
$god_ set-dist 13 48 2
$god_ set-dist 13 49 4
$god_ set-dist 14 15 4
$god_ set-dist 14 16 1
$god_ set-dist 14 17 3
$god_ set-dist 14 18 3
$god_ set-dist 14 19 1
$god_ set-dist 14 20 2
$god_ set-dist 14 21 3
$god_ set-dist 14 22 3
$god_ set-dist 14 23 2
$god_ set-dist 14 24 1
$god_ set-dist 14 25 3
$god_ set-dist 14 26 2
$god_ set-dist 14 27 2
$god_ set-dist 14 28 1
$god_ set-dist 14 29 2
$god_ set-dist 14 30 2
$god_ set-dist 14 31 3
$god_ set-dist 14 32 1
$god_ set-dist 14 33 2
$god_ set-dist 14 34 2
$god_ set-dist 14 35 3
$god_ set-dist 14 36 2
$god_ set-dist 14 37 1
$god_ set-dist 14 38 3
$god_ set-dist 14 39 3
$god_ set-dist 14 40 3
$god_ set-dist 14 41 1
$god_ set-dist 14 42 2
$god_ set-dist 14 43 1
$god_ set-dist 14 44 4
$god_ set-dist 14 45 3
$god_ set-dist 14 46 2
$god_ set-dist 14 47 2
$god_ set-dist 14 48 2
$god_ set-dist 14 49 4
$god_ set-dist 15 16 4
$god_ set-dist 15 17 1
$god_ set-dist 15 18 1
$god_ set-dist 15 19 4
$god_ set-dist 15 20 2
$god_ set-dist 15 21 2
$god_ set-dist 15 22 1
$god_ set-dist 15 23 2
$god_ set-dist 15 24 4
$god_ set-dist 15 25 1
$god_ set-dist 15 26 4
$god_ set-dist 15 27 3
$god_ set-dist 15 28 4
$god_ set-dist 15 29 3
$god_ set-dist 15 30 3
$god_ set-dist 15 31 1
$god_ set-dist 15 32 3
$god_ set-dist 15 33 3
$god_ set-dist 15 34 4
$god_ set-dist 15 35 1
$god_ set-dist 15 36 3
$god_ set-dist 15 37 3
$god_ set-dist 15 38 1
$god_ set-dist 15 39 2
$god_ set-dist 15 40 3
$god_ set-dist 15 41 4
$god_ set-dist 15 42 2
$god_ set-dist 15 43 4
$god_ set-dist 15 44 1
$god_ set-dist 15 45 2
$god_ set-dist 15 46 3
$god_ set-dist 15 47 4
$god_ set-dist 15 48 2
$god_ set-dist 15 49 1
$god_ set-dist 16 17 3
$god_ set-dist 16 18 3
$god_ set-dist 16 19 1
$god_ set-dist 16 20 2
$god_ set-dist 16 21 3
$god_ set-dist 16 22 3
$god_ set-dist 16 23 2
$god_ set-dist 16 24 2
$god_ set-dist 16 25 3
$god_ set-dist 16 26 1
$god_ set-dist 16 27 1
$god_ set-dist 16 28 1
$god_ set-dist 16 29 2
$god_ set-dist 16 30 2
$god_ set-dist 16 31 3
$god_ set-dist 16 32 1
$god_ set-dist 16 33 1
$god_ set-dist 16 34 2
$god_ set-dist 16 35 3
$god_ set-dist 16 36 2
$god_ set-dist 16 37 1
$god_ set-dist 16 38 3
$god_ set-dist 16 39 3
$god_ set-dist 16 40 3
$god_ set-dist 16 41 1
$god_ set-dist 16 42 2
$god_ set-dist 16 43 1
$god_ set-dist 16 44 4
$god_ set-dist 16 45 3
$god_ set-dist 16 46 2
$god_ set-dist 16 47 2
$god_ set-dist 16 48 2
$god_ set-dist 16 49 4
$god_ set-dist 17 18 1
$god_ set-dist 17 19 3
$god_ set-dist 17 20 2
$god_ set-dist 17 21 2
$god_ set-dist 17 22 1
$god_ set-dist 17 23 1
$god_ set-dist 17 24 3
$god_ set-dist 17 25 1
$god_ set-dist 17 26 3
$god_ set-dist 17 27 2
$god_ set-dist 17 28 3
$god_ set-dist 17 29 2
$god_ set-dist 17 30 3
$god_ set-dist 17 31 1
$god_ set-dist 17 32 2
$god_ set-dist 17 33 3
$god_ set-dist 17 34 4
$god_ set-dist 17 35 1
$god_ set-dist 17 36 2
$god_ set-dist 17 37 2
$god_ set-dist 17 38 1
$god_ set-dist 17 39 2
$god_ set-dist 17 40 3
$god_ set-dist 17 41 3
$god_ set-dist 17 42 1
$god_ set-dist 17 43 3
$god_ set-dist 17 44 1
$god_ set-dist 17 45 2
$god_ set-dist 17 46 3
$god_ set-dist 17 47 3
$god_ set-dist 17 48 2
$god_ set-dist 17 49 1
$god_ set-dist 18 19 3
$god_ set-dist 18 20 2
$god_ set-dist 18 21 2
$god_ set-dist 18 22 1
$god_ set-dist 18 23 1
$god_ set-dist 18 24 3
$god_ set-dist 18 25 1
$god_ set-dist 18 26 3
$god_ set-dist 18 27 2
$god_ set-dist 18 28 3
$god_ set-dist 18 29 2
$god_ set-dist 18 30 3
$god_ set-dist 18 31 1
$god_ set-dist 18 32 2
$god_ set-dist 18 33 3
$god_ set-dist 18 34 4
$god_ set-dist 18 35 1
$god_ set-dist 18 36 2
$god_ set-dist 18 37 2
$god_ set-dist 18 38 1
$god_ set-dist 18 39 2
$god_ set-dist 18 40 3
$god_ set-dist 18 41 3
$god_ set-dist 18 42 1
$god_ set-dist 18 43 3
$god_ set-dist 18 44 1
$god_ set-dist 18 45 2
$god_ set-dist 18 46 3
$god_ set-dist 18 47 3
$god_ set-dist 18 48 1
$god_ set-dist 18 49 1
$god_ set-dist 19 20 2
$god_ set-dist 19 21 3
$god_ set-dist 19 22 3
$god_ set-dist 19 23 2
$god_ set-dist 19 24 2
$god_ set-dist 19 25 3
$god_ set-dist 19 26 1
$god_ set-dist 19 27 1
$god_ set-dist 19 28 1
$god_ set-dist 19 29 2
$god_ set-dist 19 30 2
$god_ set-dist 19 31 3
$god_ set-dist 19 32 1
$god_ set-dist 19 33 1
$god_ set-dist 19 34 2
$god_ set-dist 19 35 3
$god_ set-dist 19 36 2
$god_ set-dist 19 37 1
$god_ set-dist 19 38 3
$god_ set-dist 19 39 3
$god_ set-dist 19 40 3
$god_ set-dist 19 41 1
$god_ set-dist 19 42 2
$god_ set-dist 19 43 1
$god_ set-dist 19 44 4
$god_ set-dist 19 45 3
$god_ set-dist 19 46 2
$god_ set-dist 19 47 2
$god_ set-dist 19 48 2
$god_ set-dist 19 49 4
$god_ set-dist 20 21 1
$god_ set-dist 20 22 2
$god_ set-dist 20 23 2
$god_ set-dist 20 24 3
$god_ set-dist 20 25 2
$god_ set-dist 20 26 2
$god_ set-dist 20 27 1
$god_ set-dist 20 28 2
$god_ set-dist 20 29 3
$god_ set-dist 20 30 1
$god_ set-dist 20 31 2
$god_ set-dist 20 32 3
$god_ set-dist 20 33 1
$god_ set-dist 20 34 2
$god_ set-dist 20 35 1
$god_ set-dist 20 36 1
$god_ set-dist 20 37 3
$god_ set-dist 20 38 2
$god_ set-dist 20 39 1
$god_ set-dist 20 40 1
$god_ set-dist 20 41 2
$god_ set-dist 20 42 3
$god_ set-dist 20 43 2
$god_ set-dist 20 44 2
$god_ set-dist 20 45 1
$god_ set-dist 20 46 1
$god_ set-dist 20 47 2
$god_ set-dist 20 48 3
$god_ set-dist 20 49 3
$god_ set-dist 21 22 2
$god_ set-dist 21 23 2
$god_ set-dist 21 24 4
$god_ set-dist 21 25 2
$god_ set-dist 21 26 2
$god_ set-dist 21 27 2
$god_ set-dist 21 28 3
$god_ set-dist 21 29 3
$god_ set-dist 21 30 2
$god_ set-dist 21 31 2
$god_ set-dist 21 32 3
$god_ set-dist 21 33 2
$god_ set-dist 21 34 3
$god_ set-dist 21 35 1
$god_ set-dist 21 36 1
$god_ set-dist 21 37 3
$god_ set-dist 21 38 2
$god_ set-dist 21 39 1
$god_ set-dist 21 40 1
$god_ set-dist 21 41 3
$god_ set-dist 21 42 3
$god_ set-dist 21 43 3
$god_ set-dist 21 44 2
$god_ set-dist 21 45 1
$god_ set-dist 21 46 2
$god_ set-dist 21 47 2
$god_ set-dist 21 48 3
$god_ set-dist 21 49 3
$god_ set-dist 22 23 1
$god_ set-dist 22 24 3
$god_ set-dist 22 25 1
$god_ set-dist 22 26 3
$god_ set-dist 22 27 2
$god_ set-dist 22 28 3
$god_ set-dist 22 29 2
$god_ set-dist 22 30 3
$god_ set-dist 22 31 1
$god_ set-dist 22 32 2
$god_ set-dist 22 33 3
$god_ set-dist 22 34 4
$god_ set-dist 22 35 1
$god_ set-dist 22 36 2
$god_ set-dist 22 37 2
$god_ set-dist 22 38 1
$god_ set-dist 22 39 2
$god_ set-dist 22 40 3
$god_ set-dist 22 41 3
$god_ set-dist 22 42 1
$god_ set-dist 22 43 3
$god_ set-dist 22 44 1
$god_ set-dist 22 45 2
$god_ set-dist 22 46 3
$god_ set-dist 22 47 3
$god_ set-dist 22 48 2
$god_ set-dist 22 49 1
$god_ set-dist 23 24 2
$god_ set-dist 23 25 1
$god_ set-dist 23 26 2
$god_ set-dist 23 27 2
$god_ set-dist 23 28 2
$god_ set-dist 23 29 1
$god_ set-dist 23 30 2
$god_ set-dist 23 31 2
$god_ set-dist 23 32 1
$god_ set-dist 23 33 2
$god_ set-dist 23 34 3
$god_ set-dist 23 35 2
$god_ set-dist 23 36 2
$god_ set-dist 23 37 1
$god_ set-dist 23 38 1
$god_ set-dist 23 39 2
$god_ set-dist 23 40 3
$god_ set-dist 23 41 2
$god_ set-dist 23 42 1
$god_ set-dist 23 43 2
$god_ set-dist 23 44 2
$god_ set-dist 23 45 2
$god_ set-dist 23 46 2
$god_ set-dist 23 47 2
$god_ set-dist 23 48 1
$god_ set-dist 23 49 2
$god_ set-dist 24 25 3
$god_ set-dist 24 26 2
$god_ set-dist 24 27 2
$god_ set-dist 24 28 2
$god_ set-dist 24 29 1
$god_ set-dist 24 30 3
$god_ set-dist 24 31 4
$god_ set-dist 24 32 1
$god_ set-dist 24 33 3
$god_ set-dist 24 34 3
$god_ set-dist 24 35 4
$god_ set-dist 24 36 3
$god_ set-dist 24 37 1
$god_ set-dist 24 38 3
$god_ set-dist 24 39 4
$god_ set-dist 24 40 4
$god_ set-dist 24 41 1
$god_ set-dist 24 42 2
$god_ set-dist 24 43 2
$god_ set-dist 24 44 4
$god_ set-dist 24 45 4
$god_ set-dist 24 46 3
$god_ set-dist 24 47 3
$god_ set-dist 24 48 2
$god_ set-dist 24 49 4
$god_ set-dist 25 26 3
$god_ set-dist 25 27 2
$god_ set-dist 25 28 3
$god_ set-dist 25 29 2
$god_ set-dist 25 30 3
$god_ set-dist 25 31 1
$god_ set-dist 25 32 2
$god_ set-dist 25 33 3
$god_ set-dist 25 34 4
$god_ set-dist 25 35 1
$god_ set-dist 25 36 2
$god_ set-dist 25 37 2
$god_ set-dist 25 38 1
$god_ set-dist 25 39 2
$god_ set-dist 25 40 3
$god_ set-dist 25 41 3
$god_ set-dist 25 42 2
$god_ set-dist 25 43 3
$god_ set-dist 25 44 1
$god_ set-dist 25 45 2
$god_ set-dist 25 46 3
$god_ set-dist 25 47 3
$god_ set-dist 25 48 2
$god_ set-dist 25 49 1
$god_ set-dist 26 27 1
$god_ set-dist 26 28 1
$god_ set-dist 26 29 3
$god_ set-dist 26 30 1
$god_ set-dist 26 31 3
$god_ set-dist 26 32 2
$god_ set-dist 26 33 1
$god_ set-dist 26 34 1
$god_ set-dist 26 35 3
$god_ set-dist 26 36 1
$god_ set-dist 26 37 2
$god_ set-dist 26 38 3
$god_ set-dist 26 39 2
$god_ set-dist 26 40 2
$god_ set-dist 26 41 1
$god_ set-dist 26 42 3
$god_ set-dist 26 43 1
$god_ set-dist 26 44 4
$god_ set-dist 26 45 2
$god_ set-dist 26 46 1
$god_ set-dist 26 47 1
$god_ set-dist 26 48 3
$god_ set-dist 26 49 4
$god_ set-dist 27 28 1
$god_ set-dist 27 29 2
$god_ set-dist 27 30 1
$god_ set-dist 27 31 2
$god_ set-dist 27 32 2
$god_ set-dist 27 33 1
$god_ set-dist 27 34 2
$god_ set-dist 27 35 2
$god_ set-dist 27 36 1
$god_ set-dist 27 37 2
$god_ set-dist 27 38 2
$god_ set-dist 27 39 2
$god_ set-dist 27 40 2
$god_ set-dist 27 41 1
$god_ set-dist 27 42 3
$god_ set-dist 27 43 1
$god_ set-dist 27 44 3
$god_ set-dist 27 45 2
$god_ set-dist 27 46 1
$god_ set-dist 27 47 1
$god_ set-dist 27 48 3
$god_ set-dist 27 49 3
$god_ set-dist 28 29 3
$god_ set-dist 28 30 1
$god_ set-dist 28 31 3
$god_ set-dist 28 32 2
$god_ set-dist 28 33 1
$god_ set-dist 28 34 1
$god_ set-dist 28 35 3
$god_ set-dist 28 36 2
$god_ set-dist 28 37 2
$god_ set-dist 28 38 3
$god_ set-dist 28 39 2
$god_ set-dist 28 40 3
$god_ set-dist 28 41 1
$god_ set-dist 28 42 3
$god_ set-dist 28 43 1
$god_ set-dist 28 44 4
$god_ set-dist 28 45 3
$god_ set-dist 28 46 2
$god_ set-dist 28 47 1
$god_ set-dist 28 48 3
$god_ set-dist 28 49 4
$god_ set-dist 29 30 3
$god_ set-dist 29 31 3
$god_ set-dist 29 32 1
$god_ set-dist 29 33 3
$god_ set-dist 29 34 3
$god_ set-dist 29 35 3
$god_ set-dist 29 36 3
$god_ set-dist 29 37 1
$god_ set-dist 29 38 2
$god_ set-dist 29 39 3
$god_ set-dist 29 40 4
$god_ set-dist 29 41 2
$god_ set-dist 29 42 1
$god_ set-dist 29 43 2
$god_ set-dist 29 44 3
$god_ set-dist 29 45 3
$god_ set-dist 29 46 3
$god_ set-dist 29 47 3
$god_ set-dist 29 48 1
$god_ set-dist 29 49 3
$god_ set-dist 30 31 3
$god_ set-dist 30 32 3
$god_ set-dist 30 33 1
$god_ set-dist 30 34 2
$god_ set-dist 30 35 2
$god_ set-dist 30 36 1
$god_ set-dist 30 37 3
$god_ set-dist 30 38 3
$god_ set-dist 30 39 1
$god_ set-dist 30 40 2
$god_ set-dist 30 41 2
$god_ set-dist 30 42 3
$god_ set-dist 30 43 2
$god_ set-dist 30 44 3
$god_ set-dist 30 45 2
$god_ set-dist 30 46 1
$god_ set-dist 30 47 1
$god_ set-dist 30 48 3
$god_ set-dist 30 49 4
$god_ set-dist 31 32 3
$god_ set-dist 31 33 3
$god_ set-dist 31 34 4
$god_ set-dist 31 35 1
$god_ set-dist 31 36 2
$god_ set-dist 31 37 3
$god_ set-dist 31 38 1
$god_ set-dist 31 39 2
$god_ set-dist 31 40 3
$god_ set-dist 31 41 3
$god_ set-dist 31 42 2
$god_ set-dist 31 43 3
$god_ set-dist 31 44 1
$god_ set-dist 31 45 2
$god_ set-dist 31 46 3
$god_ set-dist 31 47 3
$god_ set-dist 31 48 2
$god_ set-dist 31 49 1
$god_ set-dist 32 33 2
$god_ set-dist 32 34 3
$god_ set-dist 32 35 3
$god_ set-dist 32 36 2
$god_ set-dist 32 37 1
$god_ set-dist 32 38 2
$god_ set-dist 32 39 3
$god_ set-dist 32 40 4
$god_ set-dist 32 41 1
$god_ set-dist 32 42 1
$god_ set-dist 32 43 2
$god_ set-dist 32 44 3
$god_ set-dist 32 45 3
$god_ set-dist 32 46 3
$god_ set-dist 32 47 3
$god_ set-dist 32 48 1
$god_ set-dist 32 49 3
$god_ set-dist 33 34 1
$god_ set-dist 33 35 2
$god_ set-dist 33 36 1
$god_ set-dist 33 37 2
$god_ set-dist 33 38 3
$god_ set-dist 33 39 2
$god_ set-dist 33 40 2
$god_ set-dist 33 41 2
$god_ set-dist 33 42 3
$god_ set-dist 33 43 1
$god_ set-dist 33 44 3
$god_ set-dist 33 45 2
$god_ set-dist 33 46 1
$god_ set-dist 33 47 1
$god_ set-dist 33 48 3
$god_ set-dist 33 49 4
$god_ set-dist 34 35 3
$god_ set-dist 34 36 2
$god_ set-dist 34 37 3
$god_ set-dist 34 38 4
$god_ set-dist 34 39 3
$god_ set-dist 34 40 3
$god_ set-dist 34 41 2
$god_ set-dist 34 42 4
$god_ set-dist 34 43 1
$god_ set-dist 34 44 4
$god_ set-dist 34 45 3
$god_ set-dist 34 46 2
$god_ set-dist 34 47 1
$god_ set-dist 34 48 4
$god_ set-dist 34 49 5
$god_ set-dist 35 36 2
$god_ set-dist 35 37 3
$god_ set-dist 35 38 1
$god_ set-dist 35 39 1
$god_ set-dist 35 40 2
$god_ set-dist 35 41 3
$god_ set-dist 35 42 2
$god_ set-dist 35 43 3
$god_ set-dist 35 44 1
$god_ set-dist 35 45 1
$god_ set-dist 35 46 2
$god_ set-dist 35 47 3
$god_ set-dist 35 48 2
$god_ set-dist 35 49 2
$god_ set-dist 36 37 2
$god_ set-dist 36 38 2
$god_ set-dist 36 39 1
$god_ set-dist 36 40 2
$god_ set-dist 36 41 2
$god_ set-dist 36 42 3
$god_ set-dist 36 43 2
$god_ set-dist 36 44 3
$god_ set-dist 36 45 1
$god_ set-dist 36 46 1
$god_ set-dist 36 47 1
$god_ set-dist 36 48 3
$god_ set-dist 36 49 3
$god_ set-dist 37 38 2
$god_ set-dist 37 39 3
$god_ set-dist 37 40 4
$god_ set-dist 37 41 1
$god_ set-dist 37 42 1
$god_ set-dist 37 43 2
$god_ set-dist 37 44 3
$god_ set-dist 37 45 3
$god_ set-dist 37 46 3
$god_ set-dist 37 47 3
$god_ set-dist 37 48 1
$god_ set-dist 37 49 3
$god_ set-dist 38 39 2
$god_ set-dist 38 40 3
$god_ set-dist 38 41 3
$god_ set-dist 38 42 1
$god_ set-dist 38 43 3
$god_ set-dist 38 44 1
$god_ set-dist 38 45 2
$god_ set-dist 38 46 3
$god_ set-dist 38 47 3
$god_ set-dist 38 48 1
$god_ set-dist 38 49 2
$god_ set-dist 39 40 1
$god_ set-dist 39 41 3
$god_ set-dist 39 42 3
$god_ set-dist 39 43 3
$god_ set-dist 39 44 2
$god_ set-dist 39 45 1
$god_ set-dist 39 46 1
$god_ set-dist 39 47 2
$god_ set-dist 39 48 3
$god_ set-dist 39 49 3
$god_ set-dist 40 41 3
$god_ set-dist 40 42 4
$god_ set-dist 40 43 3
$god_ set-dist 40 44 3
$god_ set-dist 40 45 1
$god_ set-dist 40 46 2
$god_ set-dist 40 47 2
$god_ set-dist 40 48 4
$god_ set-dist 40 49 4
$god_ set-dist 41 42 2
$god_ set-dist 41 43 1
$god_ set-dist 41 44 4
$god_ set-dist 41 45 3
$god_ set-dist 41 46 2
$god_ set-dist 41 47 2
$god_ set-dist 41 48 2
$god_ set-dist 41 49 4
$god_ set-dist 42 43 3
$god_ set-dist 42 44 2
$god_ set-dist 42 45 3
$god_ set-dist 42 46 3
$god_ set-dist 42 47 3
$god_ set-dist 42 48 1
$god_ set-dist 42 49 2
$god_ set-dist 43 44 4
$god_ set-dist 43 45 3
$god_ set-dist 43 46 2
$god_ set-dist 43 47 2
$god_ set-dist 43 48 3
$god_ set-dist 43 49 4
$god_ set-dist 44 45 2
$god_ set-dist 44 46 3
$god_ set-dist 44 47 4
$god_ set-dist 44 48 2
$god_ set-dist 44 49 1
$god_ set-dist 45 46 2
$god_ set-dist 45 47 2
$god_ set-dist 45 48 3
$god_ set-dist 45 49 3
$god_ set-dist 46 47 1
$god_ set-dist 46 48 3
$god_ set-dist 46 49 4
$god_ set-dist 47 48 3
$god_ set-dist 47 49 4
$god_ set-dist 48 49 2
$ns_ at 100.000000000000 "$node_(0) setdest 37.351093198878 351.897061181857 7.999393428646"
$ns_ at 100.000000000000 "$node_(1) setdest 365.704019373850 394.229350995669 16.126107595449"
$ns_ at 100.000000000000 "$node_(2) setdest 364.950306964960 533.012233641125 6.968140315584"
$ns_ at 100.000000000000 "$node_(3) setdest 666.437292236126 647.715535639979 0.521122847775"
$ns_ at 100.000000000000 "$node_(4) setdest 666.963167956178 522.068171040197 17.375933531251"
$ns_ at 100.000000000000 "$node_(5) setdest 431.803513473163 241.120429335406 17.749341524174"
$ns_ at 100.000000000000 "$node_(6) setdest 241.950889233450 130.984445010490 0.677141659159"
$ns_ at 100.000000000000 "$node_(7) setdest 230.599699533716 614.871269961173 14.261119464951"
$ns_ at 100.000000000000 "$node_(8) setdest 633.936345299883 208.139749831303 1.551909535843"
$ns_ at 100.000000000000 "$node_(9) setdest 658.313998048965 268.525409883187 12.328610323451"
$ns_ at 100.000000000000 "$node_(10) setdest 194.579815902422 366.277357976812 3.986872474027"
$ns_ at 100.000000000000 "$node_(11) setdest 459.610469490052 665.748965308486 5.052892423934"
$ns_ at 100.000000000000 "$node_(12) setdest 628.445699556429 546.288674748047 17.760784601384"
$ns_ at 100.000000000000 "$node_(13) setdest 367.925996633388 333.798415444342 7.573064429499"
$ns_ at 100.000000000000 "$node_(14) setdest 326.950409653523 358.834488400625 3.400384464134"
$ns_ at 100.000000000000 "$node_(15) setdest 384.232673002499 431.862089549497 4.526021620588"
$ns_ at 100.000000000000 "$node_(16) setdest 597.800494777621 529.598549526767 16.742343837956"
$ns_ at 100.000000000000 "$node_(17) setdest 471.315938717154 406.591072858065 8.837389638223"
$ns_ at 100.000000000000 "$node_(18) setdest 544.574994738586 390.165327606813 19.868179702335"
$ns_ at 100.000000000000 "$node_(19) setdest 172.485203074040 565.189318191115 18.067710301393"
$ns_ at 100.000000000000 "$node_(20) setdest 27.786849623002 507.693007623345 19.055970153688"
$ns_ at 100.000000000000 "$node_(21) setdest 220.050531407006 605.293462642245 10.740057773407"
$ns_ at 100.000000000000 "$node_(22) setdest 496.279666718601 313.585221179697 14.404655810485"
$ns_ at 100.000000000000 "$node_(23) setdest 504.231447391245 465.697971094674 15.442140743128"
$ns_ at 100.000000000000 "$node_(24) setdest 174.843912391815 51.207015740466 4.310432047716"
$ns_ at 100.000000000000 "$node_(25) setdest 257.693973039358 18.094047895531 5.262830861534"
$ns_ at 100.000000000000 "$node_(26) setdest 251.625828109256 441.398748725406 16.192304344848"
$ns_ at 100.000000000000 "$node_(27) setdest 647.462128310493 423.372714384814 15.720568539081"
$ns_ at 100.000000000000 "$node_(28) setdest 80.015072837271 465.055096878544 0.155135307523"
$ns_ at 100.000000000000 "$node_(29) setdest 532.265971626929 149.952661942261 4.127810704192"
$ns_ at 100.000000000000 "$node_(30) setdest 487.352471200124 426.275466311559 7.702882625675"
$ns_ at 100.000000000000 "$node_(31) setdest 497.523247882453 489.928334407763 3.738198424118"
$ns_ at 100.000000000000 "$node_(32) setdest 103.804757003996 243.059297524470 15.925832668453"
$ns_ at 100.000000000000 "$node_(33) setdest 501.586051066383 384.533900914959 10.792646288143"
$ns_ at 100.000000000000 "$node_(34) setdest 576.823989013068 412.849221728425 3.322737256794"
$ns_ at 100.000000000000 "$node_(35) setdest 223.182532259255 310.513290226637 17.911672155752"
$ns_ at 100.000000000000 "$node_(36) setdest 122.314012931035 213.198784507193 12.093461932484"
$ns_ at 100.000000000000 "$node_(37) setdest 326.514837209854 47.930044184776 8.885308496688"
$ns_ at 100.000000000000 "$node_(38) setdest 383.183574439535 137.097991173245 13.010645002642"
$ns_ at 100.000000000000 "$node_(39) setdest 350.815019893815 610.657105363598 8.108607513502"
$ns_ at 100.000000000000 "$node_(40) setdest 269.746389956504 44.465684594787 1.328446165732"
$ns_ at 100.000000000000 "$node_(41) setdest 159.153663053634 455.895479620960 14.935183806000"
$ns_ at 100.000000000000 "$node_(42) setdest 577.183320956335 252.576404718191 12.589385220453"
$ns_ at 100.000000000000 "$node_(43) setdest 167.931811991105 122.331486571336 6.273894432227"
$ns_ at 100.000000000000 "$node_(44) setdest 272.387870456250 173.587146400503 12.698944779434"
$ns_ at 100.000000000000 "$node_(45) setdest 219.825704515387 620.087381139904 16.770729247553"
$ns_ at 100.000000000000 "$node_(46) setdest 317.976218617767 586.619381396294 15.512627183140"
$ns_ at 100.000000000000 "$node_(47) setdest 458.690164789454 528.054833206210 1.951120008210"
$ns_ at 100.000000000000 "$node_(48) setdest 568.861158481594 561.293109950835 19.447733178998"
$ns_ at 100.000000000000 "$node_(49) setdest 8.327338907888 508.805078401104 6.875903678636"
$ns_ at 100.144001536550 "$god_ set-dist 13 27 2"
$ns_ at 100.144001536550 "$god_ set-dist 27 29 3"
$ns_ at 100.403763641009 "$god_ set-dist 3 14 3"
$ns_ at 100.403763641009 "$god_ set-dist 4 14 4"
$ns_ at 100.403763641009 "$god_ set-dist 7 14 2"
$ns_ at 100.403763641009 "$god_ set-dist 11 14 3"
$ns_ at 100.403763641009 "$god_ set-dist 14 20 3"
$ns_ at 100.403763641009 "$god_ set-dist 14 31 4"
$ns_ at 100.403763641009 "$god_ set-dist 14 35 4"
$ns_ at 100.412485390525 "$god_ set-dist 4 34 4"
$ns_ at 100.412485390525 "$god_ set-dist 15 34 5"
$ns_ at 100.412485390525 "$god_ set-dist 20 34 3"
$ns_ at 100.412485390525 "$god_ set-dist 33 34 2"
$ns_ at 100.412485390525 "$god_ set-dist 34 35 4"
$ns_ at 100.412485390525 "$god_ set-dist 34 44 5"
$ns_ at 100.494681923406 "$god_ set-dist 10 35 2"
$ns_ at 100.494681923406 "$god_ set-dist 14 35 3"
$ns_ at 100.494681923406 "$god_ set-dist 23 35 1"
$ns_ at 100.494681923406 "$god_ set-dist 24 35 3"
$ns_ at 100.494681923406 "$god_ set-dist 29 35 2"
$ns_ at 100.494681923406 "$god_ set-dist 32 35 2"
$ns_ at 100.494681923406 "$god_ set-dist 35 37 2"
$ns_ at 100.605076848695 "$god_ set-dist 17 48 1"
$ns_ at 100.624548327263 "$god_ set-dist 13 15 3"
$ns_ at 100.624548327263 "$god_ set-dist 14 15 3"
$ns_ at 100.624548327263 "$god_ set-dist 15 16 3"
$ns_ at 100.624548327263 "$god_ set-dist 15 19 3"
$ns_ at 100.624548327263 "$god_ set-dist 15 24 3"
$ns_ at 100.624548327263 "$god_ set-dist 15 29 2"
$ns_ at 100.624548327263 "$god_ set-dist 15 32 2"
$ns_ at 100.624548327263 "$god_ set-dist 15 37 2"
$ns_ at 100.624548327263 "$god_ set-dist 15 41 3"
$ns_ at 100.624548327263 "$god_ set-dist 15 48 1"
$ns_ at 100.635819602361 "$god_ set-dist 15 34 4"
$ns_ at 100.635819602361 "$god_ set-dist 16 34 1"
$ns_ at 100.635819602361 "$god_ set-dist 32 34 2"
$ns_ at 100.635819602361 "$god_ set-dist 34 37 2"
$ns_ at 100.635819602361 "$god_ set-dist 34 42 3"
$ns_ at 100.635819602361 "$god_ set-dist 34 48 3"
$ns_ at 100.639346465232 "$god_ set-dist 11 18 1"
$ns_ at 100.641123120172 "$god_ set-dist 13 38 2"
$ns_ at 100.641123120172 "$god_ set-dist 13 44 3"
$ns_ at 100.641123120172 "$god_ set-dist 24 31 3"
$ns_ at 100.641123120172 "$god_ set-dist 24 38 2"
$ns_ at 100.641123120172 "$god_ set-dist 24 44 3"
$ns_ at 100.641123120172 "$god_ set-dist 29 31 2"
$ns_ at 100.641123120172 "$god_ set-dist 29 38 1"
$ns_ at 100.641123120172 "$god_ set-dist 29 44 2"
$ns_ at 100.681700785790 "$god_ set-dist 6 33 2"
$ns_ at 100.681700785790 "$god_ set-dist 8 33 2"
$ns_ at 100.681700785790 "$god_ set-dist 11 33 1"
$ns_ at 100.681700785790 "$god_ set-dist 18 33 2"
$ns_ at 100.681700785790 "$god_ set-dist 22 33 2"
$ns_ at 100.681700785790 "$god_ set-dist 25 33 2"
$ns_ at 100.681700785790 "$god_ set-dist 33 38 2"
$ns_ at 100.681700785790 "$god_ set-dist 33 49 3"
$ns_ at 100.704455725576 "$god_ set-dist 2 40 3"
$ns_ at 100.704455725576 "$god_ set-dist 9 40 2"
$ns_ at 100.704455725576 "$god_ set-dist 12 40 3"
$ns_ at 100.704455725576 "$god_ set-dist 14 40 4"
$ns_ at 100.704455725576 "$god_ set-dist 26 40 3"
$ns_ at 100.704455725576 "$god_ set-dist 34 40 4"
$ns_ at 100.704455725576 "$god_ set-dist 40 47 3"
$ns_ at 100.735042431390 "$god_ set-dist 25 42 1"
$ns_ at 100.829986952972 "$god_ set-dist 1 7 1"
$ns_ at 100.829986952972 "$god_ set-dist 1 13 2"
$ns_ at 100.829986952972 "$god_ set-dist 1 16 2"
$ns_ at 100.829986952972 "$god_ set-dist 1 19 2"
$ns_ at 100.829986952972 "$god_ set-dist 1 28 2"
$ns_ at 100.829986952972 "$god_ set-dist 1 41 2"
$ns_ at 100.829986952972 "$god_ set-dist 1 43 2"
$ns_ at 100.873753850271 "$god_ set-dist 8 20 1"
$ns_ at 100.873753850271 "$god_ set-dist 8 30 2"
$ns_ at 100.873753850271 "$god_ set-dist 8 40 2"
$ns_ at 100.873753850271 "$god_ set-dist 8 46 2"
$ns_ at 100.873753850271 "$god_ set-dist 20 49 2"
$ns_ at 100.873753850271 "$god_ set-dist 30 49 3"
$ns_ at 100.873753850271 "$god_ set-dist 40 49 3"
$ns_ at 100.873753850271 "$god_ set-dist 46 49 3"
$ns_ at 100.895448710759 "$god_ set-dist 20 29 2"
$ns_ at 100.895448710759 "$god_ set-dist 20 38 1"
$ns_ at 100.895448710759 "$god_ set-dist 20 42 2"
$ns_ at 100.895448710759 "$god_ set-dist 20 48 2"
$ns_ at 100.895448710759 "$god_ set-dist 29 40 3"
$ns_ at 100.895448710759 "$god_ set-dist 30 38 2"
$ns_ at 100.895448710759 "$god_ set-dist 38 40 2"
$ns_ at 100.895448710759 "$god_ set-dist 38 46 2"
$ns_ at 100.895448710759 "$god_ set-dist 40 42 3"
$ns_ at 100.895448710759 "$god_ set-dist 40 48 3"
$ns_ at 101.066386899794 "$god_ set-dist 12 13 2"
$ns_ at 101.066386899794 "$god_ set-dist 12 29 3"
$ns_ at 101.117445890026 "$god_ set-dist 6 46 2"
$ns_ at 101.117445890026 "$god_ set-dist 11 46 1"
$ns_ at 101.117445890026 "$god_ set-dist 18 46 2"
$ns_ at 101.117445890026 "$god_ set-dist 22 46 2"
$ns_ at 101.117445890026 "$god_ set-dist 25 46 2"
$ns_ at 101.156681644192 "$god_ set-dist 16 32 2"
$ns_ at 101.156681644192 "$god_ set-dist 32 34 3"
$ns_ at 101.183017655581 "$god_ set-dist 4 15 3"
$ns_ at 101.183017655581 "$god_ set-dist 4 35 2"
$ns_ at 101.183017655581 "$god_ set-dist 4 44 3"
$ns_ at 101.234118321903 "$god_ set-dist 45 46 1"
$ns_ at 101.245797398985 "$god_ set-dist 22 48 1"
$ns_ at 101.299761681022 "$god_ set-dist 3 4 2"
$ns_ at 101.340176426376 "$god_ set-dist 3 9 2"
$ns_ at 101.340176426376 "$god_ set-dist 9 17 3"
$ns_ at 101.340176426376 "$god_ set-dist 9 31 3"
$ns_ at 101.397018639919 "$god_ set-dist 23 27 1"
$ns_ at 101.397018639919 "$god_ set-dist 27 29 2"
$ns_ at 101.397018639919 "$god_ set-dist 27 42 2"
$ns_ at 101.397018639919 "$god_ set-dist 27 48 2"
$ns_ at 101.425767738111 "$god_ set-dist 5 16 3"
$ns_ at 101.425767738111 "$god_ set-dist 5 19 3"
$ns_ at 101.425767738111 "$god_ set-dist 5 33 2"
$ns_ at 101.425767738111 "$god_ set-dist 5 43 3"
$ns_ at 101.425767738111 "$god_ set-dist 16 39 2"
$ns_ at 101.425767738111 "$god_ set-dist 19 39 2"
$ns_ at 101.425767738111 "$god_ set-dist 33 39 1"
$ns_ at 101.425767738111 "$god_ set-dist 39 43 2"
$ns_ at 101.583242712073 "$god_ set-dist 9 14 3"
$ns_ at 101.583242712073 "$god_ set-dist 12 14 2"
$ns_ at 101.583242712073 "$god_ set-dist 14 46 3"
$ns_ at 101.623627433683 "$god_ set-dist 20 23 1"
$ns_ at 101.623627433683 "$god_ set-dist 20 32 2"
$ns_ at 101.623627433683 "$god_ set-dist 20 37 2"
$ns_ at 101.623627433683 "$god_ set-dist 23 40 2"
$ns_ at 101.623627433683 "$god_ set-dist 32 40 3"
$ns_ at 101.623627433683 "$god_ set-dist 37 40 3"
$ns_ at 101.671096570872 "$god_ set-dist 2 15 3"
$ns_ at 101.671096570872 "$god_ set-dist 2 38 2"
$ns_ at 101.671096570872 "$god_ set-dist 2 44 3"
$ns_ at 101.671096570872 "$god_ set-dist 7 15 2"
$ns_ at 101.671096570872 "$god_ set-dist 7 38 1"
$ns_ at 101.671096570872 "$god_ set-dist 7 44 2"
$ns_ at 101.671096570872 "$god_ set-dist 12 15 3"
$ns_ at 101.671096570872 "$god_ set-dist 12 38 2"
$ns_ at 101.671096570872 "$god_ set-dist 12 44 3"
$ns_ at 101.671096570872 "$god_ set-dist 15 26 3"
$ns_ at 101.671096570872 "$god_ set-dist 15 28 3"
$ns_ at 101.671096570872 "$god_ set-dist 15 43 3"
$ns_ at 101.671096570872 "$god_ set-dist 15 47 3"
$ns_ at 101.671096570872 "$god_ set-dist 16 38 2"
$ns_ at 101.671096570872 "$god_ set-dist 16 44 3"
$ns_ at 101.671096570872 "$god_ set-dist 19 38 2"
$ns_ at 101.671096570872 "$god_ set-dist 19 44 3"
$ns_ at 101.671096570872 "$god_ set-dist 26 38 2"
$ns_ at 101.671096570872 "$god_ set-dist 26 44 3"
$ns_ at 101.671096570872 "$god_ set-dist 28 38 2"
$ns_ at 101.671096570872 "$god_ set-dist 28 44 3"
$ns_ at 101.671096570872 "$god_ set-dist 34 38 3"
$ns_ at 101.671096570872 "$god_ set-dist 34 44 4"
$ns_ at 101.671096570872 "$god_ set-dist 38 41 2"
$ns_ at 101.671096570872 "$god_ set-dist 38 43 2"
$ns_ at 101.671096570872 "$god_ set-dist 38 47 2"
$ns_ at 101.671096570872 "$god_ set-dist 41 44 3"
$ns_ at 101.671096570872 "$god_ set-dist 43 44 3"
$ns_ at 101.671096570872 "$god_ set-dist 44 47 3"
$ns_ at 101.714391305599 "$god_ set-dist 1 27 1"
$ns_ at 101.739805308210 "$god_ set-dist 13 17 2"
$ns_ at 101.739805308210 "$god_ set-dist 13 18 2"
$ns_ at 101.739805308210 "$god_ set-dist 13 22 2"
$ns_ at 101.739805308210 "$god_ set-dist 13 25 2"
$ns_ at 101.739805308210 "$god_ set-dist 13 42 1"
$ns_ at 101.739805308210 "$god_ set-dist 13 49 3"
$ns_ at 101.739805308210 "$god_ set-dist 42 43 2"
$ns_ at 101.965696141394 "$god_ set-dist 7 28 2"
$ns_ at 101.965696141394 "$god_ set-dist 15 28 4"
$ns_ at 101.965696141394 "$god_ set-dist 28 38 3"
$ns_ at 101.965696141394 "$god_ set-dist 28 44 4"
$ns_ at 101.970004462643 "$god_ set-dist 2 42 2"
$ns_ at 101.970004462643 "$god_ set-dist 7 42 1"
$ns_ at 101.970004462643 "$god_ set-dist 9 42 2"
$ns_ at 101.970004462643 "$god_ set-dist 12 42 2"
$ns_ at 101.970004462643 "$god_ set-dist 26 42 2"
$ns_ at 101.970004462643 "$god_ set-dist 30 42 2"
$ns_ at 101.970004462643 "$god_ set-dist 33 42 2"
$ns_ at 101.970004462643 "$god_ set-dist 36 42 2"
$ns_ at 101.970004462643 "$god_ set-dist 42 46 2"
$ns_ at 101.970004462643 "$god_ set-dist 42 47 2"
$ns_ at 102.004907428029 "$god_ set-dist 9 21 2"
$ns_ at 102.029503486550 "$god_ set-dist 25 48 1"
$ns_ at 102.038356686984 "$god_ set-dist 10 42 1"
$ns_ at 102.038356686984 "$god_ set-dist 28 42 2"
$ns_ at 102.178862481728 "$god_ set-dist 0 28 2"
$ns_ at 102.178862481728 "$god_ set-dist 0 30 1"
$ns_ at 102.224529048289 "$god_ set-dist 10 31 2"
$ns_ at 102.224529048289 "$god_ set-dist 14 31 3"
$ns_ at 102.224529048289 "$god_ set-dist 23 31 1"
$ns_ at 102.224529048289 "$god_ set-dist 31 32 2"
$ns_ at 102.224529048289 "$god_ set-dist 31 37 2"
$ns_ at 102.395692241039 "$god_ set-dist 8 13 2"
$ns_ at 102.395692241039 "$god_ set-dist 8 42 1"
$ns_ at 102.458432104201 "$god_ set-dist 6 20 1"
$ns_ at 102.458432104201 "$god_ set-dist 6 30 2"
$ns_ at 102.458432104201 "$god_ set-dist 6 40 2"
$ns_ at 102.476140712416 "$god_ set-dist 0 16 2"
$ns_ at 102.476140712416 "$god_ set-dist 16 21 2"
$ns_ at 102.476140712416 "$god_ set-dist 16 36 1"
$ns_ at 102.476140712416 "$god_ set-dist 16 45 2"
$ns_ at 102.509696839170 "$god_ set-dist 1 4 2"
$ns_ at 102.509696839170 "$god_ set-dist 4 17 3"
$ns_ at 102.509696839170 "$god_ set-dist 4 31 3"
$ns_ at 102.512336158321 "$god_ set-dist 20 25 1"
$ns_ at 102.512336158321 "$god_ set-dist 25 30 2"
$ns_ at 102.512336158321 "$god_ set-dist 25 40 2"
$ns_ at 102.673044948613 "$god_ set-dist 0 19 2"
$ns_ at 102.673044948613 "$god_ set-dist 0 33 1"
$ns_ at 102.673044948613 "$god_ set-dist 0 43 2"
$ns_ at 102.698936095949 "$god_ set-dist 0 43 3"
$ns_ at 102.698936095949 "$god_ set-dist 5 43 4"
$ns_ at 102.698936095949 "$god_ set-dist 33 43 2"
$ns_ at 102.698936095949 "$god_ set-dist 39 43 3"
$ns_ at 102.774250879449 "$god_ set-dist 18 20 1"
$ns_ at 102.774250879449 "$god_ set-dist 18 30 2"
$ns_ at 102.774250879449 "$god_ set-dist 18 40 2"
$ns_ at 102.796696692803 "$god_ set-dist 20 22 1"
$ns_ at 102.796696692803 "$god_ set-dist 22 30 2"
$ns_ at 102.796696692803 "$god_ set-dist 22 40 2"
$ns_ at 102.853072610092 "$god_ set-dist 14 38 2"
$ns_ at 102.853072610092 "$god_ set-dist 14 44 3"
$ns_ at 102.853072610092 "$god_ set-dist 32 38 1"
$ns_ at 102.853072610092 "$god_ set-dist 32 44 2"
$ns_ at 102.856638548390 "$god_ set-dist 2 35 2"
$ns_ at 102.856638548390 "$god_ set-dist 12 35 2"
$ns_ at 102.856638548390 "$god_ set-dist 15 36 2"
$ns_ at 102.856638548390 "$god_ set-dist 16 35 2"
$ns_ at 102.856638548390 "$god_ set-dist 26 35 2"
$ns_ at 102.856638548390 "$god_ set-dist 34 35 3"
$ns_ at 102.856638548390 "$god_ set-dist 35 36 1"
$ns_ at 102.856638548390 "$god_ set-dist 35 47 2"
$ns_ at 102.856638548390 "$god_ set-dist 36 44 2"
$ns_ at 102.867660686788 "$god_ set-dist 23 36 1"
$ns_ at 102.867660686788 "$god_ set-dist 29 36 2"
$ns_ at 102.867660686788 "$god_ set-dist 36 48 2"
$ns_ at 102.927613218934 "$god_ set-dist 14 30 3"
$ns_ at 102.927613218934 "$god_ set-dist 28 30 2"
$ns_ at 102.943412045659 "$god_ set-dist 1 46 1"
$ns_ at 102.943412045659 "$god_ set-dist 17 46 2"
$ns_ at 102.943412045659 "$god_ set-dist 31 46 2"
$ns_ at 103.038255486623 "$god_ set-dist 7 35 1"
$ns_ at 103.038255486623 "$god_ set-dist 13 35 2"
$ns_ at 103.038255486623 "$god_ set-dist 19 35 2"
$ns_ at 103.038255486623 "$god_ set-dist 35 41 2"
$ns_ at 103.038255486623 "$god_ set-dist 35 43 2"
$ns_ at 103.052643083209 "$god_ set-dist 4 12 2"
$ns_ at 103.052643083209 "$god_ set-dist 4 34 3"
$ns_ at 103.052643083209 "$god_ set-dist 6 12 2"
$ns_ at 103.052643083209 "$god_ set-dist 6 34 3"
$ns_ at 103.052643083209 "$god_ set-dist 8 12 2"
$ns_ at 103.052643083209 "$god_ set-dist 8 34 3"
$ns_ at 103.052643083209 "$god_ set-dist 12 18 2"
$ns_ at 103.052643083209 "$god_ set-dist 12 20 1"
$ns_ at 103.052643083209 "$god_ set-dist 12 22 2"
$ns_ at 103.052643083209 "$god_ set-dist 12 25 2"
$ns_ at 103.052643083209 "$god_ set-dist 12 40 2"
$ns_ at 103.052643083209 "$god_ set-dist 12 49 3"
$ns_ at 103.052643083209 "$god_ set-dist 18 34 3"
$ns_ at 103.052643083209 "$god_ set-dist 20 34 2"
$ns_ at 103.052643083209 "$god_ set-dist 22 34 3"
$ns_ at 103.052643083209 "$god_ set-dist 25 34 3"
$ns_ at 103.052643083209 "$god_ set-dist 34 40 3"
$ns_ at 103.052643083209 "$god_ set-dist 34 49 4"
$ns_ at 103.194287998124 "$god_ set-dist 6 19 2"
$ns_ at 103.194287998124 "$god_ set-dist 8 19 2"
$ns_ at 103.194287998124 "$god_ set-dist 17 19 2"
$ns_ at 103.194287998124 "$god_ set-dist 18 19 2"
$ns_ at 103.194287998124 "$god_ set-dist 19 22 2"
$ns_ at 103.194287998124 "$god_ set-dist 19 23 1"
$ns_ at 103.194287998124 "$god_ set-dist 19 25 2"
$ns_ at 103.194287998124 "$god_ set-dist 19 31 2"
$ns_ at 103.194287998124 "$god_ set-dist 19 49 3"
$ns_ at 103.231957934592 "$god_ set-dist 19 21 2"
$ns_ at 103.231957934592 "$god_ set-dist 19 36 1"
$ns_ at 103.231957934592 "$god_ set-dist 19 45 2"
$ns_ at 103.254125818065 "$god_ set-dist 0 42 2"
$ns_ at 103.254125818065 "$god_ set-dist 5 42 3"
$ns_ at 103.254125818065 "$god_ set-dist 21 42 2"
$ns_ at 103.254125818065 "$god_ set-dist 35 42 1"
$ns_ at 103.254125818065 "$god_ set-dist 39 42 2"
$ns_ at 103.254125818065 "$god_ set-dist 42 45 2"
$ns_ at 103.276810767348 "$god_ set-dist 8 48 1"
$ns_ at 103.283852913860 "$god_ set-dist 1 33 1"
$ns_ at 103.283852913860 "$god_ set-dist 17 33 2"
$ns_ at 103.283852913860 "$god_ set-dist 31 33 2"
$ns_ at 103.318457525881 "$god_ set-dist 16 47 1"
$ns_ at 103.318457525881 "$god_ set-dist 37 47 2"
$ns_ at 103.349981314993 "$god_ set-dist 15 37 3"
$ns_ at 103.349981314993 "$god_ set-dist 16 48 3"
$ns_ at 103.349981314993 "$god_ set-dist 34 48 4"
$ns_ at 103.349981314993 "$god_ set-dist 37 48 2"
$ns_ at 103.381032473298 "$god_ set-dist 5 8 2"
$ns_ at 103.381032473298 "$god_ set-dist 5 48 3"
$ns_ at 103.381032473298 "$god_ set-dist 5 49 3"
$ns_ at 103.381032473298 "$god_ set-dist 8 45 1"
$ns_ at 103.381032473298 "$god_ set-dist 45 48 2"
$ns_ at 103.381032473298 "$god_ set-dist 45 49 2"
$ns_ at 103.436039103687 "$god_ set-dist 3 46 1"
$ns_ at 103.439273691710 "$god_ set-dist 8 41 2"
$ns_ at 103.439273691710 "$god_ set-dist 17 41 2"
$ns_ at 103.439273691710 "$god_ set-dist 18 41 2"
$ns_ at 103.439273691710 "$god_ set-dist 22 41 2"
$ns_ at 103.439273691710 "$god_ set-dist 25 41 2"
$ns_ at 103.439273691710 "$god_ set-dist 41 42 1"
$ns_ at 103.439273691710 "$god_ set-dist 41 49 3"
$ns_ at 103.457872826110 "$god_ set-dist 7 47 2"
$ns_ at 103.457872826110 "$god_ set-dist 38 47 3"
$ns_ at 103.457872826110 "$god_ set-dist 42 47 3"
$ns_ at 103.511043446525 "$god_ set-dist 44 48 1"
$ns_ at 103.525711434913 "$god_ set-dist 1 42 1"
$ns_ at 103.542409044113 "$god_ set-dist 19 42 1"
$ns_ at 103.566119275090 "$god_ set-dist 14 30 2"
$ns_ at 103.566119275090 "$god_ set-dist 16 30 1"
$ns_ at 103.566119275090 "$god_ set-dist 30 37 2"
$ns_ at 103.582910361101 "$god_ set-dist 4 17 2"
$ns_ at 103.582910361101 "$god_ set-dist 9 17 2"
$ns_ at 103.582910361101 "$god_ set-dist 11 17 1"
$ns_ at 103.672694232052 "$god_ set-dist 9 45 2"
$ns_ at 103.693149547342 "$god_ set-dist 7 43 2"
$ns_ at 103.693149547342 "$god_ set-dist 15 43 4"
$ns_ at 103.693149547342 "$god_ set-dist 35 43 3"
$ns_ at 103.693149547342 "$god_ set-dist 38 43 3"
$ns_ at 103.693149547342 "$god_ set-dist 43 44 4"
$ns_ at 103.740390201003 "$god_ set-dist 0 24 3"
$ns_ at 103.740390201003 "$god_ set-dist 0 27 1"
$ns_ at 103.740390201003 "$god_ set-dist 0 41 2"
$ns_ at 103.740390201003 "$god_ set-dist 0 43 2"
$ns_ at 103.740390201003 "$god_ set-dist 5 24 4"
$ns_ at 103.740390201003 "$god_ set-dist 5 27 2"
$ns_ at 103.740390201003 "$god_ set-dist 5 41 3"
$ns_ at 103.740390201003 "$god_ set-dist 5 43 3"
$ns_ at 103.827674139403 "$god_ set-dist 3 42 1"
$ns_ at 103.872263695031 "$god_ set-dist 37 43 1"
$ns_ at 103.920334527732 "$god_ set-dist 24 39 3"
$ns_ at 103.920334527732 "$god_ set-dist 27 39 1"
$ns_ at 103.920334527732 "$god_ set-dist 39 41 2"
$ns_ at 103.920334527732 "$god_ set-dist 39 43 2"
$ns_ at 103.930730300043 "$god_ set-dist 31 48 1"
$ns_ at 103.931627205466 "$god_ set-dist 14 46 2"
$ns_ at 103.931627205466 "$god_ set-dist 16 46 1"
$ns_ at 103.931627205466 "$god_ set-dist 37 46 2"
$ns_ at 103.974621101195 "$god_ set-dist 6 40 3"
$ns_ at 103.974621101195 "$god_ set-dist 7 40 3"
$ns_ at 103.974621101195 "$god_ set-dist 12 40 3"
$ns_ at 103.974621101195 "$god_ set-dist 13 40 4"
$ns_ at 103.974621101195 "$god_ set-dist 18 40 3"
$ns_ at 103.974621101195 "$god_ set-dist 20 40 2"
$ns_ at 103.974621101195 "$god_ set-dist 22 40 3"
$ns_ at 103.974621101195 "$god_ set-dist 23 40 3"
$ns_ at 103.974621101195 "$god_ set-dist 25 40 3"
$ns_ at 103.974621101195 "$god_ set-dist 29 40 4"
$ns_ at 103.974621101195 "$god_ set-dist 32 40 4"
$ns_ at 103.974621101195 "$god_ set-dist 34 40 4"
$ns_ at 103.974621101195 "$god_ set-dist 37 40 4"
$ns_ at 103.974621101195 "$god_ set-dist 38 40 3"
$ns_ at 103.975552260769 "$god_ set-dist 36 38 1"
$ns_ at 103.975552260769 "$god_ set-dist 38 47 2"
$ns_ at 104.027959132409 "$god_ set-dist 9 11 2"
$ns_ at 104.027959132409 "$god_ set-dist 9 17 3"
$ns_ at 104.034602452326 "$god_ set-dist 6 41 2"
$ns_ at 104.034602452326 "$god_ set-dist 23 41 1"
$ns_ at 104.034602452326 "$god_ set-dist 31 41 2"
$ns_ at 104.076774412642 "$god_ set-dist 0 48 2"
$ns_ at 104.076774412642 "$god_ set-dist 21 48 2"
$ns_ at 104.076774412642 "$god_ set-dist 35 48 1"
$ns_ at 104.076774412642 "$god_ set-dist 39 48 2"
$ns_ at 104.274610281265 "$god_ set-dist 5 6 2"
$ns_ at 104.274610281265 "$god_ set-dist 6 40 2"
$ns_ at 104.274610281265 "$god_ set-dist 6 45 1"
$ns_ at 104.391416827598 "$god_ set-dist 4 31 2"
$ns_ at 104.391416827598 "$god_ set-dist 11 31 1"
$ns_ at 104.455048743770 "$god_ set-dist 4 37 4"
$ns_ at 104.455048743770 "$god_ set-dist 6 37 3"
$ns_ at 104.455048743770 "$god_ set-dist 11 37 3"
$ns_ at 104.455048743770 "$god_ set-dist 20 37 3"
$ns_ at 104.455048743770 "$god_ set-dist 23 37 2"
$ns_ at 104.455048743770 "$god_ set-dist 31 37 3"
$ns_ at 104.474784210395 "$god_ set-dist 8 21 1"
$ns_ at 104.474784210395 "$god_ set-dist 21 49 2"
$ns_ at 104.518879833486 "$god_ set-dist 1 12 1"
$ns_ at 104.518879833486 "$god_ set-dist 1 34 2"
$ns_ at 104.518879833486 "$god_ set-dist 12 17 2"
$ns_ at 104.518879833486 "$god_ set-dist 12 31 2"
$ns_ at 104.518879833486 "$god_ set-dist 17 34 3"
$ns_ at 104.518879833486 "$god_ set-dist 31 34 3"
$ns_ at 104.523224149451 "$god_ set-dist 2 4 2"
$ns_ at 104.523224149451 "$god_ set-dist 4 14 3"
$ns_ at 104.523224149451 "$god_ set-dist 4 16 2"
$ns_ at 104.523224149451 "$god_ set-dist 4 26 2"
$ns_ at 104.523224149451 "$god_ set-dist 4 37 3"
$ns_ at 104.523224149451 "$god_ set-dist 4 46 1"
$ns_ at 104.523224149451 "$god_ set-dist 4 47 2"
$ns_ at 104.524378110844 "$god_ set-dist 13 26 1"
$ns_ at 104.524378110844 "$god_ set-dist 26 29 2"
$ns_ at 104.531619061751 "$god_ set-dist 2 21 3"
$ns_ at 104.531619061751 "$god_ set-dist 10 21 3"
$ns_ at 104.531619061751 "$god_ set-dist 14 21 4"
$ns_ at 104.531619061751 "$god_ set-dist 16 21 3"
$ns_ at 104.531619061751 "$god_ set-dist 19 21 3"
$ns_ at 104.531619061751 "$god_ set-dist 21 26 3"
$ns_ at 104.531619061751 "$god_ set-dist 21 36 2"
$ns_ at 104.531619061751 "$god_ set-dist 21 47 3"
$ns_ at 104.555307038765 "$god_ set-dist 19 24 1"
$ns_ at 104.555307038765 "$god_ set-dist 24 33 2"
$ns_ at 104.555307038765 "$god_ set-dist 24 36 2"
$ns_ at 104.555307038765 "$god_ set-dist 24 45 3"
$ns_ at 104.561960481188 "$god_ set-dist 9 17 2"
$ns_ at 104.561960481188 "$god_ set-dist 17 20 1"
$ns_ at 104.561960481188 "$god_ set-dist 17 30 2"
$ns_ at 104.590956566355 "$god_ set-dist 3 33 1"
$ns_ at 104.612465971703 "$god_ set-dist 3 44 1"
$ns_ at 104.612465971703 "$god_ set-dist 27 44 2"
$ns_ at 104.612465971703 "$god_ set-dist 28 44 3"
$ns_ at 104.612465971703 "$god_ set-dist 33 44 2"
$ns_ at 104.612465971703 "$god_ set-dist 43 44 3"
$ns_ at 104.612465971703 "$god_ set-dist 44 46 2"
$ns_ at 104.614679622213 "$god_ set-dist 4 20 2"
$ns_ at 104.665442711172 "$god_ set-dist 2 18 2"
$ns_ at 104.665442711172 "$god_ set-dist 2 49 3"
$ns_ at 104.665442711172 "$god_ set-dist 7 18 1"
$ns_ at 104.665442711172 "$god_ set-dist 7 49 2"
$ns_ at 104.665442711172 "$god_ set-dist 16 18 2"
$ns_ at 104.665442711172 "$god_ set-dist 16 49 3"
$ns_ at 104.665442711172 "$god_ set-dist 18 26 2"
$ns_ at 104.665442711172 "$god_ set-dist 26 49 3"
$ns_ at 104.673407930360 "$god_ set-dist 6 9 3"
$ns_ at 104.673407930360 "$god_ set-dist 8 9 3"
$ns_ at 104.673407930360 "$god_ set-dist 9 17 3"
$ns_ at 104.673407930360 "$god_ set-dist 9 20 2"
$ns_ at 104.673407930360 "$god_ set-dist 9 22 3"
$ns_ at 104.673407930360 "$god_ set-dist 9 25 3"
$ns_ at 104.696439614060 "$god_ set-dist 6 30 3"
$ns_ at 104.696439614060 "$god_ set-dist 8 30 3"
$ns_ at 104.696439614060 "$god_ set-dist 17 30 3"
$ns_ at 104.696439614060 "$god_ set-dist 20 30 2"
$ns_ at 104.696439614060 "$god_ set-dist 22 30 3"
$ns_ at 104.696439614060 "$god_ set-dist 25 30 3"
$ns_ at 104.720902721993 "$god_ set-dist 6 48 1"
$ns_ at 104.733720534916 "$god_ set-dist 10 15 2"
$ns_ at 104.733720534916 "$god_ set-dist 10 38 1"
$ns_ at 104.733720534916 "$god_ set-dist 10 44 2"
$ns_ at 104.733720534916 "$god_ set-dist 15 28 3"
$ns_ at 104.733720534916 "$god_ set-dist 15 43 3"
$ns_ at 104.733720534916 "$god_ set-dist 28 38 2"
$ns_ at 104.733720534916 "$god_ set-dist 38 43 2"
$ns_ at 104.773403494319 "$god_ set-dist 5 18 2"
$ns_ at 104.773403494319 "$god_ set-dist 18 40 2"
$ns_ at 104.773403494319 "$god_ set-dist 18 45 1"
$ns_ at 104.775663721356 "$god_ set-dist 0 7 1"
$ns_ at 104.775663721356 "$god_ set-dist 0 13 2"
$ns_ at 104.775663721356 "$god_ set-dist 5 7 2"
$ns_ at 104.775663721356 "$god_ set-dist 5 13 3"
$ns_ at 104.775663721356 "$god_ set-dist 7 40 2"
$ns_ at 104.775663721356 "$god_ set-dist 13 40 3"
$ns_ at 104.856476708601 "$god_ set-dist 2 29 2"
$ns_ at 104.856476708601 "$god_ set-dist 12 29 2"
$ns_ at 104.856476708601 "$god_ set-dist 28 29 2"
$ns_ at 104.856476708601 "$god_ set-dist 29 41 1"
$ns_ at 104.889198020407 "$god_ set-dist 5 22 2"
$ns_ at 104.889198020407 "$god_ set-dist 22 40 2"
$ns_ at 104.889198020407 "$god_ set-dist 22 45 1"
$ns_ at 104.896548312694 "$god_ set-dist 19 44 2"
$ns_ at 104.896548312694 "$god_ set-dist 23 44 1"
$ns_ at 104.896548312694 "$god_ set-dist 41 44 2"
$ns_ at 104.927647001853 "$god_ set-dist 20 37 2"
$ns_ at 104.927647001853 "$god_ set-dist 20 42 1"
$ns_ at 104.949813285295 "$god_ set-dist 1 10 1"
$ns_ at 104.949813285295 "$god_ set-dist 1 14 2"
$ns_ at 104.949813285295 "$god_ set-dist 10 21 2"
$ns_ at 104.949813285295 "$god_ set-dist 14 21 3"
$ns_ at 104.991191775309 "$god_ set-dist 11 40 1"
$ns_ at 104.991191775309 "$god_ set-dist 17 40 2"
$ns_ at 104.991191775309 "$god_ set-dist 23 40 2"
$ns_ at 104.991191775309 "$god_ set-dist 25 40 2"
$ns_ at 104.991191775309 "$god_ set-dist 29 40 3"
$ns_ at 104.991191775309 "$god_ set-dist 31 40 2"
$ns_ at 104.991191775309 "$god_ set-dist 32 40 3"
$ns_ at 104.991191775309 "$god_ set-dist 38 40 2"
$ns_ at 105.007653120423 "$god_ set-dist 2 21 2"
$ns_ at 105.007653120423 "$god_ set-dist 16 21 2"
$ns_ at 105.007653120423 "$god_ set-dist 21 26 2"
$ns_ at 105.007653120423 "$god_ set-dist 21 46 1"
$ns_ at 105.007653120423 "$god_ set-dist 21 47 2"
$ns_ at 105.040244000282 "$god_ set-dist 20 31 1"
$ns_ at 105.160724521252 "$god_ set-dist 1 31 2"
$ns_ at 105.196050579592 "$god_ set-dist 1 26 1"
$ns_ at 105.196050579592 "$god_ set-dist 6 26 2"
$ns_ at 105.196050579592 "$god_ set-dist 8 26 2"
$ns_ at 105.196050579592 "$god_ set-dist 17 26 2"
$ns_ at 105.196050579592 "$god_ set-dist 22 26 2"
$ns_ at 105.196050579592 "$god_ set-dist 25 26 2"
$ns_ at 105.257928480930 "$god_ set-dist 0 43 3"
$ns_ at 105.257928480930 "$god_ set-dist 3 43 3"
$ns_ at 105.257928480930 "$god_ set-dist 5 43 4"
$ns_ at 105.257928480930 "$god_ set-dist 11 43 3"
$ns_ at 105.257928480930 "$god_ set-dist 27 43 2"
$ns_ at 105.257928480930 "$god_ set-dist 39 43 3"
$ns_ at 105.257928480930 "$god_ set-dist 40 43 4"
$ns_ at 105.361876604527 "$god_ set-dist 36 41 1"
$ns_ at 105.361876604527 "$god_ set-dist 41 45 2"
$ns_ at 105.362604615036 "$god_ set-dist 2 22 2"
$ns_ at 105.362604615036 "$god_ set-dist 7 22 1"
$ns_ at 105.362604615036 "$god_ set-dist 9 22 2"
$ns_ at 105.362604615036 "$god_ set-dist 16 22 2"
$ns_ at 105.362604615036 "$god_ set-dist 22 30 2"
$ns_ at 105.364189265263 "$god_ set-dist 1 30 1"
$ns_ at 105.364189265263 "$god_ set-dist 6 30 2"
$ns_ at 105.364189265263 "$god_ set-dist 8 30 2"
$ns_ at 105.364189265263 "$god_ set-dist 17 30 2"
$ns_ at 105.364189265263 "$god_ set-dist 25 30 2"
$ns_ at 105.379414495025 "$god_ set-dist 15 19 2"
$ns_ at 105.379414495025 "$god_ set-dist 19 38 1"
$ns_ at 105.395434479605 "$god_ set-dist 2 5 2"
$ns_ at 105.395434479605 "$god_ set-dist 5 12 2"
$ns_ at 105.395434479605 "$god_ set-dist 5 14 3"
$ns_ at 105.395434479605 "$god_ set-dist 5 16 2"
$ns_ at 105.395434479605 "$god_ set-dist 5 26 2"
$ns_ at 105.395434479605 "$god_ set-dist 5 34 3"
$ns_ at 105.395434479605 "$god_ set-dist 5 37 3"
$ns_ at 105.395434479605 "$god_ set-dist 5 43 3"
$ns_ at 105.395434479605 "$god_ set-dist 5 46 1"
$ns_ at 105.395434479605 "$god_ set-dist 5 47 2"
$ns_ at 105.484933842822 "$god_ set-dist 6 21 1"
$ns_ at 105.567491692433 "$god_ set-dist 28 33 2"
$ns_ at 105.581763210079 "$god_ set-dist 18 49 2"
$ns_ at 105.623547829652 "$god_ set-dist 11 12 1"
$ns_ at 105.623547829652 "$god_ set-dist 11 34 2"
$ns_ at 105.623547829652 "$god_ set-dist 11 43 2"
$ns_ at 105.623547829652 "$god_ set-dist 12 40 2"
$ns_ at 105.623547829652 "$god_ set-dist 34 40 3"
$ns_ at 105.623547829652 "$god_ set-dist 40 43 3"
$ns_ at 105.623721573585 "$node_(32) setdest 103.804757003996 243.059297524470 0.000000000000"
$ns_ at 105.672493619527 "$god_ set-dist 5 25 2"
$ns_ at 105.672493619527 "$god_ set-dist 25 45 1"
$ns_ at 105.681055214141 "$god_ set-dist 7 9 2"
$ns_ at 105.681055214141 "$god_ set-dist 9 18 3"
$ns_ at 105.681055214141 "$god_ set-dist 9 22 3"
$ns_ at 105.681055214141 "$god_ set-dist 9 42 3"
$ns_ at 105.681055214141 "$god_ set-dist 9 49 4"
$ns_ at 105.718281575488 "$god_ set-dist 18 21 1"
$ns_ at 105.737941375607 "$god_ set-dist 1 19 1"
$ns_ at 105.737941375607 "$god_ set-dist 1 24 2"
$ns_ at 105.737941375607 "$god_ set-dist 19 21 2"
$ns_ at 105.737941375607 "$god_ set-dist 21 24 3"
$ns_ at 105.766713868338 "$god_ set-dist 6 16 2"
$ns_ at 105.766713868338 "$god_ set-dist 8 16 2"
$ns_ at 105.766713868338 "$god_ set-dist 16 17 2"
$ns_ at 105.766713868338 "$god_ set-dist 16 23 1"
$ns_ at 105.766713868338 "$god_ set-dist 16 25 2"
$ns_ at 105.766713868338 "$god_ set-dist 16 31 2"
$ns_ at 105.766713868338 "$god_ set-dist 16 44 2"
$ns_ at 105.766713868338 "$god_ set-dist 16 48 2"
$ns_ at 105.766713868338 "$god_ set-dist 23 34 2"
$ns_ at 105.766713868338 "$god_ set-dist 34 44 3"
$ns_ at 105.766713868338 "$god_ set-dist 34 48 3"
$ns_ at 105.778556500271 "$god_ set-dist 2 40 2"
$ns_ at 105.778556500271 "$god_ set-dist 14 40 3"
$ns_ at 105.778556500271 "$god_ set-dist 16 40 2"
$ns_ at 105.778556500271 "$god_ set-dist 26 40 2"
$ns_ at 105.778556500271 "$god_ set-dist 37 40 3"
$ns_ at 105.778556500271 "$god_ set-dist 40 46 1"
$ns_ at 105.778556500271 "$god_ set-dist 40 47 2"
$ns_ at 105.826897620175 "$god_ set-dist 2 48 2"
$ns_ at 105.826897620175 "$god_ set-dist 7 48 1"
$ns_ at 105.826897620175 "$god_ set-dist 12 48 2"
$ns_ at 105.826897620175 "$god_ set-dist 26 48 2"
$ns_ at 105.826897620175 "$god_ set-dist 30 48 2"
$ns_ at 105.826897620175 "$god_ set-dist 33 48 2"
$ns_ at 105.826897620175 "$god_ set-dist 46 48 2"
$ns_ at 105.904791568513 "$god_ set-dist 23 26 1"
$ns_ at 105.904791568513 "$god_ set-dist 26 31 2"
$ns_ at 105.904791568513 "$god_ set-dist 26 44 2"
$ns_ at 105.925781611177 "$god_ set-dist 9 14 2"
$ns_ at 105.925781611177 "$god_ set-dist 9 16 1"
$ns_ at 105.925781611177 "$god_ set-dist 9 37 2"
$ns_ at 105.945487854160 "$god_ set-dist 19 29 1"
$ns_ at 105.945487854160 "$god_ set-dist 29 33 2"
$ns_ at 105.987894638629 "$god_ set-dist 1 48 1"
$ns_ at 106.042473590835 "$god_ set-dist 4 11 2"
$ns_ at 106.042473590835 "$god_ set-dist 4 17 3"
$ns_ at 106.042473590835 "$god_ set-dist 4 23 3"
$ns_ at 106.042473590835 "$god_ set-dist 4 29 4"
$ns_ at 106.042473590835 "$god_ set-dist 4 31 3"
$ns_ at 106.042473590835 "$god_ set-dist 4 32 4"
$ns_ at 106.042473590835 "$god_ set-dist 4 38 3"
$ns_ at 106.051898037969 "$god_ set-dist 20 48 1"
$ns_ at 106.067363684706 "$god_ set-dist 1 16 1"
$ns_ at 106.075934187072 "$god_ set-dist 3 48 1"
$ns_ at 106.089025330988 "$god_ set-dist 5 11 1"
$ns_ at 106.089025330988 "$god_ set-dist 5 17 2"
$ns_ at 106.089025330988 "$god_ set-dist 5 23 2"
$ns_ at 106.089025330988 "$god_ set-dist 5 29 3"
$ns_ at 106.089025330988 "$god_ set-dist 5 31 2"
$ns_ at 106.089025330988 "$god_ set-dist 5 32 3"
$ns_ at 106.089025330988 "$god_ set-dist 5 38 2"
$ns_ at 106.094066773977 "$god_ set-dist 12 44 2"
$ns_ at 106.094066773977 "$god_ set-dist 20 44 1"
$ns_ at 106.096977504791 "$god_ set-dist 21 22 1"
$ns_ at 106.102150215040 "$god_ set-dist 0 18 1"
$ns_ at 106.102150215040 "$god_ set-dist 9 18 2"
$ns_ at 106.151435965823 "$god_ set-dist 15 41 2"
$ns_ at 106.151435965823 "$god_ set-dist 38 41 1"
$ns_ at 106.187362588133 "$god_ set-dist 11 34 3"
$ns_ at 106.187362588133 "$god_ set-dist 12 34 2"
$ns_ at 106.187362588133 "$god_ set-dist 20 34 3"
$ns_ at 106.190043633962 "$god_ set-dist 2 8 2"
$ns_ at 106.190043633962 "$god_ set-dist 7 8 1"
$ns_ at 106.199851511021 "$god_ set-dist 27 41 2"
$ns_ at 106.243171822178 "$god_ set-dist 4 23 2"
$ns_ at 106.243171822178 "$god_ set-dist 4 29 3"
$ns_ at 106.243171822178 "$god_ set-dist 4 32 3"
$ns_ at 106.243171822178 "$god_ set-dist 23 45 1"
$ns_ at 106.243171822178 "$god_ set-dist 29 45 2"
$ns_ at 106.243171822178 "$god_ set-dist 32 45 2"
$ns_ at 106.248155570992 "$god_ set-dist 9 42 2"
$ns_ at 106.248155570992 "$god_ set-dist 36 42 1"
$ns_ at 106.248155570992 "$god_ set-dist 42 47 2"
$ns_ at 106.291445923905 "$god_ set-dist 18 36 1"
$ns_ at 106.291445923905 "$god_ set-dist 18 47 2"
$ns_ at 106.339590139647 "$god_ set-dist 23 46 1"
$ns_ at 106.339590139647 "$god_ set-dist 29 46 2"
$ns_ at 106.339590139647 "$god_ set-dist 32 46 2"
$ns_ at 106.365515473032 "$god_ set-dist 7 39 1"
$ns_ at 106.365515473032 "$god_ set-dist 13 39 2"
$ns_ at 106.369105531565 "$god_ set-dist 11 30 1"
$ns_ at 106.369105531565 "$god_ set-dist 30 31 2"
$ns_ at 106.443133185718 "$god_ set-dist 0 23 1"
$ns_ at 106.443133185718 "$god_ set-dist 0 29 2"
$ns_ at 106.443133185718 "$god_ set-dist 0 32 2"
$ns_ at 106.492834971776 "$god_ set-dist 1 2 1"
$ns_ at 106.492834971776 "$god_ set-dist 2 6 2"
$ns_ at 106.492834971776 "$god_ set-dist 2 17 2"
$ns_ at 106.492834971776 "$god_ set-dist 2 25 2"
$ns_ at 106.517281771494 "$god_ set-dist 23 33 1"
$ns_ at 106.546799598226 "$god_ set-dist 0 12 1"
$ns_ at 106.546799598226 "$god_ set-dist 0 43 2"
$ns_ at 106.594666697919 "$god_ set-dist 7 25 1"
$ns_ at 106.678113060408 "$god_ set-dist 7 45 1"
$ns_ at 106.678113060408 "$god_ set-dist 13 45 2"
$ns_ at 106.702834847800 "$god_ set-dist 3 28 3"
$ns_ at 106.702834847800 "$god_ set-dist 27 28 2"
$ns_ at 106.702834847800 "$god_ set-dist 28 39 3"
$ns_ at 106.741019309761 "$god_ set-dist 12 20 2"
$ns_ at 106.741019309761 "$god_ set-dist 12 44 3"
$ns_ at 106.741019309761 "$god_ set-dist 20 28 3"
$ns_ at 106.741019309761 "$god_ set-dist 20 43 3"
$ns_ at 106.800359811999 "$god_ set-dist 18 39 1"
$ns_ at 106.810711924912 "$god_ set-dist 4 31 2"
$ns_ at 106.810711924912 "$god_ set-dist 31 45 1"
$ns_ at 106.835939207047 "$god_ set-dist 12 23 1"
$ns_ at 106.835939207047 "$god_ set-dist 12 44 2"
$ns_ at 106.858158114943 "$god_ set-dist 9 39 2"
$ns_ at 106.919158625055 "$god_ set-dist 0 22 1"
$ns_ at 106.919158625055 "$god_ set-dist 0 49 2"
$ns_ at 106.919158625055 "$god_ set-dist 9 22 2"
$ns_ at 106.919158625055 "$god_ set-dist 9 49 3"
$ns_ at 106.958199552695 "$god_ set-dist 26 34 2"
$ns_ at 106.963438024944 "$god_ set-dist 0 8 1"
$ns_ at 106.963438024944 "$god_ set-dist 8 9 2"
$ns_ at 106.972173649923 "$god_ set-dist 4 17 2"
$ns_ at 106.972173649923 "$god_ set-dist 17 45 1"
$ns_ at 107.056011024176 "$god_ set-dist 16 42 1"
$ns_ at 107.056011024176 "$god_ set-dist 34 42 2"
$ns_ at 107.112470488745 "$god_ set-dist 5 30 1"
$ns_ at 107.142279354890 "$god_ set-dist 14 26 1"
$ns_ at 107.154029514354 "$god_ set-dist 15 20 1"
$ns_ at 107.154029514354 "$god_ set-dist 15 27 2"
$ns_ at 107.154029514354 "$god_ set-dist 15 33 2"
$ns_ at 107.154029514354 "$god_ set-dist 15 46 2"
$ns_ at 107.208212339294 "$god_ set-dist 1 41 1"
$ns_ at 107.208212339294 "$god_ set-dist 21 41 2"
$ns_ at 107.231840542247 "$god_ set-dist 14 35 2"
$ns_ at 107.231840542247 "$god_ set-dist 19 35 1"
$ns_ at 107.231840542247 "$god_ set-dist 24 35 2"
$ns_ at 107.231840542247 "$god_ set-dist 28 35 2"
$ns_ at 107.231840542247 "$god_ set-dist 35 43 2"
$ns_ at 107.257435547085 "$god_ set-dist 22 49 2"
$ns_ at 107.289612719514 "$god_ set-dist 15 26 2"
$ns_ at 107.289612719514 "$god_ set-dist 26 38 1"
$ns_ at 107.296302484307 "$god_ set-dist 19 48 1"
$ns_ at 107.296302484307 "$god_ set-dist 28 48 2"
$ns_ at 107.296302484307 "$god_ set-dist 43 48 2"
$ns_ at 107.330317071676 "$god_ set-dist 28 41 2"
$ns_ at 107.336997143120 "$god_ set-dist 4 30 1"
$ns_ at 107.338027615571 "$god_ set-dist 12 41 2"
$ns_ at 107.406140928451 "$god_ set-dist 5 10 2"
$ns_ at 107.406140928451 "$god_ set-dist 5 19 2"
$ns_ at 107.406140928451 "$god_ set-dist 5 24 3"
$ns_ at 107.406140928451 "$god_ set-dist 5 33 1"
$ns_ at 107.420409398489 "$god_ set-dist 0 43 3"
$ns_ at 107.420409398489 "$god_ set-dist 11 43 3"
$ns_ at 107.420409398489 "$god_ set-dist 12 43 2"
$ns_ at 107.433423741910 "$node_(1) setdest 365.704019373850 394.229350995670 0.000000000000"
$ns_ at 107.447750663840 "$god_ set-dist 0 9 2"
$ns_ at 107.447750663840 "$god_ set-dist 8 9 3"
$ns_ at 107.447750663840 "$god_ set-dist 9 22 3"
$ns_ at 107.447750663840 "$god_ set-dist 9 49 4"
$ns_ at 107.485330749775 "$god_ set-dist 26 42 1"
$ns_ at 107.492767664764 "$god_ set-dist 9 22 2"
$ns_ at 107.492767664764 "$god_ set-dist 22 36 1"
$ns_ at 107.492767664764 "$god_ set-dist 22 47 2"
$ns_ at 107.540796048858 "$god_ set-dist 35 46 1"
$ns_ at 107.626825219877 "$god_ set-dist 11 14 2"
$ns_ at 107.626825219877 "$god_ set-dist 11 26 1"
$ns_ at 107.626825219877 "$god_ set-dist 11 43 2"
$ns_ at 107.637924368117 "$god_ set-dist 19 28 2"
$ns_ at 107.637924368117 "$god_ set-dist 28 29 3"
$ns_ at 107.637924368117 "$god_ set-dist 28 35 3"
$ns_ at 107.637924368117 "$god_ set-dist 28 48 3"
$ns_ at 107.641506661749 "$god_ set-dist 23 39 1"
$ns_ at 107.641506661749 "$god_ set-dist 29 39 2"
$ns_ at 107.641506661749 "$god_ set-dist 32 39 2"
$ns_ at 107.664219205955 "$god_ set-dist 10 29 1"
$ns_ at 107.664219205955 "$god_ set-dist 28 29 2"
$ns_ at 107.683919978977 "$god_ set-dist 14 20 2"
$ns_ at 107.683919978977 "$god_ set-dist 19 20 1"
$ns_ at 107.683919978977 "$god_ set-dist 20 24 2"
$ns_ at 107.683919978977 "$god_ set-dist 20 43 2"
$ns_ at 107.755003067432 "$god_ set-dist 0 29 3"
$ns_ at 107.755003067432 "$god_ set-dist 4 29 4"
$ns_ at 107.755003067432 "$god_ set-dist 23 29 2"
$ns_ at 107.755003067432 "$god_ set-dist 29 39 3"
$ns_ at 107.755003067432 "$god_ set-dist 29 45 3"
$ns_ at 107.755003067432 "$god_ set-dist 29 46 3"
$ns_ at 107.765253624336 "$god_ set-dist 15 16 2"
$ns_ at 107.765253624336 "$god_ set-dist 15 34 3"
$ns_ at 107.765253624336 "$god_ set-dist 16 38 1"
$ns_ at 107.765253624336 "$god_ set-dist 34 38 2"
$ns_ at 107.780747754942 "$god_ set-dist 3 12 1"
$ns_ at 107.780747754942 "$god_ set-dist 3 28 2"
$ns_ at 107.788405250736 "$god_ set-dist 5 42 2"
$ns_ at 107.788405250736 "$god_ set-dist 11 37 2"
$ns_ at 107.788405250736 "$god_ set-dist 11 42 1"
$ns_ at 107.788405250736 "$god_ set-dist 40 42 2"
$ns_ at 107.849671060536 "$god_ set-dist 6 13 2"
$ns_ at 107.849671060536 "$god_ set-dist 13 15 2"
$ns_ at 107.849671060536 "$god_ set-dist 13 31 2"
$ns_ at 107.849671060536 "$god_ set-dist 13 38 1"
$ns_ at 107.849671060536 "$god_ set-dist 13 44 2"
$ns_ at 107.857474347250 "$god_ set-dist 10 35 1"
$ns_ at 107.857474347250 "$god_ set-dist 28 35 2"
$ns_ at 107.885860759187 "$god_ set-dist 5 27 1"
$ns_ at 107.917142706306 "$god_ set-dist 22 39 1"
$ns_ at 107.938268744549 "$god_ set-dist 41 48 1"
$ns_ at 107.970037505247 "$god_ set-dist 3 14 2"
$ns_ at 107.970037505247 "$god_ set-dist 3 26 1"
$ns_ at 107.970037505247 "$god_ set-dist 3 43 2"
$ns_ at 107.972040426308 "$god_ set-dist 12 39 1"
$ns_ at 107.972040426308 "$god_ set-dist 28 39 2"
$ns_ at 107.973675873574 "$god_ set-dist 5 48 2"
$ns_ at 107.973675873574 "$god_ set-dist 11 48 1"
$ns_ at 107.973675873574 "$god_ set-dist 40 48 2"
$ns_ at 107.983531137417 "$god_ set-dist 21 23 1"
$ns_ at 107.983531137417 "$god_ set-dist 21 32 2"
$ns_ at 108.008543836522 "$god_ set-dist 7 17 1"
$ns_ at 108.015589995899 "$god_ set-dist 20 26 1"
$ns_ at 108.015589995899 "$god_ set-dist 20 28 2"
$ns_ at 108.025597588414 "$god_ set-dist 18 46 1"
$ns_ at 108.039800090369 "$god_ set-dist 14 49 3"
$ns_ at 108.039800090369 "$god_ set-dist 19 49 2"
$ns_ at 108.039800090369 "$god_ set-dist 24 49 3"
$ns_ at 108.039800090369 "$god_ set-dist 29 49 2"
$ns_ at 108.039800090369 "$god_ set-dist 32 49 2"
$ns_ at 108.039800090369 "$god_ set-dist 41 49 2"
$ns_ at 108.039800090369 "$god_ set-dist 43 49 3"
$ns_ at 108.039800090369 "$god_ set-dist 48 49 1"
$ns_ at 108.055987647539 "$god_ set-dist 36 45 2"
$ns_ at 108.081359021176 "$god_ set-dist 5 9 1"
$ns_ at 108.092420927010 "$god_ set-dist 32 35 1"
$ns_ at 108.165438001015 "$god_ set-dist 4 9 1"
$ns_ at 108.184603565353 "$god_ set-dist 8 14 2"
$ns_ at 108.184603565353 "$god_ set-dist 14 17 2"
$ns_ at 108.184603565353 "$god_ set-dist 14 18 2"
$ns_ at 108.184603565353 "$god_ set-dist 14 22 2"
$ns_ at 108.184603565353 "$god_ set-dist 14 25 2"
$ns_ at 108.184603565353 "$god_ set-dist 14 42 1"
$ns_ at 108.294752899234 "$god_ set-dist 13 36 1"
$ns_ at 108.324605325345 "$god_ set-dist 3 5 1"
$ns_ at 108.324605325345 "$god_ set-dist 5 44 2"
$ns_ at 108.331421788528 "$god_ set-dist 35 41 1"
$ns_ at 108.367629793166 "$god_ set-dist 26 35 1"
$ns_ at 108.375664932021 "$god_ set-dist 4 29 3"
$ns_ at 108.375664932021 "$god_ set-dist 4 38 2"
$ns_ at 108.375664932021 "$god_ set-dist 29 46 2"
$ns_ at 108.375664932021 "$god_ set-dist 38 46 1"
$ns_ at 108.392494864154 "$god_ set-dist 14 44 2"
$ns_ at 108.392494864154 "$god_ set-dist 37 44 2"
$ns_ at 108.392494864154 "$god_ set-dist 42 44 1"
$ns_ at 108.430470798869 "$god_ set-dist 15 27 3"
$ns_ at 108.430470798869 "$god_ set-dist 20 27 2"
$ns_ at 108.438041705989 "$god_ set-dist 21 25 1"
$ns_ at 108.492545186945 "$god_ set-dist 4 10 2"
$ns_ at 108.492545186945 "$god_ set-dist 4 19 2"
$ns_ at 108.492545186945 "$god_ set-dist 4 24 3"
$ns_ at 108.492545186945 "$god_ set-dist 4 33 1"
$ns_ at 108.498050577696 "$god_ set-dist 11 44 1"
$ns_ at 108.498050577696 "$god_ set-dist 30 44 2"
$ns_ at 108.498050577696 "$god_ set-dist 40 44 2"
$ns_ at 108.513962233991 "$god_ set-dist 4 17 3"
$ns_ at 108.513962233991 "$god_ set-dist 4 31 3"
$ns_ at 108.513962233991 "$god_ set-dist 4 45 2"
$ns_ at 108.569885098043 "$god_ set-dist 4 24 4"
$ns_ at 108.569885098043 "$god_ set-dist 5 24 4"
$ns_ at 108.569885098043 "$god_ set-dist 12 24 3"
$ns_ at 108.569885098043 "$god_ set-dist 19 24 2"
$ns_ at 108.569885098043 "$god_ set-dist 20 24 3"
$ns_ at 108.569885098043 "$god_ set-dist 24 27 3"
$ns_ at 108.569885098043 "$god_ set-dist 24 33 3"
$ns_ at 108.610428709566 "$god_ set-dist 0 29 2"
$ns_ at 108.610428709566 "$god_ set-dist 21 29 2"
$ns_ at 108.610428709566 "$god_ set-dist 29 35 1"
$ns_ at 108.610428709566 "$god_ set-dist 29 39 2"
$ns_ at 108.610428709566 "$god_ set-dist 29 45 2"
$ns_ at 108.650905789487 "$god_ set-dist 8 39 1"
$ns_ at 108.650905789487 "$god_ set-dist 39 49 2"
$ns_ at 108.664118238638 "$god_ set-dist 29 39 3"
$ns_ at 108.664118238638 "$god_ set-dist 35 39 2"
$ns_ at 108.719703344503 "$god_ set-dist 4 31 2"
$ns_ at 108.719703344503 "$god_ set-dist 21 31 1"
$ns_ at 108.721042811066 "$god_ set-dist 23 32 2"
$ns_ at 108.721042811066 "$god_ set-dist 32 39 3"
$ns_ at 108.739314098973 "$god_ set-dist 5 12 1"
$ns_ at 108.739314098973 "$god_ set-dist 5 28 2"
$ns_ at 108.787312644598 "$god_ set-dist 18 19 1"
$ns_ at 108.787312644598 "$god_ set-dist 18 43 2"
$ns_ at 108.788626074141 "$god_ set-dist 44 45 1"
$ns_ at 108.789850800894 "$god_ set-dist 4 17 2"
$ns_ at 108.789850800894 "$god_ set-dist 17 21 1"
$ns_ at 108.807677940397 "$god_ set-dist 3 19 1"
$ns_ at 108.869653541922 "$god_ set-dist 9 48 2"
$ns_ at 108.869653541922 "$god_ set-dist 9 49 3"
$ns_ at 108.869653541922 "$god_ set-dist 36 48 1"
$ns_ at 108.869653541922 "$god_ set-dist 36 49 2"
$ns_ at 108.869653541922 "$god_ set-dist 47 48 2"
$ns_ at 108.869653541922 "$god_ set-dist 47 49 3"
$ns_ at 108.885037783568 "$god_ set-dist 7 21 1"
$ns_ at 108.885037783568 "$god_ set-dist 13 21 2"
$ns_ at 108.952032790179 "$god_ set-dist 3 15 1"
$ns_ at 108.952032790179 "$god_ set-dist 5 15 2"
$ns_ at 108.952032790179 "$god_ set-dist 12 15 2"
$ns_ at 108.952032790179 "$god_ set-dist 15 27 2"
$ns_ at 108.997277635754 "$god_ set-dist 4 27 1"
$ns_ at 109.086151736688 "$god_ set-dist 0 28 3"
$ns_ at 109.086151736688 "$god_ set-dist 5 28 3"
$ns_ at 109.086151736688 "$god_ set-dist 12 28 2"
$ns_ at 109.086151736688 "$god_ set-dist 28 39 3"
$ns_ at 109.125898327862 "$god_ set-dist 6 7 1"
$ns_ at 109.177355725893 "$god_ set-dist 22 46 1"
$ns_ at 109.291164326647 "$god_ set-dist 9 49 4"
$ns_ at 109.291164326647 "$god_ set-dist 19 49 3"
$ns_ at 109.291164326647 "$god_ set-dist 24 49 4"
$ns_ at 109.291164326647 "$god_ set-dist 29 49 3"
$ns_ at 109.291164326647 "$god_ set-dist 32 49 3"
$ns_ at 109.291164326647 "$god_ set-dist 36 49 3"
$ns_ at 109.291164326647 "$god_ set-dist 41 49 3"
$ns_ at 109.291164326647 "$god_ set-dist 43 49 4"
$ns_ at 109.291164326647 "$god_ set-dist 47 49 4"
$ns_ at 109.291164326647 "$god_ set-dist 48 49 2"
$ns_ at 109.295117623973 "$god_ set-dist 18 33 1"
$ns_ at 109.302222220505 "$god_ set-dist 19 22 1"
$ns_ at 109.302222220505 "$god_ set-dist 22 43 2"
$ns_ at 109.306442885211 "$god_ set-dist 2 23 1"
$ns_ at 109.306442885211 "$god_ set-dist 2 31 2"
$ns_ at 109.306442885211 "$god_ set-dist 2 44 2"
$ns_ at 109.318950235580 "$god_ set-dist 26 37 1"
$ns_ at 109.342572717173 "$god_ set-dist 20 33 2"
$ns_ at 109.347213080772 "$god_ set-dist 18 26 1"
$ns_ at 109.347213080772 "$god_ set-dist 18 28 2"
$ns_ at 109.382472738855 "$god_ set-dist 10 48 1"
$ns_ at 109.382472738855 "$god_ set-dist 28 48 2"
$ns_ at 109.428519803812 "$god_ set-dist 23 30 1"
$ns_ at 109.429732340643 "$god_ set-dist 1 5 1"
$ns_ at 109.429732340643 "$god_ set-dist 5 24 3"
$ns_ at 109.429732340643 "$god_ set-dist 5 41 2"
$ns_ at 109.453037275983 "$god_ set-dist 0 14 2"
$ns_ at 109.453037275983 "$god_ set-dist 0 26 1"
$ns_ at 109.453037275983 "$god_ set-dist 0 28 2"
$ns_ at 109.453037275983 "$god_ set-dist 0 37 2"
$ns_ at 109.453037275983 "$god_ set-dist 0 43 2"
$ns_ at 109.454325394424 "$god_ set-dist 19 27 2"
$ns_ at 109.466670560285 "$god_ set-dist 7 44 1"
$ns_ at 109.523827328536 "$god_ set-dist 0 38 1"
$ns_ at 109.524940907467 "$god_ set-dist 14 29 1"
$ns_ at 109.620842074392 "$god_ set-dist 9 36 2"
$ns_ at 109.620842074392 "$god_ set-dist 9 48 3"
$ns_ at 109.674610203472 "$god_ set-dist 19 40 2"
$ns_ at 109.674610203472 "$god_ set-dist 19 46 1"
$ns_ at 109.708306629390 "$god_ set-dist 33 38 1"
$ns_ at 109.805170243552 "$god_ set-dist 13 15 3"
$ns_ at 109.805170243552 "$god_ set-dist 15 16 3"
$ns_ at 109.805170243552 "$god_ set-dist 15 34 4"
$ns_ at 109.805170243552 "$god_ set-dist 15 38 2"
$ns_ at 109.827407709032 "$god_ set-dist 4 6 3"
$ns_ at 109.827407709032 "$god_ set-dist 4 17 3"
$ns_ at 109.827407709032 "$god_ set-dist 4 21 2"
$ns_ at 109.827407709032 "$god_ set-dist 4 25 3"
$ns_ at 109.827407709032 "$god_ set-dist 4 31 3"
$ns_ at 109.877209607760 "$god_ set-dist 21 29 3"
$ns_ at 109.877209607760 "$god_ set-dist 21 32 3"
$ns_ at 109.877209607760 "$god_ set-dist 21 35 2"
$ns_ at 109.936581773383 "$god_ set-dist 4 34 2"
$ns_ at 109.936581773383 "$god_ set-dist 5 34 2"
$ns_ at 109.936581773383 "$god_ set-dist 9 34 1"
$ns_ at 109.943958036849 "$god_ set-dist 3 30 1"
$ns_ at 109.943958036849 "$god_ set-dist 15 30 2"
$ns_ at 109.947311321682 "$god_ set-dist 4 24 3"
$ns_ at 109.947311321682 "$god_ set-dist 10 24 1"
$ns_ at 109.947311321682 "$god_ set-dist 12 24 2"
$ns_ at 109.947311321682 "$god_ set-dist 24 27 2"
$ns_ at 109.947311321682 "$god_ set-dist 24 33 2"
$ns_ at 109.986263756304 "$god_ set-dist 16 34 2"
$ns_ at 109.986263756304 "$god_ set-dist 34 38 3"
$ns_ at 109.986263756304 "$god_ set-dist 34 42 3"
$ns_ at 110.008619060661 "$god_ set-dist 10 27 2"
$ns_ at 110.008619060661 "$god_ set-dist 24 27 3"
$ns_ at 110.008619060661 "$god_ set-dist 27 29 3"
$ns_ at 110.008619060661 "$god_ set-dist 27 32 3"
$ns_ at 110.070821543882 "$god_ set-dist 15 16 2"
$ns_ at 110.070821543882 "$god_ set-dist 16 35 1"
$ns_ at 110.077379444301 "$node_(4) setdest 666.963167956177 522.068171040197 0.000000000000"
$ns_ at 110.124131093624 "$god_ set-dist 13 31 3"
$ns_ at 110.124131093624 "$god_ set-dist 31 38 2"
$ns_ at 110.149277615228 "$god_ set-dist 2 13 1"
$ns_ at 110.152056544816 "$god_ set-dist 15 40 2"
$ns_ at 110.152056544816 "$god_ set-dist 15 45 1"
$ns_ at 110.170404891968 "$god_ set-dist 45 48 1"
$ns_ at 110.174707066849 "$god_ set-dist 16 37 2"
$ns_ at 110.187433130432 "$god_ set-dist 1 44 1"
$ns_ at 110.246599246718 "$god_ set-dist 4 12 1"
$ns_ at 110.274096341983 "$god_ set-dist 6 37 2"
$ns_ at 110.274096341983 "$god_ set-dist 37 38 1"
$ns_ at 110.321572751816 "$god_ set-dist 22 26 1"
$ns_ at 110.321572751816 "$god_ set-dist 22 28 2"
$ns_ at 110.482769703056 "$god_ set-dist 13 15 2"
$ns_ at 110.482769703056 "$god_ set-dist 13 31 2"
$ns_ at 110.482769703056 "$god_ set-dist 13 35 1"
$ns_ at 110.504121612711 "$god_ set-dist 12 18 1"
$ns_ at 110.576884451118 "$god_ set-dist 12 19 2"
$ns_ at 110.593883000250 "$god_ set-dist 5 18 1"
$ns_ at 110.603640032701 "$god_ set-dist 7 31 1"
$ns_ at 110.662007529584 "$god_ set-dist 9 48 2"
$ns_ at 110.662007529584 "$god_ set-dist 26 48 1"
$ns_ at 110.691497785138 "$god_ set-dist 10 40 2"
$ns_ at 110.691497785138 "$god_ set-dist 24 40 3"
$ns_ at 110.691497785138 "$god_ set-dist 33 40 1"
$ns_ at 110.695457462685 "$god_ set-dist 18 27 1"
$ns_ at 110.716652360333 "$god_ set-dist 9 26 2"
$ns_ at 110.716652360333 "$god_ set-dist 9 37 3"
$ns_ at 110.716652360333 "$god_ set-dist 9 48 3"
$ns_ at 110.781776320625 "$god_ set-dist 4 9 2"
$ns_ at 110.781776320625 "$god_ set-dist 4 34 3"
$ns_ at 110.790041119149 "$god_ set-dist 3 16 1"
$ns_ at 110.791115105676 "$god_ set-dist 24 34 2"
$ns_ at 110.791115105676 "$god_ set-dist 24 43 1"
$ns_ at 110.812721367753 "$god_ set-dist 0 6 1"
$ns_ at 110.812721367753 "$god_ set-dist 4 6 2"
$ns_ at 110.837557305753 "$god_ set-dist 9 14 3"
$ns_ at 110.837557305753 "$god_ set-dist 14 16 2"
$ns_ at 110.865397410472 "$god_ set-dist 0 17 1"
$ns_ at 110.865397410472 "$god_ set-dist 4 17 2"
$ns_ at 110.871666363910 "$god_ set-dist 16 18 1"
$ns_ at 110.899583986490 "$god_ set-dist 2 38 1"
$ns_ at 110.899583986490 "$god_ set-dist 34 38 2"
$ns_ at 110.917696580316 "$god_ set-dist 5 23 1"
$ns_ at 111.043442706688 "$god_ set-dist 36 39 2"
$ns_ at 111.052574986272 "$god_ set-dist 19 25 1"
$ns_ at 111.052574986272 "$god_ set-dist 19 49 2"
$ns_ at 111.052574986272 "$god_ set-dist 25 43 2"
$ns_ at 111.052574986272 "$god_ set-dist 43 49 3"
$ns_ at 111.054258893775 "$god_ set-dist 27 40 1"
$ns_ at 111.110067208808 "$god_ set-dist 18 30 1"
$ns_ at 111.124079703548 "$god_ set-dist 22 33 1"
$ns_ at 111.140729122148 "$god_ set-dist 20 24 2"
$ns_ at 111.140729122148 "$god_ set-dist 20 41 1"
$ns_ at 111.157652169238 "$god_ set-dist 0 16 1"
$ns_ at 111.203983773983 "$god_ set-dist 22 24 2"
$ns_ at 111.203983773983 "$god_ set-dist 22 41 1"
$ns_ at 111.244136675561 "$god_ set-dist 10 12 2"
$ns_ at 111.244136675561 "$god_ set-dist 12 24 3"
$ns_ at 111.244136675561 "$god_ set-dist 12 29 3"
$ns_ at 111.244136675561 "$god_ set-dist 12 32 3"
$ns_ at 111.249994507380 "$god_ set-dist 11 19 1"
$ns_ at 111.272822183941 "$node_(9) setdest 658.313998048966 268.525409883188 0.000000000000"
$ns_ at 111.343615291238 "$god_ set-dist 5 28 2"
$ns_ at 111.343615291238 "$god_ set-dist 5 47 1"
$ns_ at 111.365570296268 "$god_ set-dist 0 25 1"
$ns_ at 111.365570296268 "$god_ set-dist 4 25 2"
$ns_ at 111.373539482344 "$god_ set-dist 0 48 1"
$ns_ at 111.373539482344 "$god_ set-dist 4 48 2"
$ns_ at 111.382841363413 "$god_ set-dist 2 42 1"
$ns_ at 111.382841363413 "$god_ set-dist 34 42 2"
$ns_ at 111.414777543298 "$god_ set-dist 36 43 1"
$ns_ at 111.431837326097 "$god_ set-dist 4 42 2"
$ns_ at 111.431837326097 "$god_ set-dist 42 46 1"
$ns_ at 111.437459511099 "$god_ set-dist 11 28 3"
$ns_ at 111.437459511099 "$god_ set-dist 20 28 3"
$ns_ at 111.437459511099 "$god_ set-dist 22 28 3"
$ns_ at 111.437459511099 "$god_ set-dist 26 28 2"
$ns_ at 111.464194818281 "$god_ set-dist 6 37 3"
$ns_ at 111.464194818281 "$god_ set-dist 6 38 2"
$ns_ at 111.550677286669 "$god_ set-dist 7 13 2"
$ns_ at 111.550677286669 "$god_ set-dist 13 21 3"
$ns_ at 111.550677286669 "$god_ set-dist 13 39 3"
$ns_ at 111.590346666905 "$god_ set-dist 11 16 1"
$ns_ at 111.590346666905 "$god_ set-dist 11 28 2"
$ns_ at 111.631548920373 "$god_ set-dist 9 48 2"
$ns_ at 111.631548920373 "$god_ set-dist 46 48 1"
$ns_ at 111.683279416140 "$god_ set-dist 6 39 1"
$ns_ at 111.728772856305 "$god_ set-dist 18 24 2"
$ns_ at 111.728772856305 "$god_ set-dist 18 41 1"
$ns_ at 111.778727407144 "$god_ set-dist 21 29 2"
$ns_ at 111.778727407144 "$god_ set-dist 21 32 2"
$ns_ at 111.778727407144 "$god_ set-dist 21 48 1"
$ns_ at 111.836177498671 "$god_ set-dist 12 40 1"
$ns_ at 111.840120325836 "$god_ set-dist 36 37 1"
$ns_ at 111.854319645018 "$god_ set-dist 21 33 1"
$ns_ at 111.865558567219 "$god_ set-dist 8 9 2"
$ns_ at 111.865558567219 "$god_ set-dist 8 46 1"
$ns_ at 111.865558567219 "$god_ set-dist 8 47 2"
$ns_ at 111.865558567219 "$god_ set-dist 9 49 3"
$ns_ at 111.865558567219 "$god_ set-dist 46 49 2"
$ns_ at 111.865558567219 "$god_ set-dist 47 49 3"
$ns_ at 111.902733480929 "$god_ set-dist 2 15 2"
$ns_ at 111.902733480929 "$god_ set-dist 7 15 1"
$ns_ at 111.902733480929 "$god_ set-dist 15 34 3"
$ns_ at 111.945807878004 "$god_ set-dist 5 13 2"
$ns_ at 111.945807878004 "$god_ set-dist 5 16 1"
$ns_ at 111.945807878004 "$god_ set-dist 5 43 2"
$ns_ at 111.987752389541 "$god_ set-dist 17 19 1"
$ns_ at 111.987752389541 "$god_ set-dist 17 43 2"
$ns_ at 111.988866556554 "$god_ set-dist 19 44 1"
$ns_ at 111.988866556554 "$god_ set-dist 43 44 2"
$ns_ at 111.994379949159 "$god_ set-dist 8 9 3"
$ns_ at 111.994379949159 "$god_ set-dist 9 20 3"
$ns_ at 111.994379949159 "$god_ set-dist 9 46 2"
$ns_ at 111.994379949159 "$god_ set-dist 9 48 3"
$ns_ at 111.994379949159 "$god_ set-dist 9 49 4"
$ns_ at 112.016316719685 "$god_ set-dist 17 39 1"
$ns_ at 112.030933348900 "$god_ set-dist 30 40 1"
$ns_ at 112.161461051489 "$god_ set-dist 2 5 1"
$ns_ at 112.206478113133 "$god_ set-dist 20 49 1"
$ns_ at 112.206478113133 "$god_ set-dist 24 49 3"
$ns_ at 112.206478113133 "$god_ set-dist 26 49 2"
$ns_ at 112.206478113133 "$god_ set-dist 36 49 2"
$ns_ at 112.206478113133 "$god_ set-dist 41 49 2"
$ns_ at 112.209072983343 "$god_ set-dist 15 40 3"
$ns_ at 112.209072983343 "$god_ set-dist 40 45 2"
$ns_ at 112.225067240944 "$god_ set-dist 10 18 1"
$ns_ at 112.228844524556 "$god_ set-dist 5 7 1"
$ns_ at 112.346370464907 "$god_ set-dist 10 22 1"
$ns_ at 112.346370464907 "$god_ set-dist 22 28 2"
$ns_ at 112.382120905805 "$god_ set-dist 2 18 1"
$ns_ at 112.382120905805 "$god_ set-dist 18 34 2"
$ns_ at 112.384304055735 "$god_ set-dist 5 45 2"
$ns_ at 112.384304055735 "$god_ set-dist 9 45 3"
$ns_ at 112.402432883324 "$god_ set-dist 16 22 1"
$ns_ at 112.405080857953 "$god_ set-dist 8 19 1"
$ns_ at 112.405080857953 "$god_ set-dist 8 43 2"
$ns_ at 112.455169979321 "$god_ set-dist 15 18 2"
$ns_ at 112.460199067366 "$god_ set-dist 7 27 2"
$ns_ at 112.488154261397 "$god_ set-dist 14 38 1"
$ns_ at 112.499648536986 "$god_ set-dist 5 14 2"
$ns_ at 112.499648536986 "$god_ set-dist 5 26 1"
$ns_ at 112.499648536986 "$god_ set-dist 5 37 2"
$ns_ at 112.507611789461 "$god_ set-dist 25 36 1"
$ns_ at 112.507611789461 "$god_ set-dist 25 47 2"
$ns_ at 112.510555606524 "$god_ set-dist 13 45 3"
$ns_ at 112.510555606524 "$god_ set-dist 35 45 2"
$ns_ at 112.536067347981 "$god_ set-dist 14 36 1"
$ns_ at 112.541367178211 "$god_ set-dist 4 10 3"
$ns_ at 112.541367178211 "$god_ set-dist 4 24 4"
$ns_ at 112.541367178211 "$god_ set-dist 10 33 2"
$ns_ at 112.541367178211 "$god_ set-dist 10 40 3"
$ns_ at 112.541367178211 "$god_ set-dist 24 33 3"
$ns_ at 112.541367178211 "$god_ set-dist 24 40 4"
$ns_ at 112.636781839078 "$god_ set-dist 21 44 1"
$ns_ at 112.747686418583 "$god_ set-dist 17 46 1"
$ns_ at 112.747686418583 "$god_ set-dist 17 47 2"
$ns_ at 112.762056869727 "$god_ set-dist 25 47 3"
$ns_ at 112.762056869727 "$god_ set-dist 36 47 2"
$ns_ at 112.791280836978 "$god_ set-dist 33 42 1"
$ns_ at 112.874021817308 "$god_ set-dist 5 22 1"
$ns_ at 112.885524936899 "$god_ set-dist 29 39 2"
$ns_ at 112.885524936899 "$god_ set-dist 32 39 2"
$ns_ at 112.885524936899 "$god_ set-dist 39 48 1"
$ns_ at 112.899002081653 "$god_ set-dist 8 43 3"
$ns_ at 112.899002081653 "$god_ set-dist 17 43 3"
$ns_ at 112.899002081653 "$god_ set-dist 19 43 2"
$ns_ at 112.899002081653 "$god_ set-dist 43 44 3"
$ns_ at 112.959962497122 "$god_ set-dist 5 14 3"
$ns_ at 112.959962497122 "$god_ set-dist 14 26 2"
$ns_ at 112.993079198821 "$god_ set-dist 8 43 2"
$ns_ at 112.993079198821 "$god_ set-dist 17 43 2"
$ns_ at 112.993079198821 "$god_ set-dist 42 43 1"
$ns_ at 112.993079198821 "$god_ set-dist 43 44 2"
$ns_ at 113.035898199675 "$god_ set-dist 24 25 2"
$ns_ at 113.035898199675 "$god_ set-dist 25 41 1"
$ns_ at 113.106426135225 "$god_ set-dist 0 2 1"
$ns_ at 113.106426135225 "$god_ set-dist 0 34 2"
$ns_ at 113.257720491503 "$god_ set-dist 3 24 2"
$ns_ at 113.257720491503 "$god_ set-dist 3 41 1"
$ns_ at 113.258441894459 "$god_ set-dist 0 19 1"
$ns_ at 113.264365415268 "$god_ set-dist 24 44 2"
$ns_ at 113.264365415268 "$god_ set-dist 29 44 1"
$ns_ at 113.264365415268 "$god_ set-dist 29 49 2"
$ns_ at 113.312753542691 "$god_ set-dist 41 44 1"
$ns_ at 113.384009957046 "$god_ set-dist 32 44 1"
$ns_ at 113.384009957046 "$god_ set-dist 32 49 2"
$ns_ at 113.448468181273 "$god_ set-dist 22 30 1"
$ns_ at 113.458133668560 "$god_ set-dist 20 39 2"
$ns_ at 113.489610558601 "$god_ set-dist 10 40 2"
$ns_ at 113.489610558601 "$god_ set-dist 18 40 1"
$ns_ at 113.489610558601 "$god_ set-dist 24 40 3"
$ns_ at 113.489610558601 "$god_ set-dist 40 41 2"
$ns_ at 113.490906029298 "$god_ set-dist 15 21 1"
$ns_ at 113.490906029298 "$god_ set-dist 15 40 2"
$ns_ at 113.520760077053 "$god_ set-dist 0 42 1"
$ns_ at 113.527531868060 "$god_ set-dist 25 46 1"
$ns_ at 113.527531868060 "$god_ set-dist 25 47 2"
$ns_ at 113.546217410526 "$god_ set-dist 1 13 1"
$ns_ at 113.546217410526 "$god_ set-dist 13 21 2"
$ns_ at 113.546217410526 "$god_ set-dist 13 39 2"
$ns_ at 113.546217410526 "$god_ set-dist 13 45 2"
$ns_ at 113.564787228263 "$god_ set-dist 12 22 1"
$ns_ at 113.578684901075 "$god_ set-dist 8 47 3"
$ns_ at 113.578684901075 "$god_ set-dist 17 47 3"
$ns_ at 113.578684901075 "$god_ set-dist 25 47 3"
$ns_ at 113.578684901075 "$god_ set-dist 45 47 3"
$ns_ at 113.578684901075 "$god_ set-dist 46 47 2"
$ns_ at 113.580836461376 "$god_ set-dist 28 37 1"
$ns_ at 113.620567490134 "$god_ set-dist 12 29 2"
$ns_ at 113.620567490134 "$god_ set-dist 27 29 2"
$ns_ at 113.620567490134 "$god_ set-dist 29 30 2"
$ns_ at 113.620567490134 "$god_ set-dist 29 36 1"
$ns_ at 113.659027533106 "$god_ set-dist 25 26 1"
$ns_ at 113.659027533106 "$god_ set-dist 25 47 2"
$ns_ at 113.708001917173 "$god_ set-dist 17 36 1"
$ns_ at 113.722176379308 "$god_ set-dist 0 31 1"
$ns_ at 113.722176379308 "$god_ set-dist 4 31 2"
$ns_ at 113.745421186797 "$node_(33) setdest 501.586051066382 384.533900914959 0.000000000000"
$ns_ at 113.756466985137 "$god_ set-dist 3 27 2"
$ns_ at 113.756466985137 "$god_ set-dist 15 27 3"
$ns_ at 113.791920962818 "$god_ set-dist 12 32 2"
$ns_ at 113.791920962818 "$god_ set-dist 27 32 2"
$ns_ at 113.791920962818 "$god_ set-dist 30 32 2"
$ns_ at 113.791920962818 "$god_ set-dist 32 36 1"
$ns_ at 113.797320674150 "$god_ set-dist 13 31 3"
$ns_ at 113.797320674150 "$god_ set-dist 31 35 2"
$ns_ at 113.800353194359 "$god_ set-dist 16 43 2"
$ns_ at 113.828673365278 "$god_ set-dist 6 37 2"
$ns_ at 113.828673365278 "$god_ set-dist 15 37 2"
$ns_ at 113.828673365278 "$god_ set-dist 35 37 1"
$ns_ at 113.830456377697 "$god_ set-dist 0 35 2"
$ns_ at 113.859985170655 "$god_ set-dist 9 48 2"
$ns_ at 113.859985170655 "$god_ set-dist 33 48 1"
$ns_ at 113.869255921391 "$god_ set-dist 5 37 3"
$ns_ at 113.869255921391 "$god_ set-dist 26 37 2"
$ns_ at 113.891333784569 "$god_ set-dist 5 14 2"
$ns_ at 113.891333784569 "$god_ set-dist 5 29 2"
$ns_ at 113.891333784569 "$god_ set-dist 5 32 2"
$ns_ at 113.891333784569 "$god_ set-dist 5 36 1"
$ns_ at 113.891333784569 "$god_ set-dist 5 37 2"
$ns_ at 113.933391706396 "$god_ set-dist 31 39 1"
$ns_ at 113.936772971846 "$god_ set-dist 17 26 1"
$ns_ at 113.936772971846 "$god_ set-dist 17 47 2"
$ns_ at 114.042011547804 "$god_ set-dist 38 43 1"
$ns_ at 114.073729502155 "$god_ set-dist 14 27 3"
$ns_ at 114.073729502155 "$god_ set-dist 27 29 3"
$ns_ at 114.073729502155 "$god_ set-dist 27 32 3"
$ns_ at 114.073729502155 "$god_ set-dist 27 36 2"
$ns_ at 114.073729502155 "$god_ set-dist 27 37 3"
$ns_ at 114.115199623395 "$god_ set-dist 32 39 3"
$ns_ at 114.115199623395 "$god_ set-dist 32 48 2"
$ns_ at 114.236975459897 "$god_ set-dist 36 44 1"
$ns_ at 114.243279452058 "$god_ set-dist 1 31 1"
$ns_ at 114.243279452058 "$god_ set-dist 13 31 2"
$ns_ at 114.270251733457 "$god_ set-dist 2 22 1"
$ns_ at 114.270251733457 "$god_ set-dist 22 34 2"
$ns_ at 114.271407782563 "$god_ set-dist 7 12 2"
$ns_ at 114.299381833000 "$god_ set-dist 29 39 3"
$ns_ at 114.299381833000 "$god_ set-dist 29 48 2"
$ns_ at 114.331537972783 "$god_ set-dist 6 35 2"
$ns_ at 114.331537972783 "$god_ set-dist 6 37 3"
$ns_ at 114.338512509553 "$god_ set-dist 14 15 2"
$ns_ at 114.338512509553 "$god_ set-dist 14 35 1"
$ns_ at 114.342696709496 "$god_ set-dist 26 43 2"
$ns_ at 114.442535707579 "$god_ set-dist 8 26 1"
$ns_ at 114.442535707579 "$god_ set-dist 8 47 2"
$ns_ at 114.454754684585 "$god_ set-dist 26 44 1"
$ns_ at 114.454754684585 "$god_ set-dist 44 47 2"
$ns_ at 114.460550502604 "$god_ set-dist 17 24 2"
$ns_ at 114.460550502604 "$god_ set-dist 17 41 1"
$ns_ at 114.488960314950 "$god_ set-dist 10 28 2"
$ns_ at 114.488960314950 "$god_ set-dist 28 48 3"
$ns_ at 114.491218391520 "$god_ set-dist 16 48 1"
$ns_ at 114.491218391520 "$god_ set-dist 28 48 2"
$ns_ at 114.499847136232 "$god_ set-dist 24 34 3"
$ns_ at 114.499847136232 "$god_ set-dist 34 43 2"
$ns_ at 114.516634861124 "$god_ set-dist 11 35 2"
$ns_ at 114.557192523957 "$god_ set-dist 6 46 1"
$ns_ at 114.626921473602 "$god_ set-dist 30 38 1"
$ns_ at 114.632157511933 "$god_ set-dist 2 7 2"
$ns_ at 114.632157511933 "$god_ set-dist 7 34 3"
$ns_ at 114.679105508892 "$god_ set-dist 8 47 3"
$ns_ at 114.679105508892 "$god_ set-dist 17 47 3"
$ns_ at 114.679105508892 "$god_ set-dist 20 47 3"
$ns_ at 114.679105508892 "$god_ set-dist 25 47 3"
$ns_ at 114.679105508892 "$god_ set-dist 26 47 2"
$ns_ at 114.679105508892 "$god_ set-dist 44 47 3"
$ns_ at 114.679105508892 "$god_ set-dist 47 49 4"
$ns_ at 114.795760040152 "$god_ set-dist 3 28 3"
$ns_ at 114.795760040152 "$god_ set-dist 7 28 3"
$ns_ at 114.795760040152 "$god_ set-dist 11 28 3"
$ns_ at 114.795760040152 "$god_ set-dist 16 28 2"
$ns_ at 114.795760040152 "$god_ set-dist 28 48 3"
$ns_ at 114.825594093270 "$god_ set-dist 23 40 1"
$ns_ at 114.881506919736 "$god_ set-dist 30 42 1"
$ns_ at 114.885439159837 "$god_ set-dist 6 14 2"
$ns_ at 114.885439159837 "$god_ set-dist 6 19 1"
$ns_ at 114.885439159837 "$god_ set-dist 6 37 2"
$ns_ at 114.890158187634 "$god_ set-dist 15 19 1"
$ns_ at 114.912932005216 "$god_ set-dist 20 29 1"
$ns_ at 114.925991715718 "$god_ set-dist 4 35 3"
$ns_ at 114.925991715718 "$god_ set-dist 35 46 2"
$ns_ at 114.979158407884 "$god_ set-dist 9 35 3"
$ns_ at 114.979158407884 "$god_ set-dist 16 35 2"
$ns_ at 114.979158407884 "$god_ set-dist 35 47 3"
$ns_ at 114.983599782973 "$god_ set-dist 6 14 3"
$ns_ at 114.983599782973 "$god_ set-dist 14 19 2"
$ns_ at 114.995600916247 "$god_ set-dist 6 37 3"
$ns_ at 114.995600916247 "$god_ set-dist 19 37 2"
$ns_ at 115.076548675502 "$god_ set-dist 18 31 2"
$ns_ at 115.089677524546 "$god_ set-dist 14 15 3"
$ns_ at 115.089677524546 "$god_ set-dist 15 35 2"
$ns_ at 115.089677524546 "$god_ set-dist 15 37 3"
$ns_ at 115.121846296486 "$god_ set-dist 0 44 1"
$ns_ at 115.121846296486 "$god_ set-dist 4 44 2"
$ns_ at 115.124430893356 "$god_ set-dist 12 14 3"
$ns_ at 115.124430893356 "$god_ set-dist 12 29 3"
$ns_ at 115.124430893356 "$god_ set-dist 12 32 3"
$ns_ at 115.124430893356 "$god_ set-dist 12 36 2"
$ns_ at 115.124430893356 "$god_ set-dist 12 37 3"
$ns_ at 115.128220110221 "$god_ set-dist 21 33 2"
$ns_ at 115.182113075972 "$god_ set-dist 2 3 1"
$ns_ at 115.182113075972 "$god_ set-dist 3 28 2"
$ns_ at 115.182113075972 "$god_ set-dist 3 34 2"
$ns_ at 115.256541297772 "$god_ set-dist 26 27 2"
$ns_ at 115.271477181537 "$god_ set-dist 26 39 1"
$ns_ at 115.286862201891 "$god_ set-dist 19 33 2"
$ns_ at 115.307391156946 "$god_ set-dist 5 48 1"
$ns_ at 115.331540883214 "$god_ set-dist 0 4 2"
$ns_ at 115.331540883214 "$god_ set-dist 4 44 3"
$ns_ at 115.332391018888 "$god_ set-dist 19 31 1"
$ns_ at 115.361430965724 "$node_(35) setdest 223.182532259256 310.513290226637 0.000000000000"
$ns_ at 115.412096772436 "$god_ set-dist 31 46 1"
$ns_ at 115.426584023678 "$god_ set-dist 23 31 2"
$ns_ at 115.461100523705 "$god_ set-dist 16 41 2"
$ns_ at 115.508645826219 "$god_ set-dist 4 20 3"
$ns_ at 115.508645826219 "$god_ set-dist 20 46 2"
$ns_ at 115.583018323285 "$god_ set-dist 8 38 2"
$ns_ at 115.644898748160 "$god_ set-dist 20 32 1"
$ns_ at 115.646160652798 "$god_ set-dist 18 20 2"
$ns_ at 115.651913375780 "$god_ set-dist 25 39 1"
$ns_ at 115.705115895427 "$god_ set-dist 4 44 2"
$ns_ at 115.705115895427 "$god_ set-dist 44 46 1"
$ns_ at 115.791750718566 "$god_ set-dist 11 38 2"
$ns_ at 115.819256875267 "$god_ set-dist 6 18 2"
$ns_ at 115.839810355218 "$god_ set-dist 8 24 2"
$ns_ at 115.839810355218 "$god_ set-dist 8 41 1"
$ns_ at 115.854106853676 "$god_ set-dist 2 41 2"
$ns_ at 115.854106853676 "$god_ set-dist 9 41 3"
$ns_ at 115.854106853676 "$god_ set-dist 34 41 3"
$ns_ at 115.854106853676 "$god_ set-dist 41 47 3"
$ns_ at 115.859381064432 "$god_ set-dist 12 29 2"
$ns_ at 115.859381064432 "$god_ set-dist 26 29 1"
$ns_ at 115.859381064432 "$god_ set-dist 29 39 2"
$ns_ at 115.895137867660 "$god_ set-dist 4 19 3"
$ns_ at 115.895137867660 "$god_ set-dist 4 44 3"
$ns_ at 115.895137867660 "$god_ set-dist 4 46 2"
$ns_ at 115.897584415856 "$god_ set-dist 30 48 1"
$ns_ at 115.904369610011 "$god_ set-dist 18 44 2"
$ns_ at 115.932763293603 "$god_ set-dist 25 29 1"
$ns_ at 115.988269127438 "$god_ set-dist 8 47 2"
$ns_ at 115.988269127438 "$god_ set-dist 17 47 2"
$ns_ at 115.988269127438 "$god_ set-dist 18 47 1"
$ns_ at 115.988269127438 "$god_ set-dist 25 47 2"
$ns_ at 115.988269127438 "$god_ set-dist 35 47 2"
$ns_ at 115.988269127438 "$god_ set-dist 41 47 2"
$ns_ at 115.988269127438 "$god_ set-dist 45 47 2"
$ns_ at 115.988269127438 "$god_ set-dist 47 49 3"
$ns_ at 116.021920520028 "$god_ set-dist 16 39 1"
$ns_ at 116.025442520565 "$god_ set-dist 20 23 2"
$ns_ at 116.044245955324 "$god_ set-dist 20 36 2"
$ns_ at 116.179084776602 "$god_ set-dist 5 42 1"
$ns_ at 116.267860978249 "$god_ set-dist 0 20 2"
$ns_ at 116.282959919839 "$god_ set-dist 8 42 2"
$ns_ at 116.297848358550 "$god_ set-dist 5 21 2"
$ns_ at 116.297848358550 "$god_ set-dist 9 21 3"
$ns_ at 116.302832636120 "$god_ set-dist 14 15 2"
$ns_ at 116.302832636120 "$god_ set-dist 15 35 1"
$ns_ at 116.302832636120 "$god_ set-dist 15 37 2"
$ns_ at 116.394298772945 "$god_ set-dist 13 22 1"
$ns_ at 116.396409789297 "$god_ set-dist 20 38 2"
$ns_ at 116.436859030820 "$god_ set-dist 3 24 3"
$ns_ at 116.436859030820 "$god_ set-dist 8 24 3"
$ns_ at 116.436859030820 "$god_ set-dist 17 24 3"
$ns_ at 116.436859030820 "$god_ set-dist 24 41 2"
$ns_ at 116.480901944468 "$god_ set-dist 18 41 2"
$ns_ at 116.480901944468 "$god_ set-dist 41 47 3"
$ns_ at 116.499392645861 "$god_ set-dist 4 10 2"
$ns_ at 116.499392645861 "$god_ set-dist 4 18 1"
$ns_ at 116.499392645861 "$god_ set-dist 4 19 2"
$ns_ at 116.499392645861 "$god_ set-dist 4 24 3"
$ns_ at 116.499392645861 "$god_ set-dist 4 35 2"
$ns_ at 116.525421148914 "$god_ set-dist 19 45 1"
$ns_ at 116.564368609838 "$god_ set-dist 20 42 2"
$ns_ at 116.573962580447 "$god_ set-dist 8 43 3"
$ns_ at 116.573962580447 "$god_ set-dist 20 43 3"
$ns_ at 116.573962580447 "$god_ set-dist 41 43 2"
$ns_ at 116.576902199975 "$god_ set-dist 13 16 2"
$ns_ at 116.608950637121 "$god_ set-dist 25 32 1"
$ns_ at 116.608950637121 "$god_ set-dist 32 39 2"
$ns_ at 116.640380539507 "$god_ set-dist 18 45 2"
$ns_ at 116.640380539507 "$god_ set-dist 45 47 3"
$ns_ at 116.738683596156 "$god_ set-dist 1 27 2"
$ns_ at 116.740609475804 "$god_ set-dist 11 20 2"
$ns_ at 116.740609475804 "$god_ set-dist 20 27 3"
$ns_ at 116.770468010282 "$god_ set-dist 11 36 2"
$ns_ at 116.821391391199 "$god_ set-dist 27 39 2"
$ns_ at 116.859098887290 "$god_ set-dist 2 48 1"
$ns_ at 116.859098887290 "$god_ set-dist 28 48 2"
$ns_ at 116.859098887290 "$god_ set-dist 34 48 2"
$ns_ at 116.889842040382 "$god_ set-dist 5 38 1"
$ns_ at 116.931622209684 "$god_ set-dist 12 26 2"
$ns_ at 116.931622209684 "$god_ set-dist 12 29 3"
$ns_ at 116.970670605370 "$god_ set-dist 0 35 1"
$ns_ at 117.011491469723 "$god_ set-dist 19 21 1"
$ns_ at 117.035658467306 "$god_ set-dist 6 23 2"
$ns_ at 117.046809463271 "$god_ set-dist 21 26 1"
$ns_ at 117.047417777709 "$god_ set-dist 10 44 1"
$ns_ at 117.047417777709 "$god_ set-dist 10 49 2"
$ns_ at 117.054842211357 "$god_ set-dist 4 35 3"
$ns_ at 117.054842211357 "$god_ set-dist 18 35 2"
$ns_ at 117.054842211357 "$god_ set-dist 35 47 3"
$ns_ at 117.134827753705 "$god_ set-dist 16 19 2"
$ns_ at 117.182228489278 "$god_ set-dist 2 19 2"
$ns_ at 117.182228489278 "$god_ set-dist 9 19 3"
$ns_ at 117.182228489278 "$god_ set-dist 19 28 3"
$ns_ at 117.182228489278 "$god_ set-dist 19 34 3"
$ns_ at 117.200579356733 "$god_ set-dist 17 49 2"
$ns_ at 117.231012086685 "$god_ set-dist 18 25 2"
$ns_ at 117.231012086685 "$god_ set-dist 25 47 3"
$ns_ at 117.236536051329 "$god_ set-dist 23 47 1"
$ns_ at 117.236536051329 "$god_ set-dist 25 47 2"
$ns_ at 117.236536051329 "$god_ set-dist 35 47 2"
$ns_ at 117.236536051329 "$god_ set-dist 41 47 2"
$ns_ at 117.236536051329 "$god_ set-dist 44 47 2"
$ns_ at 117.236536051329 "$god_ set-dist 45 47 2"
$ns_ at 117.373976555665 "$god_ set-dist 11 27 2"
$ns_ at 117.414484541534 "$god_ set-dist 4 23 1"
$ns_ at 117.414484541534 "$god_ set-dist 4 35 2"
$ns_ at 117.414484541534 "$god_ set-dist 4 41 2"
$ns_ at 117.414484541534 "$god_ set-dist 4 44 2"
$ns_ at 117.422574074982 "$god_ set-dist 4 41 3"
$ns_ at 117.422574074982 "$god_ set-dist 23 41 2"
$ns_ at 117.422574074982 "$god_ set-dist 27 41 3"
$ns_ at 117.422574074982 "$god_ set-dist 40 41 3"
$ns_ at 117.422574074982 "$god_ set-dist 41 47 3"
$ns_ at 117.431800875509 "$god_ set-dist 4 44 3"
$ns_ at 117.431800875509 "$god_ set-dist 23 44 2"
$ns_ at 117.431800875509 "$god_ set-dist 44 47 3"
$ns_ at 117.435011563656 "$god_ set-dist 15 41 1"
$ns_ at 117.468469177003 "$god_ set-dist 10 23 2"
$ns_ at 117.468469177003 "$god_ set-dist 23 24 3"
$ns_ at 117.473236444455 "$god_ set-dist 7 30 2"
$ns_ at 117.488648757075 "$god_ set-dist 23 45 2"
$ns_ at 117.488648757075 "$god_ set-dist 45 47 3"
$ns_ at 117.520287717024 "$god_ set-dist 6 26 1"
$ns_ at 117.527838921859 "$god_ set-dist 2 43 2"
$ns_ at 117.527838921859 "$god_ set-dist 9 43 3"
$ns_ at 117.527838921859 "$god_ set-dist 12 43 3"
$ns_ at 117.527838921859 "$god_ set-dist 27 43 3"
$ns_ at 117.615877225448 "$god_ set-dist 4 16 1"
$ns_ at 117.635137255238 "$god_ set-dist 0 41 1"
$ns_ at 117.635137255238 "$god_ set-dist 27 41 2"
$ns_ at 117.635137255238 "$god_ set-dist 40 41 2"
$ns_ at 117.745532598680 "$god_ set-dist 8 9 2"
$ns_ at 117.745532598680 "$god_ set-dist 9 17 2"
$ns_ at 117.745532598680 "$god_ set-dist 9 18 1"
$ns_ at 117.745532598680 "$god_ set-dist 9 19 2"
$ns_ at 117.745532598680 "$god_ set-dist 9 21 2"
$ns_ at 117.745532598680 "$god_ set-dist 9 49 3"
$ns_ at 117.772389520524 "$god_ set-dist 1 20 2"
$ns_ at 117.777847307351 "$god_ set-dist 10 18 2"
$ns_ at 117.777847307351 "$god_ set-dist 10 40 3"
$ns_ at 117.777847307351 "$god_ set-dist 18 24 3"
$ns_ at 117.777847307351 "$god_ set-dist 24 40 4"
$ns_ at 117.795336819258 "$god_ set-dist 4 35 3"
$ns_ at 117.795336819258 "$god_ set-dist 23 35 2"
$ns_ at 117.795336819258 "$god_ set-dist 35 47 3"
$ns_ at 117.827031012990 "$god_ set-dist 26 32 1"
$ns_ at 117.872303560609 "$god_ set-dist 26 31 1"
$ns_ at 117.872446853935 "$god_ set-dist 37 41 2"
$ns_ at 117.873954311734 "$god_ set-dist 7 10 2"
$ns_ at 117.873954311734 "$god_ set-dist 7 24 3"
$ns_ at 117.887043908123 "$god_ set-dist 20 29 2"
$ns_ at 117.921986989134 "$god_ set-dist 1 45 2"
$ns_ at 117.963547513214 "$god_ set-dist 10 40 2"
$ns_ at 117.963547513214 "$god_ set-dist 16 40 1"
$ns_ at 117.963547513214 "$god_ set-dist 24 40 3"
$ns_ at 117.980215617968 "$god_ set-dist 15 40 3"
$ns_ at 117.980215617968 "$god_ set-dist 20 40 3"
$ns_ at 117.980215617968 "$god_ set-dist 21 40 2"
$ns_ at 118.005217650678 "$god_ set-dist 45 49 1"
$ns_ at 118.045073130629 "$god_ set-dist 32 37 2"
$ns_ at 118.057028485483 "$god_ set-dist 4 6 3"
$ns_ at 118.057028485483 "$god_ set-dist 4 31 3"
$ns_ at 118.057028485483 "$god_ set-dist 4 39 2"
$ns_ at 118.057028485483 "$god_ set-dist 4 45 3"
$ns_ at 118.070857287439 "$god_ set-dist 38 46 2"
$ns_ at 118.080398502883 "$god_ set-dist 12 48 1"
$ns_ at 118.107953659431 "$god_ set-dist 7 16 2"
$ns_ at 118.110419355836 "$god_ set-dist 15 27 2"
$ns_ at 118.110419355836 "$god_ set-dist 15 40 2"
$ns_ at 118.110419355836 "$god_ set-dist 15 46 1"
$ns_ at 118.125980646277 "$god_ set-dist 20 22 2"
$ns_ at 118.151816264295 "$god_ set-dist 15 22 2"
$ns_ at 118.195873408367 "$god_ set-dist 15 26 1"
$ns_ at 118.227052920544 "$god_ set-dist 15 27 3"
$ns_ at 118.227052920544 "$god_ set-dist 27 46 2"
$ns_ at 118.244600280774 "$god_ set-dist 2 35 1"
$ns_ at 118.244600280774 "$god_ set-dist 9 35 2"
$ns_ at 118.244600280774 "$god_ set-dist 34 35 2"
$ns_ at 118.244600280774 "$god_ set-dist 35 47 2"
$ns_ at 118.285345401380 "$god_ set-dist 11 15 1"
$ns_ at 118.348537898431 "$god_ set-dist 8 37 3"
$ns_ at 118.348537898431 "$god_ set-dist 15 37 3"
$ns_ at 118.348537898431 "$god_ set-dist 20 37 3"
$ns_ at 118.348537898431 "$god_ set-dist 35 37 2"
$ns_ at 118.402712619400 "$god_ set-dist 8 9 3"
$ns_ at 118.402712619400 "$god_ set-dist 8 18 2"
$ns_ at 118.402712619400 "$god_ set-dist 9 49 4"
$ns_ at 118.402712619400 "$god_ set-dist 18 49 3"
$ns_ at 118.446248970971 "$god_ set-dist 0 15 1"
$ns_ at 118.446248970971 "$god_ set-dist 15 27 2"
$ns_ at 118.453535388560 "$god_ set-dist 11 14 3"
$ns_ at 118.453535388560 "$god_ set-dist 11 37 3"
$ns_ at 118.453535388560 "$god_ set-dist 11 42 2"
$ns_ at 118.453535388560 "$god_ set-dist 11 43 3"
$ns_ at 118.503477167183 "$god_ set-dist 13 44 1"
$ns_ at 118.503477167183 "$god_ set-dist 13 49 2"
$ns_ at 118.570512683357 "$god_ set-dist 22 45 2"
$ns_ at 118.582777153321 "$god_ set-dist 0 27 2"
$ns_ at 118.582777153321 "$god_ set-dist 6 27 3"
$ns_ at 118.582777153321 "$god_ set-dist 15 27 3"
$ns_ at 118.582777153321 "$god_ set-dist 27 31 3"
$ns_ at 118.582777153321 "$god_ set-dist 27 41 3"
$ns_ at 118.582777153321 "$god_ set-dist 27 44 3"
$ns_ at 118.582777153321 "$god_ set-dist 27 45 3"
$ns_ at 118.639776121083 "$god_ set-dist 17 38 2"
$ns_ at 118.766802727137 "$god_ set-dist 20 24 3"
$ns_ at 118.766802727137 "$god_ set-dist 20 32 2"
$ns_ at 118.810148738184 "$god_ set-dist 6 14 2"
$ns_ at 118.810148738184 "$god_ set-dist 6 41 1"
$ns_ at 118.817871758630 "$god_ set-dist 10 25 1"
$ns_ at 118.819515364576 "$god_ set-dist 5 10 1"
$ns_ at 118.819515364576 "$god_ set-dist 5 24 2"
$ns_ at 118.866208653246 "$god_ set-dist 30 36 2"
$ns_ at 118.881307648921 "$god_ set-dist 0 34 3"
$ns_ at 118.881307648921 "$god_ set-dist 1 34 3"
$ns_ at 118.881307648921 "$god_ set-dist 2 34 2"
$ns_ at 118.881307648921 "$god_ set-dist 3 34 3"
$ns_ at 118.881307648921 "$god_ set-dist 6 34 4"
$ns_ at 118.881307648921 "$god_ set-dist 10 34 3"
$ns_ at 118.881307648921 "$god_ set-dist 13 34 3"
$ns_ at 118.881307648921 "$god_ set-dist 15 34 4"
$ns_ at 118.881307648921 "$god_ set-dist 20 34 4"
$ns_ at 118.881307648921 "$god_ set-dist 22 34 3"
$ns_ at 118.881307648921 "$god_ set-dist 26 34 3"
$ns_ at 118.881307648921 "$god_ set-dist 31 34 4"
$ns_ at 118.881307648921 "$god_ set-dist 34 35 3"
$ns_ at 118.881307648921 "$god_ set-dist 34 36 3"
$ns_ at 118.881307648921 "$god_ set-dist 34 38 3"
$ns_ at 118.881307648921 "$god_ set-dist 34 42 3"
$ns_ at 118.881307648921 "$god_ set-dist 34 44 4"
$ns_ at 118.881307648921 "$god_ set-dist 34 45 4"
$ns_ at 118.881307648921 "$god_ set-dist 34 46 3"
$ns_ at 118.881307648921 "$god_ set-dist 34 48 3"
$ns_ at 118.907578813507 "$god_ set-dist 36 46 2"
$ns_ at 118.998469491694 "$god_ set-dist 4 25 3"
$ns_ at 118.998469491694 "$god_ set-dist 23 25 2"
$ns_ at 118.998469491694 "$god_ set-dist 25 27 3"
$ns_ at 118.998469491694 "$god_ set-dist 25 34 4"
$ns_ at 118.998469491694 "$god_ set-dist 25 47 3"
$ns_ at 119.006496322877 "$god_ set-dist 9 19 3"
$ns_ at 119.006496322877 "$god_ set-dist 18 19 2"
$ns_ at 119.028880629213 "$god_ set-dist 5 7 2"
$ns_ at 119.132646221446 "$god_ set-dist 14 31 2"
$ns_ at 119.132646221446 "$god_ set-dist 31 41 1"
$ns_ at 119.156054905634 "$god_ set-dist 19 39 1"
$ns_ at 119.202446142371 "$god_ set-dist 10 48 2"
$ns_ at 119.202446142371 "$god_ set-dist 24 48 3"
$ns_ at 119.223957763928 "$god_ set-dist 9 21 3"
$ns_ at 119.223957763928 "$god_ set-dist 18 21 2"
$ns_ at 119.245364437528 "$god_ set-dist 7 38 2"
$ns_ at 119.263527569240 "$god_ set-dist 10 16 2"
$ns_ at 119.263527569240 "$god_ set-dist 16 24 3"
$ns_ at 119.263572925465 "$god_ set-dist 29 43 1"
$ns_ at 119.306894175937 "$god_ set-dist 20 48 2"
$ns_ at 119.316542420626 "$god_ set-dist 3 20 2"
$ns_ at 119.316542420626 "$god_ set-dist 12 20 3"
$ns_ at 119.340144531229 "$node_(27) setdest 647.462128310494 423.372714384813 0.000000000000"
$ns_ at 119.341050179865 "$god_ set-dist 40 48 1"
$ns_ at 119.352575547146 "$god_ set-dist 19 49 1"
$ns_ at 119.395518328224 "$god_ set-dist 3 10 1"
$ns_ at 119.395518328224 "$god_ set-dist 3 24 2"
$ns_ at 119.442635500698 "$god_ set-dist 25 34 3"
$ns_ at 119.442635500698 "$god_ set-dist 25 47 2"
$ns_ at 119.442635500698 "$god_ set-dist 29 47 2"
$ns_ at 119.442635500698 "$god_ set-dist 32 47 2"
$ns_ at 119.442635500698 "$god_ set-dist 34 42 2"
$ns_ at 119.442635500698 "$god_ set-dist 34 44 3"
$ns_ at 119.442635500698 "$god_ set-dist 41 47 2"
$ns_ at 119.442635500698 "$god_ set-dist 42 47 1"
$ns_ at 119.442635500698 "$god_ set-dist 44 47 2"
$ns_ at 119.474511587336 "$god_ set-dist 23 36 2"
$ns_ at 119.503000400264 "$node_(45) setdest 219.825704515387 620.087381139904 0.000000000000"
$ns_ at 119.560977493798 "$god_ set-dist 18 36 2"
$ns_ at 119.580080232833 "$god_ set-dist 32 42 2"
$ns_ at 119.580080232833 "$god_ set-dist 32 47 3"
$ns_ at 119.585869143204 "$god_ set-dist 41 46 1"
$ns_ at 119.598943239293 "$god_ set-dist 7 33 2"
$ns_ at 119.604337780174 "$god_ set-dist 23 38 2"
$ns_ at 119.646221837331 "$god_ set-dist 16 36 2"
$ns_ at 119.762447736679 "$god_ set-dist 17 33 1"
$ns_ at 119.829848137051 "$god_ set-dist 15 39 1"
$ns_ at 119.886915055256 "$god_ set-dist 11 44 2"
$ns_ at 119.899726349721 "$god_ set-dist 0 24 2"
$ns_ at 119.899726349721 "$god_ set-dist 7 24 2"
$ns_ at 119.899726349721 "$god_ set-dist 17 24 2"
$ns_ at 119.899726349721 "$god_ set-dist 24 33 2"
$ns_ at 119.899726349721 "$god_ set-dist 24 36 1"
$ns_ at 119.899726349721 "$god_ set-dist 24 48 2"
$ns_ at 119.908917458824 "$god_ set-dist 24 33 3"
$ns_ at 119.908917458824 "$god_ set-dist 33 36 2"
$ns_ at 119.933357629213 "$god_ set-dist 4 13 2"
$ns_ at 119.933357629213 "$god_ set-dist 5 13 1"
$ns_ at 119.933357629213 "$god_ set-dist 13 40 2"
$ns_ at 119.981401361275 "$god_ set-dist 6 14 3"
$ns_ at 119.981401361275 "$god_ set-dist 14 31 3"
$ns_ at 119.981401361275 "$god_ set-dist 14 41 2"
$ns_ at 119.981401361275 "$god_ set-dist 28 41 3"
$ns_ at 120.000548065327 "$god_ set-dist 6 34 3"
$ns_ at 120.000548065327 "$god_ set-dist 6 47 2"
$ns_ at 120.000548065327 "$god_ set-dist 22 34 2"
$ns_ at 120.000548065327 "$god_ set-dist 22 47 1"
$ns_ at 120.000548065327 "$god_ set-dist 31 34 3"
$ns_ at 120.000548065327 "$god_ set-dist 31 47 2"
$ns_ at 120.052331948731 "$god_ set-dist 3 40 1"
$ns_ at 120.093784533935 "$god_ set-dist 16 24 2"
$ns_ at 120.093784533935 "$god_ set-dist 18 24 2"
$ns_ at 120.093784533935 "$god_ set-dist 24 30 2"
$ns_ at 120.093784533935 "$god_ set-dist 24 33 2"
$ns_ at 120.093784533935 "$god_ set-dist 24 38 1"
$ns_ at 120.156065490557 "$god_ set-dist 7 9 3"
$ns_ at 120.156065490557 "$god_ set-dist 7 18 2"
$ns_ at 120.173789836863 "$god_ set-dist 26 45 1"
$ns_ at 120.217025743133 "$god_ set-dist 1 15 1"
$ns_ at 120.230478096639 "$god_ set-dist 17 30 1"
$ns_ at 120.241618351719 "$god_ set-dist 38 48 2"
$ns_ at 120.285303869729 "$god_ set-dist 4 19 3"
$ns_ at 120.285303869729 "$god_ set-dist 19 23 2"
$ns_ at 120.285303869729 "$god_ set-dist 19 27 3"
$ns_ at 120.297924996784 "$god_ set-dist 19 28 2"
$ns_ at 120.297924996784 "$god_ set-dist 25 28 2"
$ns_ at 120.297924996784 "$god_ set-dist 28 38 1"
$ns_ at 120.297924996784 "$god_ set-dist 28 41 2"
$ns_ at 120.297924996784 "$god_ set-dist 28 44 2"
$ns_ at 120.297924996784 "$god_ set-dist 28 49 3"
$ns_ at 120.297924996784 "$god_ set-dist 34 38 2"
$ns_ at 120.301071424786 "$god_ set-dist 6 22 2"
$ns_ at 120.301071424786 "$god_ set-dist 6 34 4"
$ns_ at 120.301071424786 "$god_ set-dist 6 47 3"
$ns_ at 120.340434114543 "$god_ set-dist 25 28 3"
$ns_ at 120.340434114543 "$god_ set-dist 25 38 2"
$ns_ at 120.401837979212 "$god_ set-dist 22 31 2"
$ns_ at 120.401837979212 "$god_ set-dist 31 34 4"
$ns_ at 120.401837979212 "$god_ set-dist 31 47 3"
$ns_ at 120.408719116963 "$god_ set-dist 8 43 2"
$ns_ at 120.408719116963 "$god_ set-dist 15 43 2"
$ns_ at 120.408719116963 "$god_ set-dist 20 43 2"
$ns_ at 120.408719116963 "$god_ set-dist 35 43 1"
$ns_ at 120.499757848556 "$god_ set-dist 1 12 2"
$ns_ at 120.513701067115 "$god_ set-dist 4 5 2"
$ns_ at 120.513701067115 "$god_ set-dist 4 10 3"
$ns_ at 120.513701067115 "$god_ set-dist 4 13 3"
$ns_ at 120.513701067115 "$god_ set-dist 4 36 3"
$ns_ at 120.608538615681 "$god_ set-dist 5 40 2"
$ns_ at 120.608538615681 "$god_ set-dist 13 40 3"
$ns_ at 120.632606638647 "$god_ set-dist 18 24 3"
$ns_ at 120.632606638647 "$god_ set-dist 18 38 2"
$ns_ at 120.632668647411 "$god_ set-dist 0 10 1"
$ns_ at 120.635092531565 "$god_ set-dist 5 39 2"
$ns_ at 120.749704317950 "$god_ set-dist 5 17 1"
$ns_ at 120.752390468250 "$god_ set-dist 41 49 1"
$ns_ at 120.759418131062 "$god_ set-dist 2 46 2"
$ns_ at 120.759418131062 "$god_ set-dist 28 46 3"
$ns_ at 120.806201482374 "$god_ set-dist 7 42 2"
$ns_ at 120.964044102579 "$god_ set-dist 17 18 2"
$ns_ at 120.965772229256 "$god_ set-dist 16 24 3"
$ns_ at 120.965772229256 "$god_ set-dist 16 38 2"
$ns_ at 120.977689078194 "$god_ set-dist 2 11 1"
$ns_ at 120.977689078194 "$god_ set-dist 11 28 2"
$ns_ at 120.979742203653 "$god_ set-dist 24 48 3"
$ns_ at 120.979742203653 "$god_ set-dist 36 48 2"
$ns_ at 120.999136807558 "$god_ set-dist 7 24 3"
$ns_ at 120.999136807558 "$god_ set-dist 7 36 2"
$ns_ at 120.999136807558 "$god_ set-dist 7 37 3"
$ns_ at 121.079855763879 "$node_(49) setdest 8.327338907888 508.805078401104 0.000000000000"
$ns_ at 121.128426949462 "$god_ set-dist 3 38 2"
$ns_ at 121.130666544824 "$god_ set-dist 20 21 2"
$ns_ at 121.222970104601 "$god_ set-dist 3 12 2"
$ns_ at 121.253487851438 "$god_ set-dist 19 27 2"
$ns_ at 121.253487851438 "$god_ set-dist 22 27 1"
$ns_ at 121.253487851438 "$god_ set-dist 25 27 2"
$ns_ at 121.253487851438 "$god_ set-dist 27 41 2"
$ns_ at 121.253487851438 "$god_ set-dist 27 44 2"
$ns_ at 121.262735328414 "$god_ set-dist 14 46 3"
$ns_ at 121.262735328414 "$god_ set-dist 37 46 3"
$ns_ at 121.262735328414 "$god_ set-dist 42 46 2"
$ns_ at 121.262735328414 "$god_ set-dist 43 46 3"
$ns_ at 121.273256588896 "$god_ set-dist 29 37 2"
$ns_ at 121.452535065777 "$god_ set-dist 13 25 1"
$ns_ at 121.460499202162 "$god_ set-dist 2 28 2"
$ns_ at 121.460499202162 "$god_ set-dist 3 28 3"
$ns_ at 121.460499202162 "$god_ set-dist 11 28 3"
$ns_ at 121.460499202162 "$god_ set-dist 28 48 3"
$ns_ at 121.484675709439 "$god_ set-dist 19 28 3"
$ns_ at 121.484675709439 "$god_ set-dist 19 38 2"
$ns_ at 121.566268365406 "$god_ set-dist 35 48 2"
$ns_ at 121.622154155281 "$god_ set-dist 14 20 3"
$ns_ at 121.622154155281 "$god_ set-dist 20 35 2"
$ns_ at 121.622154155281 "$god_ set-dist 20 43 3"
$ns_ at 121.647657673203 "$god_ set-dist 10 17 1"
$ns_ at 121.662601931998 "$god_ set-dist 0 28 3"
$ns_ at 121.662601931998 "$god_ set-dist 0 38 2"
$ns_ at 121.694390353892 "$god_ set-dist 2 12 2"
$ns_ at 121.774703984862 "$god_ set-dist 18 20 3"
$ns_ at 121.774703984862 "$god_ set-dist 18 26 2"
$ns_ at 121.774703984862 "$god_ set-dist 18 32 3"
$ns_ at 121.803493163669 "$god_ set-dist 12 46 2"
$ns_ at 121.811603876428 "$god_ set-dist 4 8 3"
$ns_ at 121.811603876428 "$god_ set-dist 4 49 4"
$ns_ at 121.811603876428 "$god_ set-dist 8 23 2"
$ns_ at 121.811603876428 "$god_ set-dist 23 49 3"
$ns_ at 121.867999046674 "$god_ set-dist 21 22 2"
$ns_ at 121.874956403799 "$god_ set-dist 16 17 1"
$ns_ at 121.911222620584 "$god_ set-dist 2 17 1"
$ns_ at 122.046286278987 "$god_ set-dist 21 41 1"
$ns_ at 122.065900365252 "$god_ set-dist 24 30 3"
$ns_ at 122.065900365252 "$god_ set-dist 30 38 2"
$ns_ at 122.105855893717 "$god_ set-dist 16 26 2"
$ns_ at 122.105855893717 "$god_ set-dist 16 32 3"
$ns_ at 122.127665213600 "$god_ set-dist 13 19 2"
$ns_ at 122.159156274400 "$god_ set-dist 4 21 3"
$ns_ at 122.159156274400 "$god_ set-dist 21 23 2"
$ns_ at 122.159156274400 "$god_ set-dist 21 27 3"
$ns_ at 122.159156274400 "$god_ set-dist 21 34 4"
$ns_ at 122.159156274400 "$god_ set-dist 21 47 3"
$ns_ at 122.163908768273 "$god_ set-dist 5 46 2"
$ns_ at 122.180183303335 "$god_ set-dist 41 45 1"
$ns_ at 122.267070978673 "$god_ set-dist 6 27 2"
$ns_ at 122.267070978673 "$god_ set-dist 15 27 2"
$ns_ at 122.267070978673 "$god_ set-dist 21 27 2"
$ns_ at 122.267070978673 "$god_ set-dist 27 31 2"
$ns_ at 122.267070978673 "$god_ set-dist 27 45 2"
$ns_ at 122.267070978673 "$god_ set-dist 27 48 1"
$ns_ at 122.297845946942 "$node_(18) setdest 544.574994738586 390.165327606814 0.000000000000"
$ns_ at 122.303515210899 "$god_ set-dist 12 28 3"
$ns_ at 122.303515210899 "$god_ set-dist 12 47 2"
$ns_ at 122.308366728831 "$god_ set-dist 0 12 2"
$ns_ at 122.337434512447 "$god_ set-dist 41 48 2"
$ns_ at 122.340813143022 "$god_ set-dist 16 20 3"
$ns_ at 122.340813143022 "$god_ set-dist 17 20 2"
$ns_ at 122.361629368210 "$god_ set-dist 5 35 1"
$ns_ at 122.390874252671 "$god_ set-dist 18 39 2"
$ns_ at 122.411701530481 "$god_ set-dist 4 7 3"
$ns_ at 122.411701530481 "$god_ set-dist 7 23 2"
$ns_ at 122.441440563653 "$god_ set-dist 19 42 2"
$ns_ at 122.453314661651 "$node_(23) setdest 504.231447391245 465.697971094674 0.000000000000"
$ns_ at 122.480553298907 "$god_ set-dist 9 12 2"
$ns_ at 122.480553298907 "$god_ set-dist 12 34 3"
$ns_ at 122.557051389020 "$god_ set-dist 0 13 1"
$ns_ at 122.557051389020 "$god_ set-dist 13 40 2"
$ns_ at 122.618412556358 "$god_ set-dist 16 29 3"
$ns_ at 122.618412556358 "$god_ set-dist 18 29 3"
$ns_ at 122.618412556358 "$god_ set-dist 29 42 2"
$ns_ at 122.618412556358 "$god_ set-dist 29 47 3"
$ns_ at 122.651227847028 "$god_ set-dist 5 12 2"
$ns_ at 122.700356209227 "$god_ set-dist 2 20 3"
$ns_ at 122.700356209227 "$god_ set-dist 4 20 4"
$ns_ at 122.700356209227 "$god_ set-dist 5 20 3"
$ns_ at 122.700356209227 "$god_ set-dist 9 20 4"
$ns_ at 122.700356209227 "$god_ set-dist 20 23 3"
$ns_ at 122.700356209227 "$god_ set-dist 20 26 2"
$ns_ at 122.700356209227 "$god_ set-dist 20 30 3"
$ns_ at 122.700356209227 "$god_ set-dist 20 33 3"
$ns_ at 122.766675244889 "$god_ set-dist 18 46 2"
$ns_ at 122.794648891890 "$god_ set-dist 4 6 2"
$ns_ at 122.794648891890 "$god_ set-dist 4 7 2"
$ns_ at 122.794648891890 "$god_ set-dist 4 8 2"
$ns_ at 122.794648891890 "$god_ set-dist 4 15 2"
$ns_ at 122.794648891890 "$god_ set-dist 4 19 2"
$ns_ at 122.794648891890 "$god_ set-dist 4 20 3"
$ns_ at 122.794648891890 "$god_ set-dist 4 21 2"
$ns_ at 122.794648891890 "$god_ set-dist 4 25 2"
$ns_ at 122.794648891890 "$god_ set-dist 4 31 2"
$ns_ at 122.794648891890 "$god_ set-dist 4 44 2"
$ns_ at 122.794648891890 "$god_ set-dist 4 45 2"
$ns_ at 122.794648891890 "$god_ set-dist 4 48 1"
$ns_ at 122.794648891890 "$god_ set-dist 4 49 3"
$ns_ at 122.828989991513 "$god_ set-dist 4 44 3"
$ns_ at 122.828989991513 "$god_ set-dist 44 48 2"
$ns_ at 122.947976298712 "$god_ set-dist 32 43 1"
$ns_ at 122.950400017845 "$god_ set-dist 44 45 2"
$ns_ at 122.961390298325 "$god_ set-dist 10 12 3"
$ns_ at 122.961390298325 "$god_ set-dist 12 13 3"
$ns_ at 122.961390298325 "$god_ set-dist 12 22 2"
$ns_ at 122.961390298325 "$god_ set-dist 12 35 3"
$ns_ at 122.961390298325 "$god_ set-dist 12 36 3"
$ns_ at 122.961390298325 "$god_ set-dist 12 41 3"
$ns_ at 122.961390298325 "$god_ set-dist 12 44 3"
$ns_ at 123.020164030894 "$god_ set-dist 0 28 2"
$ns_ at 123.020164030894 "$god_ set-dist 3 28 2"
$ns_ at 123.020164030894 "$god_ set-dist 17 28 2"
$ns_ at 123.020164030894 "$god_ set-dist 25 28 2"
$ns_ at 123.020164030894 "$god_ set-dist 28 42 1"
$ns_ at 123.020164030894 "$god_ set-dist 28 48 2"
$ns_ at 123.053352558345 "$god_ set-dist 4 15 3"
$ns_ at 123.053352558345 "$god_ set-dist 15 27 3"
$ns_ at 123.053352558345 "$god_ set-dist 15 48 2"
$ns_ at 123.149851294631 "$god_ set-dist 19 32 2"
$ns_ at 123.204864859583 "$god_ set-dist 5 11 2"
$ns_ at 123.351018383120 "$god_ set-dist 4 13 2"
$ns_ at 123.351018383120 "$god_ set-dist 12 13 2"
$ns_ at 123.351018383120 "$god_ set-dist 13 33 1"
$ns_ at 123.417744056380 "$node_(37) setdest 326.514837209854 47.930044184776 0.000000000000"
$ns_ at 123.441096405833 "$god_ set-dist 7 22 2"
$ns_ at 123.441096405833 "$god_ set-dist 7 34 4"
$ns_ at 123.441096405833 "$god_ set-dist 7 47 3"
$ns_ at 123.457998197161 "$node_(20) setdest 27.786849623003 507.693007623344 0.000000000000"
$ns_ at 123.482409638784 "$god_ set-dist 38 41 2"
$ns_ at 123.512139359250 "$god_ set-dist 8 9 2"
$ns_ at 123.512139359250 "$god_ set-dist 9 19 2"
$ns_ at 123.512139359250 "$god_ set-dist 9 20 3"
$ns_ at 123.512139359250 "$god_ set-dist 9 22 1"
$ns_ at 123.512139359250 "$god_ set-dist 9 25 2"
$ns_ at 123.512139359250 "$god_ set-dist 9 41 2"
$ns_ at 123.512139359250 "$god_ set-dist 9 44 2"
$ns_ at 123.512139359250 "$god_ set-dist 9 49 3"
$ns_ at 123.534462187660 "$god_ set-dist 9 19 3"
$ns_ at 123.534462187660 "$god_ set-dist 19 22 2"
$ns_ at 123.534462187660 "$god_ set-dist 19 34 4"
$ns_ at 123.534462187660 "$god_ set-dist 19 47 3"
$ns_ at 123.588365448185 "$god_ set-dist 19 29 2"
$ns_ at 123.598358156561 "$god_ set-dist 3 36 2"
$ns_ at 123.633540696747 "$god_ set-dist 5 28 1"
$ns_ at 123.676606546270 "$god_ set-dist 25 28 3"
$ns_ at 123.676606546270 "$god_ set-dist 25 42 2"
$ns_ at 123.697017898143 "$god_ set-dist 0 40 2"
$ns_ at 123.697017898143 "$god_ set-dist 36 40 3"
$ns_ at 123.699692631511 "$god_ set-dist 2 20 2"
$ns_ at 123.699692631511 "$god_ set-dist 5 20 2"
$ns_ at 123.699692631511 "$god_ set-dist 20 23 2"
$ns_ at 123.699692631511 "$god_ set-dist 20 26 1"
$ns_ at 123.699692631511 "$god_ set-dist 20 30 2"
$ns_ at 123.699692631511 "$god_ set-dist 20 33 2"
$ns_ at 123.724180265409 "$god_ set-dist 3 13 1"
$ns_ at 123.728080223561 "$god_ set-dist 32 38 2"
$ns_ at 123.729858448248 "$god_ set-dist 10 19 2"
$ns_ at 123.765781573977 "$god_ set-dist 13 17 1"
$ns_ at 123.867146154834 "$god_ set-dist 26 38 2"
$ns_ at 123.867146154834 "$god_ set-dist 38 45 3"
$ns_ at 123.869067708328 "$god_ set-dist 21 44 2"
$ns_ at 123.869298703834 "$god_ set-dist 9 41 3"
$ns_ at 123.869298703834 "$god_ set-dist 22 41 2"
$ns_ at 123.869298703834 "$god_ set-dist 27 41 3"
$ns_ at 123.869987835572 "$god_ set-dist 12 39 2"
$ns_ at 123.882266670381 "$god_ set-dist 28 41 3"
$ns_ at 123.882266670381 "$god_ set-dist 34 41 4"
$ns_ at 123.882266670381 "$god_ set-dist 41 42 2"
$ns_ at 123.882266670381 "$god_ set-dist 41 47 3"
$ns_ at 123.902212414154 "$god_ set-dist 28 49 4"
$ns_ at 123.902212414154 "$god_ set-dist 38 49 3"
$ns_ at 123.902212414154 "$god_ set-dist 42 49 3"
$ns_ at 123.902212414154 "$god_ set-dist 44 49 2"
$ns_ at 123.964872763084 "$god_ set-dist 17 18 1"
$ns_ at 123.973097628050 "$god_ set-dist 0 34 2"
$ns_ at 123.973097628050 "$god_ set-dist 1 34 2"
$ns_ at 123.973097628050 "$god_ set-dist 3 34 2"
$ns_ at 123.973097628050 "$god_ set-dist 5 34 1"
$ns_ at 123.973097628050 "$god_ set-dist 6 34 3"
$ns_ at 123.973097628050 "$god_ set-dist 7 34 3"
$ns_ at 123.973097628050 "$god_ set-dist 10 34 2"
$ns_ at 123.973097628050 "$god_ set-dist 13 34 2"
$ns_ at 123.973097628050 "$god_ set-dist 15 34 3"
$ns_ at 123.973097628050 "$god_ set-dist 17 34 2"
$ns_ at 123.973097628050 "$god_ set-dist 19 34 3"
$ns_ at 123.973097628050 "$god_ set-dist 20 34 3"
$ns_ at 123.973097628050 "$god_ set-dist 21 34 3"
$ns_ at 123.973097628050 "$god_ set-dist 26 34 2"
$ns_ at 123.973097628050 "$god_ set-dist 31 34 3"
$ns_ at 123.973097628050 "$god_ set-dist 34 35 2"
$ns_ at 123.973097628050 "$god_ set-dist 34 36 2"
$ns_ at 123.973097628050 "$god_ set-dist 34 41 3"
$ns_ at 123.973097628050 "$god_ set-dist 34 45 3"
$ns_ at 123.973097628050 "$god_ set-dist 34 48 2"
$ns_ at 124.048572335329 "$god_ set-dist 2 44 1"
$ns_ at 124.158015777049 "$god_ set-dist 7 14 3"
$ns_ at 124.158015777049 "$god_ set-dist 7 35 2"
$ns_ at 124.158015777049 "$god_ set-dist 7 43 3"
$ns_ at 124.211979307176 "$god_ set-dist 6 14 2"
$ns_ at 124.211979307176 "$god_ set-dist 7 14 2"
$ns_ at 124.211979307176 "$god_ set-dist 14 20 2"
$ns_ at 124.211979307176 "$god_ set-dist 14 31 2"
$ns_ at 124.211979307176 "$god_ set-dist 14 44 1"
$ns_ at 124.211979307176 "$god_ set-dist 14 46 2"
$ns_ at 124.242085293772 "$god_ set-dist 9 14 2"
$ns_ at 124.242085293772 "$god_ set-dist 9 37 2"
$ns_ at 124.242085293772 "$god_ set-dist 9 42 1"
$ns_ at 124.242085293772 "$god_ set-dist 9 43 2"
$ns_ at 124.290351174984 "$god_ set-dist 4 45 3"
$ns_ at 124.290351174984 "$god_ set-dist 27 45 3"
$ns_ at 124.290351174984 "$god_ set-dist 45 48 2"
$ns_ at 124.309444527654 "$god_ set-dist 4 25 3"
$ns_ at 124.309444527654 "$god_ set-dist 25 48 2"
$ns_ at 124.388330880458 "$god_ set-dist 16 46 2"
$ns_ at 124.405139394894 "$god_ set-dist 20 33 3"
$ns_ at 124.405139394894 "$god_ set-dist 26 33 2"
$ns_ at 124.439613638580 "$god_ set-dist 7 49 1"
$ns_ at 124.439987869984 "$node_(12) setdest 628.445699556430 546.288674748047 0.000000000000"
$ns_ at 124.463173870730 "$god_ set-dist 5 20 3"
$ns_ at 124.463173870730 "$god_ set-dist 5 26 2"
$ns_ at 124.463173870730 "$god_ set-dist 20 34 4"
$ns_ at 124.463173870730 "$god_ set-dist 26 34 3"
$ns_ at 124.472476210503 "$god_ set-dist 4 19 3"
$ns_ at 124.472476210503 "$god_ set-dist 19 27 3"
$ns_ at 124.472476210503 "$god_ set-dist 19 48 2"
$ns_ at 124.488065099200 "$god_ set-dist 20 23 3"
$ns_ at 124.488065099200 "$god_ set-dist 23 26 2"
$ns_ at 124.488065099200 "$god_ set-dist 23 29 3"
$ns_ at 124.488065099200 "$god_ set-dist 23 32 3"
$ns_ at 124.526853323848 "$node_(24) setdest 174.843912391815 51.207015740466 0.000000000000"
$ns_ at 124.529900815555 "$god_ set-dist 33 46 2"
$ns_ at 124.547056245364 "$god_ set-dist 14 46 3"
$ns_ at 124.547056245364 "$god_ set-dist 44 46 2"
$ns_ at 124.577221015622 "$god_ set-dist 5 14 1"
$ns_ at 124.577221015622 "$god_ set-dist 14 27 2"
$ns_ at 124.579770567657 "$god_ set-dist 22 39 2"
$ns_ at 124.631467569196 "$god_ set-dist 8 9 3"
$ns_ at 124.631467569196 "$god_ set-dist 8 22 2"
$ns_ at 124.631467569196 "$god_ set-dist 8 47 3"
$ns_ at 124.790310962010 "$god_ set-dist 5 20 2"
$ns_ at 124.790310962010 "$god_ set-dist 5 44 1"
$ns_ at 124.790310962010 "$god_ set-dist 20 34 3"
$ns_ at 124.790310962010 "$god_ set-dist 34 44 2"
$ns_ at 124.803883563939 "$god_ set-dist 24 47 2"
$ns_ at 124.803883563939 "$god_ set-dist 29 47 2"
$ns_ at 124.803883563939 "$god_ set-dist 38 47 1"
$ns_ at 124.842895677584 "$god_ set-dist 19 24 3"
$ns_ at 124.842895677584 "$god_ set-dist 19 36 2"
$ns_ at 124.842895677584 "$god_ set-dist 19 37 3"
$ns_ at 124.881655058113 "$god_ set-dist 40 46 2"
$ns_ at 124.892230787621 "$node_(26) setdest 251.625828109256 441.398748725406 0.000000000000"
$ns_ at 124.926227478097 "$god_ set-dist 22 46 2"
$ns_ at 125.049100088649 "$god_ set-dist 20 21 1"
$ns_ at 125.088899454234 "$god_ set-dist 33 39 2"
$ns_ at 125.143964095127 "$god_ set-dist 9 25 3"
$ns_ at 125.143964095127 "$god_ set-dist 9 49 4"
$ns_ at 125.143964095127 "$god_ set-dist 22 25 2"
$ns_ at 125.143964095127 "$god_ set-dist 22 49 3"
$ns_ at 125.143964095127 "$god_ set-dist 25 27 3"
$ns_ at 125.143964095127 "$god_ set-dist 25 47 3"
$ns_ at 125.143964095127 "$god_ set-dist 47 49 4"
$ns_ at 125.238516300899 "$god_ set-dist 22 36 2"
$ns_ at 125.272622207975 "$god_ set-dist 4 38 3"
$ns_ at 125.272622207975 "$god_ set-dist 12 38 3"
$ns_ at 125.272622207975 "$god_ set-dist 33 38 2"
$ns_ at 125.272622207975 "$god_ set-dist 38 40 3"
$ns_ at 125.297620289805 "$god_ set-dist 5 27 2"
$ns_ at 125.297620289805 "$god_ set-dist 14 27 3"
$ns_ at 125.352090151012 "$god_ set-dist 24 34 2"
$ns_ at 125.352090151012 "$god_ set-dist 29 34 2"
$ns_ at 125.352090151012 "$god_ set-dist 34 38 1"
$ns_ at 125.355280015134 "$god_ set-dist 4 6 3"
$ns_ at 125.355280015134 "$god_ set-dist 6 27 3"
$ns_ at 125.355280015134 "$god_ set-dist 6 48 2"
$ns_ at 125.364393645509 "$god_ set-dist 5 20 3"
$ns_ at 125.364393645509 "$god_ set-dist 14 20 3"
$ns_ at 125.364393645509 "$god_ set-dist 20 34 4"
$ns_ at 125.364393645509 "$god_ set-dist 20 38 3"
$ns_ at 125.364393645509 "$god_ set-dist 20 44 2"
$ns_ at 125.375907736882 "$god_ set-dist 8 9 2"
$ns_ at 125.375907736882 "$god_ set-dist 8 30 1"
$ns_ at 125.375907736882 "$god_ set-dist 8 47 2"
$ns_ at 125.375907736882 "$god_ set-dist 9 49 3"
$ns_ at 125.375907736882 "$god_ set-dist 30 49 2"
$ns_ at 125.375907736882 "$god_ set-dist 47 49 3"
$ns_ at 125.401980143634 "$god_ set-dist 5 43 1"
$ns_ at 125.423498992626 "$god_ set-dist 5 48 2"
$ns_ at 125.423498992626 "$god_ set-dist 34 48 3"
$ns_ at 125.424334100012 "$god_ set-dist 17 36 2"
$ns_ at 125.468948091621 "$god_ set-dist 8 49 2"
$ns_ at 125.468948091621 "$god_ set-dist 9 49 4"
$ns_ at 125.468948091621 "$god_ set-dist 30 49 3"
$ns_ at 125.468948091621 "$god_ set-dist 47 49 4"
$ns_ at 125.484052228706 "$node_(30) setdest 487.352471200123 426.275466311559 0.000000000000"
$ns_ at 125.551307626133 "$god_ set-dist 14 48 3"
$ns_ at 125.551307626133 "$god_ set-dist 28 48 3"
$ns_ at 125.551307626133 "$god_ set-dist 37 48 3"
$ns_ at 125.551307626133 "$god_ set-dist 42 48 2"
$ns_ at 125.551307626133 "$god_ set-dist 43 48 3"
$ns_ at 125.588976600892 "$god_ set-dist 5 37 1"
$ns_ at 125.648017238052 "$god_ set-dist 2 36 2"
$ns_ at 125.648017238052 "$god_ set-dist 27 36 3"
$ns_ at 125.682614609515 "$god_ set-dist 20 34 3"
$ns_ at 125.682614609515 "$god_ set-dist 26 34 2"
$ns_ at 125.682614609515 "$god_ set-dist 34 42 1"
$ns_ at 125.728556700376 "$god_ set-dist 11 25 2"
$ns_ at 125.728556700376 "$god_ set-dist 12 25 3"
$ns_ at 125.832312878247 "$god_ set-dist 13 30 1"
$ns_ at 125.832312878247 "$god_ set-dist 24 30 2"
$ns_ at 125.985755656663 "$god_ set-dist 7 14 3"
$ns_ at 125.985755656663 "$god_ set-dist 7 44 2"
$ns_ at 126.015233896642 "$node_(46) setdest 317.976218617767 586.619381396293 0.000000000000"
$ns_ at 126.253781826196 "$god_ set-dist 6 43 2"
$ns_ at 126.253781826196 "$god_ set-dist 31 43 2"
$ns_ at 126.253781826196 "$god_ set-dist 43 44 1"
$ns_ at 126.388910229364 "$god_ set-dist 4 21 3"
$ns_ at 126.388910229364 "$god_ set-dist 21 27 3"
$ns_ at 126.388910229364 "$god_ set-dist 21 48 2"
$ns_ at 126.431089176123 "$god_ set-dist 5 16 2"
$ns_ at 126.446342436260 "$god_ set-dist 4 7 3"
$ns_ at 126.446342436260 "$god_ set-dist 7 27 3"
$ns_ at 126.446342436260 "$god_ set-dist 7 48 2"
$ns_ at 126.450746688188 "$god_ set-dist 20 28 4"
$ns_ at 126.450746688188 "$god_ set-dist 20 34 4"
$ns_ at 126.450746688188 "$god_ set-dist 20 42 3"
$ns_ at 126.450746688188 "$god_ set-dist 26 28 3"
$ns_ at 126.450746688188 "$god_ set-dist 26 34 3"
$ns_ at 126.450746688188 "$god_ set-dist 26 42 2"
$ns_ at 126.489110446997 "$god_ set-dist 16 37 3"
$ns_ at 126.489110446997 "$god_ set-dist 37 42 2"
$ns_ at 126.551777417804 "$god_ set-dist 29 37 1"
$ns_ at 126.580597294520 "$god_ set-dist 26 48 2"
$ns_ at 126.580597294520 "$god_ set-dist 29 48 3"
$ns_ at 126.580597294520 "$god_ set-dist 32 48 3"
$ns_ at 126.821889068101 "$god_ set-dist 16 43 3"
$ns_ at 126.821889068101 "$god_ set-dist 42 43 2"
$ns_ at 126.880919075106 "$god_ set-dist 21 49 1"
$ns_ at 126.936918469092 "$god_ set-dist 0 36 2"
$ns_ at 127.032846312849 "$god_ set-dist 14 31 3"
$ns_ at 127.032846312849 "$god_ set-dist 31 43 3"
$ns_ at 127.032846312849 "$god_ set-dist 31 44 2"
$ns_ at 127.148295234565 "$god_ set-dist 36 42 2"
$ns_ at 127.174194544937 "$god_ set-dist 4 31 3"
$ns_ at 127.174194544937 "$god_ set-dist 4 49 4"
$ns_ at 127.174194544937 "$god_ set-dist 27 31 3"
$ns_ at 127.174194544937 "$god_ set-dist 27 49 4"
$ns_ at 127.174194544937 "$god_ set-dist 31 48 2"
$ns_ at 127.174194544937 "$god_ set-dist 48 49 3"
$ns_ at 127.234464306871 "$god_ set-dist 4 6 2"
$ns_ at 127.234464306871 "$god_ set-dist 4 7 2"
$ns_ at 127.234464306871 "$god_ set-dist 4 11 1"
$ns_ at 127.234464306871 "$god_ set-dist 4 15 2"
$ns_ at 127.234464306871 "$god_ set-dist 4 19 2"
$ns_ at 127.234464306871 "$god_ set-dist 4 21 2"
$ns_ at 127.234464306871 "$god_ set-dist 4 31 2"
$ns_ at 127.234464306871 "$god_ set-dist 4 45 2"
$ns_ at 127.234464306871 "$god_ set-dist 4 49 3"
$ns_ at 127.240719135131 "$god_ set-dist 6 14 3"
$ns_ at 127.240719135131 "$god_ set-dist 6 43 3"
$ns_ at 127.240719135131 "$god_ set-dist 6 44 2"
$ns_ at 127.278157090118 "$node_(5) setdest 431.803513473164 241.120429335406 0.000000000000"
$ns_ at 127.281760572512 "$god_ set-dist 4 24 4"
$ns_ at 127.281760572512 "$god_ set-dist 12 24 4"
$ns_ at 127.281760572512 "$god_ set-dist 13 24 2"
$ns_ at 127.281760572512 "$god_ set-dist 24 30 3"
$ns_ at 127.281760572512 "$god_ set-dist 24 33 3"
$ns_ at 127.347903387091 "$god_ set-dist 2 25 1"
$ns_ at 127.347903387091 "$god_ set-dist 2 49 2"
$ns_ at 127.347903387091 "$god_ set-dist 9 25 2"
$ns_ at 127.347903387091 "$god_ set-dist 9 49 3"
$ns_ at 127.347903387091 "$god_ set-dist 25 27 2"
$ns_ at 127.347903387091 "$god_ set-dist 25 47 2"
$ns_ at 127.347903387091 "$god_ set-dist 27 49 3"
$ns_ at 127.347903387091 "$god_ set-dist 47 49 3"
$ns_ at 127.381637161201 "$god_ set-dist 16 39 2"
$ns_ at 127.388384750790 "$god_ set-dist 22 35 2"
$ns_ at 127.419743875700 "$god_ set-dist 22 44 2"
$ns_ at 127.491821085469 "$god_ set-dist 31 49 2"
$ns_ at 127.541325133635 "$god_ set-dist 14 27 2"
$ns_ at 127.541325133635 "$god_ set-dist 27 42 1"
$ns_ at 127.581995557542 "$god_ set-dist 0 16 2"
$ns_ at 127.609441847725 "$god_ set-dist 14 16 3"
$ns_ at 127.609441847725 "$god_ set-dist 16 42 2"
$ns_ at 127.611579910173 "$god_ set-dist 20 22 3"
$ns_ at 127.611579910173 "$god_ set-dist 22 26 2"
$ns_ at 127.637945906458 "$god_ set-dist 8 23 1"
$ns_ at 127.637945906458 "$god_ set-dist 20 23 2"
$ns_ at 127.665086180572 "$god_ set-dist 13 41 2"
$ns_ at 127.716014820416 "$god_ set-dist 39 41 1"
$ns_ at 127.730602613943 "$god_ set-dist 1 21 2"
$ns_ at 127.730602613943 "$god_ set-dist 21 38 3"
$ns_ at 127.814802022351 "$god_ set-dist 1 7 2"
$ns_ at 127.814802022351 "$god_ set-dist 7 38 3"
$ns_ at 127.827926601582 "$god_ set-dist 11 22 2"
$ns_ at 127.915533770859 "$god_ set-dist 8 48 2"
$ns_ at 127.915533770859 "$god_ set-dist 20 48 3"
$ns_ at 128.070621368746 "$god_ set-dist 19 44 2"
$ns_ at 128.122340868141 "$node_(39) setdest 350.815019893814 610.657105363598 0.000000000000"
$ns_ at 128.178420635197 "$god_ set-dist 14 19 3"
$ns_ at 128.178420635197 "$god_ set-dist 19 35 2"
$ns_ at 128.178420635197 "$god_ set-dist 19 43 3"
$ns_ at 128.215463892622 "$god_ set-dist 1 19 2"
$ns_ at 128.215463892622 "$god_ set-dist 19 38 3"
$ns_ at 128.268593753828 "$node_(41) setdest 159.153663053634 455.895479620960 0.000000000000"
$ns_ at 128.311469453048 "$god_ set-dist 1 38 2"
$ns_ at 128.311469453048 "$god_ set-dist 6 38 3"
$ns_ at 128.311469453048 "$god_ set-dist 31 38 3"
$ns_ at 128.311469453048 "$god_ set-dist 38 39 3"
$ns_ at 128.311469453048 "$god_ set-dist 38 46 3"
$ns_ at 128.433847909646 "$node_(7) setdest 230.599699533716 614.871269961173 0.000000000000"
$ns_ at 128.441338685426 "$god_ set-dist 5 36 2"
$ns_ at 128.441338685426 "$god_ set-dist 9 36 3"
$ns_ at 128.456142361386 "$god_ set-dist 22 34 1"
$ns_ at 128.456142361386 "$god_ set-dist 34 48 2"
$ns_ at 128.489512769527 "$god_ set-dist 4 19 3"
$ns_ at 128.489512769527 "$god_ set-dist 11 19 2"
$ns_ at 128.489512769527 "$god_ set-dist 12 19 3"
$ns_ at 128.704032746909 "$node_(21) setdest 220.050531407006 605.293462642244 0.000000000000"
$ns_ at 128.720563250233 "$node_(19) setdest 172.485203074040 565.189318191115 0.000000000000"
$ns_ at 128.846588064556 "$god_ set-dist 17 40 1"
$ns_ at 128.973178478929 "$node_(38) setdest 383.183574439535 137.097991173245 0.000000000000"
$ns_ at 129.008057423175 "$god_ set-dist 13 18 1"
$ns_ at 129.008057423175 "$god_ set-dist 18 29 2"
$ns_ at 129.008057423175 "$god_ set-dist 18 32 2"
$ns_ at 129.010040821034 "$god_ set-dist 9 16 2"
$ns_ at 129.015494310901 "$god_ set-dist 2 8 1"
$ns_ at 129.068014559345 "$god_ set-dist 1 36 2"
$ns_ at 129.068014559345 "$god_ set-dist 16 36 3"
$ns_ at 129.068014559345 "$god_ set-dist 23 36 3"
$ns_ at 129.068014559345 "$god_ set-dist 36 48 3"
$ns_ at 129.140895464052 "$god_ set-dist 35 42 2"
$ns_ at 129.155181633207 "$god_ set-dist 1 16 2"
$ns_ at 129.250406984385 "$god_ set-dist 8 24 2"
$ns_ at 129.250406984385 "$god_ set-dist 15 24 2"
$ns_ at 129.250406984385 "$god_ set-dist 24 44 1"
$ns_ at 129.439881249026 "$node_(22) setdest 496.279666718601 313.585221179697 0.000000000000"
$ns_ at 129.566496169487 "$god_ set-dist 0 48 2"
$ns_ at 129.891169558643 "$god_ set-dist 25 39 2"
$ns_ at 130.163623823472 "$god_ set-dist 0 42 2"
$ns_ at 130.241394269292 "$god_ set-dist 16 28 3"
$ns_ at 130.241394269292 "$god_ set-dist 16 47 2"
$ns_ at 130.363894037449 "$god_ set-dist 42 44 2"
$ns_ at 130.426123293358 "$god_ set-dist 8 37 2"
$ns_ at 130.426123293358 "$god_ set-dist 15 37 2"
$ns_ at 130.426123293358 "$god_ set-dist 37 44 1"
$ns_ at 130.461560695383 "$god_ set-dist 1 48 2"
$ns_ at 130.473408909164 "$god_ set-dist 22 48 2"
$ns_ at 130.473408909164 "$god_ set-dist 34 48 3"
$ns_ at 130.483083917997 "$node_(16) setdest 597.800494777622 529.598549526767 0.000000000000"
$ns_ at 130.611723730355 "$god_ set-dist 2 40 1"
$ns_ at 130.611723730355 "$god_ set-dist 38 40 2"
$ns_ at 130.628367100161 "$god_ set-dist 14 27 3"
$ns_ at 130.628367100161 "$god_ set-dist 14 42 2"
$ns_ at 130.648539565337 "$god_ set-dist 28 43 2"
$ns_ at 130.789974698551 "$god_ set-dist 0 29 1"
$ns_ at 130.789974698551 "$god_ set-dist 23 29 2"
$ns_ at 130.918681492176 "$god_ set-dist 3 42 2"
$ns_ at 131.012777992364 "$god_ set-dist 8 10 1"
$ns_ at 131.030806168590 "$god_ set-dist 1 47 1"
$ns_ at 131.030806168590 "$god_ set-dist 6 47 2"
$ns_ at 131.030806168590 "$god_ set-dist 15 47 2"
$ns_ at 131.030806168590 "$god_ set-dist 31 47 2"
$ns_ at 131.030806168590 "$god_ set-dist 41 47 2"
$ns_ at 131.039844877053 "$god_ set-dist 46 48 2"
$ns_ at 131.055092749357 "$god_ set-dist 8 13 1"
$ns_ at 131.165501108542 "$node_(48) setdest 568.861158481594 561.293109950835 0.000000000000"
$ns_ at 131.176976651062 "$god_ set-dist 0 18 2"
$ns_ at 131.225200071919 "$god_ set-dist 13 47 1"
$ns_ at 131.225200071919 "$god_ set-dist 32 47 2"
$ns_ at 131.266638512325 "$god_ set-dist 15 24 3"
$ns_ at 131.266638512325 "$god_ set-dist 15 37 3"
$ns_ at 131.266638512325 "$god_ set-dist 15 44 2"
$ns_ at 131.306850402561 "$god_ set-dist 13 23 1"
$ns_ at 131.306850402561 "$god_ set-dist 23 32 2"
$ns_ at 131.306850402561 "$god_ set-dist 23 36 2"
$ns_ at 131.387689747257 "$god_ set-dist 13 41 1"
$ns_ at 131.397016074525 "$god_ set-dist 34 36 3"
$ns_ at 131.397016074525 "$god_ set-dist 36 38 2"
$ns_ at 131.427705498504 "$god_ set-dist 8 44 2"
$ns_ at 131.449646000992 "$god_ set-dist 36 37 2"
$ns_ at 131.851380868924 "$god_ set-dist 1 29 1"
$ns_ at 131.950807499900 "$god_ set-dist 2 46 1"
$ns_ at 131.950807499900 "$god_ set-dist 38 46 2"
$ns_ at 132.350846622876 "$god_ set-dist 11 36 3"
$ns_ at 132.350846622876 "$god_ set-dist 26 36 2"
$ns_ at 132.383331127490 "$god_ set-dist 10 15 1"
$ns_ at 132.383331127490 "$god_ set-dist 15 24 2"
$ns_ at 132.383331127490 "$god_ set-dist 15 37 2"
$ns_ at 132.383712121211 "$god_ set-dist 16 28 2"
$ns_ at 132.383712121211 "$god_ set-dist 16 47 1"
$ns_ at 132.436949428156 "$god_ set-dist 3 44 2"
$ns_ at 132.594524605992 "$god_ set-dist 5 29 1"
$ns_ at 132.594524605992 "$god_ set-dist 9 29 2"
$ns_ at 132.765553594656 "$god_ set-dist 10 42 2"
$ns_ at 132.989578037762 "$god_ set-dist 2 31 1"
$ns_ at 132.989578037762 "$god_ set-dist 9 31 2"
$ns_ at 132.989578037762 "$god_ set-dist 27 31 2"
$ns_ at 132.989578037762 "$god_ set-dist 31 38 2"
$ns_ at 133.142711604301 "$god_ set-dist 2 9 2"
$ns_ at 133.142711604301 "$god_ set-dist 9 25 3"
$ns_ at 133.142711604301 "$god_ set-dist 9 31 3"
$ns_ at 133.142711604301 "$god_ set-dist 9 49 4"
$ns_ at 133.263329039952 "$god_ set-dist 2 39 1"
$ns_ at 133.263329039952 "$god_ set-dist 38 39 2"
$ns_ at 133.335127721577 "$god_ set-dist 20 31 2"
$ns_ at 133.354595535085 "$god_ set-dist 6 14 2"
$ns_ at 133.354595535085 "$god_ set-dist 7 14 2"
$ns_ at 133.354595535085 "$god_ set-dist 14 19 2"
$ns_ at 133.354595535085 "$god_ set-dist 14 20 2"
$ns_ at 133.354595535085 "$god_ set-dist 14 21 2"
$ns_ at 133.354595535085 "$god_ set-dist 14 25 1"
$ns_ at 133.354595535085 "$god_ set-dist 14 31 2"
$ns_ at 133.354595535085 "$god_ set-dist 14 45 2"
$ns_ at 133.354595535085 "$god_ set-dist 14 46 2"
$ns_ at 133.354595535085 "$god_ set-dist 14 49 2"
$ns_ at 133.354595535085 "$god_ set-dist 20 28 3"
$ns_ at 133.354595535085 "$god_ set-dist 25 28 2"
$ns_ at 133.354595535085 "$god_ set-dist 28 49 3"
$ns_ at 133.699840186822 "$node_(36) setdest 122.314012931035 213.198784507194 0.000000000000"
$ns_ at 133.869372075223 "$god_ set-dist 17 19 2"
$ns_ at 133.869372075223 "$god_ set-dist 19 42 3"
$ns_ at 133.877897548084 "$god_ set-dist 23 31 1"
$ns_ at 133.924797504049 "$god_ set-dist 13 37 2"
$ns_ at 133.929488323705 "$god_ set-dist 2 15 1"
$ns_ at 133.929488323705 "$god_ set-dist 15 27 2"
$ns_ at 134.027697958721 "$god_ set-dist 7 47 2"
$ns_ at 134.027697958721 "$god_ set-dist 17 47 1"
$ns_ at 134.027697958721 "$god_ set-dist 21 47 2"
$ns_ at 134.027697958721 "$god_ set-dist 45 47 2"
$ns_ at 134.096720207679 "$god_ set-dist 17 44 2"
$ns_ at 134.103463623947 "$god_ set-dist 13 15 1"
$ns_ at 134.128132546741 "$god_ set-dist 13 32 2"
$ns_ at 134.128132546741 "$god_ set-dist 18 32 3"
$ns_ at 134.128132546741 "$god_ set-dist 23 32 3"
$ns_ at 134.128132546741 "$god_ set-dist 32 33 3"
$ns_ at 134.128132546741 "$god_ set-dist 32 42 3"
$ns_ at 134.128132546741 "$god_ set-dist 32 47 3"
$ns_ at 134.160392195948 "$god_ set-dist 0 22 2"
$ns_ at 134.367536713106 "$god_ set-dist 17 45 2"
$ns_ at 134.367536713106 "$god_ set-dist 42 45 3"
$ns_ at 134.367536713106 "$god_ set-dist 45 47 3"
$ns_ at 134.723385358992 "$god_ set-dist 2 38 2"
$ns_ at 134.723385358992 "$god_ set-dist 11 38 3"
$ns_ at 134.723385358992 "$god_ set-dist 31 38 3"
$ns_ at 134.723385358992 "$god_ set-dist 38 39 3"
$ns_ at 134.723385358992 "$god_ set-dist 38 40 3"
$ns_ at 134.723385358992 "$god_ set-dist 38 46 3"
$ns_ at 134.723385358992 "$god_ set-dist 38 48 3"
$ns_ at 134.769632085385 "$god_ set-dist 6 27 2"
$ns_ at 134.769632085385 "$god_ set-dist 7 27 2"
$ns_ at 134.769632085385 "$god_ set-dist 17 27 1"
$ns_ at 134.769632085385 "$god_ set-dist 21 27 2"
$ns_ at 134.769632085385 "$god_ set-dist 27 41 2"
$ns_ at 134.787732335922 "$god_ set-dist 9 31 2"
$ns_ at 134.787732335922 "$god_ set-dist 30 31 1"
$ns_ at 134.924379876060 "$god_ set-dist 5 43 2"
$ns_ at 134.924379876060 "$god_ set-dist 9 43 3"
$ns_ at 135.072147843755 "$god_ set-dist 0 5 2"
$ns_ at 135.072147843755 "$god_ set-dist 0 28 3"
$ns_ at 135.072147843755 "$god_ set-dist 0 34 3"
$ns_ at 135.080315508921 "$god_ set-dist 41 44 2"
$ns_ at 135.269324915499 "$god_ set-dist 16 28 3"
$ns_ at 135.269324915499 "$god_ set-dist 28 47 2"
$ns_ at 135.391385266454 "$god_ set-dist 0 32 1"
$ns_ at 135.391385266454 "$god_ set-dist 23 32 2"
$ns_ at 135.391385266454 "$god_ set-dist 32 33 2"
$ns_ at 135.425870064327 "$god_ set-dist 10 12 2"
$ns_ at 135.425870064327 "$god_ set-dist 12 17 1"
$ns_ at 135.425870064327 "$god_ set-dist 12 24 3"
$ns_ at 135.425870064327 "$god_ set-dist 12 25 2"
$ns_ at 135.425870064327 "$god_ set-dist 12 35 2"
$ns_ at 135.425870064327 "$god_ set-dist 12 41 2"
$ns_ at 135.619226976716 "$god_ set-dist 17 21 2"
$ns_ at 135.619226976716 "$god_ set-dist 21 27 3"
$ns_ at 135.619226976716 "$god_ set-dist 21 42 3"
$ns_ at 135.619226976716 "$god_ set-dist 21 47 3"
$ns_ at 135.669548884442 "$god_ set-dist 4 36 4"
$ns_ at 135.669548884442 "$god_ set-dist 13 36 2"
$ns_ at 135.669548884442 "$god_ set-dist 18 36 3"
$ns_ at 135.669548884442 "$god_ set-dist 23 36 3"
$ns_ at 135.669548884442 "$god_ set-dist 30 36 3"
$ns_ at 135.669548884442 "$god_ set-dist 33 36 3"
$ns_ at 135.669548884442 "$god_ set-dist 36 42 3"
$ns_ at 135.669548884442 "$god_ set-dist 36 47 3"
$ns_ at 135.733552529992 "$god_ set-dist 7 17 2"
$ns_ at 135.733552529992 "$god_ set-dist 7 27 3"
$ns_ at 135.733552529992 "$god_ set-dist 7 42 3"
$ns_ at 135.733552529992 "$god_ set-dist 7 47 3"
$ns_ at 135.741130292577 "$god_ set-dist 0 20 1"
$ns_ at 135.741130292577 "$god_ set-dist 20 33 2"
$ns_ at 135.869806816023 "$god_ set-dist 11 26 2"
$ns_ at 135.997528866705 "$god_ set-dist 0 11 2"
$ns_ at 135.997528866705 "$god_ set-dist 11 32 3"
$ns_ at 136.049393071889 "$god_ set-dist 12 41 3"
$ns_ at 136.049393071889 "$god_ set-dist 17 41 2"
$ns_ at 136.049393071889 "$god_ set-dist 27 41 3"
$ns_ at 136.184538960959 "$god_ set-dist 14 45 3"
$ns_ at 136.184538960959 "$god_ set-dist 25 45 2"
$ns_ at 136.340386694847 "$god_ set-dist 4 43 4"
$ns_ at 136.340386694847 "$god_ set-dist 13 43 2"
$ns_ at 136.340386694847 "$god_ set-dist 18 43 3"
$ns_ at 136.340386694847 "$god_ set-dist 23 43 3"
$ns_ at 136.340386694847 "$god_ set-dist 30 43 3"
$ns_ at 136.340386694847 "$god_ set-dist 33 43 3"
$ns_ at 136.379365253501 "$god_ set-dist 14 49 3"
$ns_ at 136.379365253501 "$god_ set-dist 25 49 2"
$ns_ at 136.379365253501 "$god_ set-dist 28 49 4"
$ns_ at 136.379365253501 "$god_ set-dist 44 49 3"
$ns_ at 136.444601883492 "$god_ set-dist 4 24 3"
$ns_ at 136.444601883492 "$god_ set-dist 4 34 2"
$ns_ at 136.444601883492 "$god_ set-dist 4 38 2"
$ns_ at 136.444601883492 "$god_ set-dist 4 43 3"
$ns_ at 136.444601883492 "$god_ set-dist 4 47 1"
$ns_ at 136.755588742143 "$god_ set-dist 5 20 2"
$ns_ at 136.755588742143 "$god_ set-dist 5 25 1"
$ns_ at 136.755588742143 "$god_ set-dist 9 25 2"
$ns_ at 136.755588742143 "$god_ set-dist 20 34 3"
$ns_ at 136.755588742143 "$god_ set-dist 25 34 2"
$ns_ at 136.804216388511 "$god_ set-dist 2 44 2"
$ns_ at 136.804216388511 "$god_ set-dist 16 44 3"
$ns_ at 136.804216388511 "$god_ set-dist 27 44 3"
$ns_ at 136.804216388511 "$god_ set-dist 40 44 3"
$ns_ at 136.804216388511 "$god_ set-dist 44 48 3"
$ns_ at 136.853386216991 "$god_ set-dist 0 23 2"
$ns_ at 136.853386216991 "$god_ set-dist 23 32 3"
$ns_ at 137.109384611380 "$god_ set-dist 7 14 3"
$ns_ at 137.109384611380 "$god_ set-dist 7 25 2"
$ns_ at 137.111000672236 "$god_ set-dist 0 33 2"
$ns_ at 137.111000672236 "$god_ set-dist 20 33 3"
$ns_ at 137.111000672236 "$god_ set-dist 32 33 3"
$ns_ at 137.122373645374 "$god_ set-dist 8 37 3"
$ns_ at 137.122373645374 "$god_ set-dist 10 37 2"
$ns_ at 137.122373645374 "$god_ set-dist 15 37 3"
$ns_ at 137.311675273475 "$god_ set-dist 13 31 1"
$ns_ at 137.311675273475 "$god_ set-dist 31 38 2"
$ns_ at 137.377914859427 "$god_ set-dist 1 42 2"
$ns_ at 137.379910604824 "$god_ set-dist 0 36 1"
$ns_ at 137.379910604824 "$god_ set-dist 4 36 3"
$ns_ at 137.379910604824 "$god_ set-dist 30 36 2"
$ns_ at 137.483332697516 "$god_ set-dist 2 24 3"
$ns_ at 137.483332697516 "$god_ set-dist 3 24 3"
$ns_ at 137.483332697516 "$god_ set-dist 8 24 3"
$ns_ at 137.483332697516 "$god_ set-dist 10 24 2"
$ns_ at 137.483332697516 "$god_ set-dist 12 24 4"
$ns_ at 137.483332697516 "$god_ set-dist 15 24 3"
$ns_ at 137.483332697516 "$god_ set-dist 17 24 3"
$ns_ at 137.483332697516 "$god_ set-dist 24 40 4"
$ns_ at 137.483332697516 "$god_ set-dist 24 48 4"
$ns_ at 137.713162201863 "$god_ set-dist 11 18 2"
$ns_ at 137.778950282979 "$node_(42) setdest 577.183320956335 252.576404718192 0.000000000000"
$ns_ at 137.834354204064 "$god_ set-dist 26 44 2"
$ns_ at 138.089068000963 "$god_ set-dist 6 43 2"
$ns_ at 138.089068000963 "$god_ set-dist 19 43 2"
$ns_ at 138.089068000963 "$god_ set-dist 20 43 2"
$ns_ at 138.089068000963 "$god_ set-dist 21 43 2"
$ns_ at 138.089068000963 "$god_ set-dist 25 43 1"
$ns_ at 138.089068000963 "$god_ set-dist 31 43 2"
$ns_ at 138.089068000963 "$god_ set-dist 43 46 2"
$ns_ at 138.162783335698 "$god_ set-dist 1 14 1"
$ns_ at 138.162783335698 "$god_ set-dist 11 14 2"
$ns_ at 138.162783335698 "$god_ set-dist 14 39 2"
$ns_ at 138.502242996477 "$god_ set-dist 2 6 1"
$ns_ at 138.519657106123 "$god_ set-dist 25 46 2"
$ns_ at 138.519657106123 "$god_ set-dist 43 46 3"
$ns_ at 138.719154994923 "$god_ set-dist 0 49 1"
$ns_ at 138.719154994923 "$god_ set-dist 9 49 3"
$ns_ at 138.719154994923 "$god_ set-dist 30 49 2"
$ns_ at 138.719154994923 "$god_ set-dist 44 49 2"
$ns_ at 138.725287367000 "$god_ set-dist 6 17 2"
$ns_ at 139.019822592550 "$god_ set-dist 14 21 3"
$ns_ at 139.019822592550 "$god_ set-dist 21 25 2"
$ns_ at 139.019822592550 "$god_ set-dist 21 43 3"
$ns_ at 139.350647782249 "$god_ set-dist 4 24 4"
$ns_ at 139.350647782249 "$god_ set-dist 4 38 3"
$ns_ at 139.350647782249 "$god_ set-dist 4 43 4"
$ns_ at 139.350647782249 "$god_ set-dist 24 47 3"
$ns_ at 139.350647782249 "$god_ set-dist 38 47 2"
$ns_ at 139.350647782249 "$god_ set-dist 43 47 3"
$ns_ at 139.352631597506 "$node_(44) setdest 272.387870456250 173.587146400504 0.000000000000"
$ns_ at 139.463373279709 "$god_ set-dist 0 4 3"
$ns_ at 139.463373279709 "$god_ set-dist 0 9 3"
$ns_ at 139.463373279709 "$god_ set-dist 0 30 2"
$ns_ at 139.463373279709 "$god_ set-dist 4 36 4"
$ns_ at 139.463373279709 "$god_ set-dist 9 49 4"
$ns_ at 139.463373279709 "$god_ set-dist 30 36 3"
$ns_ at 139.463373279709 "$god_ set-dist 30 49 3"
$ns_ at 139.514156906978 "$node_(13) setdest 367.925996633389 333.798415444342 0.000000000000"
$ns_ at 139.735482254038 "$god_ set-dist 0 4 2"
$ns_ at 139.735482254038 "$god_ set-dist 4 10 2"
$ns_ at 139.735482254038 "$god_ set-dist 4 17 1"
$ns_ at 139.735482254038 "$god_ set-dist 4 25 2"
$ns_ at 139.735482254038 "$god_ set-dist 4 35 2"
$ns_ at 139.735482254038 "$god_ set-dist 4 36 3"
$ns_ at 139.735482254038 "$god_ set-dist 4 43 3"
$ns_ at 139.842197385520 "$god_ set-dist 6 35 1"
$ns_ at 139.842197385520 "$god_ set-dist 6 38 2"
$ns_ at 139.935344817409 "$god_ set-dist 11 33 2"
$ns_ at 140.309559760389 "$god_ set-dist 10 22 2"
$ns_ at 140.309559760389 "$god_ set-dist 22 32 3"
$ns_ at 140.309559760389 "$god_ set-dist 22 36 3"
$ns_ at 140.576085675016 "$god_ set-dist 1 11 2"
$ns_ at 140.576085675016 "$god_ set-dist 11 14 3"
$ns_ at 140.576085675016 "$god_ set-dist 11 24 4"
$ns_ at 140.576085675016 "$god_ set-dist 11 29 3"
$ns_ at 140.576085675016 "$god_ set-dist 11 44 3"
$ns_ at 140.808426848965 "$god_ set-dist 5 20 3"
$ns_ at 140.808426848965 "$god_ set-dist 14 20 3"
$ns_ at 140.808426848965 "$god_ set-dist 20 25 2"
$ns_ at 140.808426848965 "$god_ set-dist 20 28 4"
$ns_ at 140.808426848965 "$god_ set-dist 20 34 4"
$ns_ at 140.808426848965 "$god_ set-dist 20 43 3"
$ns_ at 141.138050734783 "$god_ set-dist 9 15 2"
$ns_ at 141.138050734783 "$god_ set-dist 9 49 3"
$ns_ at 141.138050734783 "$god_ set-dist 15 30 1"
$ns_ at 141.138050734783 "$god_ set-dist 30 49 2"
$ns_ at 141.186010763362 "$god_ set-dist 4 35 3"
$ns_ at 141.186010763362 "$god_ set-dist 12 35 3"
$ns_ at 141.186010763362 "$god_ set-dist 17 35 2"
$ns_ at 141.374158410363 "$god_ set-dist 2 12 1"
$ns_ at 141.374158410363 "$god_ set-dist 12 35 2"
$ns_ at 141.435805799876 "$god_ set-dist 22 40 1"
$ns_ at 141.435805799876 "$god_ set-dist 24 40 3"
$ns_ at 141.435805799876 "$god_ set-dist 34 40 2"
$ns_ at 141.435805799876 "$god_ set-dist 38 40 2"
$ns_ at 141.859273570528 "$god_ set-dist 0 9 2"
$ns_ at 141.859273570528 "$god_ set-dist 9 17 1"
$ns_ at 141.933379204156 "$god_ set-dist 2 41 1"
$ns_ at 141.933379204156 "$god_ set-dist 12 41 2"
$ns_ at 141.933379204156 "$god_ set-dist 27 41 2"
$ns_ at 142.189139121819 "$god_ set-dist 8 20 2"
$ns_ at 142.189139121819 "$god_ set-dist 20 23 3"
$ns_ at 142.239088357570 "$god_ set-dist 4 25 3"
$ns_ at 142.239088357570 "$god_ set-dist 17 25 2"
$ns_ at 142.331442963320 "$god_ set-dist 0 14 1"
$ns_ at 142.331442963320 "$god_ set-dist 0 28 2"
$ns_ at 142.331442963320 "$god_ set-dist 7 14 2"
$ns_ at 142.331442963320 "$god_ set-dist 14 20 2"
$ns_ at 142.331442963320 "$god_ set-dist 14 21 2"
$ns_ at 142.331442963320 "$god_ set-dist 14 45 2"
$ns_ at 142.331442963320 "$god_ set-dist 14 49 2"
$ns_ at 142.331442963320 "$god_ set-dist 20 28 3"
$ns_ at 142.331442963320 "$god_ set-dist 28 49 3"
$ns_ at 142.693207068117 "$god_ set-dist 2 42 2"
$ns_ at 142.693207068117 "$god_ set-dist 6 42 3"
$ns_ at 142.773711582712 "$god_ set-dist 0 4 3"
$ns_ at 142.773711582712 "$god_ set-dist 0 9 3"
$ns_ at 142.773711582712 "$god_ set-dist 0 17 2"
$ns_ at 142.907982177821 "$god_ set-dist 2 7 1"
$ns_ at 142.907982177821 "$god_ set-dist 7 27 2"
$ns_ at 142.907982177821 "$god_ set-dist 7 47 2"
$ns_ at 143.017279520589 "$god_ set-dist 12 34 2"
$ns_ at 143.017279520589 "$god_ set-dist 18 34 1"
$ns_ at 143.017279520589 "$god_ set-dist 34 48 2"
$ns_ at 143.052947342075 "$god_ set-dist 2 21 1"
$ns_ at 143.052947342075 "$god_ set-dist 21 27 2"
$ns_ at 143.052947342075 "$god_ set-dist 21 47 2"
$ns_ at 143.061735423092 "$god_ set-dist 15 23 1"
$ns_ at 143.061735423092 "$god_ set-dist 20 23 2"
$ns_ at 143.061735423092 "$god_ set-dist 23 49 2"
$ns_ at 143.479272437237 "$god_ set-dist 4 10 3"
$ns_ at 143.479272437237 "$god_ set-dist 4 36 4"
$ns_ at 143.479272437237 "$god_ set-dist 4 43 4"
$ns_ at 143.479272437237 "$god_ set-dist 10 17 2"
$ns_ at 143.479272437237 "$god_ set-dist 17 36 3"
$ns_ at 143.479272437237 "$god_ set-dist 17 43 3"
$ns_ at 143.536755121820 "$god_ set-dist 9 49 4"
$ns_ at 143.536755121820 "$god_ set-dist 15 49 2"
$ns_ at 143.536755121820 "$god_ set-dist 17 49 3"
$ns_ at 143.536755121820 "$god_ set-dist 23 49 3"
$ns_ at 143.536755121820 "$god_ set-dist 30 49 3"
$ns_ at 143.788239638993 "$god_ set-dist 6 10 1"
$ns_ at 143.886345359116 "$node_(17) setdest 471.315938717154 406.591072858066 0.000000000000"
$ns_ at 144.001258247337 "$god_ set-dist 0 39 2"
$ns_ at 144.015537533039 "$god_ set-dist 40 47 1"
$ns_ at 144.097067776826 "$node_(43) setdest 167.931811991106 122.331486571336 0.000000000000"
$ns_ at 144.211211706261 "$god_ set-dist 14 16 2"
$ns_ at 144.211211706261 "$god_ set-dist 14 22 1"
$ns_ at 144.211211706261 "$god_ set-dist 14 27 2"
$ns_ at 144.211211706261 "$god_ set-dist 14 40 2"
$ns_ at 144.211211706261 "$god_ set-dist 22 32 2"
$ns_ at 144.211211706261 "$god_ set-dist 22 36 2"
$ns_ at 144.317323876799 "$god_ set-dist 4 6 3"
$ns_ at 144.317323876799 "$god_ set-dist 6 11 2"
$ns_ at 144.421113359098 "$god_ set-dist 19 38 2"
$ns_ at 144.421113359098 "$god_ set-dist 25 38 1"
$ns_ at 144.648584991331 "$god_ set-dist 29 41 2"
$ns_ at 144.648584991331 "$god_ set-dist 37 41 3"
$ns_ at 144.670806265999 "$god_ set-dist 2 45 1"
$ns_ at 144.670806265999 "$god_ set-dist 27 45 2"
$ns_ at 144.670806265999 "$god_ set-dist 45 47 2"
$ns_ at 144.745624960016 "$god_ set-dist 10 31 1"
$ns_ at 144.867078693179 "$god_ set-dist 33 34 1"
$ns_ at 145.104983220083 "$god_ set-dist 31 33 1"
$ns_ at 145.104983220083 "$god_ set-dist 31 34 2"
$ns_ at 145.230442527268 "$god_ set-dist 0 27 3"
$ns_ at 145.230442527268 "$god_ set-dist 2 27 2"
$ns_ at 145.230442527268 "$god_ set-dist 6 27 3"
$ns_ at 145.230442527268 "$god_ set-dist 7 27 3"
$ns_ at 145.230442527268 "$god_ set-dist 10 27 3"
$ns_ at 145.230442527268 "$god_ set-dist 21 27 3"
$ns_ at 145.230442527268 "$god_ set-dist 25 27 3"
$ns_ at 145.230442527268 "$god_ set-dist 27 35 3"
$ns_ at 145.230442527268 "$god_ set-dist 27 41 3"
$ns_ at 145.230442527268 "$god_ set-dist 27 45 3"
$ns_ at 145.230442527268 "$god_ set-dist 27 49 4"
$ns_ at 145.252849577395 "$god_ set-dist 12 47 1"
$ns_ at 145.389395591646 "$god_ set-dist 11 15 2"
$ns_ at 145.469976180603 "$god_ set-dist 8 33 1"
$ns_ at 145.469976180603 "$god_ set-dist 8 34 2"
$ns_ at 145.707659329582 "$god_ set-dist 31 40 1"
$ns_ at 145.767776183672 "$god_ set-dist 19 25 2"
$ns_ at 145.767776183672 "$god_ set-dist 19 38 3"
$ns_ at 145.767776183672 "$god_ set-dist 19 43 3"
$ns_ at 145.812908201316 "$god_ set-dist 4 7 3"
$ns_ at 145.812908201316 "$god_ set-dist 4 11 2"
$ns_ at 145.812908201316 "$god_ set-dist 4 21 3"
$ns_ at 145.812908201316 "$god_ set-dist 4 45 3"
$ns_ at 145.812908201316 "$god_ set-dist 4 49 4"
$ns_ at 145.915615621921 "$god_ set-dist 11 17 2"
$ns_ at 145.936702437647 "$god_ set-dist 2 19 1"
$ns_ at 145.936702437647 "$god_ set-dist 12 19 2"
$ns_ at 145.936702437647 "$god_ set-dist 19 47 2"
$ns_ at 146.347849762569 "$god_ set-dist 25 31 2"
$ns_ at 146.713757977469 "$god_ set-dist 31 48 1"
$ns_ at 147.111706779607 "$god_ set-dist 40 46 1"
$ns_ at 147.344933622678 "$god_ set-dist 15 33 1"
$ns_ at 147.344933622678 "$god_ set-dist 15 34 2"
$ns_ at 147.344933622678 "$god_ set-dist 20 33 2"
$ns_ at 147.344933622678 "$god_ set-dist 20 34 3"
$ns_ at 147.546949107502 "$god_ set-dist 1 40 1"
$ns_ at 147.546949107502 "$god_ set-dist 29 40 2"
$ns_ at 147.546949107502 "$god_ set-dist 40 44 2"
$ns_ at 147.896973874285 "$god_ set-dist 10 19 1"
$ns_ at 147.896973874285 "$god_ set-dist 19 38 2"
$ns_ at 147.896973874285 "$god_ set-dist 19 43 2"
$ns_ at 147.965410033964 "$node_(11) setdest 459.610469490052 665.748965308486 0.000000000000"
$ns_ at 148.179803381581 "$god_ set-dist 15 20 2"
$ns_ at 148.179803381581 "$god_ set-dist 20 23 3"
$ns_ at 148.179803381581 "$god_ set-dist 20 33 3"
$ns_ at 148.179803381581 "$god_ set-dist 20 34 4"
$ns_ at 148.744620165319 "$god_ set-dist 6 25 2"
$ns_ at 148.776619424503 "$god_ set-dist 14 26 1"
$ns_ at 148.776619424503 "$god_ set-dist 26 28 2"
$ns_ at 149.182572984440 "$god_ set-dist 0 12 3"
$ns_ at 149.182572984440 "$god_ set-dist 2 12 2"
$ns_ at 149.182572984440 "$god_ set-dist 6 12 3"
$ns_ at 149.182572984440 "$god_ set-dist 10 12 3"
$ns_ at 149.182572984440 "$god_ set-dist 12 19 3"
$ns_ at 149.182572984440 "$god_ set-dist 12 25 3"
$ns_ at 149.182572984440 "$god_ set-dist 12 35 3"
$ns_ at 149.182572984440 "$god_ set-dist 12 36 4"
$ns_ at 149.182572984440 "$god_ set-dist 12 41 3"
$ns_ at 149.182572984440 "$god_ set-dist 12 43 4"
$ns_ at 149.774091254509 "$god_ set-dist 2 47 2"
$ns_ at 149.774091254509 "$god_ set-dist 7 47 3"
$ns_ at 149.774091254509 "$god_ set-dist 19 47 3"
$ns_ at 149.774091254509 "$god_ set-dist 21 47 3"
$ns_ at 149.774091254509 "$god_ set-dist 45 47 3"
$ns_ at 149.843088848941 "$god_ set-dist 0 46 2"
$ns_ at 150.228290857120 "$god_ set-dist 10 38 2"
$ns_ at 150.228290857120 "$god_ set-dist 19 38 3"
$ns_ at 150.321778313644 "$god_ set-dist 2 24 2"
$ns_ at 150.321778313644 "$god_ set-dist 3 24 2"
$ns_ at 150.321778313644 "$god_ set-dist 8 24 2"
$ns_ at 150.321778313644 "$god_ set-dist 11 24 3"
$ns_ at 150.321778313644 "$god_ set-dist 15 24 2"
$ns_ at 150.321778313644 "$god_ set-dist 24 25 1"
$ns_ at 150.321778313644 "$god_ set-dist 24 48 3"
$ns_ at 150.458155394209 "$god_ set-dist 47 48 1"
$ns_ at 150.637089951245 "$god_ set-dist 0 2 2"
$ns_ at 150.753091154221 "$god_ set-dist 2 24 3"
$ns_ at 150.753091154221 "$god_ set-dist 2 25 2"
$ns_ at 150.772453803948 "$god_ set-dist 2 5 2"
$ns_ at 150.772453803948 "$god_ set-dist 2 28 3"
$ns_ at 150.772453803948 "$god_ set-dist 2 37 3"
$ns_ at 151.129248444642 "$god_ set-dist 0 28 3"
$ns_ at 151.129248444642 "$god_ set-dist 14 28 2"
$ns_ at 151.129248444642 "$god_ set-dist 20 28 4"
$ns_ at 151.129248444642 "$god_ set-dist 26 28 3"
$ns_ at 151.129248444642 "$god_ set-dist 28 32 3"
$ns_ at 151.129248444642 "$god_ set-dist 28 36 3"
$ns_ at 151.129248444642 "$god_ set-dist 28 49 4"
$ns_ at 151.535746932723 "$god_ set-dist 0 44 2"
$ns_ at 151.535746932723 "$god_ set-dist 7 44 3"
$ns_ at 151.535746932723 "$god_ set-dist 20 44 3"
$ns_ at 151.535746932723 "$god_ set-dist 21 44 3"
$ns_ at 151.535746932723 "$god_ set-dist 44 45 3"
$ns_ at 151.535746932723 "$god_ set-dist 44 49 3"
$ns_ at 152.170718887834 "$god_ set-dist 0 31 2"
$ns_ at 152.469776210792 "$god_ set-dist 28 32 2"
$ns_ at 152.469776210792 "$god_ set-dist 28 36 2"
$ns_ at 152.469776210792 "$god_ set-dist 28 44 1"
$ns_ at 152.480220542851 "$god_ set-dist 0 3 2"
$ns_ at 152.480220542851 "$god_ set-dist 0 16 3"
$ns_ at 152.480220542851 "$god_ set-dist 0 48 3"
$ns_ at 153.116891134983 "$god_ set-dist 0 45 2"
$ns_ at 153.289616366143 "$god_ set-dist 0 7 2"
$ns_ at 153.676311014956 "$god_ set-dist 18 31 1"
$ns_ at 153.702441857174 "$god_ set-dist 3 24 3"
$ns_ at 153.702441857174 "$god_ set-dist 3 25 2"
$ns_ at 153.702441857174 "$god_ set-dist 16 25 3"
$ns_ at 153.702441857174 "$god_ set-dist 24 48 4"
$ns_ at 153.702441857174 "$god_ set-dist 25 48 3"
$ns_ at 153.841418999884 "$god_ set-dist 11 15 1"
$ns_ at 153.955593054616 "$god_ set-dist 5 20 2"
$ns_ at 153.955593054616 "$god_ set-dist 10 20 1"
$ns_ at 153.955593054616 "$god_ set-dist 20 28 3"
$ns_ at 153.955593054616 "$god_ set-dist 20 34 3"
$ns_ at 153.955593054616 "$god_ set-dist 20 43 2"
$ns_ at 153.955593054616 "$god_ set-dist 20 44 2"
$ns_ at 153.981501973791 "$god_ set-dist 8 37 2"
$ns_ at 153.981501973791 "$god_ set-dist 15 37 2"
$ns_ at 153.981501973791 "$god_ set-dist 25 37 1"
$ns_ at 153.981501973791 "$god_ set-dist 37 41 2"
$ns_ at 153.985650728453 "$god_ set-dist 27 34 1"
$ns_ at 154.309287538733 "$god_ set-dist 2 35 2"
$ns_ at 154.318141742651 "$god_ set-dist 16 29 2"
$ns_ at 154.318141742651 "$god_ set-dist 22 29 1"
$ns_ at 154.318141742651 "$god_ set-dist 27 29 2"
$ns_ at 154.618592865464 "$god_ set-dist 15 22 1"
$ns_ at 154.661435540819 "$god_ set-dist 0 13 2"
$ns_ at 154.661435540819 "$god_ set-dist 0 42 3"
$ns_ at 154.780400430761 "$god_ set-dist 16 31 1"
$ns_ at 155.370571131735 "$god_ set-dist 17 34 1"
$ns_ at 155.370571131735 "$god_ set-dist 26 34 2"
$ns_ at 155.370571131735 "$god_ set-dist 34 39 2"
$ns_ at 155.370571131735 "$god_ set-dist 34 46 2"
$ns_ at 155.493856546623 "$god_ set-dist 0 1 2"
$ns_ at 155.493856546623 "$god_ set-dist 0 18 3"
$ns_ at 155.493856546623 "$god_ set-dist 0 40 3"
$ns_ at 155.493856546623 "$god_ set-dist 0 47 3"
$ns_ at 155.680782511561 "$god_ set-dist 0 21 2"
$ns_ at 155.772189905247 "$god_ set-dist 0 18 2"
$ns_ at 155.772189905247 "$god_ set-dist 15 18 1"
$ns_ at 156.288361549891 "$god_ set-dist 11 14 2"
$ns_ at 156.288361549891 "$god_ set-dist 14 15 1"
$ns_ at 156.898062448087 "$god_ set-dist 5 10 2"
$ns_ at 156.898062448087 "$god_ set-dist 5 20 3"
$ns_ at 156.898062448087 "$god_ set-dist 9 10 3"
$ns_ at 156.898062448087 "$god_ set-dist 10 34 3"
$ns_ at 157.154379891486 "$god_ set-dist 3 5 2"
$ns_ at 157.154379891486 "$god_ set-dist 3 28 3"
$ns_ at 157.154379891486 "$god_ set-dist 3 37 3"
$ns_ at 157.154379891486 "$god_ set-dist 5 7 3"
$ns_ at 157.154379891486 "$god_ set-dist 5 19 3"
$ns_ at 157.154379891486 "$god_ set-dist 5 21 3"
$ns_ at 157.154379891486 "$god_ set-dist 5 45 3"
$ns_ at 157.154379891486 "$god_ set-dist 7 28 4"
$ns_ at 157.154379891486 "$god_ set-dist 21 28 4"
$ns_ at 157.154379891486 "$god_ set-dist 28 45 4"
$ns_ at 157.159528045897 "$god_ set-dist 2 22 2"
$ns_ at 157.262215175037 "$god_ set-dist 3 47 1"
$ns_ at 157.262215175037 "$god_ set-dist 7 47 2"
$ns_ at 157.262215175037 "$god_ set-dist 19 47 2"
$ns_ at 157.262215175037 "$god_ set-dist 21 47 2"
$ns_ at 157.262215175037 "$god_ set-dist 45 47 2"
$ns_ at 157.775466470926 "$god_ set-dist 0 29 2"
$ns_ at 157.775466470926 "$god_ set-dist 29 49 3"
$ns_ at 157.964334292592 "$god_ set-dist 10 49 1"
$ns_ at 157.964334292592 "$god_ set-dist 28 49 3"
$ns_ at 157.964334292592 "$god_ set-dist 29 49 2"
$ns_ at 157.964334292592 "$god_ set-dist 43 49 2"
$ns_ at 157.964334292592 "$god_ set-dist 44 49 2"
$ns_ at 157.990335025690 "$node_(2) setdest 364.950306964960 533.012233641126 0.000000000000"
$ns_ at 158.093005085090 "$god_ set-dist 0 40 2"
$ns_ at 158.093005085090 "$god_ set-dist 15 40 1"
$ns_ at 158.547163592989 "$god_ set-dist 5 7 2"
$ns_ at 158.547163592989 "$god_ set-dist 5 15 1"
$ns_ at 158.547163592989 "$god_ set-dist 5 19 2"
$ns_ at 158.547163592989 "$god_ set-dist 5 21 2"
$ns_ at 158.547163592989 "$god_ set-dist 5 45 2"
$ns_ at 158.547163592989 "$god_ set-dist 7 28 3"
$ns_ at 158.547163592989 "$god_ set-dist 15 28 2"
$ns_ at 158.547163592989 "$god_ set-dist 21 28 3"
$ns_ at 158.547163592989 "$god_ set-dist 28 45 3"
$ns_ at 158.690918917088 "$god_ set-dist 0 14 2"
$ns_ at 158.716750094644 "$god_ set-dist 10 21 1"
$ns_ at 158.716750094644 "$god_ set-dist 21 43 2"
$ns_ at 158.716750094644 "$god_ set-dist 21 44 2"
$ns_ at 158.867400215518 "$god_ set-dist 4 14 2"
$ns_ at 158.867400215518 "$god_ set-dist 4 24 3"
$ns_ at 158.867400215518 "$god_ set-dist 4 36 3"
$ns_ at 158.867400215518 "$god_ set-dist 4 43 3"
$ns_ at 158.867400215518 "$god_ set-dist 12 14 2"
$ns_ at 158.867400215518 "$god_ set-dist 12 24 3"
$ns_ at 158.867400215518 "$god_ set-dist 12 36 3"
$ns_ at 158.867400215518 "$god_ set-dist 12 43 3"
$ns_ at 158.867400215518 "$god_ set-dist 14 17 1"
$ns_ at 158.867400215518 "$god_ set-dist 14 48 2"
$ns_ at 158.867400215518 "$god_ set-dist 17 24 2"
$ns_ at 158.867400215518 "$god_ set-dist 17 36 2"
$ns_ at 158.867400215518 "$god_ set-dist 17 43 2"
$ns_ at 158.867400215518 "$god_ set-dist 24 48 3"
$ns_ at 158.909030949854 "$god_ set-dist 11 34 2"
$ns_ at 158.909030949854 "$god_ set-dist 30 34 1"
$ns_ at 159.076948640129 "$god_ set-dist 0 15 2"
$ns_ at 159.076948640129 "$god_ set-dist 0 18 3"
$ns_ at 159.076948640129 "$god_ set-dist 0 22 3"
$ns_ at 159.076948640129 "$god_ set-dist 0 40 3"
$ns_ at 159.344751368075 "$god_ set-dist 8 24 3"
$ns_ at 159.344751368075 "$god_ set-dist 8 25 2"
$ns_ at 159.344751368075 "$god_ set-dist 8 37 3"
$ns_ at 159.385879696622 "$god_ set-dist 26 28 2"
$ns_ at 159.385879696622 "$god_ set-dist 28 29 1"
$ns_ at 160.156423483670 "$god_ set-dist 0 8 2"
$ns_ at 160.156423483670 "$god_ set-dist 0 11 3"
$ns_ at 160.156423483670 "$god_ set-dist 0 23 3"
$ns_ at 160.156423483670 "$god_ set-dist 0 33 3"
$ns_ at 161.507490509712 "$god_ set-dist 22 31 1"
$ns_ at 161.759137839314 "$god_ set-dist 8 14 1"
$ns_ at 161.759137839314 "$god_ set-dist 8 24 2"
$ns_ at 161.759137839314 "$god_ set-dist 8 37 2"
$ns_ at 161.964945674740 "$god_ set-dist 14 33 1"
$ns_ at 161.964945674740 "$god_ set-dist 24 33 2"
$ns_ at 161.964945674740 "$god_ set-dist 32 33 2"
$ns_ at 161.964945674740 "$god_ set-dist 33 36 2"
$ns_ at 161.964945674740 "$god_ set-dist 33 43 2"
$ns_ at 161.979532221849 "$node_(10) setdest 194.579815902422 366.277357976812 0.000000000000"
$ns_ at 163.385305170797 "$god_ set-dist 11 25 3"
$ns_ at 163.385305170797 "$god_ set-dist 15 25 2"
$ns_ at 163.428123743163 "$god_ set-dist 10 34 2"
$ns_ at 163.428123743163 "$god_ set-dist 13 34 1"
$ns_ at 163.428123743163 "$god_ set-dist 34 41 2"
$ns_ at 163.428123743163 "$god_ set-dist 34 49 3"
$ns_ at 163.480007275361 "$god_ set-dist 15 47 1"
$ns_ at 163.538718742239 "$god_ set-dist 6 12 2"
$ns_ at 163.538718742239 "$god_ set-dist 10 12 2"
$ns_ at 163.538718742239 "$god_ set-dist 12 19 2"
$ns_ at 163.538718742239 "$god_ set-dist 12 31 1"
$ns_ at 163.538718742239 "$god_ set-dist 12 41 2"
$ns_ at 163.662222134807 "$god_ set-dist 0 6 2"
$ns_ at 164.628357546866 "$god_ set-dist 7 29 3"
$ns_ at 164.628357546866 "$god_ set-dist 26 28 3"
$ns_ at 164.628357546866 "$god_ set-dist 26 29 2"
$ns_ at 164.628357546866 "$god_ set-dist 29 45 3"
$ns_ at 164.726498450081 "$god_ set-dist 3 14 1"
$ns_ at 164.726498450081 "$god_ set-dist 3 24 2"
$ns_ at 164.726498450081 "$god_ set-dist 3 37 2"
$ns_ at 164.800417782357 "$god_ set-dist 15 48 1"
$ns_ at 165.428489612738 "$god_ set-dist 25 41 2"
$ns_ at 165.428489612738 "$god_ set-dist 37 41 3"
$ns_ at 165.513328023615 "$god_ set-dist 0 19 2"
$ns_ at 165.694737916748 "$god_ set-dist 8 40 1"
$ns_ at 165.842993954194 "$god_ set-dist 14 41 1"
$ns_ at 165.842993954194 "$god_ set-dist 37 41 2"
$ns_ at 165.859057801117 "$god_ set-dist 10 12 3"
$ns_ at 165.859057801117 "$god_ set-dist 10 31 2"
$ns_ at 165.859057801117 "$god_ set-dist 31 43 3"
$ns_ at 165.914281132456 "$node_(0) setdest 37.351093198878 351.897061181857 0.000000000000"
$ns_ at 166.252387081669 "$god_ set-dist 31 47 1"
$ns_ at 167.695633991663 "$god_ set-dist 14 30 1"
$ns_ at 167.695633991663 "$god_ set-dist 24 30 2"
$ns_ at 167.695633991663 "$god_ set-dist 30 36 2"
$ns_ at 167.695633991663 "$god_ set-dist 30 43 2"
$ns_ at 168.636072393141 "$god_ set-dist 23 34 1"
$ns_ at 168.742650887479 "$god_ set-dist 0 25 2"
$ns_ at 168.742650887479 "$god_ set-dist 0 37 3"
$ns_ at 169.023380621387 "$god_ set-dist 8 22 1"
$ns_ at 169.492537464218 "$god_ set-dist 7 29 2"
$ns_ at 169.492537464218 "$god_ set-dist 11 29 2"
$ns_ at 169.492537464218 "$god_ set-dist 15 29 1"
$ns_ at 169.492537464218 "$god_ set-dist 29 45 2"
$ns_ at 169.492537464218 "$god_ set-dist 29 48 2"
$ns_ at 169.542452892953 "$god_ set-dist 12 41 3"
$ns_ at 169.542452892953 "$god_ set-dist 31 36 3"
$ns_ at 169.542452892953 "$god_ set-dist 31 41 2"
$ns_ at 169.589002579879 "$god_ set-dist 15 16 1"
$ns_ at 169.993502091892 "$god_ set-dist 3 24 3"
$ns_ at 169.993502091892 "$god_ set-dist 4 24 4"
$ns_ at 169.993502091892 "$god_ set-dist 8 24 3"
$ns_ at 169.993502091892 "$god_ set-dist 12 24 4"
$ns_ at 169.993502091892 "$god_ set-dist 14 24 2"
$ns_ at 169.993502091892 "$god_ set-dist 17 24 3"
$ns_ at 169.993502091892 "$god_ set-dist 24 30 3"
$ns_ at 169.993502091892 "$god_ set-dist 24 33 3"
$ns_ at 170.021606898929 "$god_ set-dist 8 18 1"
$ns_ at 170.303964779209 "$god_ set-dist 7 25 3"
$ns_ at 170.303964779209 "$god_ set-dist 25 26 2"
$ns_ at 170.303964779209 "$god_ set-dist 25 45 3"
$ns_ at 170.312429287860 "$god_ set-dist 29 42 1"
$ns_ at 170.312429287860 "$god_ set-dist 32 42 2"
$ns_ at 170.312429287860 "$god_ set-dist 36 42 2"
$ns_ at 171.574996485240 "$god_ set-dist 29 34 1"
$ns_ at 171.574996485240 "$god_ set-dist 32 34 2"
$ns_ at 171.574996485240 "$god_ set-dist 34 36 2"
$ns_ at 172.327010728520 "$god_ set-dist 4 24 3"
$ns_ at 172.327010728520 "$god_ set-dist 4 29 2"
$ns_ at 172.327010728520 "$god_ set-dist 12 24 3"
$ns_ at 172.327010728520 "$god_ set-dist 12 29 2"
$ns_ at 172.327010728520 "$god_ set-dist 24 33 2"
$ns_ at 172.327010728520 "$god_ set-dist 29 33 1"
$ns_ at 172.735599763352 "$god_ set-dist 17 24 2"
$ns_ at 172.735599763352 "$god_ set-dist 17 29 1"
$ns_ at 172.748333199602 "$god_ set-dist 1 25 2"
$ns_ at 172.748333199602 "$god_ set-dist 25 39 3"
$ns_ at 172.748333199602 "$god_ set-dist 25 40 3"
$ns_ at 172.748333199602 "$god_ set-dist 25 46 3"
$ns_ at 173.743692560215 "$god_ set-dist 6 27 2"
$ns_ at 173.743692560215 "$god_ set-dist 7 27 2"
$ns_ at 173.743692560215 "$god_ set-dist 19 27 2"
$ns_ at 173.743692560215 "$god_ set-dist 21 27 2"
$ns_ at 173.743692560215 "$god_ set-dist 27 31 1"
$ns_ at 173.743692560215 "$god_ set-dist 27 45 2"
$ns_ at 173.743692560215 "$god_ set-dist 27 49 3"
$ns_ at 173.779252771551 "$god_ set-dist 29 32 2"
$ns_ at 173.779252771551 "$god_ set-dist 32 34 3"
$ns_ at 173.779252771551 "$god_ set-dist 32 42 3"
$ns_ at 174.200266986831 "$god_ set-dist 4 6 2"
$ns_ at 174.200266986831 "$god_ set-dist 4 7 2"
$ns_ at 174.200266986831 "$god_ set-dist 4 19 2"
$ns_ at 174.200266986831 "$god_ set-dist 4 21 2"
$ns_ at 174.200266986831 "$god_ set-dist 4 31 1"
$ns_ at 174.200266986831 "$god_ set-dist 4 45 2"
$ns_ at 174.200266986831 "$god_ set-dist 4 49 3"
$ns_ at 174.341155304020 "$god_ set-dist 4 19 3"
$ns_ at 174.341155304020 "$god_ set-dist 12 19 3"
$ns_ at 174.341155304020 "$god_ set-dist 19 27 3"
$ns_ at 174.341155304020 "$god_ set-dist 19 31 2"
$ns_ at 174.611914828085 "$god_ set-dist 5 19 3"
$ns_ at 174.611914828085 "$god_ set-dist 15 19 2"
$ns_ at 174.662157430537 "$node_(15) setdest 384.232673002499 431.862089549499 0.000000000000"
$ns_ at 174.782938235808 "$god_ set-dist 14 47 1"
$ns_ at 174.782938235808 "$god_ set-dist 32 47 2"
$ns_ at 174.782938235808 "$god_ set-dist 36 47 2"
$ns_ at 174.782938235808 "$god_ set-dist 43 47 2"
$ns_ at 175.791598577468 "$god_ set-dist 6 13 1"
$ns_ at 175.791598577468 "$god_ set-dist 6 34 2"
$ns_ at 175.791598577468 "$god_ set-dist 6 42 2"
$ns_ at 177.362958356627 "$god_ set-dist 2 14 1"
$ns_ at 177.362958356627 "$god_ set-dist 2 37 2"
$ns_ at 177.499203447250 "$god_ set-dist 24 47 2"
$ns_ at 177.499203447250 "$god_ set-dist 29 47 1"
$ns_ at 177.831096108356 "$god_ set-dist 13 40 1"
$ns_ at 177.831096108356 "$god_ set-dist 25 40 2"
$ns_ at 178.192503441103 "$god_ set-dist 2 47 1"
$ns_ at 178.248881550928 "$god_ set-dist 14 31 1"
$ns_ at 178.248881550928 "$god_ set-dist 31 36 2"
$ns_ at 178.248881550928 "$god_ set-dist 31 37 2"
$ns_ at 178.248881550928 "$god_ set-dist 31 43 2"
$ns_ at 178.331754103285 "$god_ set-dist 8 47 1"
$ns_ at 178.673793100410 "$god_ set-dist 10 29 2"
$ns_ at 178.673793100410 "$god_ set-dist 19 29 3"
$ns_ at 178.673793100410 "$god_ set-dist 20 29 3"
$ns_ at 178.673793100410 "$god_ set-dist 29 49 3"
$ns_ at 178.898191633488 "$god_ set-dist 28 40 2"
$ns_ at 178.898191633488 "$god_ set-dist 34 40 1"
$ns_ at 179.375768475403 "$god_ set-dist 29 36 2"
$ns_ at 179.375768475403 "$god_ set-dist 34 36 3"
$ns_ at 179.375768475403 "$god_ set-dist 36 42 3"
$ns_ at 179.737621173051 "$god_ set-dist 14 18 1"
$ns_ at 179.737621173051 "$god_ set-dist 18 32 2"
$ns_ at 179.737621173051 "$god_ set-dist 18 36 2"
$ns_ at 179.737621173051 "$god_ set-dist 18 43 2"
$ns_ at 179.964087251648 "$god_ set-dist 2 37 3"
$ns_ at 179.964087251648 "$god_ set-dist 3 37 3"
$ns_ at 179.964087251648 "$god_ set-dist 8 37 3"
$ns_ at 179.964087251648 "$god_ set-dist 14 37 2"
$ns_ at 179.964087251648 "$god_ set-dist 26 37 3"
$ns_ at 179.964087251648 "$god_ set-dist 31 37 3"
$ns_ at 179.964087251648 "$god_ set-dist 37 41 3"
$ns_ at 180.818532844612 "$god_ set-dist 6 14 1"
$ns_ at 181.334263140258 "$god_ set-dist 1 34 1"
$ns_ at 181.507165492019 "$god_ set-dist 4 45 3"
$ns_ at 181.507165492019 "$god_ set-dist 27 45 3"
$ns_ at 181.507165492019 "$god_ set-dist 31 45 2"
$ns_ at 181.698543310633 "$god_ set-dist 14 23 1"
$ns_ at 181.698543310633 "$god_ set-dist 23 32 2"
$ns_ at 181.698543310633 "$god_ set-dist 23 36 2"
$ns_ at 181.698543310633 "$god_ set-dist 23 43 2"
$ns_ at 181.885680800770 "$god_ set-dist 5 8 1"
$ns_ at 181.885680800770 "$god_ set-dist 5 19 2"
$ns_ at 181.885680800770 "$god_ set-dist 8 28 2"
$ns_ at 181.885680800770 "$god_ set-dist 8 37 2"
$ns_ at 183.257505292696 "$god_ set-dist 4 21 3"
$ns_ at 183.257505292696 "$god_ set-dist 21 27 3"
$ns_ at 183.257505292696 "$god_ set-dist 21 31 2"
$ns_ at 183.487913337908 "$god_ set-dist 7 29 3"
$ns_ at 183.487913337908 "$god_ set-dist 11 24 4"
$ns_ at 183.487913337908 "$god_ set-dist 11 29 3"
$ns_ at 183.487913337908 "$god_ set-dist 15 24 3"
$ns_ at 183.487913337908 "$god_ set-dist 15 29 2"
$ns_ at 183.487913337908 "$god_ set-dist 21 29 3"
$ns_ at 183.487913337908 "$god_ set-dist 29 45 3"
$ns_ at 183.665195296200 "$god_ set-dist 4 24 4"
$ns_ at 183.665195296200 "$god_ set-dist 12 24 4"
$ns_ at 183.665195296200 "$god_ set-dist 17 24 3"
$ns_ at 183.665195296200 "$god_ set-dist 24 29 2"
$ns_ at 183.665195296200 "$god_ set-dist 24 33 3"
$ns_ at 183.665195296200 "$god_ set-dist 24 47 3"
$ns_ at 183.665195296200 "$god_ set-dist 24 48 4"
$ns_ at 183.767740615781 "$god_ set-dist 10 25 2"
$ns_ at 183.767740615781 "$god_ set-dist 19 25 3"
$ns_ at 183.767740615781 "$god_ set-dist 20 25 3"
$ns_ at 183.767740615781 "$god_ set-dist 21 25 3"
$ns_ at 183.767740615781 "$god_ set-dist 25 49 3"
$ns_ at 183.937338305433 "$god_ set-dist 16 28 2"
$ns_ at 183.937338305433 "$god_ set-dist 16 34 1"
$ns_ at 184.009028089100 "$god_ set-dist 7 34 2"
$ns_ at 184.009028089100 "$god_ set-dist 15 34 1"
$ns_ at 184.009028089100 "$god_ set-dist 21 34 2"
$ns_ at 184.009028089100 "$god_ set-dist 34 45 2"
$ns_ at 184.406628863520 "$god_ set-dist 25 28 1"
$ns_ at 184.746351369855 "$god_ set-dist 4 7 3"
$ns_ at 184.746351369855 "$god_ set-dist 7 27 3"
$ns_ at 184.746351369855 "$god_ set-dist 7 31 2"
$ns_ at 184.905643552258 "$god_ set-dist 13 25 2"
$ns_ at 184.905643552258 "$god_ set-dist 25 40 3"
$ns_ at 184.935386679825 "$god_ set-dist 3 12 1"
$ns_ at 184.935386679825 "$god_ set-dist 10 12 2"
$ns_ at 184.935386679825 "$god_ set-dist 12 19 2"
$ns_ at 184.935386679825 "$god_ set-dist 12 35 2"
$ns_ at 184.935386679825 "$god_ set-dist 12 41 2"
$ns_ at 185.728355787199 "$god_ set-dist 28 31 2"
$ns_ at 185.728355787199 "$god_ set-dist 31 34 1"
$ns_ at 185.941282511797 "$god_ set-dist 4 24 3"
$ns_ at 185.941282511797 "$god_ set-dist 4 28 2"
$ns_ at 185.941282511797 "$god_ set-dist 4 34 1"
$ns_ at 185.941282511797 "$god_ set-dist 4 38 2"
$ns_ at 186.267162768635 "$god_ set-dist 4 24 4"
$ns_ at 186.267162768635 "$god_ set-dist 4 38 3"
$ns_ at 186.267162768635 "$god_ set-dist 24 34 3"
$ns_ at 186.267162768635 "$god_ set-dist 34 38 2"
$ns_ at 186.473954075593 "$god_ set-dist 4 28 3"
$ns_ at 186.473954075593 "$god_ set-dist 16 28 3"
$ns_ at 186.473954075593 "$god_ set-dist 28 31 3"
$ns_ at 186.473954075593 "$god_ set-dist 28 34 2"
$ns_ at 186.473954075593 "$god_ set-dist 28 40 3"
$ns_ at 187.323171686990 "$god_ set-dist 14 43 2"
$ns_ at 187.323171686990 "$god_ set-dist 18 43 3"
$ns_ at 187.323171686990 "$god_ set-dist 23 43 3"
$ns_ at 187.323171686990 "$god_ set-dist 30 43 3"
$ns_ at 187.323171686990 "$god_ set-dist 31 43 3"
$ns_ at 188.216399730729 "$god_ set-dist 28 40 2"
$ns_ at 188.216399730729 "$god_ set-dist 40 42 1"
$ns_ at 189.085957919100 "$god_ set-dist 4 6 3"
$ns_ at 189.085957919100 "$god_ set-dist 4 49 4"
$ns_ at 189.085957919100 "$god_ set-dist 6 27 3"
$ns_ at 189.085957919100 "$god_ set-dist 6 31 2"
$ns_ at 189.085957919100 "$god_ set-dist 27 49 4"
$ns_ at 189.085957919100 "$god_ set-dist 31 49 3"
$ns_ at 189.602491680998 "$god_ set-dist 4 43 4"
$ns_ at 189.602491680998 "$god_ set-dist 17 43 3"
$ns_ at 189.602491680998 "$god_ set-dist 29 43 2"
$ns_ at 189.602491680998 "$god_ set-dist 33 43 3"
$ns_ at 189.602491680998 "$god_ set-dist 34 43 3"
$ns_ at 189.602491680998 "$god_ set-dist 43 47 3"
$ns_ at 189.734728764422 "$god_ set-dist 2 25 3"
$ns_ at 189.734728764422 "$god_ set-dist 14 25 2"
$ns_ at 189.734728764422 "$god_ set-dist 25 31 3"
$ns_ at 190.141339359037 "$god_ set-dist 12 34 1"
$ns_ at 190.720328140889 "$god_ set-dist 18 29 1"
$ns_ at 191.762051935614 "$god_ set-dist 14 46 1"
$ns_ at 191.762051935614 "$god_ set-dist 38 46 2"
$ns_ at 193.383580283848 "$god_ set-dist 9 29 1"
$ns_ at 193.452390498180 "$god_ set-dist 34 48 1"
$ns_ at 194.063855172918 "$god_ set-dist 5 25 2"
$ns_ at 194.063855172918 "$god_ set-dist 23 25 3"
$ns_ at 194.063855172918 "$god_ set-dist 25 30 3"
$ns_ at 194.418558614073 "$god_ set-dist 0 29 3"
$ns_ at 194.418558614073 "$god_ set-dist 29 35 2"
$ns_ at 195.106681932065 "$god_ set-dist 3 25 3"
$ns_ at 195.106681932065 "$god_ set-dist 6 25 3"
$ns_ at 195.106681932065 "$god_ set-dist 8 25 3"
$ns_ at 195.106681932065 "$god_ set-dist 11 25 4"
$ns_ at 195.106681932065 "$god_ set-dist 15 25 3"
$ns_ at 195.106681932065 "$god_ set-dist 25 35 2"
$ns_ at 195.873208933487 "$god_ set-dist 14 40 1"
$ns_ at 195.873208933487 "$god_ set-dist 32 40 2"
$ns_ at 195.873208933487 "$god_ set-dist 36 40 2"
$ns_ at 196.625613778661 "$god_ set-dist 0 31 3"
$ns_ at 196.625613778661 "$god_ set-dist 20 31 3"
$ns_ at 196.625613778661 "$god_ set-dist 26 31 2"
$ns_ at 196.821658865686 "$node_(31) setdest 497.523247882453 489.928334407763 0.000000000000"
$ns_ at 197.823162115589 "$god_ set-dist 14 32 2"
$ns_ at 197.823162115589 "$god_ set-dist 18 32 3"
$ns_ at 197.823162115589 "$god_ set-dist 22 32 3"
$ns_ at 197.823162115589 "$god_ set-dist 23 32 3"
$ns_ at 197.823162115589 "$god_ set-dist 31 32 3"
$ns_ at 197.823162115589 "$god_ set-dist 32 33 3"
$ns_ at 197.823162115589 "$god_ set-dist 32 40 3"
$ns_ at 197.823162115589 "$god_ set-dist 32 47 3"
$ns_ at 197.996794491244 "$god_ set-dist 4 36 4"
$ns_ at 197.996794491244 "$god_ set-dist 14 36 2"
$ns_ at 197.996794491244 "$god_ set-dist 17 36 3"
$ns_ at 197.996794491244 "$god_ set-dist 18 36 3"
$ns_ at 197.996794491244 "$god_ set-dist 22 36 3"
$ns_ at 197.996794491244 "$god_ set-dist 23 36 3"
$ns_ at 197.996794491244 "$god_ set-dist 27 36 4"
$ns_ at 197.996794491244 "$god_ set-dist 30 36 3"
$ns_ at 197.996794491244 "$god_ set-dist 31 36 3"
$ns_ at 197.996794491244 "$god_ set-dist 33 36 3"
$ns_ at 197.996794491244 "$god_ set-dist 36 40 3"
$ns_ at 197.996794491244 "$god_ set-dist 36 47 3"
$ns_ at 198.435843250693 "$god_ set-dist 8 48 1"
$ns_ at 198.457253955759 "$node_(14) setdest 326.950409653524 358.834488400625 0.000000000000"
$ns_ at 198.656000384440 "$god_ set-dist 25 26 3"
$ns_ at 198.656000384440 "$god_ set-dist 25 32 2"
$ns_ at 199.016232773519 "$god_ set-dist 0 6 1"
$ns_ at 199.407077302853 "$god_ set-dist 3 34 1"
$ns_ at 199.407077302853 "$god_ set-dist 19 34 2"
#
# Destination Unreachables: 0
#
# Route Changes: 2881
#
# Link Changes: 1044
#
# Node | Route Changes | Link Changes
#    0 |           130 |           71
#    1 |            52 |           41
#    2 |            86 |           52
#    3 |            59 |           33
#    4 |           205 |           28
#    5 |           134 |           55
#    6 |            95 |           29
#    7 |           103 |           49
#    8 |            95 |           36
#    9 |           125 |           25
#   10 |            74 |           43
#   11 |            76 |           41
#   12 |           136 |           42
#   13 |            85 |           39
#   14 |           145 |           43
#   15 |           134 |           45
#   16 |            98 |           49
#   17 |           102 |           47
#   18 |            99 |           55
#   19 |           143 |           59
#   20 |           156 |           55
#   21 |           113 |           39
#   22 |            96 |           54
#   23 |            86 |           49
#   24 |           157 |           13
#   25 |           143 |           57
#   26 |            92 |           55
#   27 |           134 |           32
#   28 |           141 |           22
#   29 |           131 |           42
#   30 |            78 |           27
#   31 |           131 |           51
#   32 |            95 |           21
#   33 |            84 |           38
#   34 |           192 |           31
#   35 |            96 |           46
#   36 |           121 |           54
#   37 |           100 |           24
#   38 |           121 |           53
#   39 |            68 |           33
#   40 |           138 |           31
#   41 |           118 |           49
#   42 |           102 |           55
#   43 |           150 |           27
#   44 |           133 |           50
#   45 |            90 |           34
#   46 |            86 |           49
#   47 |           157 |           31
#   48 |           137 |           66
#   49 |           140 |           18



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
    exec nam dsdvpause_100.nam &
    exit 0
}
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns_ at $val(stop) "\$node_($i) reset"
}
$ns_ at $val(stop) "$ns_ nam-end-wireless $val(stop)"
$ns_ at $val(stop) "finish"
$ns_ at $val(stop) "puts \"done\" ; $ns_ halt"
$ns_ run


#
