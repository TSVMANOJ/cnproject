
set val(chan)   Channel/WirelessChannel    ;# channel type
set val(prop)   Propagation/TwoRayGround   ;# radio-propagation model
set val(netif)  Phy/WirelessPhy            ;# network interface type
set val(mac)    Mac/802_11                 ;# MAC type
set val(ifq)    Queue/DropTail/PriQueue ;# interface queue type
set val(ll)     LL                         ;# link layer type
set val(ant)    Antenna/OmniAntenna        ;# antenna model
set val(ifqlen) 50                         ;# max packet in ifq
set val(nn)     50                         ;# number of mobilenodes
set val(rp)     AODV                       ;# routing protocol
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
set tracefile [open aodvpause_50.tr w]
$ns_ trace-all $tracefile
#$ns use-newtrace
#Open the NAM trace file
set namfile [open aodvpause_50.nam w]
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






#
# nodes: 50, pause: 50.00, max speed: 20.00, max x: 670.00, max y: 670.00
#
$node_(0) set X_ 247.808979988161
$node_(0) set Y_ 65.024598700720
$node_(0) set Z_ 0.000000000000
$node_(1) set X_ 602.425930834048
$node_(1) set Y_ 136.977135038759
$node_(1) set Z_ 0.000000000000
$node_(2) set X_ 198.507024866869
$node_(2) set Y_ 297.293522038276
$node_(2) set Z_ 0.000000000000
$node_(3) set X_ 292.003292536057
$node_(3) set Y_ 21.011680800102
$node_(3) set Z_ 0.000000000000
$node_(4) set X_ 336.637195842466
$node_(4) set Y_ 193.167945048523
$node_(4) set Z_ 0.000000000000
$node_(5) set X_ 359.910752044860
$node_(5) set Y_ 418.374926134009
$node_(5) set Z_ 0.000000000000
$node_(6) set X_ 494.828188499497
$node_(6) set Y_ 176.849072090026
$node_(6) set Z_ 0.000000000000
$node_(7) set X_ 322.617729025541
$node_(7) set Y_ 550.882417611671
$node_(7) set Z_ 0.000000000000
$node_(8) set X_ 638.652439524817
$node_(8) set Y_ 302.535368901993
$node_(8) set Z_ 0.000000000000
$node_(9) set X_ 639.043518011703
$node_(9) set Y_ 546.053230420005
$node_(9) set Z_ 0.000000000000
$node_(10) set X_ 143.410950987478
$node_(10) set Y_ 518.769954003894
$node_(10) set Z_ 0.000000000000
$node_(11) set X_ 613.551865119671
$node_(11) set Y_ 416.620854876735
$node_(11) set Z_ 0.000000000000
$node_(12) set X_ 365.779419364901
$node_(12) set Y_ 131.009564041158
$node_(12) set Z_ 0.000000000000
$node_(13) set X_ 574.299048379576
$node_(13) set Y_ 504.538027856944
$node_(13) set Z_ 0.000000000000
$node_(14) set X_ 550.799198918099
$node_(14) set Y_ 554.984732066939
$node_(14) set Z_ 0.000000000000
$node_(15) set X_ 127.669221075531
$node_(15) set Y_ 91.133330065229
$node_(15) set Z_ 0.000000000000
$node_(16) set X_ 67.515080166780
$node_(16) set Y_ 557.380390880891
$node_(16) set Z_ 0.000000000000
$node_(17) set X_ 77.954788486146
$node_(17) set Y_ 187.344356984279
$node_(17) set Z_ 0.000000000000
$node_(18) set X_ 261.875616102509
$node_(18) set Y_ 196.059388942167
$node_(18) set Z_ 0.000000000000
$node_(19) set X_ 26.308686947964
$node_(19) set Y_ 208.809431272643
$node_(19) set Z_ 0.000000000000
$node_(20) set X_ 467.756594238657
$node_(20) set Y_ 339.205858249874
$node_(20) set Z_ 0.000000000000
$node_(21) set X_ 77.771907659843
$node_(21) set Y_ 483.560274900062
$node_(21) set Z_ 0.000000000000
$node_(22) set X_ 128.097218795265
$node_(22) set Y_ 463.605852997866
$node_(22) set Z_ 0.000000000000
$node_(23) set X_ 657.964114816053
$node_(23) set Y_ 664.533511724549
$node_(23) set Z_ 0.000000000000
$node_(24) set X_ 399.729035802567
$node_(24) set Y_ 599.795798614511
$node_(24) set Z_ 0.000000000000
$node_(25) set X_ 172.226303262420
$node_(25) set Y_ 608.256113807967
$node_(25) set Z_ 0.000000000000
$node_(26) set X_ 210.447049241743
$node_(26) set Y_ 4.701615562182
$node_(26) set Z_ 0.000000000000
$node_(27) set X_ 98.897050202495
$node_(27) set Y_ 247.850228592951
$node_(27) set Z_ 0.000000000000
$node_(28) set X_ 215.683002868217
$node_(28) set Y_ 133.499181754382
$node_(28) set Z_ 0.000000000000
$node_(29) set X_ 625.052828812271
$node_(29) set Y_ 251.081266187807
$node_(29) set Z_ 0.000000000000
$node_(30) set X_ 593.014294304180
$node_(30) set Y_ 363.179064856667
$node_(30) set Z_ 0.000000000000
$node_(31) set X_ 533.247944723250
$node_(31) set Y_ 219.395755590945
$node_(31) set Z_ 0.000000000000
$node_(32) set X_ 197.462537249599
$node_(32) set Y_ 664.857648976704
$node_(32) set Z_ 0.000000000000
$node_(33) set X_ 451.043683226939
$node_(33) set Y_ 417.460768477023
$node_(33) set Z_ 0.000000000000
$node_(34) set X_ 545.189023322733
$node_(34) set Y_ 618.070629026902
$node_(34) set Z_ 0.000000000000
$node_(35) set X_ 507.708619756949
$node_(35) set Y_ 334.205329607872
$node_(35) set Z_ 0.000000000000
$node_(36) set X_ 3.771697106891
$node_(36) set Y_ 104.350506527094
$node_(36) set Z_ 0.000000000000
$node_(37) set X_ 548.778460625540
$node_(37) set Y_ 157.572673700078
$node_(37) set Z_ 0.000000000000
$node_(38) set X_ 588.122100890474
$node_(38) set Y_ 252.797111429227
$node_(38) set Z_ 0.000000000000
$node_(39) set X_ 81.170957738897
$node_(39) set Y_ 109.056436329554
$node_(39) set Z_ 0.000000000000
$node_(40) set X_ 178.708638346614
$node_(40) set Y_ 463.099716455848
$node_(40) set Z_ 0.000000000000
$node_(41) set X_ 215.393604485288
$node_(41) set Y_ 500.390310765054
$node_(41) set Z_ 0.000000000000
$node_(42) set X_ 144.362218817077
$node_(42) set Y_ 42.647683927957
$node_(42) set Z_ 0.000000000000
$node_(43) set X_ 417.184761928960
$node_(43) set Y_ 403.931325475619
$node_(43) set Z_ 0.000000000000
$node_(44) set X_ 511.039598250351
$node_(44) set Y_ 384.318219164431
$node_(44) set Z_ 0.000000000000
$node_(45) set X_ 644.829372229173
$node_(45) set Y_ 545.213402929806
$node_(45) set Z_ 0.000000000000
$node_(46) set X_ 315.981877123525
$node_(46) set Y_ 547.335380012113
$node_(46) set Z_ 0.000000000000
$node_(47) set X_ 593.041973238050
$node_(47) set Y_ 186.809907382461
$node_(47) set Z_ 0.000000000000
$node_(48) set X_ 155.993654426811
$node_(48) set Y_ 85.594310731072
$node_(48) set Z_ 0.000000000000
$node_(49) set X_ 123.518199664956
$node_(49) set Y_ 292.192232579921
$node_(49) set Z_ 0.000000000000
$god_ set-dist 0 1 2
$god_ set-dist 0 2 1
$god_ set-dist 0 3 1
$god_ set-dist 0 4 1
$god_ set-dist 0 5 2
$god_ set-dist 0 6 2
$god_ set-dist 0 7 3
$god_ set-dist 0 8 3
$god_ set-dist 0 9 3
$god_ set-dist 0 10 2
$god_ set-dist 0 11 3
$god_ set-dist 0 12 1
$god_ set-dist 0 13 3
$god_ set-dist 0 14 3
$god_ set-dist 0 15 1
$god_ set-dist 0 16 3
$god_ set-dist 0 17 1
$god_ set-dist 0 18 1
$god_ set-dist 0 19 2
$god_ set-dist 0 20 2
$god_ set-dist 0 21 2
$god_ set-dist 0 22 2
$god_ set-dist 0 23 4
$god_ set-dist 0 24 3
$god_ set-dist 0 25 3
$god_ set-dist 0 26 1
$god_ set-dist 0 27 1
$god_ set-dist 0 28 1
$god_ set-dist 0 29 3
$god_ set-dist 0 30 3
$god_ set-dist 0 31 2
$god_ set-dist 0 32 3
$god_ set-dist 0 33 3
$god_ set-dist 0 34 3
$god_ set-dist 0 35 2
$god_ set-dist 0 36 1
$god_ set-dist 0 37 2
$god_ set-dist 0 38 3
$god_ set-dist 0 39 1
$god_ set-dist 0 40 2
$god_ set-dist 0 41 2
$god_ set-dist 0 42 1
$god_ set-dist 0 43 2
$god_ set-dist 0 44 3
$god_ set-dist 0 45 4
$god_ set-dist 0 46 3
$god_ set-dist 0 47 2
$god_ set-dist 0 48 1
$god_ set-dist 0 49 2
$god_ set-dist 1 2 2
$god_ set-dist 1 3 2
$god_ set-dist 1 4 2
$god_ set-dist 1 5 2
$god_ set-dist 1 6 1
$god_ set-dist 1 7 3
$god_ set-dist 1 8 1
$god_ set-dist 1 9 2
$god_ set-dist 1 10 3
$god_ set-dist 1 11 2
$god_ set-dist 1 12 1
$god_ set-dist 1 13 2
$god_ set-dist 1 14 2
$god_ set-dist 1 15 2
$god_ set-dist 1 16 4
$god_ set-dist 1 17 3
$god_ set-dist 1 18 2
$god_ set-dist 1 19 3
$god_ set-dist 1 20 1
$god_ set-dist 1 21 3
$god_ set-dist 1 22 3
$god_ set-dist 1 23 3
$god_ set-dist 1 24 3
$god_ set-dist 1 25 4
$god_ set-dist 1 26 2
$god_ set-dist 1 27 3
$god_ set-dist 1 28 2
$god_ set-dist 1 29 1
$god_ set-dist 1 30 1
$god_ set-dist 1 31 1
$god_ set-dist 1 32 4
$god_ set-dist 1 33 2
$god_ set-dist 1 34 3
$god_ set-dist 1 35 1
$god_ set-dist 1 36 3
$god_ set-dist 1 37 1
$god_ set-dist 1 38 1
$god_ set-dist 1 39 3
$god_ set-dist 1 40 3
$god_ set-dist 1 41 3
$god_ set-dist 1 42 2
$god_ set-dist 1 43 2
$god_ set-dist 1 44 2
$god_ set-dist 1 45 2
$god_ set-dist 1 46 3
$god_ set-dist 1 47 1
$god_ set-dist 1 48 2
$god_ set-dist 1 49 3
$god_ set-dist 2 3 2
$god_ set-dist 2 4 1
$god_ set-dist 2 5 1
$god_ set-dist 2 6 2
$god_ set-dist 2 7 2
$god_ set-dist 2 8 2
$god_ set-dist 2 9 3
$god_ set-dist 2 10 1
$god_ set-dist 2 11 2
$god_ set-dist 2 12 1
$god_ set-dist 2 13 2
$god_ set-dist 2 14 2
$god_ set-dist 2 15 1
$god_ set-dist 2 16 2
$god_ set-dist 2 17 1
$god_ set-dist 2 18 1
$god_ set-dist 2 19 1
$god_ set-dist 2 20 2
$god_ set-dist 2 21 1
$god_ set-dist 2 22 1
$god_ set-dist 2 23 3
$god_ set-dist 2 24 2
$god_ set-dist 2 25 2
$god_ set-dist 2 26 2
$god_ set-dist 2 27 1
$god_ set-dist 2 28 1
$god_ set-dist 2 29 3
$god_ set-dist 2 30 2
$god_ set-dist 2 31 2
$god_ set-dist 2 32 2
$god_ set-dist 2 33 2
$god_ set-dist 2 34 2
$god_ set-dist 2 35 2
$god_ set-dist 2 36 2
$god_ set-dist 2 37 2
$god_ set-dist 2 38 2
$god_ set-dist 2 39 1
$god_ set-dist 2 40 1
$god_ set-dist 2 41 1
$god_ set-dist 2 42 2
$god_ set-dist 2 43 1
$god_ set-dist 2 44 2
$god_ set-dist 2 45 3
$god_ set-dist 2 46 2
$god_ set-dist 2 47 2
$god_ set-dist 2 48 1
$god_ set-dist 2 49 1
$god_ set-dist 3 4 1
$god_ set-dist 3 5 2
$god_ set-dist 3 6 2
$god_ set-dist 3 7 3
$god_ set-dist 3 8 3
$god_ set-dist 3 9 3
$god_ set-dist 3 10 3
$god_ set-dist 3 11 3
$god_ set-dist 3 12 1
$god_ set-dist 3 13 3
$god_ set-dist 3 14 3
$god_ set-dist 3 15 1
$god_ set-dist 3 16 4
$god_ set-dist 3 17 2
$god_ set-dist 3 18 1
$god_ set-dist 3 19 2
$god_ set-dist 3 20 2
$god_ set-dist 3 21 3
$god_ set-dist 3 22 3
$god_ set-dist 3 23 4
$god_ set-dist 3 24 3
$god_ set-dist 3 25 4
$god_ set-dist 3 26 1
$god_ set-dist 3 27 2
$god_ set-dist 3 28 1
$god_ set-dist 3 29 3
$god_ set-dist 3 30 3
$god_ set-dist 3 31 2
$god_ set-dist 3 32 4
$god_ set-dist 3 33 3
$god_ set-dist 3 34 3
$god_ set-dist 3 35 2
$god_ set-dist 3 36 2
$god_ set-dist 3 37 2
$god_ set-dist 3 38 3
$god_ set-dist 3 39 1
$god_ set-dist 3 40 3
$god_ set-dist 3 41 3
$god_ set-dist 3 42 1
$god_ set-dist 3 43 2
$god_ set-dist 3 44 3
$god_ set-dist 3 45 4
$god_ set-dist 3 46 3
$god_ set-dist 3 47 2
$god_ set-dist 3 48 1
$god_ set-dist 3 49 2
$god_ set-dist 4 5 1
$god_ set-dist 4 6 1
$god_ set-dist 4 7 2
$god_ set-dist 4 8 2
$god_ set-dist 4 9 2
$god_ set-dist 4 10 2
$god_ set-dist 4 11 2
$god_ set-dist 4 12 1
$god_ set-dist 4 13 2
$god_ set-dist 4 14 2
$god_ set-dist 4 15 1
$god_ set-dist 4 16 3
$god_ set-dist 4 17 2
$god_ set-dist 4 18 1
$god_ set-dist 4 19 2
$god_ set-dist 4 20 1
$god_ set-dist 4 21 2
$god_ set-dist 4 22 2
$god_ set-dist 4 23 3
$god_ set-dist 4 24 2
$god_ set-dist 4 25 3
$god_ set-dist 4 26 1
$god_ set-dist 4 27 1
$god_ set-dist 4 28 1
$god_ set-dist 4 29 2
$god_ set-dist 4 30 2
$god_ set-dist 4 31 1
$god_ set-dist 4 32 3
$god_ set-dist 4 33 2
$god_ set-dist 4 34 2
$god_ set-dist 4 35 1
$god_ set-dist 4 36 2
$god_ set-dist 4 37 1
$god_ set-dist 4 38 2
$god_ set-dist 4 39 2
$god_ set-dist 4 40 2
$god_ set-dist 4 41 2
$god_ set-dist 4 42 1
$god_ set-dist 4 43 1
$god_ set-dist 4 44 2
$god_ set-dist 4 45 3
$god_ set-dist 4 46 2
$god_ set-dist 4 47 2
$god_ set-dist 4 48 1
$god_ set-dist 4 49 1
$god_ set-dist 5 6 2
$god_ set-dist 5 7 1
$god_ set-dist 5 8 2
$god_ set-dist 5 9 2
$god_ set-dist 5 10 1
$god_ set-dist 5 11 2
$god_ set-dist 5 12 2
$god_ set-dist 5 13 1
$god_ set-dist 5 14 1
$god_ set-dist 5 15 2
$god_ set-dist 5 16 2
$god_ set-dist 5 17 2
$god_ set-dist 5 18 1
$god_ set-dist 5 19 2
$god_ set-dist 5 20 1
$god_ set-dist 5 21 2
$god_ set-dist 5 22 1
$god_ set-dist 5 23 2
$god_ set-dist 5 24 1
$god_ set-dist 5 25 2
$god_ set-dist 5 26 2
$god_ set-dist 5 27 2
$god_ set-dist 5 28 2
$god_ set-dist 5 29 2
$god_ set-dist 5 30 1
$god_ set-dist 5 31 2
$god_ set-dist 5 32 2
$god_ set-dist 5 33 1
$god_ set-dist 5 34 2
$god_ set-dist 5 35 1
$god_ set-dist 5 36 3
$god_ set-dist 5 37 2
$god_ set-dist 5 38 2
$god_ set-dist 5 39 2
$god_ set-dist 5 40 1
$god_ set-dist 5 41 1
$god_ set-dist 5 42 2
$god_ set-dist 5 43 1
$god_ set-dist 5 44 1
$god_ set-dist 5 45 2
$god_ set-dist 5 46 1
$god_ set-dist 5 47 2
$god_ set-dist 5 48 2
$god_ set-dist 5 49 2
$god_ set-dist 6 7 2
$god_ set-dist 6 8 1
$god_ set-dist 6 9 2
$god_ set-dist 6 10 3
$god_ set-dist 6 11 2
$god_ set-dist 6 12 1
$god_ set-dist 6 13 2
$god_ set-dist 6 14 2
$god_ set-dist 6 15 2
$god_ set-dist 6 16 3
$god_ set-dist 6 17 2
$god_ set-dist 6 18 1
$god_ set-dist 6 19 2
$god_ set-dist 6 20 1
$god_ set-dist 6 21 3
$god_ set-dist 6 22 3
$god_ set-dist 6 23 3
$god_ set-dist 6 24 2
$god_ set-dist 6 25 3
$god_ set-dist 6 26 2
$god_ set-dist 6 27 2
$god_ set-dist 6 28 2
$god_ set-dist 6 29 1
$god_ set-dist 6 30 1
$god_ set-dist 6 31 1
$god_ set-dist 6 32 3
$god_ set-dist 6 33 1
$god_ set-dist 6 34 2
$god_ set-dist 6 35 1
$god_ set-dist 6 36 3
$god_ set-dist 6 37 1
$god_ set-dist 6 38 1
$god_ set-dist 6 39 2
$god_ set-dist 6 40 2
$god_ set-dist 6 41 2
$god_ set-dist 6 42 2
$god_ set-dist 6 43 1
$god_ set-dist 6 44 1
$god_ set-dist 6 45 2
$god_ set-dist 6 46 2
$god_ set-dist 6 47 1
$god_ set-dist 6 48 2
$god_ set-dist 6 49 2
$god_ set-dist 7 8 2
$god_ set-dist 7 9 2
$god_ set-dist 7 10 1
$god_ set-dist 7 11 2
$god_ set-dist 7 12 3
$god_ set-dist 7 13 2
$god_ set-dist 7 14 1
$god_ set-dist 7 15 3
$god_ set-dist 7 16 2
$god_ set-dist 7 17 3
$god_ set-dist 7 18 2
$god_ set-dist 7 19 3
$god_ set-dist 7 20 2
$god_ set-dist 7 21 2
$god_ set-dist 7 22 1
$god_ set-dist 7 23 2
$god_ set-dist 7 24 1
$god_ set-dist 7 25 1
$god_ set-dist 7 26 3
$god_ set-dist 7 27 2
$god_ set-dist 7 28 3
$god_ set-dist 7 29 2
$god_ set-dist 7 30 2
$god_ set-dist 7 31 2
$god_ set-dist 7 32 1
$god_ set-dist 7 33 1
$god_ set-dist 7 34 1
$god_ set-dist 7 35 2
$god_ set-dist 7 36 3
$god_ set-dist 7 37 3
$god_ set-dist 7 38 2
$god_ set-dist 7 39 3
$god_ set-dist 7 40 1
$god_ set-dist 7 41 1
$god_ set-dist 7 42 3
$god_ set-dist 7 43 1
$god_ set-dist 7 44 2
$god_ set-dist 7 45 2
$god_ set-dist 7 46 1
$god_ set-dist 7 47 3
$god_ set-dist 7 48 3
$god_ set-dist 7 49 2
$god_ set-dist 8 9 1
$god_ set-dist 8 10 3
$god_ set-dist 8 11 1
$god_ set-dist 8 12 2
$god_ set-dist 8 13 1
$god_ set-dist 8 14 2
$god_ set-dist 8 15 3
$god_ set-dist 8 16 3
$god_ set-dist 8 17 3
$god_ set-dist 8 18 2
$god_ set-dist 8 19 3
$god_ set-dist 8 20 1
$god_ set-dist 8 21 3
$god_ set-dist 8 22 3
$god_ set-dist 8 23 2
$god_ set-dist 8 24 2
$god_ set-dist 8 25 3
$god_ set-dist 8 26 3
$god_ set-dist 8 27 3
$god_ set-dist 8 28 3
$god_ set-dist 8 29 1
$god_ set-dist 8 30 1
$god_ set-dist 8 31 1
$god_ set-dist 8 32 3
$god_ set-dist 8 33 1
$god_ set-dist 8 34 2
$god_ set-dist 8 35 1
$god_ set-dist 8 36 4
$god_ set-dist 8 37 1
$god_ set-dist 8 38 1
$god_ set-dist 8 39 3
$god_ set-dist 8 40 2
$god_ set-dist 8 41 2
$god_ set-dist 8 42 3
$god_ set-dist 8 43 1
$god_ set-dist 8 44 1
$god_ set-dist 8 45 1
$god_ set-dist 8 46 2
$god_ set-dist 8 47 1
$god_ set-dist 8 48 3
$god_ set-dist 8 49 3
$god_ set-dist 9 10 3
$god_ set-dist 9 11 1
$god_ set-dist 9 12 2
$god_ set-dist 9 13 1
$god_ set-dist 9 14 1
$god_ set-dist 9 15 3
$god_ set-dist 9 16 3
$god_ set-dist 9 17 4
$god_ set-dist 9 18 3
$god_ set-dist 9 19 4
$god_ set-dist 9 20 2
$god_ set-dist 9 21 3
$god_ set-dist 9 22 3
$god_ set-dist 9 23 1
$god_ set-dist 9 24 1
$god_ set-dist 9 25 2
$god_ set-dist 9 26 3
$god_ set-dist 9 27 3
$god_ set-dist 9 28 3
$god_ set-dist 9 29 2
$god_ set-dist 9 30 1
$god_ set-dist 9 31 2
$god_ set-dist 9 32 2
$god_ set-dist 9 33 1
$god_ set-dist 9 34 1
$god_ set-dist 9 35 1
$god_ set-dist 9 36 4
$god_ set-dist 9 37 2
$god_ set-dist 9 38 2
$god_ set-dist 9 39 4
$god_ set-dist 9 40 3
$god_ set-dist 9 41 2
$god_ set-dist 9 42 3
$god_ set-dist 9 43 2
$god_ set-dist 9 44 1
$god_ set-dist 9 45 1
$god_ set-dist 9 46 2
$god_ set-dist 9 47 2
$god_ set-dist 9 48 3
$god_ set-dist 9 49 3
$god_ set-dist 10 11 3
$god_ set-dist 10 12 2
$god_ set-dist 10 13 2
$god_ set-dist 10 14 2
$god_ set-dist 10 15 2
$god_ set-dist 10 16 1
$god_ set-dist 10 17 2
$god_ set-dist 10 18 2
$god_ set-dist 10 19 2
$god_ set-dist 10 20 2
$god_ set-dist 10 21 1
$god_ set-dist 10 22 1
$god_ set-dist 10 23 3
$god_ set-dist 10 24 2
$god_ set-dist 10 25 1
$god_ set-dist 10 26 3
$god_ set-dist 10 27 2
$god_ set-dist 10 28 2
$god_ set-dist 10 29 3
$god_ set-dist 10 30 2
$god_ set-dist 10 31 3
$god_ set-dist 10 32 1
$god_ set-dist 10 33 2
$god_ set-dist 10 34 2
$god_ set-dist 10 35 2
$god_ set-dist 10 36 2
$god_ set-dist 10 37 3
$god_ set-dist 10 38 3
$god_ set-dist 10 39 2
$god_ set-dist 10 40 1
$god_ set-dist 10 41 1
$god_ set-dist 10 42 3
$god_ set-dist 10 43 2
$god_ set-dist 10 44 2
$god_ set-dist 10 45 3
$god_ set-dist 10 46 1
$god_ set-dist 10 47 3
$god_ set-dist 10 48 2
$god_ set-dist 10 49 1
$god_ set-dist 11 12 2
$god_ set-dist 11 13 1
$god_ set-dist 11 14 1
$god_ set-dist 11 15 3
$god_ set-dist 11 16 3
$god_ set-dist 11 17 3
$god_ set-dist 11 18 3
$god_ set-dist 11 19 3
$god_ set-dist 11 20 1
$god_ set-dist 11 21 3
$god_ set-dist 11 22 3
$god_ set-dist 11 23 2
$god_ set-dist 11 24 2
$god_ set-dist 11 25 3
$god_ set-dist 11 26 3
$god_ set-dist 11 27 3
$god_ set-dist 11 28 3
$god_ set-dist 11 29 1
$god_ set-dist 11 30 1
$god_ set-dist 11 31 1
$god_ set-dist 11 32 3
$god_ set-dist 11 33 1
$god_ set-dist 11 34 1
$god_ set-dist 11 35 1
$god_ set-dist 11 36 4
$god_ set-dist 11 37 2
$god_ set-dist 11 38 1
$god_ set-dist 11 39 3
$god_ set-dist 11 40 2
$god_ set-dist 11 41 2
$god_ set-dist 11 42 3
$god_ set-dist 11 43 1
$god_ set-dist 11 44 1
$god_ set-dist 11 45 1
$god_ set-dist 11 46 2
$god_ set-dist 11 47 1
$god_ set-dist 11 48 3
$god_ set-dist 11 49 3
$god_ set-dist 12 13 2
$god_ set-dist 12 14 2
$god_ set-dist 12 15 1
$god_ set-dist 12 16 3
$god_ set-dist 12 17 2
$god_ set-dist 12 18 1
$god_ set-dist 12 19 2
$god_ set-dist 12 20 1
$god_ set-dist 12 21 2
$god_ set-dist 12 22 2
$god_ set-dist 12 23 3
$god_ set-dist 12 24 3
$god_ set-dist 12 25 3
$god_ set-dist 12 26 1
$god_ set-dist 12 27 2
$god_ set-dist 12 28 1
$god_ set-dist 12 29 2
$god_ set-dist 12 30 2
$god_ set-dist 12 31 1
$god_ set-dist 12 32 3
$god_ set-dist 12 33 2
$god_ set-dist 12 34 3
$god_ set-dist 12 35 1
$god_ set-dist 12 36 2
$god_ set-dist 12 37 1
$god_ set-dist 12 38 2
$god_ set-dist 12 39 2
$god_ set-dist 12 40 2
$god_ set-dist 12 41 2
$god_ set-dist 12 42 1
$god_ set-dist 12 43 2
$god_ set-dist 12 44 2
$god_ set-dist 12 45 3
$god_ set-dist 12 46 3
$god_ set-dist 12 47 1
$god_ set-dist 12 48 1
$god_ set-dist 12 49 2
$god_ set-dist 13 14 1
$god_ set-dist 13 15 3
$god_ set-dist 13 16 3
$god_ set-dist 13 17 3
$god_ set-dist 13 18 2
$god_ set-dist 13 19 3
$god_ set-dist 13 20 1
$god_ set-dist 13 21 3
$god_ set-dist 13 22 2
$god_ set-dist 13 23 1
$god_ set-dist 13 24 1
$god_ set-dist 13 25 2
$god_ set-dist 13 26 3
$god_ set-dist 13 27 3
$god_ set-dist 13 28 3
$god_ set-dist 13 29 2
$god_ set-dist 13 30 1
$god_ set-dist 13 31 2
$god_ set-dist 13 32 2
$god_ set-dist 13 33 1
$god_ set-dist 13 34 1
$god_ set-dist 13 35 1
$god_ set-dist 13 36 4
$god_ set-dist 13 37 2
$god_ set-dist 13 38 2
$god_ set-dist 13 39 3
$god_ set-dist 13 40 2
$god_ set-dist 13 41 2
$god_ set-dist 13 42 3
$god_ set-dist 13 43 1
$god_ set-dist 13 44 1
$god_ set-dist 13 45 1
$god_ set-dist 13 46 2
$god_ set-dist 13 47 2
$god_ set-dist 13 48 3
$god_ set-dist 13 49 3
$god_ set-dist 14 15 3
$god_ set-dist 14 16 2
$god_ set-dist 14 17 3
$god_ set-dist 14 18 2
$god_ set-dist 14 19 3
$god_ set-dist 14 20 1
$god_ set-dist 14 21 2
$god_ set-dist 14 22 2
$god_ set-dist 14 23 1
$god_ set-dist 14 24 1
$god_ set-dist 14 25 2
$god_ set-dist 14 26 3
$god_ set-dist 14 27 3
$god_ set-dist 14 28 3
$god_ set-dist 14 29 2
$god_ set-dist 14 30 1
$god_ set-dist 14 31 2
$god_ set-dist 14 32 2
$god_ set-dist 14 33 1
$god_ set-dist 14 34 1
$god_ set-dist 14 35 1
$god_ set-dist 14 36 4
$god_ set-dist 14 37 2
$god_ set-dist 14 38 2
$god_ set-dist 14 39 3
$god_ set-dist 14 40 2
$god_ set-dist 14 41 2
$god_ set-dist 14 42 3
$god_ set-dist 14 43 1
$god_ set-dist 14 44 1
$god_ set-dist 14 45 1
$god_ set-dist 14 46 1
$god_ set-dist 14 47 2
$god_ set-dist 14 48 3
$god_ set-dist 14 49 3
$god_ set-dist 15 16 3
$god_ set-dist 15 17 1
$god_ set-dist 15 18 1
$god_ set-dist 15 19 1
$god_ set-dist 15 20 2
$god_ set-dist 15 21 2
$god_ set-dist 15 22 2
$god_ set-dist 15 23 4
$god_ set-dist 15 24 3
$god_ set-dist 15 25 3
$god_ set-dist 15 26 1
$god_ set-dist 15 27 1
$god_ set-dist 15 28 1
$god_ set-dist 15 29 3
$god_ set-dist 15 30 3
$god_ set-dist 15 31 2
$god_ set-dist 15 32 3
$god_ set-dist 15 33 3
$god_ set-dist 15 34 3
$god_ set-dist 15 35 2
$god_ set-dist 15 36 1
$god_ set-dist 15 37 2
$god_ set-dist 15 38 3
$god_ set-dist 15 39 1
$god_ set-dist 15 40 2
$god_ set-dist 15 41 2
$god_ set-dist 15 42 1
$god_ set-dist 15 43 2
$god_ set-dist 15 44 3
$god_ set-dist 15 45 4
$god_ set-dist 15 46 3
$god_ set-dist 15 47 2
$god_ set-dist 15 48 1
$god_ set-dist 15 49 1
$god_ set-dist 16 17 3
$god_ set-dist 16 18 3
$god_ set-dist 16 19 3
$god_ set-dist 16 20 3
$god_ set-dist 16 21 1
$god_ set-dist 16 22 1
$god_ set-dist 16 23 3
$god_ set-dist 16 24 2
$god_ set-dist 16 25 1
$god_ set-dist 16 26 4
$god_ set-dist 16 27 2
$god_ set-dist 16 28 3
$god_ set-dist 16 29 3
$god_ set-dist 16 30 3
$god_ set-dist 16 31 3
$god_ set-dist 16 32 1
$god_ set-dist 16 33 2
$god_ set-dist 16 34 2
$god_ set-dist 16 35 3
$god_ set-dist 16 36 3
$god_ set-dist 16 37 4
$god_ set-dist 16 38 3
$god_ set-dist 16 39 3
$god_ set-dist 16 40 1
$god_ set-dist 16 41 1
$god_ set-dist 16 42 3
$god_ set-dist 16 43 2
$god_ set-dist 16 44 3
$god_ set-dist 16 45 3
$god_ set-dist 16 46 1
$god_ set-dist 16 47 4
$god_ set-dist 16 48 3
$god_ set-dist 16 49 2
$god_ set-dist 17 18 1
$god_ set-dist 17 19 1
$god_ set-dist 17 20 3
$god_ set-dist 17 21 2
$god_ set-dist 17 22 2
$god_ set-dist 17 23 4
$god_ set-dist 17 24 3
$god_ set-dist 17 25 3
$god_ set-dist 17 26 1
$god_ set-dist 17 27 1
$god_ set-dist 17 28 1
$god_ set-dist 17 29 3
$god_ set-dist 17 30 3
$god_ set-dist 17 31 3
$god_ set-dist 17 32 3
$god_ set-dist 17 33 3
$god_ set-dist 17 34 3
$god_ set-dist 17 35 3
$god_ set-dist 17 36 1
$god_ set-dist 17 37 3
$god_ set-dist 17 38 3
$god_ set-dist 17 39 1
$god_ set-dist 17 40 2
$god_ set-dist 17 41 2
$god_ set-dist 17 42 1
$god_ set-dist 17 43 2
$god_ set-dist 17 44 3
$god_ set-dist 17 45 4
$god_ set-dist 17 46 3
$god_ set-dist 17 47 3
$god_ set-dist 17 48 1
$god_ set-dist 17 49 1
$god_ set-dist 18 19 1
$god_ set-dist 18 20 2
$god_ set-dist 18 21 2
$god_ set-dist 18 22 2
$god_ set-dist 18 23 3
$god_ set-dist 18 24 2
$god_ set-dist 18 25 3
$god_ set-dist 18 26 1
$god_ set-dist 18 27 1
$god_ set-dist 18 28 1
$god_ set-dist 18 29 2
$god_ set-dist 18 30 2
$god_ set-dist 18 31 2
$god_ set-dist 18 32 3
$god_ set-dist 18 33 2
$god_ set-dist 18 34 3
$god_ set-dist 18 35 2
$god_ set-dist 18 36 2
$god_ set-dist 18 37 2
$god_ set-dist 18 38 2
$god_ set-dist 18 39 1
$god_ set-dist 18 40 2
$god_ set-dist 18 41 2
$god_ set-dist 18 42 1
$god_ set-dist 18 43 2
$god_ set-dist 18 44 2
$god_ set-dist 18 45 3
$god_ set-dist 18 46 2
$god_ set-dist 18 47 2
$god_ set-dist 18 48 1
$god_ set-dist 18 49 1
$god_ set-dist 19 20 3
$god_ set-dist 19 21 2
$god_ set-dist 19 22 2
$god_ set-dist 19 23 4
$god_ set-dist 19 24 3
$god_ set-dist 19 25 3
$god_ set-dist 19 26 2
$god_ set-dist 19 27 1
$god_ set-dist 19 28 1
$god_ set-dist 19 29 3
$god_ set-dist 19 30 3
$god_ set-dist 19 31 3
$god_ set-dist 19 32 3
$god_ set-dist 19 33 3
$god_ set-dist 19 34 3
$god_ set-dist 19 35 3
$god_ set-dist 19 36 1
$god_ set-dist 19 37 3
$god_ set-dist 19 38 3
$god_ set-dist 19 39 1
$god_ set-dist 19 40 2
$god_ set-dist 19 41 2
$god_ set-dist 19 42 1
$god_ set-dist 19 43 2
$god_ set-dist 19 44 3
$god_ set-dist 19 45 4
$god_ set-dist 19 46 3
$god_ set-dist 19 47 3
$god_ set-dist 19 48 1
$god_ set-dist 19 49 1
$god_ set-dist 20 21 3
$god_ set-dist 20 22 2
$god_ set-dist 20 23 2
$god_ set-dist 20 24 2
$god_ set-dist 20 25 3
$god_ set-dist 20 26 2
$god_ set-dist 20 27 2
$god_ set-dist 20 28 2
$god_ set-dist 20 29 1
$god_ set-dist 20 30 1
$god_ set-dist 20 31 1
$god_ set-dist 20 32 3
$god_ set-dist 20 33 1
$god_ set-dist 20 34 2
$god_ set-dist 20 35 1
$god_ set-dist 20 36 3
$god_ set-dist 20 37 1
$god_ set-dist 20 38 1
$god_ set-dist 20 39 3
$god_ set-dist 20 40 2
$god_ set-dist 20 41 2
$god_ set-dist 20 42 2
$god_ set-dist 20 43 1
$god_ set-dist 20 44 1
$god_ set-dist 20 45 2
$god_ set-dist 20 46 2
$god_ set-dist 20 47 1
$god_ set-dist 20 48 2
$god_ set-dist 20 49 2
$god_ set-dist 21 22 1
$god_ set-dist 21 23 3
$god_ set-dist 21 24 2
$god_ set-dist 21 25 1
$god_ set-dist 21 26 3
$god_ set-dist 21 27 1
$god_ set-dist 21 28 2
$god_ set-dist 21 29 3
$god_ set-dist 21 30 3
$god_ set-dist 21 31 3
$god_ set-dist 21 32 1
$god_ set-dist 21 33 2
$god_ set-dist 21 34 2
$god_ set-dist 21 35 3
$god_ set-dist 21 36 2
$god_ set-dist 21 37 3
$god_ set-dist 21 38 3
$god_ set-dist 21 39 2
$god_ set-dist 21 40 1
$god_ set-dist 21 41 1
$god_ set-dist 21 42 2
$god_ set-dist 21 43 2
$god_ set-dist 21 44 3
$god_ set-dist 21 45 3
$god_ set-dist 21 46 1
$god_ set-dist 21 47 3
$god_ set-dist 21 48 2
$god_ set-dist 21 49 1
$god_ set-dist 22 23 3
$god_ set-dist 22 24 2
$god_ set-dist 22 25 1
$god_ set-dist 22 26 3
$god_ set-dist 22 27 1
$god_ set-dist 22 28 2
$god_ set-dist 22 29 3
$god_ set-dist 22 30 2
$god_ set-dist 22 31 3
$god_ set-dist 22 32 1
$god_ set-dist 22 33 2
$god_ set-dist 22 34 2
$god_ set-dist 22 35 2
$god_ set-dist 22 36 2
$god_ set-dist 22 37 3
$god_ set-dist 22 38 3
$god_ set-dist 22 39 2
$god_ set-dist 22 40 1
$god_ set-dist 22 41 1
$god_ set-dist 22 42 2
$god_ set-dist 22 43 2
$god_ set-dist 22 44 2
$god_ set-dist 22 45 3
$god_ set-dist 22 46 1
$god_ set-dist 22 47 3
$god_ set-dist 22 48 2
$god_ set-dist 22 49 1
$god_ set-dist 23 24 2
$god_ set-dist 23 25 3
$god_ set-dist 23 26 4
$god_ set-dist 23 27 4
$god_ set-dist 23 28 4
$god_ set-dist 23 29 3
$god_ set-dist 23 30 2
$god_ set-dist 23 31 3
$god_ set-dist 23 32 3
$god_ set-dist 23 33 2
$god_ set-dist 23 34 1
$god_ set-dist 23 35 2
$god_ set-dist 23 36 5
$god_ set-dist 23 37 3
$god_ set-dist 23 38 3
$god_ set-dist 23 39 4
$god_ set-dist 23 40 3
$god_ set-dist 23 41 3
$god_ set-dist 23 42 4
$god_ set-dist 23 43 2
$god_ set-dist 23 44 2
$god_ set-dist 23 45 1
$god_ set-dist 23 46 2
$god_ set-dist 23 47 3
$god_ set-dist 23 48 4
$god_ set-dist 23 49 4
$god_ set-dist 24 25 1
$god_ set-dist 24 26 3
$god_ set-dist 24 27 3
$god_ set-dist 24 28 3
$god_ set-dist 24 29 2
$god_ set-dist 24 30 2
$god_ set-dist 24 31 2
$god_ set-dist 24 32 1
$god_ set-dist 24 33 1
$god_ set-dist 24 34 1
$god_ set-dist 24 35 2
$god_ set-dist 24 36 3
$god_ set-dist 24 37 2
$god_ set-dist 24 38 2
$god_ set-dist 24 39 3
$god_ set-dist 24 40 2
$god_ set-dist 24 41 1
$god_ set-dist 24 42 3
$god_ set-dist 24 43 1
$god_ set-dist 24 44 1
$god_ set-dist 24 45 2
$god_ set-dist 24 46 1
$god_ set-dist 24 47 2
$god_ set-dist 24 48 3
$god_ set-dist 24 49 2
$god_ set-dist 25 26 4
$god_ set-dist 25 27 2
$god_ set-dist 25 28 3
$god_ set-dist 25 29 3
$god_ set-dist 25 30 3
$god_ set-dist 25 31 3
$god_ set-dist 25 32 1
$god_ set-dist 25 33 2
$god_ set-dist 25 34 2
$god_ set-dist 25 35 3
$god_ set-dist 25 36 3
$god_ set-dist 25 37 3
$god_ set-dist 25 38 3
$god_ set-dist 25 39 3
$god_ set-dist 25 40 1
$god_ set-dist 25 41 1
$god_ set-dist 25 42 3
$god_ set-dist 25 43 2
$god_ set-dist 25 44 2
$god_ set-dist 25 45 3
$god_ set-dist 25 46 1
$god_ set-dist 25 47 3
$god_ set-dist 25 48 3
$god_ set-dist 25 49 2
$god_ set-dist 26 27 2
$god_ set-dist 26 28 1
$god_ set-dist 26 29 3
$god_ set-dist 26 30 3
$god_ set-dist 26 31 2
$god_ set-dist 26 32 4
$god_ set-dist 26 33 3
$god_ set-dist 26 34 3
$god_ set-dist 26 35 2
$god_ set-dist 26 36 1
$god_ set-dist 26 37 2
$god_ set-dist 26 38 3
$god_ set-dist 26 39 1
$god_ set-dist 26 40 3
$god_ set-dist 26 41 3
$god_ set-dist 26 42 1
$god_ set-dist 26 43 2
$god_ set-dist 26 44 3
$god_ set-dist 26 45 4
$god_ set-dist 26 46 3
$god_ set-dist 26 47 2
$god_ set-dist 26 48 1
$god_ set-dist 26 49 2
$god_ set-dist 27 28 1
$god_ set-dist 27 29 3
$god_ set-dist 27 30 3
$god_ set-dist 27 31 2
$god_ set-dist 27 32 2
$god_ set-dist 27 33 3
$god_ set-dist 27 34 3
$god_ set-dist 27 35 2
$god_ set-dist 27 36 1
$god_ set-dist 27 37 2
$god_ set-dist 27 38 3
$god_ set-dist 27 39 1
$god_ set-dist 27 40 1
$god_ set-dist 27 41 2
$god_ set-dist 27 42 1
$god_ set-dist 27 43 2
$god_ set-dist 27 44 3
$god_ set-dist 27 45 4
$god_ set-dist 27 46 2
$god_ set-dist 27 47 3
$god_ set-dist 27 48 1
$god_ set-dist 27 49 1
$god_ set-dist 28 29 3
$god_ set-dist 28 30 3
$god_ set-dist 28 31 2
$god_ set-dist 28 32 3
$god_ set-dist 28 33 3
$god_ set-dist 28 34 3
$god_ set-dist 28 35 2
$god_ set-dist 28 36 1
$god_ set-dist 28 37 2
$god_ set-dist 28 38 3
$god_ set-dist 28 39 1
$god_ set-dist 28 40 2
$god_ set-dist 28 41 2
$god_ set-dist 28 42 1
$god_ set-dist 28 43 2
$god_ set-dist 28 44 3
$god_ set-dist 28 45 4
$god_ set-dist 28 46 3
$god_ set-dist 28 47 2
$god_ set-dist 28 48 1
$god_ set-dist 28 49 1
$god_ set-dist 29 30 1
$god_ set-dist 29 31 1
$god_ set-dist 29 32 3
$god_ set-dist 29 33 1
$god_ set-dist 29 34 2
$god_ set-dist 29 35 1
$god_ set-dist 29 36 4
$god_ set-dist 29 37 1
$god_ set-dist 29 38 1
$god_ set-dist 29 39 3
$god_ set-dist 29 40 3
$god_ set-dist 29 41 2
$god_ set-dist 29 42 3
$god_ set-dist 29 43 2
$god_ set-dist 29 44 1
$god_ set-dist 29 45 2
$god_ set-dist 29 46 2
$god_ set-dist 29 47 1
$god_ set-dist 29 48 3
$god_ set-dist 29 49 3
$god_ set-dist 30 31 1
$god_ set-dist 30 32 3
$god_ set-dist 30 33 1
$god_ set-dist 30 34 2
$god_ set-dist 30 35 1
$god_ set-dist 30 36 4
$god_ set-dist 30 37 1
$god_ set-dist 30 38 1
$god_ set-dist 30 39 3
$god_ set-dist 30 40 2
$god_ set-dist 30 41 2
$god_ set-dist 30 42 3
$god_ set-dist 30 43 1
$god_ set-dist 30 44 1
$god_ set-dist 30 45 1
$god_ set-dist 30 46 2
$god_ set-dist 30 47 1
$god_ set-dist 30 48 3
$god_ set-dist 30 49 3
$god_ set-dist 31 32 3
$god_ set-dist 31 33 1
$god_ set-dist 31 34 2
$god_ set-dist 31 35 1
$god_ set-dist 31 36 3
$god_ set-dist 31 37 1
$god_ set-dist 31 38 1
$god_ set-dist 31 39 3
$god_ set-dist 31 40 2
$god_ set-dist 31 41 2
$god_ set-dist 31 42 2
$god_ set-dist 31 43 1
$god_ set-dist 31 44 1
$god_ set-dist 31 45 2
$god_ set-dist 31 46 2
$god_ set-dist 31 47 1
$god_ set-dist 31 48 2
$god_ set-dist 31 49 2
$god_ set-dist 32 33 2
$god_ set-dist 32 34 2
$god_ set-dist 32 35 3
$god_ set-dist 32 36 3
$god_ set-dist 32 37 3
$god_ set-dist 32 38 3
$god_ set-dist 32 39 3
$god_ set-dist 32 40 1
$god_ set-dist 32 41 1
$god_ set-dist 32 42 3
$god_ set-dist 32 43 2
$god_ set-dist 32 44 2
$god_ set-dist 32 45 3
$god_ set-dist 32 46 1
$god_ set-dist 32 47 3
$god_ set-dist 32 48 3
$god_ set-dist 32 49 2
$god_ set-dist 33 34 1
$god_ set-dist 33 35 1
$god_ set-dist 33 36 3
$god_ set-dist 33 37 2
$god_ set-dist 33 38 1
$god_ set-dist 33 39 3
$god_ set-dist 33 40 2
$god_ set-dist 33 41 1
$god_ set-dist 33 42 3
$god_ set-dist 33 43 1
$god_ set-dist 33 44 1
$god_ set-dist 33 45 1
$god_ set-dist 33 46 1
$god_ set-dist 33 47 2
$god_ set-dist 33 48 3
$god_ set-dist 33 49 2
$god_ set-dist 34 35 2
$god_ set-dist 34 36 4
$god_ set-dist 34 37 2
$god_ set-dist 34 38 2
$god_ set-dist 34 39 3
$god_ set-dist 34 40 2
$god_ set-dist 34 41 2
$god_ set-dist 34 42 3
$god_ set-dist 34 43 1
$god_ set-dist 34 44 1
$god_ set-dist 34 45 1
$god_ set-dist 34 46 1
$god_ set-dist 34 47 2
$god_ set-dist 34 48 3
$god_ set-dist 34 49 3
$god_ set-dist 35 36 3
$god_ set-dist 35 37 1
$god_ set-dist 35 38 1
$god_ set-dist 35 39 3
$god_ set-dist 35 40 2
$god_ set-dist 35 41 2
$god_ set-dist 35 42 2
$god_ set-dist 35 43 1
$god_ set-dist 35 44 1
$god_ set-dist 35 45 2
$god_ set-dist 35 46 2
$god_ set-dist 35 47 1
$god_ set-dist 35 48 2
$god_ set-dist 35 49 2
$god_ set-dist 36 37 3
$god_ set-dist 36 38 4
$god_ set-dist 36 39 1
$god_ set-dist 36 40 2
$god_ set-dist 36 41 2
$god_ set-dist 36 42 1
$god_ set-dist 36 43 3
$god_ set-dist 36 44 4
$god_ set-dist 36 45 4
$god_ set-dist 36 46 3
$god_ set-dist 36 47 3
$god_ set-dist 36 48 1
$god_ set-dist 36 49 1
$god_ set-dist 37 38 1
$god_ set-dist 37 39 3
$god_ set-dist 37 40 3
$god_ set-dist 37 41 3
$god_ set-dist 37 42 2
$god_ set-dist 37 43 2
$god_ set-dist 37 44 1
$god_ set-dist 37 45 2
$god_ set-dist 37 46 3
$god_ set-dist 37 47 1
$god_ set-dist 37 48 2
$god_ set-dist 37 49 2
$god_ set-dist 38 39 3
$god_ set-dist 38 40 2
$god_ set-dist 38 41 2
$god_ set-dist 38 42 3
$god_ set-dist 38 43 1
$god_ set-dist 38 44 1
$god_ set-dist 38 45 2
$god_ set-dist 38 46 2
$god_ set-dist 38 47 1
$god_ set-dist 38 48 3
$god_ set-dist 38 49 3
$god_ set-dist 39 40 2
$god_ set-dist 39 41 2
$god_ set-dist 39 42 1
$god_ set-dist 39 43 2
$god_ set-dist 39 44 3
$god_ set-dist 39 45 4
$god_ set-dist 39 46 3
$god_ set-dist 39 47 3
$god_ set-dist 39 48 1
$god_ set-dist 39 49 1
$god_ set-dist 40 41 1
$god_ set-dist 40 42 2
$god_ set-dist 40 43 1
$god_ set-dist 40 44 2
$god_ set-dist 40 45 3
$god_ set-dist 40 46 1
$god_ set-dist 40 47 3
$god_ set-dist 40 48 2
$god_ set-dist 40 49 1
$god_ set-dist 41 42 3
$god_ set-dist 41 43 1
$god_ set-dist 41 44 2
$god_ set-dist 41 45 2
$god_ set-dist 41 46 1
$god_ set-dist 41 47 3
$god_ set-dist 41 48 2
$god_ set-dist 41 49 1
$god_ set-dist 42 43 2
$god_ set-dist 42 44 3
$god_ set-dist 42 45 4
$god_ set-dist 42 46 3
$god_ set-dist 42 47 2
$god_ set-dist 42 48 1
$god_ set-dist 42 49 2
$god_ set-dist 43 44 1
$god_ set-dist 43 45 2
$god_ set-dist 43 46 1
$god_ set-dist 43 47 2
$god_ set-dist 43 48 2
$god_ set-dist 43 49 2
$god_ set-dist 44 45 1
$god_ set-dist 44 46 2
$god_ set-dist 44 47 1
$god_ set-dist 44 48 3
$god_ set-dist 44 49 3
$god_ set-dist 45 46 2
$god_ set-dist 45 47 2
$god_ set-dist 45 48 4
$god_ set-dist 45 49 3
$god_ set-dist 46 47 3
$god_ set-dist 46 48 3
$god_ set-dist 46 49 2
$god_ set-dist 47 48 2
$god_ set-dist 47 49 3
$god_ set-dist 48 49 1
$ns_ at 50.000000000000 "$node_(0) setdest 27.511635537357 495.774172258337 16.611448553200"
$ns_ at 50.000000000000 "$node_(1) setdest 476.542176567198 249.975002693199 18.205720266977"
$ns_ at 50.000000000000 "$node_(2) setdest 476.086748416080 78.794313187063 13.065693042629"
$ns_ at 50.000000000000 "$node_(3) setdest 14.935338407883 428.839510285439 16.405041462800"
$ns_ at 50.000000000000 "$node_(4) setdest 605.360943157011 453.504389477641 6.143192499360"
$ns_ at 50.000000000000 "$node_(5) setdest 242.264309835382 124.691872539909 18.467973321988"
$ns_ at 50.000000000000 "$node_(6) setdest 194.444708080147 263.841668092428 3.259919215474"
$ns_ at 50.000000000000 "$node_(7) setdest 275.131148681342 471.771429578880 2.192462742336"
$ns_ at 50.000000000000 "$node_(8) setdest 466.975920167982 314.697781318598 7.115134308103"
$ns_ at 50.000000000000 "$node_(9) setdest 264.304062268987 343.014617326446 7.892272030374"
$ns_ at 50.000000000000 "$node_(10) setdest 71.906783177194 553.897508729874 2.128709317830"
$ns_ at 50.000000000000 "$node_(11) setdest 371.850563640454 584.451302812870 12.443188281772"
$ns_ at 50.000000000000 "$node_(12) setdest 8.934076837797 89.834219437446 19.604318760731"
$ns_ at 50.000000000000 "$node_(13) setdest 323.661563329307 160.572763099134 8.105434865209"
$ns_ at 50.000000000000 "$node_(14) setdest 185.847896851218 263.522073459484 12.180048724043"
$ns_ at 50.000000000000 "$node_(15) setdest 509.733671197808 344.230127693123 4.103249766276"
$ns_ at 50.000000000000 "$node_(16) setdest 157.206609882176 409.177379409991 12.153545428984"
$ns_ at 50.000000000000 "$node_(17) setdest 539.677657651006 322.689110545752 0.609644103517"
$ns_ at 50.000000000000 "$node_(18) setdest 373.492412547679 468.766623000488 7.877505854359"
$ns_ at 50.000000000000 "$node_(19) setdest 47.587413542946 174.448385507628 1.816978849920"
$ns_ at 50.000000000000 "$node_(20) setdest 539.468572838107 653.516162729674 0.109074549444"
$ns_ at 50.000000000000 "$node_(21) setdest 457.824895823742 412.377916717577 9.479463852879"
$ns_ at 50.000000000000 "$node_(22) setdest 94.330208162005 643.170159191218 16.488577553449"
$ns_ at 50.000000000000 "$node_(23) setdest 448.819605318009 343.083988363265 9.635381219946"
$ns_ at 50.000000000000 "$node_(24) setdest 619.535949910869 6.761928304676 14.434952959993"
$ns_ at 50.000000000000 "$node_(25) setdest 502.295521608896 490.003546266988 3.304284295833"
$ns_ at 50.000000000000 "$node_(26) setdest 457.508678671859 500.275860316441 16.348587558723"
$ns_ at 50.000000000000 "$node_(27) setdest 203.555234942932 327.477811175721 19.960456842504"
$ns_ at 50.000000000000 "$node_(28) setdest 498.639975624884 18.289469907575 9.801388065957"
$ns_ at 50.000000000000 "$node_(29) setdest 357.231944537313 148.218944957373 14.483039125910"
$ns_ at 50.000000000000 "$node_(30) setdest 644.251366989753 573.870155863695 13.744574491603"
$ns_ at 50.000000000000 "$node_(31) setdest 79.827117755553 336.961671607110 16.589173779485"
$ns_ at 50.000000000000 "$node_(32) setdest 134.578172686105 518.338023767413 3.131887566166"
$ns_ at 50.000000000000 "$node_(33) setdest 519.008467095849 434.616279732479 4.328189683208"
$ns_ at 50.000000000000 "$node_(34) setdest 167.923561334168 358.597845551174 14.219156125929"
$ns_ at 50.000000000000 "$node_(35) setdest 515.190824640377 467.262792342962 17.413205062492"
$ns_ at 50.000000000000 "$node_(36) setdest 549.772212240524 1.842480579679 19.526833105269"
$ns_ at 50.000000000000 "$node_(37) setdest 630.887615868036 118.404132686104 19.929242908322"
$ns_ at 50.000000000000 "$node_(38) setdest 362.795069392625 61.626398490810 2.237285348902"
$ns_ at 50.000000000000 "$node_(39) setdest 371.181556884144 561.709906651094 14.069442387308"
$ns_ at 50.000000000000 "$node_(40) setdest 215.981562303883 87.994112189108 0.318420111721"
$ns_ at 50.000000000000 "$node_(41) setdest 515.069381178923 372.561854818572 4.183829932063"
$ns_ at 50.000000000000 "$node_(42) setdest 157.164453689523 507.699204741846 2.280940668293"
$ns_ at 50.000000000000 "$node_(43) setdest 14.617658008466 550.067217451050 18.003257933231"
$ns_ at 50.000000000000 "$node_(44) setdest 480.325010890980 348.914809831018 6.896197398754"
$ns_ at 50.000000000000 "$node_(45) setdest 622.063146878298 628.044258531464 8.238289117246"
$ns_ at 50.000000000000 "$node_(46) setdest 188.296790888005 101.065882717190 0.254883219724"
$ns_ at 50.000000000000 "$node_(47) setdest 452.766193264483 528.634122765134 0.333814655764"
$ns_ at 50.000000000000 "$node_(48) setdest 564.188896164133 261.809337073085 17.630231791895"
$ns_ at 50.000000000000 "$node_(49) setdest 224.910834760278 428.797608055152 8.098919830419"
$ns_ at 50.077102358222 "$god_ set-dist 9 12 3"
$ns_ at 50.077102358222 "$god_ set-dist 12 35 2"
$ns_ at 50.094998624928 "$god_ set-dist 24 45 1"
$ns_ at 50.094998624928 "$god_ set-dist 25 45 2"
$ns_ at 50.094998624928 "$god_ set-dist 32 45 2"
$ns_ at 50.115616376754 "$god_ set-dist 11 18 2"
$ns_ at 50.115616376754 "$god_ set-dist 17 20 2"
$ns_ at 50.115616376754 "$god_ set-dist 18 20 1"
$ns_ at 50.115616376754 "$god_ set-dist 19 20 2"
$ns_ at 50.115616376754 "$god_ set-dist 20 39 2"
$ns_ at 50.132387102796 "$god_ set-dist 11 23 1"
$ns_ at 50.132387102796 "$god_ set-dist 23 29 2"
$ns_ at 50.132387102796 "$god_ set-dist 23 31 2"
$ns_ at 50.132387102796 "$god_ set-dist 23 38 2"
$ns_ at 50.132387102796 "$god_ set-dist 23 47 2"
$ns_ at 50.170956182782 "$god_ set-dist 0 45 3"
$ns_ at 50.170956182782 "$god_ set-dist 3 45 3"
$ns_ at 50.170956182782 "$god_ set-dist 4 45 2"
$ns_ at 50.170956182782 "$god_ set-dist 15 45 3"
$ns_ at 50.170956182782 "$god_ set-dist 26 45 3"
$ns_ at 50.170956182782 "$god_ set-dist 27 45 3"
$ns_ at 50.170956182782 "$god_ set-dist 28 45 3"
$ns_ at 50.170956182782 "$god_ set-dist 35 45 1"
$ns_ at 50.170956182782 "$god_ set-dist 42 45 3"
$ns_ at 50.170956182782 "$god_ set-dist 45 48 3"
$ns_ at 50.389274165938 "$god_ set-dist 7 21 1"
$ns_ at 50.431106221625 "$god_ set-dist 13 38 1"
$ns_ at 50.521074071806 "$god_ set-dist 1 34 2"
$ns_ at 50.521074071806 "$god_ set-dist 30 34 1"
$ns_ at 50.569398263392 "$god_ set-dist 2 8 3"
$ns_ at 50.569398263392 "$god_ set-dist 8 40 3"
$ns_ at 50.569398263392 "$god_ set-dist 8 43 2"
$ns_ at 50.603293521803 "$god_ set-dist 0 33 2"
$ns_ at 50.603293521803 "$god_ set-dist 3 33 2"
$ns_ at 50.603293521803 "$god_ set-dist 4 33 1"
$ns_ at 50.603293521803 "$god_ set-dist 15 33 2"
$ns_ at 50.603293521803 "$god_ set-dist 26 33 2"
$ns_ at 50.603293521803 "$god_ set-dist 27 33 2"
$ns_ at 50.603293521803 "$god_ set-dist 28 33 2"
$ns_ at 50.603293521803 "$god_ set-dist 33 42 2"
$ns_ at 50.603293521803 "$god_ set-dist 33 48 2"
$ns_ at 50.630265092742 "$god_ set-dist 5 31 1"
$ns_ at 50.630265092742 "$god_ set-dist 10 31 2"
$ns_ at 50.630265092742 "$god_ set-dist 22 31 2"
$ns_ at 50.672213060474 "$god_ set-dist 0 44 2"
$ns_ at 50.672213060474 "$god_ set-dist 3 44 2"
$ns_ at 50.672213060474 "$god_ set-dist 4 44 1"
$ns_ at 50.672213060474 "$god_ set-dist 15 44 2"
$ns_ at 50.672213060474 "$god_ set-dist 26 44 2"
$ns_ at 50.672213060474 "$god_ set-dist 27 44 2"
$ns_ at 50.672213060474 "$god_ set-dist 28 44 2"
$ns_ at 50.672213060474 "$god_ set-dist 36 44 3"
$ns_ at 50.672213060474 "$god_ set-dist 42 44 2"
$ns_ at 50.672213060474 "$god_ set-dist 44 48 2"
$ns_ at 50.672213060474 "$god_ set-dist 44 49 2"
$ns_ at 50.680244038548 "$god_ set-dist 0 49 1"
$ns_ at 50.687708912664 "$god_ set-dist 7 16 1"
$ns_ at 50.704815460887 "$god_ set-dist 1 24 2"
$ns_ at 50.704815460887 "$god_ set-dist 1 25 3"
$ns_ at 50.704815460887 "$god_ set-dist 1 32 3"
$ns_ at 50.704815460887 "$god_ set-dist 1 44 1"
$ns_ at 50.759905395056 "$god_ set-dist 18 34 2"
$ns_ at 50.759905395056 "$god_ set-dist 18 43 1"
$ns_ at 50.823780671953 "$god_ set-dist 0 47 3"
$ns_ at 50.823780671953 "$god_ set-dist 2 47 3"
$ns_ at 50.823780671953 "$god_ set-dist 3 47 3"
$ns_ at 50.823780671953 "$god_ set-dist 12 47 2"
$ns_ at 50.823780671953 "$god_ set-dist 15 47 3"
$ns_ at 50.823780671953 "$god_ set-dist 21 47 4"
$ns_ at 50.823780671953 "$god_ set-dist 26 47 3"
$ns_ at 50.823780671953 "$god_ set-dist 28 47 3"
$ns_ at 50.823780671953 "$god_ set-dist 36 47 4"
$ns_ at 50.823780671953 "$god_ set-dist 42 47 3"
$ns_ at 50.823780671953 "$god_ set-dist 47 48 3"
$ns_ at 50.853314496722 "$god_ set-dist 5 36 2"
$ns_ at 50.853314496722 "$god_ set-dist 5 49 1"
$ns_ at 50.853314496722 "$god_ set-dist 13 36 3"
$ns_ at 50.853314496722 "$god_ set-dist 13 49 2"
$ns_ at 50.853314496722 "$god_ set-dist 14 36 3"
$ns_ at 50.853314496722 "$god_ set-dist 14 49 2"
$ns_ at 50.853314496722 "$god_ set-dist 23 36 4"
$ns_ at 50.853314496722 "$god_ set-dist 23 49 3"
$ns_ at 50.853314496722 "$god_ set-dist 30 36 3"
$ns_ at 50.853314496722 "$god_ set-dist 30 49 2"
$ns_ at 50.885605309040 "$god_ set-dist 0 19 1"
$ns_ at 50.952321447216 "$god_ set-dist 8 45 2"
$ns_ at 51.033803415612 "$god_ set-dist 6 40 3"
$ns_ at 51.033803415612 "$god_ set-dist 6 43 2"
$ns_ at 51.130248248339 "$god_ set-dist 1 4 1"
$ns_ at 51.130248248339 "$god_ set-dist 1 27 2"
$ns_ at 51.130248248339 "$god_ set-dist 1 49 2"
$ns_ at 51.163194229389 "$god_ set-dist 17 31 2"
$ns_ at 51.163194229389 "$god_ set-dist 18 31 1"
$ns_ at 51.163194229389 "$god_ set-dist 19 31 2"
$ns_ at 51.163194229389 "$god_ set-dist 31 39 2"
$ns_ at 51.169319132756 "$god_ set-dist 0 38 2"
$ns_ at 51.169319132756 "$god_ set-dist 3 38 2"
$ns_ at 51.169319132756 "$god_ set-dist 4 38 1"
$ns_ at 51.169319132756 "$god_ set-dist 15 38 2"
$ns_ at 51.169319132756 "$god_ set-dist 26 38 2"
$ns_ at 51.169319132756 "$god_ set-dist 27 38 2"
$ns_ at 51.169319132756 "$god_ set-dist 28 38 2"
$ns_ at 51.169319132756 "$god_ set-dist 36 38 3"
$ns_ at 51.169319132756 "$god_ set-dist 38 42 2"
$ns_ at 51.169319132756 "$god_ set-dist 38 48 2"
$ns_ at 51.169319132756 "$god_ set-dist 38 49 2"
$ns_ at 51.222885543332 "$god_ set-dist 24 35 1"
$ns_ at 51.222885543332 "$god_ set-dist 25 35 2"
$ns_ at 51.222885543332 "$god_ set-dist 32 35 2"
$ns_ at 51.248708964417 "$god_ set-dist 4 42 2"
$ns_ at 51.248708964417 "$god_ set-dist 9 42 4"
$ns_ at 51.248708964417 "$god_ set-dist 33 42 3"
$ns_ at 51.248708964417 "$god_ set-dist 35 42 3"
$ns_ at 51.248708964417 "$god_ set-dist 38 42 3"
$ns_ at 51.248708964417 "$god_ set-dist 42 44 3"
$ns_ at 51.248708964417 "$god_ set-dist 42 45 4"
$ns_ at 51.250086184771 "$god_ set-dist 0 16 2"
$ns_ at 51.250086184771 "$god_ set-dist 1 16 3"
$ns_ at 51.250086184771 "$god_ set-dist 3 16 3"
$ns_ at 51.250086184771 "$god_ set-dist 4 16 2"
$ns_ at 51.250086184771 "$god_ set-dist 15 16 2"
$ns_ at 51.250086184771 "$god_ set-dist 16 17 2"
$ns_ at 51.250086184771 "$god_ set-dist 16 18 2"
$ns_ at 51.250086184771 "$god_ set-dist 16 19 2"
$ns_ at 51.250086184771 "$god_ set-dist 16 26 3"
$ns_ at 51.250086184771 "$god_ set-dist 16 28 2"
$ns_ at 51.250086184771 "$god_ set-dist 16 36 2"
$ns_ at 51.250086184771 "$god_ set-dist 16 37 3"
$ns_ at 51.250086184771 "$god_ set-dist 16 39 2"
$ns_ at 51.250086184771 "$god_ set-dist 16 48 2"
$ns_ at 51.250086184771 "$god_ set-dist 16 49 1"
$ns_ at 51.266714767635 "$god_ set-dist 11 24 1"
$ns_ at 51.266714767635 "$god_ set-dist 11 25 2"
$ns_ at 51.266714767635 "$god_ set-dist 11 32 2"
$ns_ at 51.279845392530 "$god_ set-dist 1 39 2"
$ns_ at 51.279845392530 "$god_ set-dist 12 39 1"
$ns_ at 51.279845392530 "$god_ set-dist 37 39 2"
$ns_ at 51.324784946456 "$god_ set-dist 38 40 3"
$ns_ at 51.324784946456 "$god_ set-dist 38 43 2"
$ns_ at 51.325057832809 "$god_ set-dist 3 17 1"
$ns_ at 51.336762535830 "$god_ set-dist 12 24 2"
$ns_ at 51.336762535830 "$god_ set-dist 20 24 1"
$ns_ at 51.336762535830 "$god_ set-dist 20 25 2"
$ns_ at 51.336762535830 "$god_ set-dist 20 32 2"
$ns_ at 51.358140263934 "$god_ set-dist 2 42 1"
$ns_ at 51.358140263934 "$god_ set-dist 10 42 2"
$ns_ at 51.358140263934 "$god_ set-dist 41 42 2"
$ns_ at 51.363060390937 "$god_ set-dist 34 35 1"
$ns_ at 51.476856398875 "$god_ set-dist 0 47 2"
$ns_ at 51.476856398875 "$god_ set-dist 2 47 2"
$ns_ at 51.476856398875 "$god_ set-dist 3 47 2"
$ns_ at 51.476856398875 "$god_ set-dist 4 47 1"
$ns_ at 51.476856398875 "$god_ set-dist 15 47 2"
$ns_ at 51.476856398875 "$god_ set-dist 16 47 3"
$ns_ at 51.476856398875 "$god_ set-dist 21 47 3"
$ns_ at 51.476856398875 "$god_ set-dist 26 47 2"
$ns_ at 51.476856398875 "$god_ set-dist 27 47 2"
$ns_ at 51.476856398875 "$god_ set-dist 28 47 2"
$ns_ at 51.476856398875 "$god_ set-dist 36 47 3"
$ns_ at 51.476856398875 "$god_ set-dist 47 48 2"
$ns_ at 51.476856398875 "$god_ set-dist 47 49 2"
$ns_ at 51.572068387866 "$god_ set-dist 3 36 1"
$ns_ at 51.573509273367 "$god_ set-dist 12 13 3"
$ns_ at 51.573509273367 "$god_ set-dist 12 14 3"
$ns_ at 51.573509273367 "$god_ set-dist 12 20 2"
$ns_ at 51.573509273367 "$god_ set-dist 12 24 3"
$ns_ at 51.582460421106 "$god_ set-dist 2 3 1"
$ns_ at 51.582460421106 "$god_ set-dist 3 10 2"
$ns_ at 51.582460421106 "$god_ set-dist 3 21 2"
$ns_ at 51.582460421106 "$god_ set-dist 3 22 2"
$ns_ at 51.582460421106 "$god_ set-dist 3 25 3"
$ns_ at 51.582460421106 "$god_ set-dist 3 32 3"
$ns_ at 51.582460421106 "$god_ set-dist 3 40 2"
$ns_ at 51.582460421106 "$god_ set-dist 3 41 2"
$ns_ at 51.613879933742 "$god_ set-dist 24 27 2"
$ns_ at 51.613879933742 "$god_ set-dist 27 41 1"
$ns_ at 51.666604054088 "$god_ set-dist 5 30 2"
$ns_ at 51.666604054088 "$god_ set-dist 10 30 3"
$ns_ at 51.666604054088 "$god_ set-dist 22 30 3"
$ns_ at 51.666604054088 "$god_ set-dist 30 36 4"
$ns_ at 51.666604054088 "$god_ set-dist 30 49 3"
$ns_ at 51.718311608997 "$god_ set-dist 12 27 1"
$ns_ at 51.775943686249 "$god_ set-dist 12 37 2"
$ns_ at 51.775943686249 "$god_ set-dist 37 39 3"
$ns_ at 51.775943686249 "$god_ set-dist 37 42 3"
$ns_ at 51.789880196713 "$god_ set-dist 5 27 1"
$ns_ at 51.789880196713 "$god_ set-dist 13 27 2"
$ns_ at 51.789880196713 "$god_ set-dist 14 27 2"
$ns_ at 51.789880196713 "$god_ set-dist 23 27 3"
$ns_ at 51.809965205310 "$god_ set-dist 2 10 2"
$ns_ at 51.809965205310 "$god_ set-dist 3 10 3"
$ns_ at 51.809965205310 "$god_ set-dist 10 12 3"
$ns_ at 51.809965205310 "$god_ set-dist 10 42 3"
$ns_ at 51.878811081984 "$god_ set-dist 2 26 1"
$ns_ at 51.878811081984 "$god_ set-dist 21 26 2"
$ns_ at 51.878811081984 "$god_ set-dist 22 26 2"
$ns_ at 51.878811081984 "$god_ set-dist 25 26 3"
$ns_ at 51.878811081984 "$god_ set-dist 26 32 3"
$ns_ at 51.878811081984 "$god_ set-dist 26 40 2"
$ns_ at 51.878811081984 "$god_ set-dist 26 41 2"
$ns_ at 51.882011794523 "$god_ set-dist 1 12 2"
$ns_ at 51.882011794523 "$god_ set-dist 1 39 3"
$ns_ at 51.882011794523 "$god_ set-dist 1 42 3"
$ns_ at 51.897361760242 "$god_ set-dist 10 12 2"
$ns_ at 51.897361760242 "$god_ set-dist 10 27 1"
$ns_ at 51.897361760242 "$god_ set-dist 10 42 2"
$ns_ at 51.931439055881 "$god_ set-dist 23 24 1"
$ns_ at 51.931439055881 "$god_ set-dist 23 25 2"
$ns_ at 51.931439055881 "$god_ set-dist 23 32 2"
$ns_ at 51.931439055881 "$god_ set-dist 23 41 2"
$ns_ at 51.950635526009 "$god_ set-dist 5 22 2"
$ns_ at 51.950635526009 "$god_ set-dist 13 22 3"
$ns_ at 51.950635526009 "$god_ set-dist 20 22 3"
$ns_ at 51.950635526009 "$god_ set-dist 22 31 3"
$ns_ at 51.950635526009 "$god_ set-dist 22 35 3"
$ns_ at 51.950635526009 "$god_ set-dist 22 44 3"
$ns_ at 51.995963868341 "$god_ set-dist 5 6 1"
$ns_ at 51.995963868341 "$god_ set-dist 6 10 2"
$ns_ at 51.995963868341 "$god_ set-dist 6 40 2"
$ns_ at 52.004078945363 "$god_ set-dist 30 37 2"
$ns_ at 52.182026920676 "$god_ set-dist 0 37 3"
$ns_ at 52.182026920676 "$god_ set-dist 2 37 3"
$ns_ at 52.182026920676 "$god_ set-dist 3 37 3"
$ns_ at 52.182026920676 "$god_ set-dist 4 37 2"
$ns_ at 52.182026920676 "$god_ set-dist 15 37 3"
$ns_ at 52.182026920676 "$god_ set-dist 16 37 4"
$ns_ at 52.182026920676 "$god_ set-dist 21 37 4"
$ns_ at 52.182026920676 "$god_ set-dist 22 37 4"
$ns_ at 52.182026920676 "$god_ set-dist 26 37 3"
$ns_ at 52.182026920676 "$god_ set-dist 27 37 3"
$ns_ at 52.182026920676 "$god_ set-dist 28 37 3"
$ns_ at 52.182026920676 "$god_ set-dist 36 37 4"
$ns_ at 52.182026920676 "$god_ set-dist 37 48 3"
$ns_ at 52.182026920676 "$god_ set-dist 37 49 3"
$ns_ at 52.209907747314 "$god_ set-dist 37 44 2"
$ns_ at 52.261997878591 "$god_ set-dist 7 13 1"
$ns_ at 52.261997878591 "$god_ set-dist 13 16 2"
$ns_ at 52.261997878591 "$god_ set-dist 13 21 2"
$ns_ at 52.261997878591 "$god_ set-dist 13 22 2"
$ns_ at 52.272748670882 "$god_ set-dist 12 17 1"
$ns_ at 52.277971915224 "$god_ set-dist 6 36 2"
$ns_ at 52.277971915224 "$god_ set-dist 8 36 3"
$ns_ at 52.277971915224 "$god_ set-dist 11 36 3"
$ns_ at 52.277971915224 "$god_ set-dist 18 36 1"
$ns_ at 52.277971915224 "$god_ set-dist 20 36 2"
$ns_ at 52.277971915224 "$god_ set-dist 29 36 3"
$ns_ at 52.277971915224 "$god_ set-dist 30 36 3"
$ns_ at 52.277971915224 "$god_ set-dist 31 36 2"
$ns_ at 52.277971915224 "$god_ set-dist 34 36 3"
$ns_ at 52.277971915224 "$god_ set-dist 36 37 3"
$ns_ at 52.277971915224 "$god_ set-dist 36 43 2"
$ns_ at 52.289493750108 "$god_ set-dist 0 29 2"
$ns_ at 52.289493750108 "$god_ set-dist 2 29 2"
$ns_ at 52.289493750108 "$god_ set-dist 3 29 2"
$ns_ at 52.289493750108 "$god_ set-dist 4 29 1"
$ns_ at 52.289493750108 "$god_ set-dist 15 29 2"
$ns_ at 52.289493750108 "$god_ set-dist 26 29 2"
$ns_ at 52.289493750108 "$god_ set-dist 27 29 2"
$ns_ at 52.289493750108 "$god_ set-dist 28 29 2"
$ns_ at 52.289493750108 "$god_ set-dist 29 48 2"
$ns_ at 52.289493750108 "$god_ set-dist 29 49 2"
$ns_ at 52.313680535481 "$god_ set-dist 34 37 3"
$ns_ at 52.313680535481 "$god_ set-dist 35 37 2"
$ns_ at 52.313680535481 "$god_ set-dist 37 45 3"
$ns_ at 52.387789909485 "$god_ set-dist 5 10 2"
$ns_ at 52.387789909485 "$god_ set-dist 6 10 3"
$ns_ at 52.387789909485 "$god_ set-dist 10 20 3"
$ns_ at 52.387789909485 "$god_ set-dist 10 31 3"
$ns_ at 52.387789909485 "$god_ set-dist 10 35 3"
$ns_ at 52.387789909485 "$god_ set-dist 10 37 4"
$ns_ at 52.387789909485 "$god_ set-dist 10 44 3"
$ns_ at 52.514933668859 "$god_ set-dist 2 22 2"
$ns_ at 52.514933668859 "$god_ set-dist 3 22 3"
$ns_ at 52.514933668859 "$god_ set-dist 22 26 3"
$ns_ at 52.516183266358 "$god_ set-dist 9 17 3"
$ns_ at 52.516183266358 "$god_ set-dist 9 18 2"
$ns_ at 52.516183266358 "$god_ set-dist 9 19 3"
$ns_ at 52.516183266358 "$god_ set-dist 9 20 1"
$ns_ at 52.516183266358 "$god_ set-dist 9 36 3"
$ns_ at 52.516183266358 "$god_ set-dist 9 39 3"
$ns_ at 52.516183266358 "$god_ set-dist 9 42 3"
$ns_ at 52.555681442143 "$god_ set-dist 2 36 1"
$ns_ at 52.569640547074 "$god_ set-dist 8 14 1"
$ns_ at 52.570777530229 "$god_ set-dist 1 23 2"
$ns_ at 52.570777530229 "$god_ set-dist 6 23 2"
$ns_ at 52.570777530229 "$god_ set-dist 23 30 1"
$ns_ at 52.606452209876 "$god_ set-dist 5 12 1"
$ns_ at 52.606452209876 "$god_ set-dist 7 12 2"
$ns_ at 52.606452209876 "$god_ set-dist 12 13 2"
$ns_ at 52.606452209876 "$god_ set-dist 12 14 2"
$ns_ at 52.606452209876 "$god_ set-dist 12 24 2"
$ns_ at 52.606452209876 "$god_ set-dist 12 46 2"
$ns_ at 52.691481221742 "$god_ set-dist 2 8 2"
$ns_ at 52.691481221742 "$god_ set-dist 2 9 2"
$ns_ at 52.691481221742 "$god_ set-dist 2 20 1"
$ns_ at 52.691481221742 "$god_ set-dist 2 37 2"
$ns_ at 52.691481221742 "$god_ set-dist 20 21 2"
$ns_ at 52.691481221742 "$god_ set-dist 21 37 3"
$ns_ at 52.693233971033 "$god_ set-dist 24 30 1"
$ns_ at 52.693233971033 "$god_ set-dist 25 30 2"
$ns_ at 52.693233971033 "$god_ set-dist 30 32 2"
$ns_ at 52.815708100960 "$god_ set-dist 6 23 3"
$ns_ at 52.815708100960 "$god_ set-dist 6 30 2"
$ns_ at 52.884376941210 "$god_ set-dist 1 7 2"
$ns_ at 52.884376941210 "$god_ set-dist 7 35 1"
$ns_ at 52.884376941210 "$god_ set-dist 7 47 2"
$ns_ at 52.884376941210 "$god_ set-dist 10 35 2"
$ns_ at 52.884376941210 "$god_ set-dist 16 35 2"
$ns_ at 52.884376941210 "$god_ set-dist 21 35 2"
$ns_ at 52.884376941210 "$god_ set-dist 22 35 2"
$ns_ at 52.922749764757 "$god_ set-dist 6 28 1"
$ns_ at 52.922749764757 "$god_ set-dist 8 28 2"
$ns_ at 52.922749764757 "$god_ set-dist 28 37 2"
$ns_ at 52.945538099030 "$god_ set-dist 12 36 1"
$ns_ at 52.948879971322 "$god_ set-dist 11 47 2"
$ns_ at 52.957833145938 "$god_ set-dist 10 11 2"
$ns_ at 52.957833145938 "$god_ set-dist 10 20 2"
$ns_ at 52.957833145938 "$god_ set-dist 10 30 2"
$ns_ at 52.957833145938 "$god_ set-dist 10 31 2"
$ns_ at 52.957833145938 "$god_ set-dist 10 37 3"
$ns_ at 52.957833145938 "$god_ set-dist 10 43 1"
$ns_ at 52.957833145938 "$god_ set-dist 10 44 2"
$ns_ at 52.969056901577 "$god_ set-dist 5 13 2"
$ns_ at 52.969056901577 "$god_ set-dist 12 13 3"
$ns_ at 52.969056901577 "$god_ set-dist 13 27 3"
$ns_ at 52.969056901577 "$god_ set-dist 13 49 3"
$ns_ at 52.971416639382 "$god_ set-dist 12 16 2"
$ns_ at 52.971416639382 "$god_ set-dist 16 27 1"
$ns_ at 52.971416639382 "$god_ set-dist 16 42 2"
$ns_ at 53.121749245876 "$god_ set-dist 10 26 2"
$ns_ at 53.121749245876 "$god_ set-dist 16 26 2"
$ns_ at 53.121749245876 "$god_ set-dist 22 26 2"
$ns_ at 53.121749245876 "$god_ set-dist 26 27 1"
$ns_ at 53.128080285299 "$god_ set-dist 3 10 2"
$ns_ at 53.128080285299 "$god_ set-dist 3 16 2"
$ns_ at 53.128080285299 "$god_ set-dist 3 22 2"
$ns_ at 53.128080285299 "$god_ set-dist 3 27 1"
$ns_ at 53.136567432960 "$god_ set-dist 2 37 3"
$ns_ at 53.136567432960 "$god_ set-dist 20 37 2"
$ns_ at 53.136567432960 "$god_ set-dist 21 37 4"
$ns_ at 53.136567432960 "$god_ set-dist 24 37 3"
$ns_ at 53.136567432960 "$god_ set-dist 25 37 4"
$ns_ at 53.136567432960 "$god_ set-dist 32 37 4"
$ns_ at 53.193451734572 "$god_ set-dist 11 49 2"
$ns_ at 53.193451734572 "$god_ set-dist 13 49 2"
$ns_ at 53.193451734572 "$god_ set-dist 30 49 2"
$ns_ at 53.193451734572 "$god_ set-dist 34 49 2"
$ns_ at 53.193451734572 "$god_ set-dist 43 49 1"
$ns_ at 53.222415700804 "$god_ set-dist 1 46 2"
$ns_ at 53.222415700804 "$god_ set-dist 35 46 1"
$ns_ at 53.222415700804 "$god_ set-dist 46 47 2"
$ns_ at 53.269589168300 "$god_ set-dist 13 29 1"
$ns_ at 53.275348194765 "$god_ set-dist 12 49 1"
$ns_ at 53.315118756089 "$god_ set-dist 11 27 2"
$ns_ at 53.315118756089 "$god_ set-dist 13 27 2"
$ns_ at 53.315118756089 "$god_ set-dist 27 30 2"
$ns_ at 53.315118756089 "$god_ set-dist 27 34 2"
$ns_ at 53.315118756089 "$god_ set-dist 27 43 1"
$ns_ at 53.324705855306 "$god_ set-dist 2 31 1"
$ns_ at 53.324705855306 "$god_ set-dist 2 37 2"
$ns_ at 53.324705855306 "$god_ set-dist 21 31 2"
$ns_ at 53.324705855306 "$god_ set-dist 21 37 3"
$ns_ at 53.422183362802 "$god_ set-dist 44 45 2"
$ns_ at 53.508656024854 "$god_ set-dist 4 25 2"
$ns_ at 53.508656024854 "$god_ set-dist 18 25 2"
$ns_ at 53.508656024854 "$god_ set-dist 25 31 2"
$ns_ at 53.508656024854 "$god_ set-dist 25 37 3"
$ns_ at 53.508656024854 "$god_ set-dist 25 43 1"
$ns_ at 53.609098125525 "$god_ set-dist 11 21 2"
$ns_ at 53.609098125525 "$god_ set-dist 21 30 2"
$ns_ at 53.609098125525 "$god_ set-dist 21 43 1"
$ns_ at 53.609098125525 "$god_ set-dist 21 44 2"
$ns_ at 53.639467207018 "$god_ set-dist 13 46 1"
$ns_ at 53.656642347607 "$god_ set-dist 10 30 3"
$ns_ at 53.656642347607 "$god_ set-dist 21 30 3"
$ns_ at 53.656642347607 "$god_ set-dist 27 30 3"
$ns_ at 53.656642347607 "$god_ set-dist 30 40 3"
$ns_ at 53.656642347607 "$god_ set-dist 30 43 2"
$ns_ at 53.656642347607 "$god_ set-dist 30 49 3"
$ns_ at 53.705049925364 "$god_ set-dist 5 28 1"
$ns_ at 53.705049925364 "$god_ set-dist 7 28 2"
$ns_ at 53.705049925364 "$god_ set-dist 14 28 2"
$ns_ at 53.705049925364 "$god_ set-dist 23 28 3"
$ns_ at 53.705049925364 "$god_ set-dist 24 28 2"
$ns_ at 53.705049925364 "$god_ set-dist 28 46 2"
$ns_ at 53.716867047729 "$god_ set-dist 1 39 2"
$ns_ at 53.716867047729 "$god_ set-dist 4 39 1"
$ns_ at 53.716867047729 "$god_ set-dist 29 39 2"
$ns_ at 53.716867047729 "$god_ set-dist 33 39 2"
$ns_ at 53.716867047729 "$god_ set-dist 35 39 2"
$ns_ at 53.716867047729 "$god_ set-dist 38 39 2"
$ns_ at 53.716867047729 "$god_ set-dist 39 44 2"
$ns_ at 53.716867047729 "$god_ set-dist 39 45 3"
$ns_ at 53.716867047729 "$god_ set-dist 39 47 2"
$ns_ at 53.765635695319 "$god_ set-dist 5 14 2"
$ns_ at 53.765635695319 "$god_ set-dist 12 14 3"
$ns_ at 53.765635695319 "$god_ set-dist 14 28 3"
$ns_ at 53.800519613189 "$god_ set-dist 20 34 1"
$ns_ at 53.822166347763 "$god_ set-dist 11 28 2"
$ns_ at 53.822166347763 "$god_ set-dist 28 30 2"
$ns_ at 53.822166347763 "$god_ set-dist 28 31 1"
$ns_ at 53.853195718399 "$god_ set-dist 9 32 3"
$ns_ at 53.853195718399 "$god_ set-dist 11 32 3"
$ns_ at 53.853195718399 "$god_ set-dist 20 32 3"
$ns_ at 53.853195718399 "$god_ set-dist 23 32 3"
$ns_ at 53.853195718399 "$god_ set-dist 24 32 2"
$ns_ at 53.853195718399 "$god_ set-dist 30 32 3"
$ns_ at 53.853195718399 "$god_ set-dist 32 44 3"
$ns_ at 53.853195718399 "$god_ set-dist 32 45 3"
$ns_ at 53.962577207948 "$god_ set-dist 1 33 1"
$ns_ at 53.962577207948 "$god_ set-dist 1 41 2"
$ns_ at 54.077570136218 "$god_ set-dist 0 35 3"
$ns_ at 54.077570136218 "$god_ set-dist 3 35 3"
$ns_ at 54.077570136218 "$god_ set-dist 4 35 2"
$ns_ at 54.077570136218 "$god_ set-dist 15 35 3"
$ns_ at 54.077570136218 "$god_ set-dist 26 35 3"
$ns_ at 54.077570136218 "$god_ set-dist 35 39 3"
$ns_ at 54.077570136218 "$god_ set-dist 35 48 3"
$ns_ at 54.113373010081 "$god_ set-dist 0 5 1"
$ns_ at 54.113373010081 "$god_ set-dist 0 7 2"
$ns_ at 54.113373010081 "$god_ set-dist 0 23 3"
$ns_ at 54.113373010081 "$god_ set-dist 0 24 2"
$ns_ at 54.113373010081 "$god_ set-dist 0 35 2"
$ns_ at 54.113373010081 "$god_ set-dist 0 46 2"
$ns_ at 54.279015714303 "$god_ set-dist 5 21 1"
$ns_ at 54.279015714303 "$god_ set-dist 6 21 2"
$ns_ at 54.358700360414 "$god_ set-dist 5 48 1"
$ns_ at 54.358700360414 "$god_ set-dist 7 48 2"
$ns_ at 54.358700360414 "$god_ set-dist 23 48 3"
$ns_ at 54.358700360414 "$god_ set-dist 24 48 2"
$ns_ at 54.358700360414 "$god_ set-dist 35 48 2"
$ns_ at 54.358700360414 "$god_ set-dist 46 48 2"
$ns_ at 54.419038612422 "$god_ set-dist 6 23 2"
$ns_ at 54.419038612422 "$god_ set-dist 23 35 1"
$ns_ at 54.442343820079 "$god_ set-dist 10 42 3"
$ns_ at 54.442343820079 "$god_ set-dist 16 42 3"
$ns_ at 54.442343820079 "$god_ set-dist 22 42 3"
$ns_ at 54.442343820079 "$god_ set-dist 27 42 2"
$ns_ at 54.449862759592 "$god_ set-dist 2 6 1"
$ns_ at 54.472276329483 "$god_ set-dist 11 22 2"
$ns_ at 54.472276329483 "$god_ set-dist 20 22 2"
$ns_ at 54.472276329483 "$god_ set-dist 22 31 2"
$ns_ at 54.472276329483 "$god_ set-dist 22 37 3"
$ns_ at 54.472276329483 "$god_ set-dist 22 43 1"
$ns_ at 54.472276329483 "$god_ set-dist 22 44 2"
$ns_ at 54.478870486749 "$god_ set-dist 19 26 1"
$ns_ at 54.525464372501 "$god_ set-dist 3 19 1"
$ns_ at 54.564799942128 "$node_(37) setdest 630.887615868036 118.404132686104 0.000000000000"
$ns_ at 54.704029530462 "$god_ set-dist 17 44 2"
$ns_ at 54.704029530462 "$god_ set-dist 18 44 1"
$ns_ at 54.704029530462 "$god_ set-dist 19 44 2"
$ns_ at 54.704029530462 "$god_ set-dist 36 44 2"
$ns_ at 54.704029530462 "$god_ set-dist 42 44 2"
$ns_ at 54.750192971085 "$god_ set-dist 2 21 2"
$ns_ at 54.750192971085 "$god_ set-dist 21 42 3"
$ns_ at 54.780798069653 "$god_ set-dist 11 16 2"
$ns_ at 54.780798069653 "$god_ set-dist 16 20 2"
$ns_ at 54.780798069653 "$god_ set-dist 16 31 2"
$ns_ at 54.780798069653 "$god_ set-dist 16 37 3"
$ns_ at 54.780798069653 "$god_ set-dist 16 43 1"
$ns_ at 54.780798069653 "$god_ set-dist 16 44 2"
$ns_ at 54.839806993394 "$god_ set-dist 18 32 2"
$ns_ at 54.839806993394 "$god_ set-dist 18 40 1"
$ns_ at 54.897614386835 "$god_ set-dist 8 48 2"
$ns_ at 54.897614386835 "$god_ set-dist 11 48 2"
$ns_ at 54.897614386835 "$god_ set-dist 30 48 2"
$ns_ at 54.897614386835 "$god_ set-dist 31 48 1"
$ns_ at 54.897614386835 "$god_ set-dist 37 48 2"
$ns_ at 54.945924319771 "$god_ set-dist 1 5 1"
$ns_ at 54.945924319771 "$god_ set-dist 1 21 2"
$ns_ at 54.945924319771 "$god_ set-dist 1 40 2"
$ns_ at 54.988731505170 "$god_ set-dist 6 48 1"
$ns_ at 55.044819631073 "$god_ set-dist 12 19 1"
$ns_ at 55.215102334614 "$god_ set-dist 12 30 3"
$ns_ at 55.215102334614 "$god_ set-dist 28 30 3"
$ns_ at 55.215102334614 "$god_ set-dist 30 31 2"
$ns_ at 55.215102334614 "$god_ set-dist 30 48 3"
$ns_ at 55.228250970281 "$god_ set-dist 3 5 1"
$ns_ at 55.228250970281 "$god_ set-dist 3 7 2"
$ns_ at 55.228250970281 "$god_ set-dist 3 23 3"
$ns_ at 55.228250970281 "$god_ set-dist 3 24 2"
$ns_ at 55.228250970281 "$god_ set-dist 3 35 2"
$ns_ at 55.228250970281 "$god_ set-dist 3 46 2"
$ns_ at 55.231320940248 "$god_ set-dist 12 13 2"
$ns_ at 55.231320940248 "$god_ set-dist 13 28 2"
$ns_ at 55.231320940248 "$god_ set-dist 13 31 1"
$ns_ at 55.231320940248 "$god_ set-dist 13 48 2"
$ns_ at 55.247700634569 "$god_ set-dist 7 47 3"
$ns_ at 55.247700634569 "$god_ set-dist 32 47 4"
$ns_ at 55.247700634569 "$god_ set-dist 35 47 2"
$ns_ at 55.247700634569 "$god_ set-dist 46 47 3"
$ns_ at 55.284147650882 "$god_ set-dist 6 26 1"
$ns_ at 55.284147650882 "$god_ set-dist 8 26 2"
$ns_ at 55.284147650882 "$god_ set-dist 23 26 3"
$ns_ at 55.284147650882 "$god_ set-dist 26 35 2"
$ns_ at 55.284147650882 "$god_ set-dist 26 37 2"
$ns_ at 55.464790556800 "$god_ set-dist 3 49 1"
$ns_ at 55.469493392927 "$god_ set-dist 6 23 3"
$ns_ at 55.469493392927 "$god_ set-dist 6 35 2"
$ns_ at 55.469493392927 "$god_ set-dist 23 26 4"
$ns_ at 55.469493392927 "$god_ set-dist 26 35 3"
$ns_ at 55.475940809584 "$god_ set-dist 5 39 1"
$ns_ at 55.475940809584 "$god_ set-dist 7 39 2"
$ns_ at 55.475940809584 "$god_ set-dist 23 39 3"
$ns_ at 55.475940809584 "$god_ set-dist 24 39 2"
$ns_ at 55.475940809584 "$god_ set-dist 35 39 2"
$ns_ at 55.475940809584 "$god_ set-dist 39 46 2"
$ns_ at 55.482696548858 "$god_ set-dist 5 26 1"
$ns_ at 55.482696548858 "$god_ set-dist 7 26 2"
$ns_ at 55.482696548858 "$god_ set-dist 23 26 3"
$ns_ at 55.482696548858 "$god_ set-dist 24 26 2"
$ns_ at 55.482696548858 "$god_ set-dist 26 35 2"
$ns_ at 55.482696548858 "$god_ set-dist 26 46 2"
$ns_ at 55.488720637245 "$god_ set-dist 9 25 3"
$ns_ at 55.488720637245 "$god_ set-dist 23 25 3"
$ns_ at 55.488720637245 "$god_ set-dist 24 25 2"
$ns_ at 55.488720637245 "$god_ set-dist 25 30 3"
$ns_ at 55.488720637245 "$god_ set-dist 25 45 3"
$ns_ at 55.494797128839 "$god_ set-dist 4 32 2"
$ns_ at 55.494797128839 "$god_ set-dist 11 32 2"
$ns_ at 55.494797128839 "$god_ set-dist 20 32 2"
$ns_ at 55.494797128839 "$god_ set-dist 31 32 2"
$ns_ at 55.494797128839 "$god_ set-dist 32 37 3"
$ns_ at 55.494797128839 "$god_ set-dist 32 43 1"
$ns_ at 55.494797128839 "$god_ set-dist 32 44 2"
$ns_ at 55.494797128839 "$god_ set-dist 32 47 3"
$ns_ at 55.497136419910 "$god_ set-dist 11 26 2"
$ns_ at 55.497136419910 "$god_ set-dist 13 26 2"
$ns_ at 55.497136419910 "$god_ set-dist 26 31 1"
$ns_ at 55.509434984751 "$god_ set-dist 5 29 1"
$ns_ at 55.509434984751 "$god_ set-dist 21 29 2"
$ns_ at 55.509434984751 "$god_ set-dist 29 40 2"
$ns_ at 55.509942102948 "$god_ set-dist 22 26 3"
$ns_ at 55.509942102948 "$god_ set-dist 22 27 2"
$ns_ at 55.531382244186 "$god_ set-dist 19 28 2"
$ns_ at 55.537818292363 "$god_ set-dist 4 23 2"
$ns_ at 55.537818292363 "$god_ set-dist 6 23 2"
$ns_ at 55.537818292363 "$god_ set-dist 15 23 3"
$ns_ at 55.537818292363 "$god_ set-dist 23 33 1"
$ns_ at 55.585160311158 "$god_ set-dist 3 8 2"
$ns_ at 55.585160311158 "$god_ set-dist 3 11 2"
$ns_ at 55.585160311158 "$god_ set-dist 3 13 2"
$ns_ at 55.585160311158 "$god_ set-dist 3 31 1"
$ns_ at 55.585160311158 "$god_ set-dist 3 37 2"
$ns_ at 55.589265699646 "$god_ set-dist 23 47 3"
$ns_ at 55.589265699646 "$god_ set-dist 30 47 2"
$ns_ at 55.589265699646 "$god_ set-dist 45 47 3"
$ns_ at 55.600134049002 "$god_ set-dist 1 17 2"
$ns_ at 55.600134049002 "$god_ set-dist 1 18 1"
$ns_ at 55.600134049002 "$god_ set-dist 1 19 2"
$ns_ at 55.600134049002 "$god_ set-dist 1 36 2"
$ns_ at 55.600134049002 "$god_ set-dist 1 42 2"
$ns_ at 55.709495992641 "$god_ set-dist 1 19 3"
$ns_ at 55.709495992641 "$god_ set-dist 18 19 2"
$ns_ at 55.709495992641 "$god_ set-dist 19 44 3"
$ns_ at 55.747305084515 "$god_ set-dist 2 44 1"
$ns_ at 55.747305084515 "$god_ set-dist 19 44 2"
$ns_ at 55.882792284062 "$god_ set-dist 0 8 2"
$ns_ at 55.882792284062 "$god_ set-dist 4 8 1"
$ns_ at 55.882792284062 "$god_ set-dist 8 15 2"
$ns_ at 55.882792284062 "$god_ set-dist 8 27 2"
$ns_ at 55.882792284062 "$god_ set-dist 8 39 2"
$ns_ at 55.882792284062 "$god_ set-dist 8 49 2"
$ns_ at 55.908548279986 "$god_ set-dist 22 36 3"
$ns_ at 55.908548279986 "$god_ set-dist 36 49 2"
$ns_ at 55.914724552511 "$god_ set-dist 1 30 2"
$ns_ at 55.959485288058 "$god_ set-dist 34 41 1"
$ns_ at 55.972065855679 "$god_ set-dist 7 11 1"
$ns_ at 56.035185519331 "$god_ set-dist 7 15 2"
$ns_ at 56.035185519331 "$god_ set-dist 7 17 2"
$ns_ at 56.035185519331 "$god_ set-dist 7 19 2"
$ns_ at 56.035185519331 "$god_ set-dist 7 27 1"
$ns_ at 56.035185519331 "$god_ set-dist 7 36 2"
$ns_ at 56.051810368005 "$god_ set-dist 7 36 3"
$ns_ at 56.051810368005 "$god_ set-dist 10 36 3"
$ns_ at 56.051810368005 "$god_ set-dist 16 36 3"
$ns_ at 56.051810368005 "$god_ set-dist 21 36 3"
$ns_ at 56.051810368005 "$god_ set-dist 27 36 2"
$ns_ at 56.055049465693 "$god_ set-dist 22 28 3"
$ns_ at 56.055049465693 "$god_ set-dist 28 49 2"
$ns_ at 56.116972332368 "$god_ set-dist 0 11 2"
$ns_ at 56.116972332368 "$god_ set-dist 0 13 2"
$ns_ at 56.116972332368 "$god_ set-dist 0 31 1"
$ns_ at 56.116972332368 "$god_ set-dist 0 37 2"
$ns_ at 56.153717156681 "$god_ set-dist 27 31 1"
$ns_ at 56.153717156681 "$god_ set-dist 27 37 2"
$ns_ at 56.168740320771 "$god_ set-dist 11 46 1"
$ns_ at 56.258312045832 "$god_ set-dist 1 11 1"
$ns_ at 56.330739010606 "$god_ set-dist 15 46 2"
$ns_ at 56.330739010606 "$god_ set-dist 17 46 2"
$ns_ at 56.330739010606 "$god_ set-dist 19 46 2"
$ns_ at 56.330739010606 "$god_ set-dist 27 46 1"
$ns_ at 56.365029458923 "$god_ set-dist 1 13 1"
$ns_ at 56.429597833189 "$god_ set-dist 14 41 1"
$ns_ at 56.459780373842 "$god_ set-dist 18 41 1"
$ns_ at 56.529873595958 "$god_ set-dist 1 2 1"
$ns_ at 56.529873595958 "$god_ set-dist 1 19 2"
$ns_ at 56.588337495599 "$node_(27) setdest 203.555234942932 327.477811175721 0.000000000000"
$ns_ at 56.715709305460 "$god_ set-dist 29 30 2"
$ns_ at 56.751937102639 "$god_ set-dist 5 35 2"
$ns_ at 56.751937102639 "$god_ set-dist 35 39 3"
$ns_ at 56.796484286781 "$node_(44) setdest 480.325010890980 348.914809831018 0.000000000000"
$ns_ at 56.834125696977 "$god_ set-dist 6 12 2"
$ns_ at 56.852347167361 "$god_ set-dist 11 29 2"
$ns_ at 56.980952537906 "$god_ set-dist 5 15 1"
$ns_ at 56.980952537906 "$god_ set-dist 15 24 2"
$ns_ at 56.983326117511 "$god_ set-dist 17 29 2"
$ns_ at 56.983326117511 "$god_ set-dist 18 29 1"
$ns_ at 56.983326117511 "$god_ set-dist 29 36 2"
$ns_ at 56.983326117511 "$god_ set-dist 29 42 2"
$ns_ at 57.034374011508 "$god_ set-dist 2 41 2"
$ns_ at 57.091858148870 "$god_ set-dist 8 24 1"
$ns_ at 57.091858148870 "$god_ set-dist 24 37 2"
$ns_ at 57.148269781711 "$god_ set-dist 0 11 3"
$ns_ at 57.148269781711 "$god_ set-dist 3 11 3"
$ns_ at 57.148269781711 "$god_ set-dist 11 12 3"
$ns_ at 57.148269781711 "$god_ set-dist 11 26 3"
$ns_ at 57.148269781711 "$god_ set-dist 11 28 3"
$ns_ at 57.148269781711 "$god_ set-dist 11 31 2"
$ns_ at 57.148269781711 "$god_ set-dist 11 48 3"
$ns_ at 57.148990065696 "$god_ set-dist 1 48 1"
$ns_ at 57.148990065696 "$god_ set-dist 11 48 2"
$ns_ at 57.160059955463 "$god_ set-dist 5 46 2"
$ns_ at 57.183326454105 "$god_ set-dist 0 37 3"
$ns_ at 57.183326454105 "$god_ set-dist 3 37 3"
$ns_ at 57.183326454105 "$god_ set-dist 10 37 4"
$ns_ at 57.183326454105 "$god_ set-dist 12 37 3"
$ns_ at 57.183326454105 "$god_ set-dist 16 37 4"
$ns_ at 57.183326454105 "$god_ set-dist 22 37 4"
$ns_ at 57.183326454105 "$god_ set-dist 25 37 4"
$ns_ at 57.183326454105 "$god_ set-dist 27 37 3"
$ns_ at 57.183326454105 "$god_ set-dist 31 37 2"
$ns_ at 57.183326454105 "$god_ set-dist 32 37 4"
$ns_ at 57.183326454105 "$god_ set-dist 37 43 3"
$ns_ at 57.201237194667 "$god_ set-dist 7 20 1"
$ns_ at 57.201237194667 "$god_ set-dist 7 47 2"
$ns_ at 57.332485932893 "$god_ set-dist 5 17 1"
$ns_ at 57.332485932893 "$god_ set-dist 17 23 3"
$ns_ at 57.332485932893 "$god_ set-dist 17 24 2"
$ns_ at 57.332485932893 "$god_ set-dist 17 33 2"
$ns_ at 57.332485932893 "$god_ set-dist 17 45 3"
$ns_ at 57.381488052322 "$god_ set-dist 29 35 2"
$ns_ at 57.422038827125 "$god_ set-dist 19 48 2"
$ns_ at 57.427745055862 "$god_ set-dist 24 31 1"
$ns_ at 57.432245601062 "$god_ set-dist 1 28 1"
$ns_ at 57.432245601062 "$god_ set-dist 11 28 2"
$ns_ at 57.440391417844 "$god_ set-dist 7 49 1"
$ns_ at 57.473136039469 "$god_ set-dist 2 29 1"
$ns_ at 57.473136039469 "$god_ set-dist 19 29 2"
$ns_ at 57.478720379270 "$god_ set-dist 22 26 2"
$ns_ at 57.478720379270 "$god_ set-dist 26 49 1"
$ns_ at 57.484227006119 "$god_ set-dist 0 22 3"
$ns_ at 57.484227006119 "$god_ set-dist 3 22 3"
$ns_ at 57.484227006119 "$god_ set-dist 12 22 3"
$ns_ at 57.484227006119 "$god_ set-dist 15 22 3"
$ns_ at 57.484227006119 "$god_ set-dist 17 22 3"
$ns_ at 57.484227006119 "$god_ set-dist 19 22 3"
$ns_ at 57.484227006119 "$god_ set-dist 22 26 3"
$ns_ at 57.484227006119 "$god_ set-dist 22 39 3"
$ns_ at 57.484227006119 "$god_ set-dist 22 48 3"
$ns_ at 57.484227006119 "$god_ set-dist 22 49 2"
$ns_ at 57.643196484125 "$god_ set-dist 13 43 2"
$ns_ at 57.653253332300 "$node_(35) setdest 515.190824640378 467.262792342962 0.000000000000"
$ns_ at 57.691322851943 "$god_ set-dist 5 7 2"
$ns_ at 57.724620289945 "$god_ set-dist 29 48 1"
$ns_ at 57.880549866913 "$god_ set-dist 11 43 2"
$ns_ at 58.017484869428 "$god_ set-dist 5 24 2"
$ns_ at 58.017484869428 "$god_ set-dist 15 24 3"
$ns_ at 58.017484869428 "$god_ set-dist 17 24 3"
$ns_ at 58.017484869428 "$god_ set-dist 24 39 3"
$ns_ at 58.037773584020 "$god_ set-dist 2 40 2"
$ns_ at 58.082351698904 "$god_ set-dist 1 19 3"
$ns_ at 58.082351698904 "$god_ set-dist 2 19 2"
$ns_ at 58.082351698904 "$god_ set-dist 9 19 4"
$ns_ at 58.082351698904 "$god_ set-dist 19 20 3"
$ns_ at 58.082351698904 "$god_ set-dist 19 29 3"
$ns_ at 58.082351698904 "$god_ set-dist 19 30 4"
$ns_ at 58.082351698904 "$god_ set-dist 19 44 3"
$ns_ at 58.085367505404 "$god_ set-dist 28 29 1"
$ns_ at 58.090181411661 "$god_ set-dist 1 19 2"
$ns_ at 58.090181411661 "$god_ set-dist 1 26 1"
$ns_ at 58.090181411661 "$god_ set-dist 11 26 2"
$ns_ at 58.122941955539 "$god_ set-dist 5 36 1"
$ns_ at 58.122941955539 "$god_ set-dist 21 36 2"
$ns_ at 58.122941955539 "$god_ set-dist 23 36 3"
$ns_ at 58.122941955539 "$god_ set-dist 33 36 2"
$ns_ at 58.122941955539 "$god_ set-dist 36 45 3"
$ns_ at 58.145933725754 "$god_ set-dist 0 14 2"
$ns_ at 58.145933725754 "$god_ set-dist 3 14 2"
$ns_ at 58.145933725754 "$god_ set-dist 12 14 2"
$ns_ at 58.145933725754 "$god_ set-dist 14 26 2"
$ns_ at 58.145933725754 "$god_ set-dist 14 28 2"
$ns_ at 58.145933725754 "$god_ set-dist 14 31 1"
$ns_ at 58.145933725754 "$god_ set-dist 14 48 2"
$ns_ at 58.292760293381 "$god_ set-dist 18 21 1"
$ns_ at 58.292760293381 "$god_ set-dist 21 42 2"
$ns_ at 58.348469377806 "$god_ set-dist 46 49 1"
$ns_ at 58.447236295603 "$god_ set-dist 1 24 1"
$ns_ at 58.501076419459 "$god_ set-dist 31 49 1"
$ns_ at 58.504508532451 "$god_ set-dist 19 29 2"
$ns_ at 58.504508532451 "$god_ set-dist 26 29 1"
$ns_ at 58.531582292563 "$god_ set-dist 1 14 1"
$ns_ at 58.636256579170 "$god_ set-dist 9 25 2"
$ns_ at 58.636256579170 "$god_ set-dist 23 25 2"
$ns_ at 58.636256579170 "$god_ set-dist 25 30 2"
$ns_ at 58.636256579170 "$god_ set-dist 25 34 1"
$ns_ at 58.636256579170 "$god_ set-dist 25 45 2"
$ns_ at 58.685488228734 "$god_ set-dist 4 22 3"
$ns_ at 58.685488228734 "$god_ set-dist 4 25 3"
$ns_ at 58.685488228734 "$god_ set-dist 4 32 3"
$ns_ at 58.685488228734 "$god_ set-dist 4 43 2"
$ns_ at 58.706052776206 "$god_ set-dist 13 39 2"
$ns_ at 58.706052776206 "$god_ set-dist 14 39 2"
$ns_ at 58.706052776206 "$god_ set-dist 24 39 2"
$ns_ at 58.706052776206 "$god_ set-dist 31 39 1"
$ns_ at 58.706052776206 "$god_ set-dist 35 39 2"
$ns_ at 58.718994506083 "$god_ set-dist 22 39 2"
$ns_ at 58.718994506083 "$god_ set-dist 25 39 2"
$ns_ at 58.718994506083 "$god_ set-dist 32 39 2"
$ns_ at 58.718994506083 "$god_ set-dist 39 40 1"
$ns_ at 58.751882204145 "$god_ set-dist 7 44 1"
$ns_ at 58.959484954540 "$god_ set-dist 5 23 3"
$ns_ at 58.959484954540 "$god_ set-dist 5 33 2"
$ns_ at 58.959484954540 "$god_ set-dist 5 45 3"
$ns_ at 58.959484954540 "$god_ set-dist 17 23 4"
$ns_ at 58.959484954540 "$god_ set-dist 17 33 3"
$ns_ at 58.959484954540 "$god_ set-dist 17 45 4"
$ns_ at 58.959484954540 "$god_ set-dist 23 36 4"
$ns_ at 58.959484954540 "$god_ set-dist 33 36 3"
$ns_ at 58.959484954540 "$god_ set-dist 36 45 4"
$ns_ at 58.965165387063 "$god_ set-dist 0 25 2"
$ns_ at 58.965165387063 "$god_ set-dist 3 25 2"
$ns_ at 58.965165387063 "$god_ set-dist 4 25 2"
$ns_ at 58.965165387063 "$god_ set-dist 12 25 2"
$ns_ at 58.965165387063 "$god_ set-dist 15 25 2"
$ns_ at 58.965165387063 "$god_ set-dist 17 25 2"
$ns_ at 58.965165387063 "$god_ set-dist 19 25 2"
$ns_ at 58.965165387063 "$god_ set-dist 25 26 2"
$ns_ at 58.965165387063 "$god_ set-dist 25 48 2"
$ns_ at 58.965165387063 "$god_ set-dist 25 49 1"
$ns_ at 58.973427321468 "$god_ set-dist 16 36 2"
$ns_ at 58.973427321468 "$god_ set-dist 16 39 1"
$ns_ at 58.973427321468 "$god_ set-dist 16 42 2"
$ns_ at 58.973677470530 "$god_ set-dist 35 43 2"
$ns_ at 59.091639886799 "$god_ set-dist 30 38 2"
$ns_ at 59.134670549151 "$god_ set-dist 5 42 1"
$ns_ at 59.183163814016 "$god_ set-dist 21 39 1"
$ns_ at 59.239101354059 "$god_ set-dist 9 48 2"
$ns_ at 59.239101354059 "$god_ set-dist 20 48 1"
$ns_ at 59.239101354059 "$god_ set-dist 30 48 2"
$ns_ at 59.239101354059 "$god_ set-dist 34 48 2"
$ns_ at 59.291606589946 "$node_(1) setdest 476.542176567198 249.975002693199 0.000000000000"
$ns_ at 59.335555310702 "$god_ set-dist 4 24 1"
$ns_ at 59.335555310702 "$god_ set-dist 15 24 2"
$ns_ at 59.382890381609 "$god_ set-dist 11 38 2"
$ns_ at 59.445472953777 "$god_ set-dist 43 44 2"
$ns_ at 59.573368443497 "$god_ set-dist 12 13 3"
$ns_ at 59.573368443497 "$god_ set-dist 12 14 3"
$ns_ at 59.573368443497 "$god_ set-dist 12 31 2"
$ns_ at 59.573368443497 "$god_ set-dist 12 35 3"
$ns_ at 59.597721445599 "$god_ set-dist 7 28 3"
$ns_ at 59.597721445599 "$god_ set-dist 10 28 3"
$ns_ at 59.597721445599 "$god_ set-dist 27 28 2"
$ns_ at 59.597721445599 "$god_ set-dist 28 46 3"
$ns_ at 59.650493833368 "$god_ set-dist 4 15 2"
$ns_ at 59.650493833368 "$god_ set-dist 8 15 3"
$ns_ at 59.650493833368 "$god_ set-dist 15 23 4"
$ns_ at 59.650493833368 "$god_ set-dist 15 24 3"
$ns_ at 59.650493833368 "$god_ set-dist 15 33 3"
$ns_ at 59.650493833368 "$god_ set-dist 15 38 3"
$ns_ at 59.650493833368 "$god_ set-dist 15 45 4"
$ns_ at 59.650493833368 "$god_ set-dist 15 47 3"
$ns_ at 59.666055964611 "$god_ set-dist 1 19 3"
$ns_ at 59.666055964611 "$god_ set-dist 6 19 3"
$ns_ at 59.666055964611 "$god_ set-dist 19 26 2"
$ns_ at 59.666055964611 "$god_ set-dist 19 29 3"
$ns_ at 59.666055964611 "$god_ set-dist 19 37 4"
$ns_ at 59.678679432465 "$god_ set-dist 1 16 2"
$ns_ at 59.678679432465 "$god_ set-dist 6 16 2"
$ns_ at 59.678679432465 "$god_ set-dist 16 18 1"
$ns_ at 59.678679432465 "$god_ set-dist 16 29 2"
$ns_ at 59.678679432465 "$god_ set-dist 16 37 3"
$ns_ at 59.766797061404 "$god_ set-dist 2 22 3"
$ns_ at 59.766797061404 "$god_ set-dist 2 32 3"
$ns_ at 59.766797061404 "$god_ set-dist 2 43 2"
$ns_ at 59.782454015430 "$god_ set-dist 0 16 1"
$ns_ at 59.782454015430 "$god_ set-dist 0 22 2"
$ns_ at 59.782454015430 "$god_ set-dist 0 32 2"
$ns_ at 59.805994380499 "$god_ set-dist 0 40 1"
$ns_ at 59.824185263999 "$god_ set-dist 20 43 2"
$ns_ at 59.845425030124 "$god_ set-dist 18 42 2"
$ns_ at 59.878222159231 "$god_ set-dist 0 35 3"
$ns_ at 59.878222159231 "$god_ set-dist 3 35 3"
$ns_ at 59.878222159231 "$god_ set-dist 31 35 2"
$ns_ at 59.878222159231 "$god_ set-dist 35 39 3"
$ns_ at 59.943495999791 "$god_ set-dist 4 36 1"
$ns_ at 59.943495999791 "$god_ set-dist 8 36 2"
$ns_ at 59.943495999791 "$god_ set-dist 23 36 3"
$ns_ at 59.943495999791 "$god_ set-dist 24 36 2"
$ns_ at 59.943495999791 "$god_ set-dist 33 36 2"
$ns_ at 59.943495999791 "$god_ set-dist 36 38 2"
$ns_ at 59.943495999791 "$god_ set-dist 36 45 3"
$ns_ at 59.943495999791 "$god_ set-dist 36 47 2"
$ns_ at 59.998266699164 "$god_ set-dist 5 21 2"
$ns_ at 60.002261128695 "$god_ set-dist 4 13 1"
$ns_ at 60.002261128695 "$god_ set-dist 12 13 2"
$ns_ at 60.002261128695 "$god_ set-dist 13 36 2"
$ns_ at 60.098137515002 "$god_ set-dist 33 43 2"
$ns_ at 60.098444266048 "$god_ set-dist 15 23 3"
$ns_ at 60.098444266048 "$god_ set-dist 15 24 2"
$ns_ at 60.098444266048 "$god_ set-dist 15 45 3"
$ns_ at 60.098444266048 "$god_ set-dist 17 23 3"
$ns_ at 60.098444266048 "$god_ set-dist 17 24 2"
$ns_ at 60.098444266048 "$god_ set-dist 17 45 3"
$ns_ at 60.098444266048 "$god_ set-dist 18 23 2"
$ns_ at 60.098444266048 "$god_ set-dist 18 24 1"
$ns_ at 60.098444266048 "$god_ set-dist 18 45 2"
$ns_ at 60.145760845375 "$god_ set-dist 12 25 3"
$ns_ at 60.145760845375 "$god_ set-dist 12 49 2"
$ns_ at 60.145869619534 "$god_ set-dist 25 48 3"
$ns_ at 60.145869619534 "$god_ set-dist 48 49 2"
$ns_ at 60.166427205287 "$god_ set-dist 44 48 1"
$ns_ at 60.181533300309 "$god_ set-dist 31 41 1"
$ns_ at 60.181533300309 "$god_ set-dist 41 47 2"
$ns_ at 60.193393945068 "$god_ set-dist 0 21 1"
$ns_ at 60.193946012005 "$god_ set-dist 4 12 2"
$ns_ at 60.193946012005 "$god_ set-dist 8 12 3"
$ns_ at 60.193946012005 "$god_ set-dist 12 13 3"
$ns_ at 60.193946012005 "$god_ set-dist 12 33 3"
$ns_ at 60.193946012005 "$god_ set-dist 12 38 3"
$ns_ at 60.193946012005 "$god_ set-dist 12 47 3"
$ns_ at 60.281361492266 "$god_ set-dist 4 14 1"
$ns_ at 60.281361492266 "$god_ set-dist 14 36 2"
$ns_ at 60.334696833128 "$god_ set-dist 34 39 2"
$ns_ at 60.334696833128 "$god_ set-dist 39 43 1"
$ns_ at 60.427234283499 "$node_(45) setdest 622.063146878298 628.044258531463 0.000000000000"
$ns_ at 60.472771119748 "$god_ set-dist 24 38 1"
$ns_ at 60.483586148298 "$god_ set-dist 8 15 2"
$ns_ at 60.483586148298 "$god_ set-dist 13 15 2"
$ns_ at 60.483586148298 "$god_ set-dist 14 15 2"
$ns_ at 60.483586148298 "$god_ set-dist 15 31 1"
$ns_ at 60.483586148298 "$god_ set-dist 15 33 2"
$ns_ at 60.483586148298 "$god_ set-dist 15 38 2"
$ns_ at 60.483586148298 "$god_ set-dist 15 47 2"
$ns_ at 60.540601977065 "$god_ set-dist 11 41 1"
$ns_ at 60.694765922548 "$god_ set-dist 31 36 1"
$ns_ at 60.722738767858 "$god_ set-dist 5 41 2"
$ns_ at 60.722738767858 "$god_ set-dist 41 42 3"
$ns_ at 60.765762225153 "$god_ set-dist 0 34 2"
$ns_ at 60.765762225153 "$god_ set-dist 9 21 2"
$ns_ at 60.765762225153 "$god_ set-dist 21 23 2"
$ns_ at 60.765762225153 "$god_ set-dist 21 30 2"
$ns_ at 60.765762225153 "$god_ set-dist 21 34 1"
$ns_ at 60.765762225153 "$god_ set-dist 21 45 2"
$ns_ at 60.773209063471 "$god_ set-dist 5 40 2"
$ns_ at 60.801037381286 "$god_ set-dist 9 40 2"
$ns_ at 60.801037381286 "$god_ set-dist 23 40 2"
$ns_ at 60.801037381286 "$god_ set-dist 30 40 2"
$ns_ at 60.801037381286 "$god_ set-dist 34 40 1"
$ns_ at 60.801037381286 "$god_ set-dist 40 45 2"
$ns_ at 60.836738372388 "$god_ set-dist 12 38 2"
$ns_ at 60.836738372388 "$god_ set-dist 17 38 2"
$ns_ at 60.836738372388 "$god_ set-dist 38 42 2"
$ns_ at 60.836738372388 "$god_ set-dist 38 48 1"
$ns_ at 60.844308020250 "$god_ set-dist 12 14 2"
$ns_ at 60.844308020250 "$god_ set-dist 14 17 2"
$ns_ at 60.844308020250 "$god_ set-dist 14 18 1"
$ns_ at 60.926541820799 "$god_ set-dist 17 38 3"
$ns_ at 60.926541820799 "$god_ set-dist 17 48 2"
$ns_ at 60.932302570104 "$god_ set-dist 9 26 2"
$ns_ at 60.932302570104 "$god_ set-dist 20 26 1"
$ns_ at 60.932302570104 "$god_ set-dist 26 30 2"
$ns_ at 60.932302570104 "$god_ set-dist 26 34 2"
$ns_ at 60.952783814847 "$god_ set-dist 17 28 2"
$ns_ at 61.042913937897 "$god_ set-dist 1 19 2"
$ns_ at 61.042913937897 "$god_ set-dist 5 19 1"
$ns_ at 61.042913937897 "$god_ set-dist 6 19 2"
$ns_ at 61.042913937897 "$god_ set-dist 9 19 3"
$ns_ at 61.042913937897 "$god_ set-dist 19 20 2"
$ns_ at 61.042913937897 "$god_ set-dist 19 29 2"
$ns_ at 61.042913937897 "$god_ set-dist 19 30 3"
$ns_ at 61.042913937897 "$god_ set-dist 19 37 3"
$ns_ at 61.042913937897 "$god_ set-dist 19 44 2"
$ns_ at 61.081105111032 "$node_(22) setdest 94.330208162005 643.170159191218 0.000000000000"
$ns_ at 61.099380455509 "$god_ set-dist 5 22 3"
$ns_ at 61.099380455509 "$god_ set-dist 5 32 3"
$ns_ at 61.099380455509 "$god_ set-dist 5 43 2"
$ns_ at 61.113296423486 "$god_ set-dist 9 10 2"
$ns_ at 61.113296423486 "$god_ set-dist 9 16 2"
$ns_ at 61.113296423486 "$god_ set-dist 9 22 2"
$ns_ at 61.113296423486 "$god_ set-dist 9 27 2"
$ns_ at 61.113296423486 "$god_ set-dist 9 32 2"
$ns_ at 61.113296423486 "$god_ set-dist 9 46 1"
$ns_ at 61.113296423486 "$god_ set-dist 9 49 2"
$ns_ at 61.201071727212 "$god_ set-dist 15 47 3"
$ns_ at 61.201071727212 "$god_ set-dist 31 47 2"
$ns_ at 61.201071727212 "$god_ set-dist 41 47 3"
$ns_ at 61.201071727212 "$god_ set-dist 43 47 3"
$ns_ at 61.248996812474 "$god_ set-dist 0 43 1"
$ns_ at 61.406441244984 "$god_ set-dist 13 47 1"
$ns_ at 61.406441244984 "$god_ set-dist 23 47 2"
$ns_ at 61.406441244984 "$god_ set-dist 45 47 2"
$ns_ at 61.406441244984 "$god_ set-dist 46 47 2"
$ns_ at 61.421047969085 "$god_ set-dist 6 13 1"
$ns_ at 61.470901246469 "$god_ set-dist 7 18 1"
$ns_ at 61.470901246469 "$god_ set-dist 7 28 2"
$ns_ at 61.470901246469 "$god_ set-dist 7 36 2"
$ns_ at 61.482268686499 "$god_ set-dist 15 25 3"
$ns_ at 61.482268686499 "$god_ set-dist 15 49 2"
$ns_ at 61.537841934797 "$god_ set-dist 12 47 2"
$ns_ at 61.537841934797 "$god_ set-dist 15 47 2"
$ns_ at 61.537841934797 "$god_ set-dist 42 47 2"
$ns_ at 61.537841934797 "$god_ set-dist 47 48 1"
$ns_ at 61.618367253040 "$god_ set-dist 23 32 2"
$ns_ at 61.618367253040 "$god_ set-dist 30 32 2"
$ns_ at 61.618367253040 "$god_ set-dist 32 34 1"
$ns_ at 61.618367253040 "$god_ set-dist 32 45 2"
$ns_ at 61.654610352154 "$god_ set-dist 1 11 2"
$ns_ at 61.654610352154 "$god_ set-dist 11 28 3"
$ns_ at 61.676850850535 "$god_ set-dist 2 23 2"
$ns_ at 61.676850850535 "$god_ set-dist 5 23 2"
$ns_ at 61.676850850535 "$god_ set-dist 19 23 3"
$ns_ at 61.676850850535 "$god_ set-dist 23 42 3"
$ns_ at 61.676850850535 "$god_ set-dist 23 44 1"
$ns_ at 61.676850850535 "$god_ set-dist 23 48 2"
$ns_ at 61.679029450922 "$god_ set-dist 7 9 1"
$ns_ at 61.730610830872 "$god_ set-dist 11 39 2"
$ns_ at 61.730610830872 "$god_ set-dist 39 41 1"
$ns_ at 61.730610830872 "$god_ set-dist 41 42 2"
$ns_ at 61.766497578414 "$god_ set-dist 8 21 2"
$ns_ at 61.766497578414 "$god_ set-dist 21 31 1"
$ns_ at 61.766497578414 "$god_ set-dist 21 38 2"
$ns_ at 61.838757781761 "$god_ set-dist 8 12 2"
$ns_ at 61.838757781761 "$god_ set-dist 8 42 2"
$ns_ at 61.838757781761 "$god_ set-dist 8 48 1"
$ns_ at 61.840966685411 "$god_ set-dist 24 29 1"
$ns_ at 61.841693705542 "$god_ set-dist 14 21 1"
$ns_ at 61.857112785521 "$god_ set-dist 2 38 1"
$ns_ at 61.857112785521 "$god_ set-dist 17 38 2"
$ns_ at 61.893733072388 "$god_ set-dist 23 26 2"
$ns_ at 61.893733072388 "$god_ set-dist 26 44 1"
$ns_ at 61.898754663484 "$god_ set-dist 20 41 1"
$ns_ at 61.898754663484 "$god_ set-dist 41 47 2"
$ns_ at 61.948899368329 "$god_ set-dist 8 40 2"
$ns_ at 61.948899368329 "$god_ set-dist 31 40 1"
$ns_ at 61.948899368329 "$god_ set-dist 38 40 2"
$ns_ at 61.959693556089 "$god_ set-dist 24 45 2"
$ns_ at 61.976147620599 "$god_ set-dist 6 24 1"
$ns_ at 62.004269549626 "$god_ set-dist 16 17 1"
$ns_ at 62.004269549626 "$god_ set-dist 17 22 2"
$ns_ at 62.004269549626 "$god_ set-dist 17 32 2"
$ns_ at 62.036380434170 "$god_ set-dist 24 43 2"
$ns_ at 62.065255556412 "$god_ set-dist 3 16 1"
$ns_ at 62.065255556412 "$god_ set-dist 3 22 2"
$ns_ at 62.065255556412 "$god_ set-dist 3 32 2"
$ns_ at 62.184206229584 "$god_ set-dist 12 45 4"
$ns_ at 62.184206229584 "$god_ set-dist 14 45 2"
$ns_ at 62.184206229584 "$god_ set-dist 17 45 4"
$ns_ at 62.184206229584 "$god_ set-dist 18 45 3"
$ns_ at 62.235961590539 "$god_ set-dist 8 16 2"
$ns_ at 62.235961590539 "$god_ set-dist 16 31 1"
$ns_ at 62.235961590539 "$god_ set-dist 16 38 2"
$ns_ at 62.259074997110 "$god_ set-dist 12 14 3"
$ns_ at 62.259074997110 "$god_ set-dist 12 18 2"
$ns_ at 62.259074997110 "$god_ set-dist 12 24 3"
$ns_ at 62.359807823699 "$god_ set-dist 20 30 2"
$ns_ at 62.368490246268 "$god_ set-dist 5 23 3"
$ns_ at 62.368490246268 "$god_ set-dist 5 30 3"
$ns_ at 62.368490246268 "$god_ set-dist 5 44 2"
$ns_ at 62.368490246268 "$god_ set-dist 19 23 4"
$ns_ at 62.368490246268 "$god_ set-dist 19 30 4"
$ns_ at 62.368490246268 "$god_ set-dist 19 44 3"
$ns_ at 62.380242701537 "$god_ set-dist 17 33 2"
$ns_ at 62.380242701537 "$god_ set-dist 17 45 3"
$ns_ at 62.380242701537 "$god_ set-dist 18 33 1"
$ns_ at 62.380242701537 "$god_ set-dist 18 45 2"
$ns_ at 62.387737058229 "$god_ set-dist 6 36 1"
$ns_ at 62.387737058229 "$god_ set-dist 36 37 2"
$ns_ at 62.409764798565 "$god_ set-dist 29 36 1"
$ns_ at 62.489394682334 "$god_ set-dist 2 8 1"
$ns_ at 62.489394682334 "$god_ set-dist 8 17 2"
$ns_ at 62.538772462875 "$god_ set-dist 3 34 2"
$ns_ at 62.538772462875 "$god_ set-dist 15 34 2"
$ns_ at 62.538772462875 "$god_ set-dist 17 34 2"
$ns_ at 62.538772462875 "$god_ set-dist 18 34 1"
$ns_ at 62.538772462875 "$god_ set-dist 28 34 2"
$ns_ at 62.538772462875 "$god_ set-dist 34 36 2"
$ns_ at 62.553309595661 "$god_ set-dist 21 45 3"
$ns_ at 62.553309595661 "$god_ set-dist 25 45 3"
$ns_ at 62.553309595661 "$god_ set-dist 32 45 3"
$ns_ at 62.553309595661 "$god_ set-dist 34 45 2"
$ns_ at 62.553309595661 "$god_ set-dist 40 45 3"
$ns_ at 62.553309595661 "$god_ set-dist 43 45 3"
$ns_ at 62.595115373332 "$god_ set-dist 29 33 2"
$ns_ at 62.604535784759 "$god_ set-dist 12 47 3"
$ns_ at 62.604535784759 "$god_ set-dist 12 48 2"
$ns_ at 62.659373571340 "$god_ set-dist 8 18 1"
$ns_ at 62.786229533105 "$god_ set-dist 14 40 1"
$ns_ at 62.824033702152 "$god_ set-dist 13 17 2"
$ns_ at 62.824033702152 "$god_ set-dist 13 18 1"
$ns_ at 62.893770675086 "$god_ set-dist 19 23 3"
$ns_ at 62.893770675086 "$god_ set-dist 19 30 3"
$ns_ at 62.893770675086 "$god_ set-dist 19 34 2"
$ns_ at 62.893770675086 "$god_ set-dist 23 49 2"
$ns_ at 62.893770675086 "$god_ set-dist 30 49 2"
$ns_ at 62.893770675086 "$god_ set-dist 34 49 1"
$ns_ at 62.911754623503 "$god_ set-dist 19 36 2"
$ns_ at 62.922537901844 "$god_ set-dist 0 28 2"
$ns_ at 62.939386491541 "$god_ set-dist 31 34 1"
$ns_ at 62.980274408162 "$god_ set-dist 0 35 2"
$ns_ at 62.980274408162 "$god_ set-dist 3 35 2"
$ns_ at 62.980274408162 "$god_ set-dist 4 35 1"
$ns_ at 62.980274408162 "$god_ set-dist 35 36 2"
$ns_ at 62.980274408162 "$god_ set-dist 35 39 2"
$ns_ at 63.011902380716 "$god_ set-dist 35 41 1"
$ns_ at 63.026132240672 "$god_ set-dist 0 11 2"
$ns_ at 63.026132240672 "$god_ set-dist 0 41 1"
$ns_ at 63.045610473642 "$god_ set-dist 5 23 2"
$ns_ at 63.045610473642 "$god_ set-dist 20 23 1"
$ns_ at 63.081610184993 "$god_ set-dist 2 32 2"
$ns_ at 63.081610184993 "$god_ set-dist 4 32 2"
$ns_ at 63.081610184993 "$god_ set-dist 5 32 2"
$ns_ at 63.081610184993 "$god_ set-dist 19 32 2"
$ns_ at 63.081610184993 "$god_ set-dist 26 32 2"
$ns_ at 63.081610184993 "$god_ set-dist 32 49 1"
$ns_ at 63.198194626888 "$god_ set-dist 14 19 2"
$ns_ at 63.198194626888 "$god_ set-dist 14 49 1"
$ns_ at 63.226689493906 "$god_ set-dist 17 31 1"
$ns_ at 63.297917656060 "$god_ set-dist 41 44 1"
$ns_ at 63.315164959211 "$god_ set-dist 5 9 3"
$ns_ at 63.315164959211 "$god_ set-dist 5 11 3"
$ns_ at 63.315164959211 "$god_ set-dist 5 20 2"
$ns_ at 63.315164959211 "$god_ set-dist 5 23 3"
$ns_ at 63.315164959211 "$god_ set-dist 19 20 3"
$ns_ at 63.329875376341 "$god_ set-dist 42 47 3"
$ns_ at 63.329875376341 "$god_ set-dist 42 48 2"
$ns_ at 63.352653869077 "$god_ set-dist 8 30 2"
$ns_ at 63.352653869077 "$god_ set-dist 30 37 3"
$ns_ at 63.353593209871 "$god_ set-dist 16 38 3"
$ns_ at 63.353593209871 "$god_ set-dist 21 38 3"
$ns_ at 63.353593209871 "$god_ set-dist 31 38 2"
$ns_ at 63.353593209871 "$god_ set-dist 38 40 3"
$ns_ at 63.353593209871 "$god_ set-dist 38 43 3"
$ns_ at 63.370516030295 "$god_ set-dist 2 17 2"
$ns_ at 63.370516030295 "$god_ set-dist 17 38 3"
$ns_ at 63.377499447889 "$god_ set-dist 25 30 3"
$ns_ at 63.377499447889 "$god_ set-dist 30 32 3"
$ns_ at 63.377499447889 "$god_ set-dist 30 34 2"
$ns_ at 63.429395314168 "$god_ set-dist 0 4 2"
$ns_ at 63.484148736470 "$god_ set-dist 18 46 1"
$ns_ at 63.484148736470 "$god_ set-dist 28 46 2"
$ns_ at 63.484148736470 "$god_ set-dist 36 46 2"
$ns_ at 63.497786801583 "$god_ set-dist 2 12 2"
$ns_ at 63.497786801583 "$god_ set-dist 8 12 3"
$ns_ at 63.497786801583 "$god_ set-dist 12 38 3"
$ns_ at 63.509814270399 "$god_ set-dist 7 31 1"
$ns_ at 63.513908491173 "$god_ set-dist 8 23 1"
$ns_ at 63.513908491173 "$god_ set-dist 23 37 2"
$ns_ at 63.522953418587 "$god_ set-dist 2 30 3"
$ns_ at 63.522953418587 "$god_ set-dist 12 30 4"
$ns_ at 63.522953418587 "$god_ set-dist 26 30 3"
$ns_ at 63.522953418587 "$god_ set-dist 30 42 4"
$ns_ at 63.522953418587 "$god_ set-dist 30 44 2"
$ns_ at 63.522953418587 "$god_ set-dist 30 48 3"
$ns_ at 63.548205054261 "$god_ set-dist 13 41 1"
$ns_ at 63.629780085847 "$god_ set-dist 16 23 2"
$ns_ at 63.629780085847 "$god_ set-dist 16 34 1"
$ns_ at 63.658054866481 "$god_ set-dist 12 14 2"
$ns_ at 63.658054866481 "$god_ set-dist 12 30 3"
$ns_ at 63.658054866481 "$god_ set-dist 14 27 1"
$ns_ at 63.658054866481 "$god_ set-dist 23 27 2"
$ns_ at 63.658054866481 "$god_ set-dist 27 30 2"
$ns_ at 63.683771016603 "$god_ set-dist 7 12 3"
$ns_ at 63.683771016603 "$god_ set-dist 10 12 3"
$ns_ at 63.683771016603 "$god_ set-dist 12 14 3"
$ns_ at 63.683771016603 "$god_ set-dist 12 27 2"
$ns_ at 63.683771016603 "$god_ set-dist 12 30 4"
$ns_ at 63.683771016603 "$god_ set-dist 12 46 3"
$ns_ at 63.688384917410 "$god_ set-dist 1 25 2"
$ns_ at 63.688384917410 "$god_ set-dist 8 25 2"
$ns_ at 63.688384917410 "$god_ set-dist 14 25 1"
$ns_ at 63.688384917410 "$god_ set-dist 25 30 2"
$ns_ at 63.688384917410 "$god_ set-dist 25 37 3"
$ns_ at 63.703155149163 "$god_ set-dist 24 48 1"
$ns_ at 63.703155149163 "$god_ set-dist 30 48 2"
$ns_ at 63.724791603828 "$god_ set-dist 31 33 2"
$ns_ at 63.739965927827 "$god_ set-dist 0 47 3"
$ns_ at 63.739965927827 "$god_ set-dist 0 48 2"
$ns_ at 63.856096956745 "$god_ set-dist 0 36 2"
$ns_ at 63.864919161654 "$god_ set-dist 3 40 1"
$ns_ at 63.884162415428 "$god_ set-dist 8 12 2"
$ns_ at 63.884162415428 "$god_ set-dist 8 26 1"
$ns_ at 63.914062923166 "$god_ set-dist 0 47 2"
$ns_ at 63.914062923166 "$god_ set-dist 2 47 1"
$ns_ at 63.914062923166 "$god_ set-dist 42 47 2"
$ns_ at 63.990303301311 "$god_ set-dist 12 28 2"
$ns_ at 64.002779611814 "$god_ set-dist 2 25 3"
$ns_ at 64.002779611814 "$god_ set-dist 2 32 3"
$ns_ at 64.002779611814 "$god_ set-dist 2 49 2"
$ns_ at 64.034251612746 "$god_ set-dist 24 47 1"
$ns_ at 64.093343148308 "$god_ set-dist 27 34 1"
$ns_ at 64.123397004259 "$god_ set-dist 6 33 2"
$ns_ at 64.144156027468 "$god_ set-dist 8 12 3"
$ns_ at 64.144156027468 "$god_ set-dist 9 12 4"
$ns_ at 64.144156027468 "$god_ set-dist 12 20 3"
$ns_ at 64.144156027468 "$god_ set-dist 12 23 4"
$ns_ at 64.144156027468 "$god_ set-dist 12 26 2"
$ns_ at 64.144156027468 "$god_ set-dist 12 44 3"
$ns_ at 64.162959740499 "$god_ set-dist 28 39 2"
$ns_ at 64.193464309381 "$god_ set-dist 3 21 1"
$ns_ at 64.217770780770 "$god_ set-dist 24 26 1"
$ns_ at 64.217770780770 "$god_ set-dist 24 42 2"
$ns_ at 64.217770780770 "$god_ set-dist 26 30 2"
$ns_ at 64.217770780770 "$god_ set-dist 30 42 3"
$ns_ at 64.253470616188 "$node_(16) setdest 157.206609882176 409.177379409991 0.000000000000"
$ns_ at 64.256854884365 "$god_ set-dist 4 34 1"
$ns_ at 64.262602307906 "$god_ set-dist 19 25 3"
$ns_ at 64.262602307906 "$god_ set-dist 19 32 3"
$ns_ at 64.262602307906 "$god_ set-dist 19 49 2"
$ns_ at 64.264063283712 "$god_ set-dist 17 38 2"
$ns_ at 64.264063283712 "$god_ set-dist 26 38 1"
$ns_ at 64.333913495791 "$god_ set-dist 14 30 2"
$ns_ at 64.333913495791 "$god_ set-dist 19 30 4"
$ns_ at 64.333913495791 "$god_ set-dist 21 30 3"
$ns_ at 64.333913495791 "$god_ set-dist 25 30 3"
$ns_ at 64.333913495791 "$god_ set-dist 27 30 3"
$ns_ at 64.333913495791 "$god_ set-dist 30 40 3"
$ns_ at 64.333913495791 "$god_ set-dist 30 43 3"
$ns_ at 64.333913495791 "$god_ set-dist 30 49 3"
$ns_ at 64.381356679104 "$god_ set-dist 1 9 1"
$ns_ at 64.381356679104 "$god_ set-dist 5 9 2"
$ns_ at 64.381356679104 "$god_ set-dist 9 12 3"
$ns_ at 64.381356679104 "$god_ set-dist 9 28 2"
$ns_ at 64.408963553603 "$god_ set-dist 14 26 1"
$ns_ at 64.408963553603 "$god_ set-dist 14 42 2"
$ns_ at 64.421414495657 "$god_ set-dist 18 36 2"
$ns_ at 64.421414495657 "$god_ set-dist 36 46 3"
$ns_ at 64.430295182542 "$god_ set-dist 8 32 2"
$ns_ at 64.430295182542 "$god_ set-dist 8 34 1"
$ns_ at 64.430295182542 "$god_ set-dist 32 37 3"
$ns_ at 64.430295182542 "$god_ set-dist 34 37 2"
$ns_ at 64.431242668796 "$god_ set-dist 16 26 1"
$ns_ at 64.431242668796 "$god_ set-dist 16 38 2"
$ns_ at 64.431242668796 "$god_ set-dist 22 26 2"
$ns_ at 64.483211085669 "$god_ set-dist 3 37 2"
$ns_ at 64.483211085669 "$god_ set-dist 10 37 3"
$ns_ at 64.483211085669 "$god_ set-dist 15 37 2"
$ns_ at 64.483211085669 "$god_ set-dist 27 37 2"
$ns_ at 64.483211085669 "$god_ set-dist 37 39 2"
$ns_ at 64.483211085669 "$god_ set-dist 37 48 1"
$ns_ at 64.514084791315 "$god_ set-dist 13 48 1"
$ns_ at 64.514084791315 "$god_ set-dist 45 48 2"
$ns_ at 64.709182564637 "$god_ set-dist 36 39 2"
$ns_ at 64.769455201794 "$god_ set-dist 6 45 3"
$ns_ at 64.769455201794 "$god_ set-dist 13 45 2"
$ns_ at 64.769455201794 "$god_ set-dist 29 45 3"
$ns_ at 64.769455201794 "$god_ set-dist 31 45 3"
$ns_ at 64.769455201794 "$god_ set-dist 45 47 3"
$ns_ at 64.769455201794 "$god_ set-dist 45 48 3"
$ns_ at 64.772989954723 "$god_ set-dist 0 10 1"
$ns_ at 64.772989954723 "$god_ set-dist 10 12 2"
$ns_ at 64.772989954723 "$god_ set-dist 10 42 2"
$ns_ at 64.887828997335 "$god_ set-dist 15 29 1"
$ns_ at 64.898898722864 "$god_ set-dist 3 4 2"
$ns_ at 64.898898722864 "$god_ set-dist 3 35 3"
$ns_ at 64.919416041836 "$god_ set-dist 14 43 2"
$ns_ at 64.960178550927 "$god_ set-dist 31 43 2"
$ns_ at 64.960178550927 "$god_ set-dist 36 43 3"
$ns_ at 65.047488570265 "$god_ set-dist 14 48 1"
$ns_ at 65.047488570265 "$god_ set-dist 25 48 2"
$ns_ at 65.058125642914 "$god_ set-dist 11 25 1"
$ns_ at 65.058125642914 "$god_ set-dist 25 30 2"
$ns_ at 65.058125642914 "$god_ set-dist 25 45 2"
$ns_ at 65.087151518326 "$god_ set-dist 3 11 2"
$ns_ at 65.087151518326 "$god_ set-dist 11 21 1"
$ns_ at 65.087151518326 "$god_ set-dist 21 30 2"
$ns_ at 65.087151518326 "$god_ set-dist 21 45 2"
$ns_ at 65.098270629856 "$god_ set-dist 3 37 3"
$ns_ at 65.098270629856 "$god_ set-dist 3 48 2"
$ns_ at 65.116769052464 "$god_ set-dist 17 36 2"
$ns_ at 65.143728595481 "$god_ set-dist 3 28 2"
$ns_ at 65.202304737774 "$god_ set-dist 0 2 2"
$ns_ at 65.202304737774 "$god_ set-dist 0 47 3"
$ns_ at 65.273644330977 "$god_ set-dist 14 16 1"
$ns_ at 65.295181763726 "$god_ set-dist 17 18 2"
$ns_ at 65.295181763726 "$god_ set-dist 17 33 3"
$ns_ at 65.295181763726 "$god_ set-dist 17 45 4"
$ns_ at 65.295975185152 "$god_ set-dist 21 26 1"
$ns_ at 65.295975185152 "$god_ set-dist 21 38 2"
$ns_ at 65.297040813103 "$god_ set-dist 7 42 2"
$ns_ at 65.297040813103 "$god_ set-dist 13 42 2"
$ns_ at 65.297040813103 "$god_ set-dist 31 42 1"
$ns_ at 65.297040813103 "$god_ set-dist 34 42 2"
$ns_ at 65.328525619438 "$god_ set-dist 2 24 1"
$ns_ at 65.328525619438 "$god_ set-dist 2 30 2"
$ns_ at 65.343260601400 "$god_ set-dist 13 26 1"
$ns_ at 65.372573838552 "$god_ set-dist 29 39 1"
$ns_ at 65.384835981593 "$god_ set-dist 26 41 1"
$ns_ at 65.499217683646 "$god_ set-dist 6 14 1"
$ns_ at 65.499217683646 "$god_ set-dist 6 25 2"
$ns_ at 65.514582639718 "$god_ set-dist 9 39 2"
$ns_ at 65.514582639718 "$god_ set-dist 12 14 2"
$ns_ at 65.514582639718 "$god_ set-dist 12 23 3"
$ns_ at 65.514582639718 "$god_ set-dist 14 39 1"
$ns_ at 65.514582639718 "$god_ set-dist 23 39 2"
$ns_ at 65.657271929215 "$god_ set-dist 7 12 2"
$ns_ at 65.657271929215 "$god_ set-dist 7 39 1"
$ns_ at 65.666341097960 "$god_ set-dist 5 25 3"
$ns_ at 65.666341097960 "$god_ set-dist 5 32 3"
$ns_ at 65.666341097960 "$god_ set-dist 5 49 2"
$ns_ at 65.707723514387 "$god_ set-dist 12 36 2"
$ns_ at 65.771105490741 "$god_ set-dist 2 30 3"
$ns_ at 65.771105490741 "$god_ set-dist 24 30 2"
$ns_ at 65.775800909540 "$node_(30) setdest 644.251366989754 573.870155863694 0.000000000000"
$ns_ at 65.844608400204 "$god_ set-dist 12 34 2"
$ns_ at 65.844608400204 "$god_ set-dist 34 39 1"
$ns_ at 65.853924233660 "$god_ set-dist 4 22 2"
$ns_ at 65.853924233660 "$god_ set-dist 4 41 1"
$ns_ at 65.867549011373 "$god_ set-dist 8 10 2"
$ns_ at 65.867549011373 "$god_ set-dist 10 23 2"
$ns_ at 65.867549011373 "$god_ set-dist 10 34 1"
$ns_ at 65.886078706332 "$god_ set-dist 3 36 2"
$ns_ at 65.929694774188 "$god_ set-dist 7 12 3"
$ns_ at 65.929694774188 "$god_ set-dist 12 14 3"
$ns_ at 65.929694774188 "$god_ set-dist 12 23 4"
$ns_ at 65.929694774188 "$god_ set-dist 12 34 3"
$ns_ at 65.929694774188 "$god_ set-dist 12 39 2"
$ns_ at 65.991894474645 "$god_ set-dist 1 43 3"
$ns_ at 65.991894474645 "$god_ set-dist 6 43 3"
$ns_ at 65.991894474645 "$god_ set-dist 18 43 2"
$ns_ at 65.991894474645 "$god_ set-dist 28 43 3"
$ns_ at 65.996724715889 "$god_ set-dist 1 5 2"
$ns_ at 65.996724715889 "$god_ set-dist 1 12 3"
$ns_ at 65.996724715889 "$god_ set-dist 1 19 3"
$ns_ at 65.996724715889 "$god_ set-dist 5 9 3"
$ns_ at 65.996724715889 "$god_ set-dist 9 12 4"
$ns_ at 66.001458401523 "$god_ set-dist 8 31 2"
$ns_ at 66.089093171645 "$god_ set-dist 26 34 1"
$ns_ at 66.121862667904 "$god_ set-dist 0 9 2"
$ns_ at 66.121862667904 "$god_ set-dist 9 12 3"
$ns_ at 66.121862667904 "$god_ set-dist 9 41 1"
$ns_ at 66.173183302384 "$god_ set-dist 10 48 3"
$ns_ at 66.173183302384 "$god_ set-dist 27 37 3"
$ns_ at 66.173183302384 "$god_ set-dist 27 48 2"
$ns_ at 66.176359875452 "$god_ set-dist 13 31 2"
$ns_ at 66.176359875452 "$god_ set-dist 30 31 3"
$ns_ at 66.195345948249 "$node_(33) setdest 519.008467095848 434.616279732479 0.000000000000"
$ns_ at 66.258398855860 "$god_ set-dist 10 29 2"
$ns_ at 66.258398855860 "$god_ set-dist 10 39 1"
$ns_ at 66.258398855860 "$god_ set-dist 10 48 2"
$ns_ at 66.288804068835 "$god_ set-dist 4 22 3"
$ns_ at 66.288804068835 "$god_ set-dist 22 41 2"
$ns_ at 66.385203198538 "$god_ set-dist 4 9 1"
$ns_ at 66.385203198538 "$god_ set-dist 5 9 2"
$ns_ at 66.385203198538 "$god_ set-dist 9 36 2"
$ns_ at 66.441259210122 "$god_ set-dist 28 38 1"
$ns_ at 66.445111670998 "$god_ set-dist 1 19 2"
$ns_ at 66.445111670998 "$god_ set-dist 19 20 2"
$ns_ at 66.445111670998 "$god_ set-dist 19 24 2"
$ns_ at 66.445111670998 "$god_ set-dist 19 31 1"
$ns_ at 66.445111670998 "$god_ set-dist 19 44 2"
$ns_ at 66.514576371564 "$god_ set-dist 18 28 2"
$ns_ at 66.514576371564 "$god_ set-dist 28 46 3"
$ns_ at 66.523957564363 "$god_ set-dist 15 48 2"
$ns_ at 66.546514078479 "$god_ set-dist 8 17 3"
$ns_ at 66.546514078479 "$god_ set-dist 13 17 3"
$ns_ at 66.546514078479 "$god_ set-dist 17 26 2"
$ns_ at 66.546514078479 "$god_ set-dist 17 30 4"
$ns_ at 66.546514078479 "$god_ set-dist 17 38 3"
$ns_ at 66.584145547697 "$god_ set-dist 7 36 3"
$ns_ at 66.584145547697 "$god_ set-dist 31 36 2"
$ns_ at 66.584145547697 "$god_ set-dist 36 40 3"
$ns_ at 66.591286819675 "$god_ set-dist 13 42 3"
$ns_ at 66.591286819675 "$god_ set-dist 26 42 2"
$ns_ at 66.591286819675 "$god_ set-dist 30 42 4"
$ns_ at 66.711346044882 "$god_ set-dist 33 48 1"
$ns_ at 66.711346044882 "$god_ set-dist 45 48 2"
$ns_ at 66.812440799103 "$god_ set-dist 2 3 2"
$ns_ at 66.812440799103 "$god_ set-dist 3 47 3"
$ns_ at 66.849031254854 "$god_ set-dist 13 29 2"
$ns_ at 66.849031254854 "$god_ set-dist 29 30 3"
$ns_ at 67.068324100680 "$god_ set-dist 3 35 2"
$ns_ at 67.068324100680 "$god_ set-dist 15 35 2"
$ns_ at 67.068324100680 "$god_ set-dist 18 35 1"
$ns_ at 67.130775363247 "$node_(5) setdest 242.264309835382 124.691872539909 0.000000000000"
$ns_ at 67.248339957453 "$god_ set-dist 7 28 3"
$ns_ at 67.248339957453 "$god_ set-dist 28 31 2"
$ns_ at 67.248339957453 "$god_ set-dist 28 40 3"
$ns_ at 67.260813729808 "$god_ set-dist 5 11 2"
$ns_ at 67.260813729808 "$god_ set-dist 11 15 2"
$ns_ at 67.260813729808 "$god_ set-dist 11 18 1"
$ns_ at 67.335227754388 "$god_ set-dist 28 47 1"
$ns_ at 67.363074123810 "$god_ set-dist 39 46 1"
$ns_ at 67.363074123810 "$god_ set-dist 42 46 2"
$ns_ at 67.397996765233 "$god_ set-dist 27 29 1"
$ns_ at 67.397996765233 "$god_ set-dist 27 37 2"
$ns_ at 67.445240284619 "$god_ set-dist 1 36 1"
$ns_ at 67.497330307421 "$god_ set-dist 10 48 3"
$ns_ at 67.497330307421 "$god_ set-dist 39 48 2"
$ns_ at 67.497330307421 "$god_ set-dist 43 48 3"
$ns_ at 67.531983361819 "$god_ set-dist 24 46 2"
$ns_ at 67.541340689466 "$god_ set-dist 0 12 2"
$ns_ at 67.541340689466 "$god_ set-dist 10 12 3"
$ns_ at 67.541340689466 "$god_ set-dist 12 41 3"
$ns_ at 67.541340689466 "$god_ set-dist 12 43 3"
$ns_ at 67.559668970465 "$god_ set-dist 26 33 1"
$ns_ at 67.559668970465 "$god_ set-dist 26 45 2"
$ns_ at 67.780920163790 "$god_ set-dist 17 24 3"
$ns_ at 67.780920163790 "$god_ set-dist 19 24 3"
$ns_ at 67.780920163790 "$god_ set-dist 24 31 2"
$ns_ at 67.819387997317 "$god_ set-dist 15 37 3"
$ns_ at 67.819387997317 "$god_ set-dist 27 37 3"
$ns_ at 67.819387997317 "$god_ set-dist 29 37 2"
$ns_ at 67.819387997317 "$god_ set-dist 37 39 3"
$ns_ at 67.835244332573 "$god_ set-dist 29 42 1"
$ns_ at 67.874132801926 "$god_ set-dist 20 21 1"
$ns_ at 67.874132801926 "$god_ set-dist 21 47 2"
$ns_ at 67.898175575598 "$god_ set-dist 2 27 2"
$ns_ at 67.922507019811 "$god_ set-dist 26 40 1"
$ns_ at 67.922507019811 "$god_ set-dist 28 40 2"
$ns_ at 67.922507019811 "$god_ set-dist 36 40 2"
$ns_ at 67.922507019811 "$god_ set-dist 38 40 2"
$ns_ at 67.930931360922 "$god_ set-dist 4 21 1"
$ns_ at 67.930931360922 "$god_ set-dist 4 22 2"
$ns_ at 67.935163415956 "$god_ set-dist 17 49 2"
$ns_ at 67.943747274503 "$god_ set-dist 3 43 1"
$ns_ at 67.943747274503 "$god_ set-dist 12 43 2"
$ns_ at 67.952981062771 "$god_ set-dist 22 23 2"
$ns_ at 67.952981062771 "$god_ set-dist 23 46 1"
$ns_ at 67.965813916080 "$god_ set-dist 3 9 2"
$ns_ at 67.965813916080 "$god_ set-dist 9 15 2"
$ns_ at 67.965813916080 "$god_ set-dist 9 18 1"
$ns_ at 67.984714293794 "$god_ set-dist 2 37 1"
$ns_ at 67.984714293794 "$god_ set-dist 15 37 2"
$ns_ at 67.984714293794 "$god_ set-dist 37 39 2"
$ns_ at 67.984714293794 "$god_ set-dist 37 42 2"
$ns_ at 68.011336684078 "$god_ set-dist 0 42 2"
$ns_ at 68.060081106001 "$god_ set-dist 10 42 3"
$ns_ at 68.060081106001 "$god_ set-dist 39 42 2"
$ns_ at 68.060081106001 "$god_ set-dist 42 46 3"
$ns_ at 68.127710811110 "$god_ set-dist 13 21 1"
$ns_ at 68.132188539288 "$god_ set-dist 20 39 1"
$ns_ at 68.139503701857 "$god_ set-dist 7 26 1"
$ns_ at 68.139503701857 "$god_ set-dist 7 28 2"
$ns_ at 68.139503701857 "$god_ set-dist 7 36 2"
$ns_ at 68.225803811450 "$god_ set-dist 7 24 2"
$ns_ at 68.225803811450 "$god_ set-dist 22 24 3"
$ns_ at 68.272271448705 "$god_ set-dist 10 42 2"
$ns_ at 68.272271448705 "$god_ set-dist 27 42 1"
$ns_ at 68.272271448705 "$god_ set-dist 42 46 2"
$ns_ at 68.323158459207 "$node_(12) setdest 8.934076837796 89.834219437446 0.000000000000"
$ns_ at 68.340193423321 "$god_ set-dist 0 5 2"
$ns_ at 68.369899559125 "$god_ set-dist 2 42 2"
$ns_ at 68.369899559125 "$god_ set-dist 37 42 3"
$ns_ at 68.471618681374 "$god_ set-dist 8 11 2"
$ns_ at 68.471618681374 "$god_ set-dist 11 37 3"
$ns_ at 68.518078656778 "$god_ set-dist 17 44 3"
$ns_ at 68.518078656778 "$god_ set-dist 19 44 3"
$ns_ at 68.518078656778 "$god_ set-dist 31 44 2"
$ns_ at 68.602220651415 "$god_ set-dist 11 49 1"
$ns_ at 68.602220651415 "$god_ set-dist 30 49 2"
$ns_ at 68.602220651415 "$god_ set-dist 45 49 2"
$ns_ at 68.707589346889 "$god_ set-dist 21 44 1"
$ns_ at 68.757028147739 "$god_ set-dist 2 10 3"
$ns_ at 68.757028147739 "$god_ set-dist 2 39 2"
$ns_ at 68.757028147739 "$god_ set-dist 2 43 3"
$ns_ at 68.757028147739 "$god_ set-dist 37 39 3"
$ns_ at 68.786957785065 "$god_ set-dist 6 30 3"
$ns_ at 68.786957785065 "$god_ set-dist 13 30 2"
$ns_ at 68.786957785065 "$god_ set-dist 30 47 3"
$ns_ at 68.792367025438 "$god_ set-dist 0 26 2"
$ns_ at 68.792367025438 "$god_ set-dist 0 38 3"
$ns_ at 68.813042750529 "$god_ set-dist 1 17 3"
$ns_ at 68.813042750529 "$god_ set-dist 1 19 3"
$ns_ at 68.813042750529 "$god_ set-dist 1 31 2"
$ns_ at 68.864397408998 "$god_ set-dist 28 37 1"
$ns_ at 68.864397408998 "$god_ set-dist 37 42 2"
$ns_ at 68.887544484322 "$god_ set-dist 4 22 3"
$ns_ at 68.887544484322 "$god_ set-dist 21 22 2"
$ns_ at 68.894685299747 "$god_ set-dist 26 35 1"
$ns_ at 68.916126873842 "$god_ set-dist 0 23 2"
$ns_ at 68.916126873842 "$god_ set-dist 0 34 1"
$ns_ at 68.943954251802 "$god_ set-dist 9 26 1"
$ns_ at 68.992796966976 "$god_ set-dist 6 15 1"
$ns_ at 69.045135719846 "$god_ set-dist 31 48 2"
$ns_ at 69.127425648016 "$god_ set-dist 7 36 3"
$ns_ at 69.127425648016 "$god_ set-dist 16 36 3"
$ns_ at 69.127425648016 "$god_ set-dist 22 36 4"
$ns_ at 69.127425648016 "$god_ set-dist 26 36 2"
$ns_ at 69.127425648016 "$god_ set-dist 36 40 3"
$ns_ at 69.207435429045 "$god_ set-dist 11 32 1"
$ns_ at 69.207435429045 "$god_ set-dist 30 32 2"
$ns_ at 69.207435429045 "$god_ set-dist 32 45 2"
$ns_ at 69.217076468994 "$god_ set-dist 9 21 1"
$ns_ at 69.230579115726 "$god_ set-dist 5 25 2"
$ns_ at 69.230579115726 "$god_ set-dist 15 25 2"
$ns_ at 69.230579115726 "$god_ set-dist 19 25 2"
$ns_ at 69.230579115726 "$god_ set-dist 25 29 2"
$ns_ at 69.230579115726 "$god_ set-dist 25 39 1"
$ns_ at 69.405911441911 "$god_ set-dist 20 31 2"
$ns_ at 69.422772499503 "$god_ set-dist 35 48 1"
$ns_ at 69.551390228206 "$god_ set-dist 5 48 2"
$ns_ at 69.551390228206 "$god_ set-dist 12 48 3"
$ns_ at 69.551390228206 "$god_ set-dist 17 48 3"
$ns_ at 69.551390228206 "$god_ set-dist 19 48 3"
$ns_ at 69.619247904230 "$god_ set-dist 3 10 1"
$ns_ at 69.619247904230 "$god_ set-dist 10 12 2"
$ns_ at 69.662160096185 "$god_ set-dist 28 42 2"
$ns_ at 69.662160096185 "$god_ set-dist 37 42 3"
$ns_ at 69.664006540197 "$god_ set-dist 17 44 2"
$ns_ at 69.664006540197 "$god_ set-dist 19 44 2"
$ns_ at 69.664006540197 "$god_ set-dist 39 44 1"
$ns_ at 69.718950986649 "$god_ set-dist 9 48 1"
$ns_ at 69.809026040629 "$node_(29) setdest 357.231944537312 148.218944957373 0.000000000000"
$ns_ at 69.809033292836 "$god_ set-dist 2 13 1"
$ns_ at 69.819761363089 "$god_ set-dist 13 17 2"
$ns_ at 69.819761363089 "$god_ set-dist 13 19 2"
$ns_ at 69.819761363089 "$god_ set-dist 13 39 1"
$ns_ at 69.842308696046 "$god_ set-dist 4 49 2"
$ns_ at 69.842308696046 "$god_ set-dist 36 49 3"
$ns_ at 69.842308696046 "$god_ set-dist 47 49 3"
$ns_ at 69.846330231924 "$god_ set-dist 2 31 2"
$ns_ at 69.858708781855 "$god_ set-dist 11 37 2"
$ns_ at 69.858708781855 "$god_ set-dist 24 37 1"
$ns_ at 69.858708781855 "$god_ set-dist 37 41 2"
$ns_ at 69.868376765384 "$god_ set-dist 13 19 3"
$ns_ at 69.868376765384 "$god_ set-dist 19 20 3"
$ns_ at 69.868376765384 "$god_ set-dist 19 25 3"
$ns_ at 69.868376765384 "$god_ set-dist 19 39 2"
$ns_ at 69.868376765384 "$god_ set-dist 19 44 3"
$ns_ at 69.898836402143 "$god_ set-dist 26 46 1"
$ns_ at 69.898836402143 "$god_ set-dist 28 46 2"
$ns_ at 69.995154934890 "$god_ set-dist 6 10 2"
$ns_ at 69.995154934890 "$god_ set-dist 6 39 1"
$ns_ at 69.995154934890 "$god_ set-dist 6 43 2"
$ns_ at 69.995154934890 "$god_ set-dist 37 39 2"
$ns_ at 70.049159903267 "$god_ set-dist 24 41 2"
$ns_ at 70.049159903267 "$god_ set-dist 37 41 3"
$ns_ at 70.075364625883 "$god_ set-dist 3 26 2"
$ns_ at 70.075364625883 "$god_ set-dist 3 38 3"
$ns_ at 70.081595236667 "$god_ set-dist 36 42 2"
$ns_ at 70.127891947403 "$god_ set-dist 11 24 2"
$ns_ at 70.127891947403 "$god_ set-dist 11 37 3"
$ns_ at 70.146282230710 "$god_ set-dist 4 36 2"
$ns_ at 70.146282230710 "$god_ set-dist 21 36 3"
$ns_ at 70.146282230710 "$god_ set-dist 32 36 4"
$ns_ at 70.146282230710 "$god_ set-dist 34 36 3"
$ns_ at 70.146282230710 "$god_ set-dist 36 41 3"
$ns_ at 70.191948901177 "$god_ set-dist 21 35 1"
$ns_ at 70.211403029167 "$god_ set-dist 11 40 1"
$ns_ at 70.211403029167 "$god_ set-dist 30 40 2"
$ns_ at 70.211403029167 "$god_ set-dist 40 45 2"
$ns_ at 70.285595971912 "$god_ set-dist 0 15 2"
$ns_ at 70.285595971912 "$god_ set-dist 0 28 3"
$ns_ at 70.285595971912 "$god_ set-dist 0 36 3"
$ns_ at 70.314546847887 "$god_ set-dist 36 38 1"
$ns_ at 70.379601321096 "$god_ set-dist 6 31 2"
$ns_ at 70.379601321096 "$god_ set-dist 31 37 3"
$ns_ at 70.476836996889 "$god_ set-dist 7 28 3"
$ns_ at 70.476836996889 "$god_ set-dist 16 28 3"
$ns_ at 70.476836996889 "$god_ set-dist 22 28 4"
$ns_ at 70.476836996889 "$god_ set-dist 26 28 2"
$ns_ at 70.476836996889 "$god_ set-dist 28 40 3"
$ns_ at 70.476836996889 "$god_ set-dist 28 46 3"
$ns_ at 70.476836996889 "$god_ set-dist 28 49 3"
$ns_ at 70.480840397864 "$god_ set-dist 36 37 1"
$ns_ at 70.534293374857 "$god_ set-dist 4 23 1"
$ns_ at 70.534293374857 "$god_ set-dist 5 23 2"
$ns_ at 70.534293374857 "$god_ set-dist 12 23 3"
$ns_ at 70.534293374857 "$god_ set-dist 23 28 2"
$ns_ at 70.537882443552 "$god_ set-dist 0 32 1"
$ns_ at 70.537882443552 "$god_ set-dist 19 32 2"
$ns_ at 70.561218420347 "$god_ set-dist 21 33 1"
$ns_ at 70.576197740391 "$god_ set-dist 0 23 3"
$ns_ at 70.576197740391 "$god_ set-dist 23 34 2"
$ns_ at 70.626647363940 "$god_ set-dist 14 29 1"
$ns_ at 70.646944075416 "$god_ set-dist 8 41 1"
$ns_ at 70.646944075416 "$god_ set-dist 37 41 2"
$ns_ at 70.712743319785 "$god_ set-dist 36 47 1"
$ns_ at 70.750093798207 "$god_ set-dist 13 29 1"
$ns_ at 70.750093798207 "$god_ set-dist 13 42 2"
$ns_ at 70.755769326717 "$god_ set-dist 3 34 1"
$ns_ at 70.755769326717 "$god_ set-dist 12 34 2"
$ns_ at 70.795324036212 "$god_ set-dist 7 23 1"
$ns_ at 70.812035824190 "$god_ set-dist 24 43 3"
$ns_ at 70.812035824190 "$god_ set-dist 34 43 2"
$ns_ at 70.826907650503 "$god_ set-dist 43 46 2"
$ns_ at 70.942194073979 "$god_ set-dist 10 31 1"
$ns_ at 70.983171959422 "$god_ set-dist 6 43 3"
$ns_ at 70.983171959422 "$god_ set-dist 39 43 2"
$ns_ at 71.005517288762 "$node_(49) setdest 224.910834760278 428.797608055152 0.000000000000"
$ns_ at 71.012164788885 "$god_ set-dist 0 7 1"
$ns_ at 71.012164788885 "$god_ set-dist 0 23 2"
$ns_ at 71.026465603645 "$god_ set-dist 27 43 2"
$ns_ at 71.026465603645 "$god_ set-dist 29 43 3"
$ns_ at 71.155570301471 "$god_ set-dist 2 25 2"
$ns_ at 71.155570301471 "$god_ set-dist 18 25 1"
$ns_ at 71.245551358481 "$god_ set-dist 8 17 2"
$ns_ at 71.245551358481 "$god_ set-dist 8 39 1"
$ns_ at 71.275841249726 "$god_ set-dist 10 24 3"
$ns_ at 71.275841249726 "$god_ set-dist 24 32 3"
$ns_ at 71.275841249726 "$god_ set-dist 24 34 2"
$ns_ at 71.280365380960 "$god_ set-dist 8 21 1"
$ns_ at 71.280365380960 "$god_ set-dist 21 37 2"
$ns_ at 71.280632433818 "$god_ set-dist 41 43 2"
$ns_ at 71.314860526406 "$god_ set-dist 23 41 1"
$ns_ at 71.381292777029 "$god_ set-dist 15 23 2"
$ns_ at 71.381292777029 "$god_ set-dist 23 26 1"
$ns_ at 71.451362532152 "$god_ set-dist 11 30 2"
$ns_ at 71.451362532152 "$god_ set-dist 25 30 3"
$ns_ at 71.451362532152 "$god_ set-dist 30 32 3"
$ns_ at 71.451362532152 "$god_ set-dist 30 40 3"
$ns_ at 71.451362532152 "$god_ set-dist 30 49 3"
$ns_ at 71.521298949080 "$god_ set-dist 5 32 2"
$ns_ at 71.521298949080 "$god_ set-dist 6 32 2"
$ns_ at 71.521298949080 "$god_ set-dist 15 32 2"
$ns_ at 71.521298949080 "$god_ set-dist 29 32 2"
$ns_ at 71.521298949080 "$god_ set-dist 32 36 3"
$ns_ at 71.521298949080 "$god_ set-dist 32 39 1"
$ns_ at 71.548886517659 "$god_ set-dist 1 23 1"
$ns_ at 71.548886517659 "$god_ set-dist 23 36 2"
$ns_ at 71.644648410831 "$god_ set-dist 11 26 1"
$ns_ at 71.648075801854 "$god_ set-dist 0 2 3"
$ns_ at 71.648075801854 "$god_ set-dist 2 18 2"
$ns_ at 71.648075801854 "$god_ set-dist 2 25 3"
$ns_ at 71.721031467717 "$god_ set-dist 7 43 2"
$ns_ at 71.721031467717 "$god_ set-dist 23 43 3"
$ns_ at 71.761885664372 "$god_ set-dist 4 31 2"
$ns_ at 71.784796495051 "$god_ set-dist 11 17 2"
$ns_ at 71.784796495051 "$god_ set-dist 11 39 1"
$ns_ at 71.784796495051 "$god_ set-dist 17 45 3"
$ns_ at 71.784796495051 "$god_ set-dist 39 45 2"
$ns_ at 71.789799126925 "$god_ set-dist 4 43 3"
$ns_ at 71.789799126925 "$god_ set-dist 8 43 3"
$ns_ at 71.789799126925 "$god_ set-dist 9 43 3"
$ns_ at 71.789799126925 "$god_ set-dist 13 43 3"
$ns_ at 71.789799126925 "$god_ set-dist 20 43 3"
$ns_ at 71.789799126925 "$god_ set-dist 21 43 2"
$ns_ at 71.789799126925 "$god_ set-dist 30 43 4"
$ns_ at 71.789799126925 "$god_ set-dist 33 43 3"
$ns_ at 71.789799126925 "$god_ set-dist 35 43 3"
$ns_ at 71.789799126925 "$god_ set-dist 37 43 4"
$ns_ at 71.789799126925 "$god_ set-dist 43 44 3"
$ns_ at 71.789799126925 "$god_ set-dist 43 47 4"
$ns_ at 71.817409946983 "$god_ set-dist 4 5 2"
$ns_ at 71.817409946983 "$god_ set-dist 4 12 3"
$ns_ at 71.917672381676 "$god_ set-dist 15 36 2"
$ns_ at 71.964490196080 "$god_ set-dist 23 48 1"
$ns_ at 71.971250054505 "$god_ set-dist 15 23 3"
$ns_ at 71.971250054505 "$god_ set-dist 15 26 2"
$ns_ at 72.087753950914 "$god_ set-dist 3 23 2"
$ns_ at 72.087753950914 "$god_ set-dist 15 23 2"
$ns_ at 72.087753950914 "$god_ set-dist 18 23 1"
$ns_ at 72.089891939439 "$god_ set-dist 0 25 1"
$ns_ at 72.089891939439 "$god_ set-dist 19 25 2"
$ns_ at 72.134963361063 "$god_ set-dist 3 5 2"
$ns_ at 72.134963361063 "$god_ set-dist 3 36 3"
$ns_ at 72.134963361063 "$god_ set-dist 5 43 3"
$ns_ at 72.134963361063 "$god_ set-dist 36 43 4"
$ns_ at 72.135345396585 "$god_ set-dist 0 1 3"
$ns_ at 72.135345396585 "$god_ set-dist 0 18 2"
$ns_ at 72.135345396585 "$god_ set-dist 0 24 3"
$ns_ at 72.135345396585 "$god_ set-dist 0 48 3"
$ns_ at 72.216418999901 "$god_ set-dist 0 22 1"
$ns_ at 72.216418999901 "$god_ set-dist 19 22 2"
$ns_ at 72.243602930736 "$node_(19) setdest 47.587413542946 174.448385507628 0.000000000000"
$ns_ at 72.267228195483 "$god_ set-dist 9 15 3"
$ns_ at 72.267228195483 "$god_ set-dist 15 18 2"
$ns_ at 72.267228195483 "$god_ set-dist 15 23 3"
$ns_ at 72.267228195483 "$god_ set-dist 15 30 4"
$ns_ at 72.267228195483 "$god_ set-dist 15 33 3"
$ns_ at 72.267228195483 "$god_ set-dist 15 35 3"
$ns_ at 72.311795800713 "$god_ set-dist 9 15 2"
$ns_ at 72.311795800713 "$god_ set-dist 9 17 2"
$ns_ at 72.311795800713 "$god_ set-dist 9 39 1"
$ns_ at 72.311795800713 "$god_ set-dist 15 30 3"
$ns_ at 72.311795800713 "$god_ set-dist 17 30 3"
$ns_ at 72.311795800713 "$god_ set-dist 30 39 2"
$ns_ at 72.388326102905 "$god_ set-dist 5 18 2"
$ns_ at 72.409314216093 "$god_ set-dist 5 25 3"
$ns_ at 72.409314216093 "$god_ set-dist 5 32 3"
$ns_ at 72.409314216093 "$god_ set-dist 5 39 2"
$ns_ at 72.423330304869 "$god_ set-dist 29 32 3"
$ns_ at 72.423330304869 "$god_ set-dist 29 39 2"
$ns_ at 72.546960779924 "$god_ set-dist 11 20 2"
$ns_ at 72.634233291784 "$god_ set-dist 29 31 2"
$ns_ at 72.634233291784 "$god_ set-dist 31 47 3"
$ns_ at 72.651612623732 "$god_ set-dist 5 9 3"
$ns_ at 72.651612623732 "$god_ set-dist 5 11 3"
$ns_ at 72.651612623732 "$god_ set-dist 5 23 3"
$ns_ at 72.651612623732 "$god_ set-dist 5 26 2"
$ns_ at 72.651612623732 "$god_ set-dist 5 30 4"
$ns_ at 72.651612623732 "$god_ set-dist 5 33 3"
$ns_ at 72.651612623732 "$god_ set-dist 5 35 3"
$ns_ at 72.651612623732 "$god_ set-dist 5 45 4"
$ns_ at 72.651612623732 "$god_ set-dist 12 26 3"
$ns_ at 72.667253368027 "$god_ set-dist 3 12 2"
$ns_ at 72.667253368027 "$god_ set-dist 10 12 3"
$ns_ at 72.667253368027 "$god_ set-dist 12 18 3"
$ns_ at 72.667253368027 "$god_ set-dist 12 21 3"
$ns_ at 72.667253368027 "$god_ set-dist 12 23 4"
$ns_ at 72.667253368027 "$god_ set-dist 12 33 4"
$ns_ at 72.667253368027 "$god_ set-dist 12 34 3"
$ns_ at 72.667253368027 "$god_ set-dist 12 35 4"
$ns_ at 72.667253368027 "$god_ set-dist 12 40 3"
$ns_ at 72.667253368027 "$god_ set-dist 12 43 3"
$ns_ at 72.667253368027 "$god_ set-dist 12 49 3"
$ns_ at 72.773495274091 "$god_ set-dist 11 44 2"
$ns_ at 72.787838330380 "$god_ set-dist 1 3 3"
$ns_ at 72.787838330380 "$god_ set-dist 3 18 2"
$ns_ at 72.787838330380 "$god_ set-dist 3 23 3"
$ns_ at 72.787838330380 "$god_ set-dist 3 24 3"
$ns_ at 72.787838330380 "$god_ set-dist 3 48 3"
$ns_ at 72.841460011620 "$god_ set-dist 3 23 2"
$ns_ at 72.841460011620 "$god_ set-dist 21 23 1"
$ns_ at 72.888635640991 "$god_ set-dist 9 38 1"
$ns_ at 72.896611967102 "$god_ set-dist 8 17 3"
$ns_ at 72.896611967102 "$god_ set-dist 9 17 3"
$ns_ at 72.896611967102 "$god_ set-dist 11 17 3"
$ns_ at 72.896611967102 "$god_ set-dist 13 17 3"
$ns_ at 72.896611967102 "$god_ set-dist 17 20 3"
$ns_ at 72.896611967102 "$god_ set-dist 17 30 4"
$ns_ at 72.896611967102 "$god_ set-dist 17 39 2"
$ns_ at 72.896611967102 "$god_ set-dist 17 44 3"
$ns_ at 72.896611967102 "$god_ set-dist 17 45 4"
$ns_ at 72.969711524092 "$god_ set-dist 35 38 2"
$ns_ at 73.012857405434 "$god_ set-dist 8 37 2"
$ns_ at 73.012857405434 "$god_ set-dist 21 37 3"
$ns_ at 73.012857405434 "$god_ set-dist 34 37 3"
$ns_ at 73.012857405434 "$god_ set-dist 37 41 3"
$ns_ at 73.194549487494 "$god_ set-dist 11 45 2"
$ns_ at 73.194549487494 "$god_ set-dist 25 45 3"
$ns_ at 73.194549487494 "$god_ set-dist 32 45 3"
$ns_ at 73.194549487494 "$god_ set-dist 40 45 3"
$ns_ at 73.194549487494 "$god_ set-dist 43 45 4"
$ns_ at 73.194549487494 "$god_ set-dist 45 49 3"
$ns_ at 73.227123839552 "$god_ set-dist 3 42 2"
$ns_ at 73.227123839552 "$god_ set-dist 42 43 3"
$ns_ at 73.408658095054 "$god_ set-dist 13 43 2"
$ns_ at 73.408658095054 "$god_ set-dist 13 49 1"
$ns_ at 73.408658095054 "$god_ set-dist 43 47 3"
$ns_ at 73.408658095054 "$god_ set-dist 47 49 2"
$ns_ at 73.557571319809 "$god_ set-dist 11 13 2"
$ns_ at 73.557571319809 "$god_ set-dist 11 47 3"
$ns_ at 73.566485104321 "$god_ set-dist 33 34 2"
$ns_ at 73.587334565804 "$god_ set-dist 2 11 3"
$ns_ at 73.587334565804 "$god_ set-dist 2 16 3"
$ns_ at 73.587334565804 "$god_ set-dist 2 26 2"
$ns_ at 73.587334565804 "$god_ set-dist 2 40 3"
$ns_ at 73.615303743084 "$god_ set-dist 24 28 1"
$ns_ at 73.630060043762 "$god_ set-dist 34 35 2"
$ns_ at 73.647956424237 "$node_(11) setdest 371.850563640455 584.451302812871 0.000000000000"
$ns_ at 73.650759219528 "$god_ set-dist 9 12 4"
$ns_ at 73.650759219528 "$god_ set-dist 9 15 3"
$ns_ at 73.650759219528 "$god_ set-dist 11 12 4"
$ns_ at 73.650759219528 "$god_ set-dist 11 15 3"
$ns_ at 73.650759219528 "$god_ set-dist 12 30 5"
$ns_ at 73.650759219528 "$god_ set-dist 12 39 3"
$ns_ at 73.650759219528 "$god_ set-dist 12 45 5"
$ns_ at 73.650759219528 "$god_ set-dist 15 25 3"
$ns_ at 73.650759219528 "$god_ set-dist 15 30 4"
$ns_ at 73.650759219528 "$god_ set-dist 15 32 3"
$ns_ at 73.650759219528 "$god_ set-dist 15 39 2"
$ns_ at 73.650759219528 "$god_ set-dist 15 45 4"
$ns_ at 73.788522681468 "$node_(43) setdest 14.617658008466 550.067217451051 0.000000000000"
$ns_ at 73.855692863927 "$god_ set-dist 4 28 2"
$ns_ at 73.855692863927 "$god_ set-dist 21 28 3"
$ns_ at 73.855692863927 "$god_ set-dist 28 34 3"
$ns_ at 73.855692863927 "$god_ set-dist 28 41 3"
$ns_ at 73.866204083414 "$god_ set-dist 14 48 2"
$ns_ at 73.871709432033 "$god_ set-dist 9 43 2"
$ns_ at 73.871709432033 "$god_ set-dist 9 49 1"
$ns_ at 73.871709432033 "$god_ set-dist 30 43 3"
$ns_ at 73.871709432033 "$god_ set-dist 30 49 2"
$ns_ at 73.871709432033 "$god_ set-dist 43 45 3"
$ns_ at 73.871709432033 "$god_ set-dist 45 49 2"
$ns_ at 74.049554942285 "$god_ set-dist 3 21 2"
$ns_ at 74.049554942285 "$god_ set-dist 3 23 3"
$ns_ at 74.049554942285 "$god_ set-dist 3 33 3"
$ns_ at 74.049554942285 "$god_ set-dist 3 35 3"
$ns_ at 74.131388481032 "$god_ set-dist 0 6 3"
$ns_ at 74.131388481032 "$god_ set-dist 0 37 4"
$ns_ at 74.131388481032 "$god_ set-dist 6 10 3"
$ns_ at 74.131388481032 "$god_ set-dist 6 32 3"
$ns_ at 74.131388481032 "$god_ set-dist 6 39 2"
$ns_ at 74.131388481032 "$god_ set-dist 10 37 4"
$ns_ at 74.131388481032 "$god_ set-dist 28 32 4"
$ns_ at 74.131388481032 "$god_ set-dist 28 39 3"
$ns_ at 74.131388481032 "$god_ set-dist 32 36 4"
$ns_ at 74.131388481032 "$god_ set-dist 32 37 4"
$ns_ at 74.131388481032 "$god_ set-dist 36 39 3"
$ns_ at 74.131388481032 "$god_ set-dist 37 39 3"
$ns_ at 74.146390557251 "$god_ set-dist 36 48 2"
$ns_ at 74.187925279406 "$god_ set-dist 5 36 2"
$ns_ at 74.187925279406 "$god_ set-dist 12 36 3"
$ns_ at 74.187925279406 "$god_ set-dist 17 36 3"
$ns_ at 74.187925279406 "$god_ set-dist 19 36 3"
$ns_ at 74.187925279406 "$god_ set-dist 31 36 3"
$ns_ at 74.188834020505 "$node_(8) setdest 466.975920167982 314.697781318598 0.000000000000"
$ns_ at 74.236138719019 "$god_ set-dist 9 12 3"
$ns_ at 74.236138719019 "$god_ set-dist 9 15 2"
$ns_ at 74.236138719019 "$god_ set-dist 11 12 3"
$ns_ at 74.236138719019 "$god_ set-dist 11 15 2"
$ns_ at 74.236138719019 "$god_ set-dist 12 14 2"
$ns_ at 74.236138719019 "$god_ set-dist 12 23 3"
$ns_ at 74.236138719019 "$god_ set-dist 12 30 4"
$ns_ at 74.236138719019 "$god_ set-dist 12 33 3"
$ns_ at 74.236138719019 "$god_ set-dist 12 35 3"
$ns_ at 74.236138719019 "$god_ set-dist 12 45 4"
$ns_ at 74.236138719019 "$god_ set-dist 14 15 1"
$ns_ at 74.236138719019 "$god_ set-dist 15 23 2"
$ns_ at 74.236138719019 "$god_ set-dist 15 25 2"
$ns_ at 74.236138719019 "$god_ set-dist 15 30 3"
$ns_ at 74.236138719019 "$god_ set-dist 15 33 2"
$ns_ at 74.236138719019 "$god_ set-dist 15 35 2"
$ns_ at 74.236138719019 "$god_ set-dist 15 45 3"
$ns_ at 74.264915277245 "$god_ set-dist 0 19 2"
$ns_ at 74.264915277245 "$god_ set-dist 19 22 3"
$ns_ at 74.264915277245 "$god_ set-dist 19 25 3"
$ns_ at 74.264915277245 "$god_ set-dist 19 32 3"
$ns_ at 74.285069916247 "$god_ set-dist 2 44 2"
$ns_ at 74.331755780412 "$god_ set-dist 2 3 3"
$ns_ at 74.331755780412 "$god_ set-dist 3 6 3"
$ns_ at 74.331755780412 "$god_ set-dist 3 15 2"
$ns_ at 74.331755780412 "$god_ set-dist 3 28 3"
$ns_ at 74.331755780412 "$god_ set-dist 3 37 4"
$ns_ at 74.331755780412 "$god_ set-dist 15 43 3"
$ns_ at 74.331755780412 "$god_ set-dist 28 43 4"
$ns_ at 74.386704020012 "$god_ set-dist 26 31 2"
$ns_ at 74.386704020012 "$god_ set-dist 31 38 3"
$ns_ at 74.486159528506 "$god_ set-dist 23 38 1"
$ns_ at 74.515438199168 "$god_ set-dist 0 6 2"
$ns_ at 74.515438199168 "$god_ set-dist 0 37 3"
$ns_ at 74.515438199168 "$god_ set-dist 3 6 2"
$ns_ at 74.515438199168 "$god_ set-dist 3 37 3"
$ns_ at 74.515438199168 "$god_ set-dist 6 10 2"
$ns_ at 74.515438199168 "$god_ set-dist 6 27 1"
$ns_ at 74.515438199168 "$god_ set-dist 10 37 3"
$ns_ at 74.515438199168 "$god_ set-dist 27 37 2"
$ns_ at 74.570803292525 "$god_ set-dist 0 41 2"
$ns_ at 74.603053744317 "$god_ set-dist 15 28 2"
$ns_ at 74.715640486491 "$god_ set-dist 18 48 2"
$ns_ at 74.715640486491 "$god_ set-dist 25 48 3"
$ns_ at 74.715640486491 "$god_ set-dist 31 48 3"
$ns_ at 74.875738364694 "$god_ set-dist 0 21 2"
$ns_ at 74.980231250924 "$god_ set-dist 3 33 2"
$ns_ at 74.980231250924 "$god_ set-dist 33 39 1"
$ns_ at 75.042981888164 "$god_ set-dist 5 9 2"
$ns_ at 75.042981888164 "$god_ set-dist 5 11 2"
$ns_ at 75.042981888164 "$god_ set-dist 5 14 1"
$ns_ at 75.042981888164 "$god_ set-dist 5 23 2"
$ns_ at 75.042981888164 "$god_ set-dist 5 25 2"
$ns_ at 75.042981888164 "$god_ set-dist 5 30 3"
$ns_ at 75.042981888164 "$god_ set-dist 5 33 2"
$ns_ at 75.042981888164 "$god_ set-dist 5 35 2"
$ns_ at 75.042981888164 "$god_ set-dist 5 45 3"
$ns_ at 75.051008195826 "$god_ set-dist 24 36 1"
$ns_ at 75.082627515951 "$god_ set-dist 28 48 2"
$ns_ at 75.121022302644 "$god_ set-dist 9 25 1"
$ns_ at 75.121022302644 "$god_ set-dist 25 30 2"
$ns_ at 75.121022302644 "$god_ set-dist 25 38 2"
$ns_ at 75.121022302644 "$god_ set-dist 25 45 2"
$ns_ at 75.121022302644 "$god_ set-dist 25 48 2"
$ns_ at 75.197939320055 "$god_ set-dist 3 35 2"
$ns_ at 75.197939320055 "$god_ set-dist 35 39 1"
$ns_ at 75.218424528390 "$node_(48) setdest 564.188896164133 261.809337073086 0.000000000000"
$ns_ at 75.266789355228 "$god_ set-dist 2 15 2"
$ns_ at 75.289430663788 "$god_ set-dist 0 12 3"
$ns_ at 75.289430663788 "$god_ set-dist 0 17 2"
$ns_ at 75.291035329251 "$god_ set-dist 1 10 2"
$ns_ at 75.291035329251 "$god_ set-dist 1 21 1"
$ns_ at 75.291035329251 "$god_ set-dist 1 32 2"
$ns_ at 75.291035329251 "$god_ set-dist 21 28 2"
$ns_ at 75.291035329251 "$god_ set-dist 21 36 2"
$ns_ at 75.291035329251 "$god_ set-dist 21 37 2"
$ns_ at 75.291035329251 "$god_ set-dist 28 32 3"
$ns_ at 75.291035329251 "$god_ set-dist 32 36 3"
$ns_ at 75.291035329251 "$god_ set-dist 32 37 3"
$ns_ at 75.346194733393 "$god_ set-dist 13 17 2"
$ns_ at 75.346194733393 "$god_ set-dist 13 19 2"
$ns_ at 75.346194733393 "$god_ set-dist 13 27 1"
$ns_ at 75.368187672705 "$god_ set-dist 25 26 1"
$ns_ at 75.393955858643 "$god_ set-dist 2 20 2"
$ns_ at 75.457377467257 "$god_ set-dist 3 32 1"
$ns_ at 75.457377467257 "$god_ set-dist 19 32 2"
$ns_ at 75.465168308075 "$god_ set-dist 5 43 2"
$ns_ at 75.465168308075 "$god_ set-dist 15 43 2"
$ns_ at 75.465168308075 "$god_ set-dist 28 43 3"
$ns_ at 75.465168308075 "$god_ set-dist 31 43 1"
$ns_ at 75.465168308075 "$god_ set-dist 42 43 2"
$ns_ at 75.729968902154 "$god_ set-dist 3 23 2"
$ns_ at 75.729968902154 "$god_ set-dist 23 39 1"
$ns_ at 75.881504874134 "$god_ set-dist 14 24 2"
$ns_ at 75.981560152859 "$god_ set-dist 11 47 2"
$ns_ at 75.981560152859 "$god_ set-dist 30 47 2"
$ns_ at 75.981560152859 "$god_ set-dist 33 47 1"
$ns_ at 75.981560152859 "$god_ set-dist 45 47 2"
$ns_ at 76.047865148515 "$god_ set-dist 1 10 3"
$ns_ at 76.047865148515 "$god_ set-dist 10 21 2"
$ns_ at 76.178324067796 "$god_ set-dist 7 31 2"
$ns_ at 76.279393548984 "$god_ set-dist 4 17 3"
$ns_ at 76.279393548984 "$god_ set-dist 4 19 3"
$ns_ at 76.279393548984 "$god_ set-dist 4 27 2"
$ns_ at 76.310271426141 "$god_ set-dist 34 44 2"
$ns_ at 76.372544771940 "$god_ set-dist 6 9 1"
$ns_ at 76.372544771940 "$god_ set-dist 6 30 2"
$ns_ at 76.372544771940 "$god_ set-dist 6 45 2"
$ns_ at 76.589033036118 "$god_ set-dist 26 29 2"
$ns_ at 76.621164184074 "$god_ set-dist 8 34 2"
$ns_ at 76.704432784111 "$god_ set-dist 0 7 2"
$ns_ at 76.795951249810 "$god_ set-dist 6 21 1"
$ns_ at 76.795951249810 "$god_ set-dist 6 32 2"
$ns_ at 76.837835746577 "$god_ set-dist 31 41 2"
$ns_ at 76.849109046333 "$god_ set-dist 12 34 2"
$ns_ at 76.849109046333 "$god_ set-dist 15 32 2"
$ns_ at 76.849109046333 "$god_ set-dist 15 34 1"
$ns_ at 76.875182031068 "$god_ set-dist 2 7 3"
$ns_ at 76.875182031068 "$god_ set-dist 2 13 2"
$ns_ at 76.875182031068 "$god_ set-dist 2 22 4"
$ns_ at 76.875182031068 "$god_ set-dist 2 46 3"
$ns_ at 76.875182031068 "$god_ set-dist 2 49 3"
$ns_ at 76.883474880386 "$god_ set-dist 2 31 3"
$ns_ at 76.883474880386 "$god_ set-dist 2 43 4"
$ns_ at 76.883474880386 "$god_ set-dist 5 31 2"
$ns_ at 76.883474880386 "$god_ set-dist 5 43 3"
$ns_ at 76.883474880386 "$god_ set-dist 28 31 3"
$ns_ at 76.883474880386 "$god_ set-dist 28 43 4"
$ns_ at 76.884627967641 "$god_ set-dist 21 31 2"
$ns_ at 76.888485710118 "$god_ set-dist 4 17 2"
$ns_ at 76.888485710118 "$god_ set-dist 9 17 2"
$ns_ at 76.888485710118 "$god_ set-dist 11 17 2"
$ns_ at 76.888485710118 "$god_ set-dist 17 20 2"
$ns_ at 76.888485710118 "$god_ set-dist 17 30 3"
$ns_ at 76.888485710118 "$god_ set-dist 17 34 1"
$ns_ at 76.888485710118 "$god_ set-dist 17 45 3"
$ns_ at 76.904048264890 "$god_ set-dist 13 46 2"
$ns_ at 76.945931979527 "$god_ set-dist 6 45 3"
$ns_ at 76.945931979527 "$god_ set-dist 9 45 2"
$ns_ at 76.945931979527 "$god_ set-dist 17 45 4"
$ns_ at 76.945931979527 "$god_ set-dist 25 45 3"
$ns_ at 76.945931979527 "$god_ set-dist 34 45 3"
$ns_ at 76.945931979527 "$god_ set-dist 43 45 4"
$ns_ at 76.945931979527 "$god_ set-dist 45 49 3"
$ns_ at 76.946254097595 "$god_ set-dist 16 26 2"
$ns_ at 76.946254097595 "$god_ set-dist 16 38 3"
$ns_ at 76.946254097595 "$god_ set-dist 16 48 3"
$ns_ at 76.948750322799 "$god_ set-dist 5 35 3"
$ns_ at 76.948750322799 "$god_ set-dist 12 35 4"
$ns_ at 76.948750322799 "$god_ set-dist 14 35 2"
$ns_ at 76.948750322799 "$god_ set-dist 15 35 3"
$ns_ at 76.982720505748 "$god_ set-dist 18 31 2"
$ns_ at 76.982720505748 "$god_ set-dist 24 31 3"
$ns_ at 77.028576923034 "$god_ set-dist 16 24 3"
$ns_ at 77.028576923034 "$god_ set-dist 18 24 2"
$ns_ at 77.037194803800 "$node_(2) setdest 476.086748416080 78.794313187063 0.000000000000"
$ns_ at 77.127704305728 "$god_ set-dist 2 7 2"
$ns_ at 77.127704305728 "$god_ set-dist 2 13 1"
$ns_ at 77.127704305728 "$god_ set-dist 2 22 3"
$ns_ at 77.127704305728 "$god_ set-dist 2 43 3"
$ns_ at 77.127704305728 "$god_ set-dist 2 49 2"
$ns_ at 77.213077577662 "$god_ set-dist 3 8 3"
$ns_ at 77.213077577662 "$god_ set-dist 3 23 3"
$ns_ at 77.213077577662 "$god_ set-dist 3 33 3"
$ns_ at 77.213077577662 "$god_ set-dist 3 35 3"
$ns_ at 77.213077577662 "$god_ set-dist 3 39 2"
$ns_ at 77.213077577662 "$god_ set-dist 3 44 3"
$ns_ at 77.213077577662 "$god_ set-dist 3 45 4"
$ns_ at 77.261844754069 "$god_ set-dist 5 11 3"
$ns_ at 77.261844754069 "$god_ set-dist 11 14 2"
$ns_ at 77.318584509542 "$god_ set-dist 0 8 3"
$ns_ at 77.318584509542 "$god_ set-dist 0 23 3"
$ns_ at 77.318584509542 "$god_ set-dist 0 33 3"
$ns_ at 77.318584509542 "$god_ set-dist 0 35 3"
$ns_ at 77.318584509542 "$god_ set-dist 0 39 2"
$ns_ at 77.318584509542 "$god_ set-dist 0 44 3"
$ns_ at 77.318584509542 "$god_ set-dist 0 45 4"
$ns_ at 77.358981403338 "$god_ set-dist 0 20 3"
$ns_ at 77.358981403338 "$god_ set-dist 3 20 3"
$ns_ at 77.358981403338 "$god_ set-dist 17 20 3"
$ns_ at 77.358981403338 "$god_ set-dist 20 34 2"
$ns_ at 77.377447634638 "$god_ set-dist 1 17 2"
$ns_ at 77.377447634638 "$god_ set-dist 8 17 2"
$ns_ at 77.377447634638 "$god_ set-dist 14 17 1"
$ns_ at 77.377447634638 "$god_ set-dist 17 20 2"
$ns_ at 77.377447634638 "$god_ set-dist 17 23 2"
$ns_ at 77.377447634638 "$god_ set-dist 17 33 2"
$ns_ at 77.377447634638 "$god_ set-dist 17 44 2"
$ns_ at 77.377447634638 "$god_ set-dist 17 45 3"
$ns_ at 77.393762898351 "$god_ set-dist 1 36 2"
$ns_ at 77.488168536292 "$god_ set-dist 0 4 3"
$ns_ at 77.488168536292 "$god_ set-dist 3 4 3"
$ns_ at 77.488168536292 "$god_ set-dist 4 34 2"
$ns_ at 77.684614031949 "$god_ set-dist 11 29 3"
$ns_ at 77.684614031949 "$god_ set-dist 18 29 2"
$ns_ at 77.806635479253 "$god_ set-dist 5 33 3"
$ns_ at 77.806635479253 "$god_ set-dist 12 33 4"
$ns_ at 77.806635479253 "$god_ set-dist 14 33 2"
$ns_ at 77.806635479253 "$god_ set-dist 15 33 3"
$ns_ at 77.806635479253 "$god_ set-dist 17 33 3"
$ns_ at 77.964958368054 "$god_ set-dist 10 41 2"
$ns_ at 77.966909496428 "$god_ set-dist 3 22 1"
$ns_ at 77.966909496428 "$god_ set-dist 19 22 2"
$ns_ at 78.163392810073 "$god_ set-dist 24 35 2"
$ns_ at 78.163392810073 "$god_ set-dist 35 36 3"
$ns_ at 78.236159107790 "$node_(31) setdest 79.827117755553 336.961671607110 0.000000000000"
$ns_ at 78.251814847271 "$god_ set-dist 11 12 4"
$ns_ at 78.251814847271 "$god_ set-dist 11 15 3"
$ns_ at 78.251814847271 "$god_ set-dist 11 17 3"
$ns_ at 78.251814847271 "$god_ set-dist 11 34 2"
$ns_ at 78.356507779437 "$god_ set-dist 5 28 2"
$ns_ at 78.356507779437 "$god_ set-dist 12 28 3"
$ns_ at 78.356507779437 "$god_ set-dist 17 28 3"
$ns_ at 78.356507779437 "$god_ set-dist 19 28 3"
$ns_ at 78.450071072867 "$node_(36) setdest 549.772212240524 1.842480579679 0.000000000000"
$ns_ at 78.740098510150 "$god_ set-dist 9 24 2"
$ns_ at 78.843174185071 "$god_ set-dist 24 25 3"
$ns_ at 78.843174185071 "$god_ set-dist 24 26 2"
$ns_ at 78.843174185071 "$god_ set-dist 24 40 3"
$ns_ at 78.849616100035 "$god_ set-dist 23 47 1"
$ns_ at 78.871774840786 "$god_ set-dist 6 23 1"
$ns_ at 78.871774840786 "$god_ set-dist 6 45 2"
$ns_ at 79.013847818033 "$god_ set-dist 31 33 3"
$ns_ at 79.013847818033 "$god_ set-dist 31 35 3"
$ns_ at 79.013847818033 "$god_ set-dist 31 39 2"
$ns_ at 79.037554548694 "$god_ set-dist 14 23 2"
$ns_ at 79.037554548694 "$god_ set-dist 14 45 3"
$ns_ at 79.037554548694 "$god_ set-dist 17 23 3"
$ns_ at 79.037554548694 "$god_ set-dist 17 45 4"
$ns_ at 79.037554548694 "$god_ set-dist 23 31 3"
$ns_ at 79.037554548694 "$god_ set-dist 31 45 4"
$ns_ at 79.125342756563 "$node_(0) setdest 27.511635537357 495.774172258337 0.000000000000"
$ns_ at 79.256667246863 "$god_ set-dist 26 38 2"
$ns_ at 79.256667246863 "$god_ set-dist 38 40 3"
$ns_ at 79.280319483163 "$god_ set-dist 25 43 2"
$ns_ at 79.294699145059 "$god_ set-dist 0 30 4"
$ns_ at 79.294699145059 "$god_ set-dist 3 30 4"
$ns_ at 79.294699145059 "$god_ set-dist 9 30 2"
$ns_ at 79.294699145059 "$god_ set-dist 14 30 3"
$ns_ at 79.294699145059 "$god_ set-dist 17 30 4"
$ns_ at 79.294699145059 "$god_ set-dist 25 30 3"
$ns_ at 79.294699145059 "$god_ set-dist 30 31 4"
$ns_ at 79.294699145059 "$god_ set-dist 30 34 3"
$ns_ at 79.294699145059 "$god_ set-dist 30 43 4"
$ns_ at 79.294699145059 "$god_ set-dist 30 49 3"
$ns_ at 79.551317909016 "$god_ set-dist 1 41 1"
$ns_ at 79.551317909016 "$god_ set-dist 28 41 2"
$ns_ at 79.551317909016 "$god_ set-dist 37 41 2"
$ns_ at 79.571148667904 "$god_ set-dist 6 36 2"
$ns_ at 79.571148667904 "$god_ set-dist 18 36 3"
$ns_ at 79.571148667904 "$god_ set-dist 21 36 3"
$ns_ at 79.571148667904 "$god_ set-dist 26 36 3"
$ns_ at 79.571148667904 "$god_ set-dist 32 36 4"
$ns_ at 79.610095857271 "$god_ set-dist 3 19 2"
$ns_ at 79.610095857271 "$god_ set-dist 19 22 3"
$ns_ at 79.610095857271 "$god_ set-dist 19 32 3"
$ns_ at 79.643088830515 "$god_ set-dist 4 7 1"
$ns_ at 79.643088830515 "$god_ set-dist 4 22 2"
$ns_ at 79.685476120532 "$god_ set-dist 0 25 2"
$ns_ at 79.706496199001 "$god_ set-dist 19 26 3"
$ns_ at 79.706496199001 "$god_ set-dist 26 27 2"
$ns_ at 79.706496199001 "$god_ set-dist 26 42 3"
$ns_ at 79.740054679984 "$god_ set-dist 9 42 2"
$ns_ at 79.740054679984 "$god_ set-dist 14 42 1"
$ns_ at 79.740054679984 "$god_ set-dist 25 42 2"
$ns_ at 79.740054679984 "$god_ set-dist 26 42 2"
$ns_ at 79.831316338252 "$god_ set-dist 34 43 1"
$ns_ at 79.942289905874 "$god_ set-dist 9 19 2"
$ns_ at 79.942289905874 "$god_ set-dist 19 25 2"
$ns_ at 79.942289905874 "$god_ set-dist 19 26 2"
$ns_ at 79.942289905874 "$god_ set-dist 19 32 2"
$ns_ at 79.942289905874 "$god_ set-dist 19 34 1"
$ns_ at 79.998949466904 "$god_ set-dist 12 13 2"
$ns_ at 79.998949466904 "$god_ set-dist 12 33 3"
$ns_ at 79.998949466904 "$god_ set-dist 12 35 3"
$ns_ at 79.998949466904 "$god_ set-dist 13 15 1"
$ns_ at 79.998949466904 "$god_ set-dist 15 33 2"
$ns_ at 79.998949466904 "$god_ set-dist 15 35 2"
$ns_ at 80.027350801387 "$god_ set-dist 26 40 2"
$ns_ at 80.027350801387 "$god_ set-dist 40 48 3"
$ns_ at 80.054283855332 "$node_(3) setdest 14.935338407883 428.839510285439 0.000000000000"
$ns_ at 80.091557197344 "$god_ set-dist 9 27 1"
$ns_ at 80.097780971215 "$god_ set-dist 0 30 3"
$ns_ at 80.097780971215 "$god_ set-dist 3 30 3"
$ns_ at 80.097780971215 "$god_ set-dist 14 30 2"
$ns_ at 80.097780971215 "$god_ set-dist 17 30 3"
$ns_ at 80.097780971215 "$god_ set-dist 19 30 3"
$ns_ at 80.097780971215 "$god_ set-dist 25 30 2"
$ns_ at 80.097780971215 "$god_ set-dist 26 30 1"
$ns_ at 80.097780971215 "$god_ set-dist 30 31 3"
$ns_ at 80.097780971215 "$god_ set-dist 30 34 2"
$ns_ at 80.097780971215 "$god_ set-dist 30 42 3"
$ns_ at 80.097780971215 "$god_ set-dist 30 43 3"
$ns_ at 80.097780971215 "$god_ set-dist 30 49 2"
$ns_ at 80.203913107988 "$god_ set-dist 19 26 3"
$ns_ at 80.203913107988 "$god_ set-dist 19 30 4"
$ns_ at 80.203913107988 "$god_ set-dist 26 34 2"
$ns_ at 80.203913107988 "$god_ set-dist 30 34 3"
$ns_ at 80.305719719693 "$god_ set-dist 9 40 1"
$ns_ at 80.305719719693 "$god_ set-dist 38 40 2"
$ns_ at 80.305719719693 "$god_ set-dist 40 48 2"
$ns_ at 80.323375643173 "$god_ set-dist 5 25 3"
$ns_ at 80.323375643173 "$god_ set-dist 14 25 2"
$ns_ at 80.323375643173 "$god_ set-dist 25 29 3"
$ns_ at 80.323375643173 "$god_ set-dist 25 42 3"
$ns_ at 80.474427642860 "$god_ set-dist 18 32 1"
$ns_ at 80.476144679536 "$god_ set-dist 2 34 3"
$ns_ at 80.476144679536 "$god_ set-dist 13 34 2"
$ns_ at 80.476144679536 "$god_ set-dist 24 34 3"
$ns_ at 80.476144679536 "$god_ set-dist 34 47 3"
$ns_ at 80.505046736597 "$god_ set-dist 24 33 2"
$ns_ at 80.524227560208 "$god_ set-dist 21 32 2"
$ns_ at 80.584929476597 "$god_ set-dist 6 26 2"
$ns_ at 80.629913428552 "$god_ set-dist 5 10 3"
$ns_ at 80.629913428552 "$god_ set-dist 6 10 3"
$ns_ at 80.629913428552 "$god_ set-dist 10 27 2"
$ns_ at 80.629913428552 "$god_ set-dist 10 28 4"
$ns_ at 80.629913428552 "$god_ set-dist 10 29 3"
$ns_ at 80.629913428552 "$god_ set-dist 10 36 4"
$ns_ at 80.629913428552 "$god_ set-dist 10 37 4"
$ns_ at 81.078798474857 "$god_ set-dist 9 34 2"
$ns_ at 81.078798474857 "$god_ set-dist 34 38 3"
$ns_ at 81.078798474857 "$god_ set-dist 34 48 3"
$ns_ at 81.095834639517 "$god_ set-dist 0 45 3"
$ns_ at 81.095834639517 "$god_ set-dist 3 45 3"
$ns_ at 81.095834639517 "$god_ set-dist 14 45 2"
$ns_ at 81.095834639517 "$god_ set-dist 17 45 3"
$ns_ at 81.095834639517 "$god_ set-dist 25 45 2"
$ns_ at 81.095834639517 "$god_ set-dist 26 45 1"
$ns_ at 81.095834639517 "$god_ set-dist 31 45 3"
$ns_ at 81.095834639517 "$god_ set-dist 42 45 3"
$ns_ at 81.095834639517 "$god_ set-dist 43 45 3"
$ns_ at 81.095834639517 "$god_ set-dist 45 49 2"
$ns_ at 81.130729074208 "$god_ set-dist 6 45 3"
$ns_ at 81.130729074208 "$god_ set-dist 23 45 2"
$ns_ at 81.130729074208 "$god_ set-dist 24 45 3"
$ns_ at 81.170336376738 "$node_(28) setdest 498.639975624884 18.289469907575 0.000000000000"
$ns_ at 81.188718495437 "$god_ set-dist 2 34 2"
$ns_ at 81.188718495437 "$god_ set-dist 5 10 2"
$ns_ at 81.188718495437 "$god_ set-dist 5 25 2"
$ns_ at 81.188718495437 "$god_ set-dist 5 32 2"
$ns_ at 81.188718495437 "$god_ set-dist 5 34 1"
$ns_ at 81.188718495437 "$god_ set-dist 5 43 2"
$ns_ at 81.299768396483 "$god_ set-dist 1 19 2"
$ns_ at 81.299768396483 "$god_ set-dist 4 19 2"
$ns_ at 81.299768396483 "$god_ set-dist 8 19 2"
$ns_ at 81.299768396483 "$god_ set-dist 14 19 1"
$ns_ at 81.299768396483 "$god_ set-dist 19 20 2"
$ns_ at 81.299768396483 "$god_ set-dist 19 26 2"
$ns_ at 81.299768396483 "$god_ set-dist 19 30 3"
$ns_ at 81.299768396483 "$god_ set-dist 19 44 2"
$ns_ at 81.299768396483 "$god_ set-dist 19 45 3"
$ns_ at 81.406585878660 "$god_ set-dist 0 37 4"
$ns_ at 81.406585878660 "$god_ set-dist 3 37 4"
$ns_ at 81.406585878660 "$god_ set-dist 6 37 2"
$ns_ at 81.406585878660 "$god_ set-dist 15 37 3"
$ns_ at 81.406585878660 "$god_ set-dist 27 37 3"
$ns_ at 81.487130881035 "$god_ set-dist 31 32 1"
$ns_ at 81.487130881035 "$god_ set-dist 32 42 2"
$ns_ at 81.610713061890 "$god_ set-dist 6 41 1"
$ns_ at 81.633609557504 "$god_ set-dist 25 42 2"
$ns_ at 81.633609557504 "$god_ set-dist 34 42 1"
$ns_ at 81.651616899773 "$god_ set-dist 5 13 1"
$ns_ at 81.651616899773 "$god_ set-dist 5 33 2"
$ns_ at 81.651616899773 "$god_ set-dist 5 35 2"
$ns_ at 81.729102399412 "$god_ set-dist 2 4 2"
$ns_ at 81.804028377418 "$god_ set-dist 27 32 1"
$ns_ at 81.804028377418 "$god_ set-dist 29 32 2"
$ns_ at 81.804028377418 "$god_ set-dist 32 36 3"
$ns_ at 81.815645903878 "$god_ set-dist 14 26 2"
$ns_ at 81.815645903878 "$god_ set-dist 14 30 3"
$ns_ at 81.815645903878 "$god_ set-dist 14 45 3"
$ns_ at 81.815645903878 "$god_ set-dist 17 26 3"
$ns_ at 81.815645903878 "$god_ set-dist 17 30 4"
$ns_ at 81.815645903878 "$god_ set-dist 17 45 4"
$ns_ at 81.815645903878 "$god_ set-dist 19 26 3"
$ns_ at 81.815645903878 "$god_ set-dist 19 30 4"
$ns_ at 81.815645903878 "$god_ set-dist 19 45 4"
$ns_ at 81.815645903878 "$god_ set-dist 26 42 3"
$ns_ at 81.815645903878 "$god_ set-dist 30 42 4"
$ns_ at 81.815645903878 "$god_ set-dist 42 45 4"
$ns_ at 82.053023767907 "$god_ set-dist 11 24 3"
$ns_ at 82.053023767907 "$god_ set-dist 23 24 2"
$ns_ at 82.053023767907 "$god_ set-dist 24 30 3"
$ns_ at 82.053023767907 "$god_ set-dist 24 46 3"
$ns_ at 82.110364546880 "$god_ set-dist 8 10 3"
$ns_ at 82.110364546880 "$god_ set-dist 10 39 2"
$ns_ at 82.114429087622 "$god_ set-dist 16 48 2"
$ns_ at 82.114429087622 "$god_ set-dist 21 48 1"
$ns_ at 82.114429087622 "$god_ set-dist 34 48 2"
$ns_ at 82.201726431755 "$node_(34) setdest 167.923561334168 358.597845551175 0.000000000000"
$ns_ at 82.299597200767 "$god_ set-dist 4 7 2"
$ns_ at 82.299597200767 "$god_ set-dist 4 10 3"
$ns_ at 82.299597200767 "$god_ set-dist 4 22 3"
$ns_ at 82.749075986284 "$god_ set-dist 26 48 2"
$ns_ at 83.037268506702 "$god_ set-dist 9 34 1"
$ns_ at 83.037268506702 "$god_ set-dist 34 38 2"
$ns_ at 83.128731855823 "$god_ set-dist 1 12 2"
$ns_ at 83.128731855823 "$god_ set-dist 1 15 1"
$ns_ at 83.128731855823 "$god_ set-dist 15 37 2"
$ns_ at 83.173262229201 "$god_ set-dist 4 14 2"
$ns_ at 83.173262229201 "$god_ set-dist 4 17 3"
$ns_ at 83.173262229201 "$god_ set-dist 4 19 3"
$ns_ at 83.173262229201 "$god_ set-dist 4 31 3"
$ns_ at 83.216162801325 "$god_ set-dist 14 44 2"
$ns_ at 83.216162801325 "$god_ set-dist 17 44 3"
$ns_ at 83.216162801325 "$god_ set-dist 19 44 3"
$ns_ at 83.216162801325 "$god_ set-dist 31 44 3"
$ns_ at 83.264850853918 "$god_ set-dist 14 46 2"
$ns_ at 83.445526445492 "$god_ set-dist 9 16 1"
$ns_ at 83.445526445492 "$god_ set-dist 16 38 2"
$ns_ at 83.467685358346 "$god_ set-dist 2 15 1"
$ns_ at 83.467685358346 "$god_ set-dist 2 31 2"
$ns_ at 83.537279396006 "$god_ set-dist 1 14 2"
$ns_ at 83.537279396006 "$god_ set-dist 14 37 3"
$ns_ at 83.798135870132 "$god_ set-dist 1 26 2"
$ns_ at 83.798135870132 "$god_ set-dist 26 28 3"
$ns_ at 83.798135870132 "$god_ set-dist 26 37 3"
$ns_ at 83.871108283217 "$node_(26) setdest 457.508678671858 500.275860316441 0.000000000000"
$ns_ at 84.029355690356 "$god_ set-dist 3 8 2"
$ns_ at 84.029355690356 "$god_ set-dist 3 14 1"
$ns_ at 84.029355690356 "$god_ set-dist 3 20 2"
$ns_ at 84.067511965471 "$god_ set-dist 20 46 1"
$ns_ at 84.067511965471 "$god_ set-dist 24 46 2"
$ns_ at 84.290566550276 "$god_ set-dist 14 39 2"
$ns_ at 84.308494535102 "$god_ set-dist 6 30 3"
$ns_ at 84.308494535102 "$god_ set-dist 23 30 2"
$ns_ at 84.390234968034 "$god_ set-dist 3 20 3"
$ns_ at 84.390234968034 "$god_ set-dist 14 20 2"
$ns_ at 84.390234968034 "$god_ set-dist 17 20 3"
$ns_ at 84.390234968034 "$god_ set-dist 19 20 3"
$ns_ at 84.390234968034 "$god_ set-dist 20 31 3"
$ns_ at 84.566615377044 "$god_ set-dist 1 12 3"
$ns_ at 84.566615377044 "$god_ set-dist 12 15 2"
$ns_ at 84.615843981240 "$god_ set-dist 13 39 2"
$ns_ at 84.825988583302 "$god_ set-dist 9 36 3"
$ns_ at 84.825988583302 "$god_ set-dist 9 38 2"
$ns_ at 84.825988583302 "$god_ set-dist 16 38 3"
$ns_ at 84.825988583302 "$god_ set-dist 25 36 4"
$ns_ at 84.825988583302 "$god_ set-dist 25 38 3"
$ns_ at 84.825988583302 "$god_ set-dist 34 38 3"
$ns_ at 84.825988583302 "$god_ set-dist 38 40 3"
$ns_ at 84.940443746831 "$god_ set-dist 3 8 3"
$ns_ at 84.940443746831 "$god_ set-dist 8 14 2"
$ns_ at 84.940443746831 "$god_ set-dist 8 17 3"
$ns_ at 84.940443746831 "$god_ set-dist 8 19 3"
$ns_ at 84.940443746831 "$god_ set-dist 8 31 3"
$ns_ at 85.321888171503 "$god_ set-dist 16 21 2"
$ns_ at 85.482201261853 "$god_ set-dist 34 39 2"
$ns_ at 85.502270413287 "$god_ set-dist 5 39 3"
$ns_ at 85.502270413287 "$god_ set-dist 15 39 3"
$ns_ at 85.502270413287 "$god_ set-dist 19 39 3"
$ns_ at 85.502270413287 "$god_ set-dist 27 39 2"
$ns_ at 85.502270413287 "$god_ set-dist 39 42 3"
$ns_ at 85.537521124517 "$god_ set-dist 24 44 2"
$ns_ at 85.554824338091 "$god_ set-dist 21 36 2"
$ns_ at 85.554824338091 "$god_ set-dist 21 38 1"
$ns_ at 85.554824338091 "$god_ set-dist 25 36 3"
$ns_ at 85.554824338091 "$god_ set-dist 25 38 2"
$ns_ at 85.554824338091 "$god_ set-dist 34 38 2"
$ns_ at 85.554824338091 "$god_ set-dist 38 40 2"
$ns_ at 85.574918849584 "$god_ set-dist 20 24 2"
$ns_ at 85.574918849584 "$god_ set-dist 24 46 3"
$ns_ at 85.647942910092 "$god_ set-dist 21 34 2"
$ns_ at 85.647942910092 "$god_ set-dist 34 38 3"
$ns_ at 85.762590937191 "$god_ set-dist 7 31 1"
$ns_ at 85.762590937191 "$god_ set-dist 20 31 2"
$ns_ at 85.762590937191 "$god_ set-dist 23 31 2"
$ns_ at 85.762590937191 "$god_ set-dist 31 33 2"
$ns_ at 85.762590937191 "$god_ set-dist 31 35 2"
$ns_ at 85.762590937191 "$god_ set-dist 31 44 2"
$ns_ at 86.003152179457 "$god_ set-dist 0 23 2"
$ns_ at 86.003152179457 "$god_ set-dist 3 23 2"
$ns_ at 86.003152179457 "$god_ set-dist 23 43 2"
$ns_ at 86.003152179457 "$god_ set-dist 23 49 1"
$ns_ at 86.035477551545 "$god_ set-dist 4 24 2"
$ns_ at 86.078583143201 "$god_ set-dist 6 42 1"
$ns_ at 86.078583143201 "$god_ set-dist 23 42 2"
$ns_ at 86.106886637575 "$god_ set-dist 6 18 2"
$ns_ at 86.110316721104 "$god_ set-dist 14 21 2"
$ns_ at 86.171903639392 "$god_ set-dist 11 29 2"
$ns_ at 86.171903639392 "$god_ set-dist 23 29 1"
$ns_ at 86.296115517539 "$god_ set-dist 2 39 3"
$ns_ at 86.296115517539 "$god_ set-dist 8 39 2"
$ns_ at 86.296115517539 "$god_ set-dist 24 39 3"
$ns_ at 86.531092947311 "$god_ set-dist 7 8 1"
$ns_ at 86.531092947311 "$god_ set-dist 8 10 2"
$ns_ at 86.531092947311 "$god_ set-dist 8 22 2"
$ns_ at 86.531092947311 "$god_ set-dist 8 31 2"
$ns_ at 86.541783899089 "$god_ set-dist 14 18 2"
$ns_ at 86.572532805977 "$god_ set-dist 13 34 1"
$ns_ at 86.572532805977 "$god_ set-dist 24 34 2"
$ns_ at 86.572532805977 "$god_ set-dist 34 38 2"
$ns_ at 86.572532805977 "$god_ set-dist 34 47 2"
$ns_ at 86.620674684999 "$god_ set-dist 25 35 1"
$ns_ at 87.110492835977 "$god_ set-dist 13 24 2"
$ns_ at 87.110492835977 "$god_ set-dist 24 34 3"
$ns_ at 87.110492835977 "$god_ set-dist 24 43 4"
$ns_ at 87.110492835977 "$god_ set-dist 24 49 3"
$ns_ at 87.227067978394 "$god_ set-dist 12 39 4"
$ns_ at 87.227067978394 "$god_ set-dist 16 39 2"
$ns_ at 87.227067978394 "$god_ set-dist 17 39 3"
$ns_ at 87.276708602536 "$god_ set-dist 7 24 3"
$ns_ at 87.276708602536 "$god_ set-dist 8 24 2"
$ns_ at 87.276708602536 "$god_ set-dist 10 24 4"
$ns_ at 87.276708602536 "$god_ set-dist 22 24 4"
$ns_ at 87.276708602536 "$god_ set-dist 24 26 3"
$ns_ at 87.298466935052 "$god_ set-dist 4 29 2"
$ns_ at 87.405892866421 "$node_(18) setdest 373.492412547679 468.766623000488 0.000000000000"
$ns_ at 87.424907998205 "$node_(10) setdest 71.906783177194 553.897508729873 0.000000000000"
$ns_ at 87.554069667504 "$god_ set-dist 21 40 2"
$ns_ at 87.554069667504 "$god_ set-dist 38 40 3"
$ns_ at 87.595486343736 "$god_ set-dist 5 26 3"
$ns_ at 87.595486343736 "$god_ set-dist 12 26 4"
$ns_ at 87.595486343736 "$god_ set-dist 13 26 2"
$ns_ at 87.595486343736 "$god_ set-dist 15 26 3"
$ns_ at 87.670951369880 "$god_ set-dist 7 13 2"
$ns_ at 87.670951369880 "$god_ set-dist 13 22 3"
$ns_ at 88.089584338688 "$god_ set-dist 6 24 2"
$ns_ at 88.101068706534 "$god_ set-dist 8 15 1"
$ns_ at 88.101068706534 "$god_ set-dist 8 17 2"
$ns_ at 88.101068706534 "$god_ set-dist 8 19 2"
$ns_ at 88.101068706534 "$god_ set-dist 15 26 2"
$ns_ at 88.174479898860 "$god_ set-dist 7 12 2"
$ns_ at 88.174479898860 "$god_ set-dist 9 12 2"
$ns_ at 88.174479898860 "$god_ set-dist 11 12 3"
$ns_ at 88.174479898860 "$god_ set-dist 12 14 1"
$ns_ at 88.174479898860 "$god_ set-dist 12 26 3"
$ns_ at 88.174479898860 "$god_ set-dist 12 39 3"
$ns_ at 88.174479898860 "$god_ set-dist 12 40 2"
$ns_ at 88.174479898860 "$god_ set-dist 12 41 2"
$ns_ at 88.174479898860 "$god_ set-dist 12 49 2"
$ns_ at 88.209646659721 "$node_(39) setdest 371.181556884145 561.709906651094 0.000000000000"
$ns_ at 88.345867151169 "$node_(14) setdest 185.847896851218 263.522073459484 0.000000000000"
$ns_ at 88.471343235348 "$god_ set-dist 9 15 1"
$ns_ at 88.471343235348 "$god_ set-dist 11 15 2"
$ns_ at 88.471343235348 "$god_ set-dist 15 39 2"
$ns_ at 88.583542382286 "$god_ set-dist 17 21 3"
$ns_ at 88.583542382286 "$god_ set-dist 19 21 3"
$ns_ at 88.583542382286 "$god_ set-dist 21 27 2"
$ns_ at 88.689889584230 "$god_ set-dist 5 35 3"
$ns_ at 88.689889584230 "$god_ set-dist 13 35 2"
$ns_ at 88.894118236306 "$god_ set-dist 3 17 2"
$ns_ at 88.991761701830 "$god_ set-dist 0 24 4"
$ns_ at 88.991761701830 "$god_ set-dist 3 24 4"
$ns_ at 88.991761701830 "$god_ set-dist 14 24 3"
$ns_ at 88.991761701830 "$god_ set-dist 24 27 3"
$ns_ at 88.991761701830 "$god_ set-dist 24 29 2"
$ns_ at 88.991761701830 "$god_ set-dist 24 42 3"
$ns_ at 89.075577634407 "$god_ set-dist 17 23 2"
$ns_ at 89.075577634407 "$god_ set-dist 19 23 2"
$ns_ at 89.075577634407 "$god_ set-dist 23 27 1"
$ns_ at 89.247379795482 "$god_ set-dist 11 23 2"
$ns_ at 89.247379795482 "$god_ set-dist 11 29 3"
$ns_ at 89.360458538779 "$god_ set-dist 9 29 1"
$ns_ at 89.360458538779 "$god_ set-dist 9 36 2"
$ns_ at 89.360458538779 "$god_ set-dist 11 29 2"
$ns_ at 89.360458538779 "$god_ set-dist 25 29 2"
$ns_ at 89.432782404342 "$god_ set-dist 12 41 3"
$ns_ at 89.432782404342 "$god_ set-dist 14 41 2"
$ns_ at 89.482226188869 "$god_ set-dist 15 23 1"
$ns_ at 89.554270468826 "$god_ set-dist 4 30 1"
$ns_ at 89.554270468826 "$god_ set-dist 6 30 2"
$ns_ at 89.554270468826 "$god_ set-dist 30 42 3"
$ns_ at 89.561006855219 "$god_ set-dist 6 10 2"
$ns_ at 89.561006855219 "$god_ set-dist 6 34 1"
$ns_ at 89.561006855219 "$god_ set-dist 6 43 2"
$ns_ at 89.561006855219 "$god_ set-dist 10 28 3"
$ns_ at 89.561006855219 "$god_ set-dist 28 34 2"
$ns_ at 89.561006855219 "$god_ set-dist 28 43 3"
$ns_ at 89.801088390334 "$node_(23) setdest 448.819605318009 343.083988363265 0.000000000000"
$ns_ at 90.102663125297 "$god_ set-dist 15 49 1"
$ns_ at 90.158014909787 "$god_ set-dist 32 41 2"
$ns_ at 90.226929755079 "$god_ set-dist 21 30 1"
$ns_ at 90.590362534732 "$god_ set-dist 13 28 1"
$ns_ at 90.590362534732 "$god_ set-dist 28 49 2"
$ns_ at 90.720249131828 "$god_ set-dist 21 47 1"
$ns_ at 90.720249131828 "$god_ set-dist 25 47 2"
$ns_ at 90.789396706121 "$node_(21) setdest 457.824895823742 412.377916717578 0.000000000000"
$ns_ at 90.802857691096 "$god_ set-dist 0 7 1"
$ns_ at 90.802857691096 "$god_ set-dist 0 8 2"
$ns_ at 90.802857691096 "$god_ set-dist 0 20 2"
$ns_ at 90.802857691096 "$god_ set-dist 0 33 2"
$ns_ at 90.802857691096 "$god_ set-dist 0 35 2"
$ns_ at 90.802857691096 "$god_ set-dist 0 44 2"
$ns_ at 91.082160244669 "$god_ set-dist 15 38 1"
$ns_ at 91.082160244669 "$god_ set-dist 17 38 2"
$ns_ at 91.082160244669 "$god_ set-dist 19 38 2"
$ns_ at 91.082160244669 "$god_ set-dist 31 38 2"
$ns_ at 91.284015971082 "$god_ set-dist 13 42 1"
$ns_ at 91.284015971082 "$god_ set-dist 33 42 2"
$ns_ at 91.284015971082 "$god_ set-dist 42 45 3"
$ns_ at 91.548457126667 "$god_ set-dist 1 24 2"
$ns_ at 91.548457126667 "$god_ set-dist 18 24 3"
$ns_ at 91.548457126667 "$god_ set-dist 24 32 4"
$ns_ at 91.548457126667 "$god_ set-dist 24 41 3"
$ns_ at 91.817939254881 "$god_ set-dist 9 24 3"
$ns_ at 91.817939254881 "$god_ set-dist 9 48 2"
$ns_ at 91.817939254881 "$god_ set-dist 16 24 4"
$ns_ at 91.817939254881 "$god_ set-dist 16 48 3"
$ns_ at 91.817939254881 "$god_ set-dist 24 40 4"
$ns_ at 91.817939254881 "$god_ set-dist 40 48 3"
$ns_ at 91.829615559965 "$god_ set-dist 5 33 3"
$ns_ at 91.829615559965 "$god_ set-dist 5 45 4"
$ns_ at 91.829615559965 "$god_ set-dist 13 33 2"
$ns_ at 91.829615559965 "$god_ set-dist 13 45 3"
$ns_ at 91.829615559965 "$god_ set-dist 33 42 3"
$ns_ at 91.829615559965 "$god_ set-dist 42 45 4"
$ns_ at 92.084527331403 "$node_(7) setdest 275.131148681342 471.771429578880 0.000000000000"
$ns_ at 92.184844369851 "$god_ set-dist 25 33 1"
$ns_ at 92.466074083403 "$god_ set-dist 13 49 2"
$ns_ at 92.466074083403 "$god_ set-dist 28 49 3"
$ns_ at 92.618549295849 "$god_ set-dist 15 20 1"
$ns_ at 92.618549295849 "$god_ set-dist 17 20 2"
$ns_ at 92.618549295849 "$god_ set-dist 19 20 2"
$ns_ at 92.658183748630 "$god_ set-dist 16 24 3"
$ns_ at 92.658183748630 "$god_ set-dist 16 48 2"
$ns_ at 92.658183748630 "$god_ set-dist 24 40 3"
$ns_ at 92.658183748630 "$god_ set-dist 24 41 2"
$ns_ at 92.658183748630 "$god_ set-dist 40 48 2"
$ns_ at 92.658183748630 "$god_ set-dist 41 48 1"
$ns_ at 92.923870553813 "$god_ set-dist 2 16 2"
$ns_ at 92.923870553813 "$god_ set-dist 15 16 1"
$ns_ at 92.923870553813 "$god_ set-dist 15 22 2"
$ns_ at 92.923870553813 "$god_ set-dist 16 38 2"
$ns_ at 93.045501473137 "$god_ set-dist 24 35 3"
$ns_ at 93.045501473137 "$god_ set-dist 24 40 4"
$ns_ at 93.045501473137 "$god_ set-dist 24 41 3"
$ns_ at 93.045501473137 "$god_ set-dist 24 48 2"
$ns_ at 93.306345778990 "$god_ set-dist 9 32 1"
$ns_ at 93.607418921840 "$god_ set-dist 13 18 2"
$ns_ at 93.814406208973 "$node_(24) setdest 619.535949910869 6.761928304677 0.000000000000"
$ns_ at 93.938985338923 "$god_ set-dist 6 49 1"
$ns_ at 93.938985338923 "$god_ set-dist 28 49 2"
$ns_ at 95.020947400433 "$god_ set-dist 4 31 2"
$ns_ at 95.020947400433 "$god_ set-dist 9 31 1"
$ns_ at 95.104750238128 "$god_ set-dist 4 13 2"
$ns_ at 95.181941596279 "$god_ set-dist 4 17 2"
$ns_ at 95.181941596279 "$god_ set-dist 6 17 1"
$ns_ at 95.181941596279 "$god_ set-dist 17 21 2"
$ns_ at 95.181941596279 "$god_ set-dist 17 28 2"
$ns_ at 95.181941596279 "$god_ set-dist 17 30 3"
$ns_ at 95.181941596279 "$god_ set-dist 17 44 2"
$ns_ at 95.181941596279 "$god_ set-dist 17 47 2"
$ns_ at 95.181941596279 "$god_ set-dist 17 48 2"
$ns_ at 95.376489538789 "$god_ set-dist 4 5 3"
$ns_ at 95.376489538789 "$god_ set-dist 4 6 2"
$ns_ at 95.376489538789 "$god_ set-dist 4 17 3"
$ns_ at 95.376489538789 "$god_ set-dist 4 42 3"
$ns_ at 95.616227317082 "$god_ set-dist 15 44 1"
$ns_ at 95.616227317082 "$god_ set-dist 19 44 2"
$ns_ at 95.997256768753 "$god_ set-dist 13 17 1"
$ns_ at 96.386681496544 "$god_ set-dist 4 45 1"
$ns_ at 96.410543053587 "$god_ set-dist 6 28 2"
$ns_ at 96.410543053587 "$god_ set-dist 28 49 3"
$ns_ at 96.450327803144 "$god_ set-dist 2 31 3"
$ns_ at 96.450327803144 "$god_ set-dist 15 31 2"
$ns_ at 96.450327803144 "$god_ set-dist 24 31 4"
$ns_ at 96.450327803144 "$god_ set-dist 31 38 3"
$ns_ at 96.831309123535 "$god_ set-dist 23 25 1"
$ns_ at 96.939392974783 "$god_ set-dist 33 38 2"
$ns_ at 97.012324745058 "$god_ set-dist 15 41 1"
$ns_ at 97.847430303052 "$god_ set-dist 4 5 2"
$ns_ at 97.847430303052 "$god_ set-dist 5 9 1"
$ns_ at 97.847430303052 "$god_ set-dist 5 11 2"
$ns_ at 97.847430303052 "$god_ set-dist 5 26 2"
$ns_ at 97.847430303052 "$god_ set-dist 5 33 2"
$ns_ at 97.847430303052 "$god_ set-dist 5 35 2"
$ns_ at 97.847430303052 "$god_ set-dist 5 39 2"
$ns_ at 97.847430303052 "$god_ set-dist 5 45 3"
$ns_ at 98.100858671539 "$god_ set-dist 13 21 2"
$ns_ at 98.100858671539 "$god_ set-dist 13 30 3"
$ns_ at 98.117983741742 "$god_ set-dist 10 25 2"
$ns_ at 98.136222501821 "$god_ set-dist 6 18 1"
$ns_ at 98.431748040021 "$god_ set-dist 4 5 3"
$ns_ at 98.431748040021 "$god_ set-dist 4 9 2"
$ns_ at 98.431748040021 "$god_ set-dist 4 12 4"
$ns_ at 98.431748040021 "$god_ set-dist 4 14 3"
$ns_ at 98.431748040021 "$god_ set-dist 4 31 3"
$ns_ at 98.800065849167 "$god_ set-dist 19 25 3"
$ns_ at 98.800065849167 "$god_ set-dist 25 34 2"
$ns_ at 98.800065849167 "$god_ set-dist 25 42 3"
$ns_ at 99.206526536953 "$god_ set-dist 1 19 3"
$ns_ at 99.206526536953 "$god_ set-dist 8 19 3"
$ns_ at 99.206526536953 "$god_ set-dist 15 19 2"
$ns_ at 99.206526536953 "$god_ set-dist 19 20 3"
$ns_ at 99.206526536953 "$god_ set-dist 19 38 3"
$ns_ at 99.206526536953 "$god_ set-dist 19 44 3"
$ns_ at 99.504403476278 "$god_ set-dist 9 17 1"
$ns_ at 99.504403476278 "$god_ set-dist 11 17 2"
$ns_ at 99.504403476278 "$god_ set-dist 17 26 2"
$ns_ at 99.504403476278 "$god_ set-dist 17 33 2"
$ns_ at 99.504403476278 "$god_ set-dist 17 35 2"
$ns_ at 99.504403476278 "$god_ set-dist 17 39 2"
$ns_ at 99.504403476278 "$god_ set-dist 17 45 3"
$ns_ at 99.555949872998 "$god_ set-dist 13 47 2"
$ns_ at 99.737136461088 "$god_ set-dist 13 41 2"
$ns_ at 99.770468024649 "$god_ set-dist 9 42 1"
$ns_ at 99.770468024649 "$god_ set-dist 11 42 2"
$ns_ at 99.770468024649 "$god_ set-dist 25 42 2"
$ns_ at 99.770468024649 "$god_ set-dist 26 42 2"
$ns_ at 99.770468024649 "$god_ set-dist 33 42 2"
$ns_ at 99.770468024649 "$god_ set-dist 35 42 2"
$ns_ at 99.770468024649 "$god_ set-dist 39 42 2"
$ns_ at 99.770468024649 "$god_ set-dist 42 45 3"
$ns_ at 99.796300293942 "$god_ set-dist 16 41 2"
$ns_ at 99.796300293942 "$god_ set-dist 16 48 3"
$ns_ at 99.876301299202 "$god_ set-dist 22 25 2"
$ns_ at 100.203437462345 "$god_ set-dist 5 35 3"
$ns_ at 100.203437462345 "$god_ set-dist 9 35 2"
$ns_ at 100.203437462345 "$god_ set-dist 17 35 3"
$ns_ at 100.203437462345 "$god_ set-dist 35 42 3"
$ns_ at 100.250223332026 "$god_ set-dist 6 47 2"
$ns_ at 100.250223332026 "$god_ set-dist 17 47 3"
$ns_ at 100.250223332026 "$god_ set-dist 34 47 3"
$ns_ at 100.515797350879 "$god_ set-dist 20 25 1"
$ns_ at 100.833704184285 "$god_ set-dist 34 41 2"
$ns_ at 100.909928372830 "$node_(32) setdest 134.578172686105 518.338023767415 0.000000000000"
$ns_ at 100.914929879692 "$god_ set-dist 13 48 2"
$ns_ at 101.189191128071 "$god_ set-dist 16 42 1"
$ns_ at 101.189191128071 "$god_ set-dist 22 42 2"
$ns_ at 101.350833758891 "$god_ set-dist 5 33 3"
$ns_ at 101.350833758891 "$god_ set-dist 9 33 2"
$ns_ at 101.350833758891 "$god_ set-dist 17 33 3"
$ns_ at 101.350833758891 "$god_ set-dist 33 42 3"
$ns_ at 101.582491831128 "$god_ set-dist 10 13 3"
$ns_ at 101.582491831128 "$god_ set-dist 10 28 4"
$ns_ at 101.582491831128 "$god_ set-dist 13 34 2"
$ns_ at 101.582491831128 "$god_ set-dist 13 43 3"
$ns_ at 101.582491831128 "$god_ set-dist 28 34 3"
$ns_ at 101.582491831128 "$god_ set-dist 28 43 4"
$ns_ at 101.614510202617 "$god_ set-dist 25 44 1"
$ns_ at 101.677235942440 "$god_ set-dist 5 11 3"
$ns_ at 101.677235942440 "$god_ set-dist 9 11 2"
$ns_ at 101.677235942440 "$god_ set-dist 11 13 3"
$ns_ at 101.677235942440 "$god_ set-dist 11 17 3"
$ns_ at 101.677235942440 "$god_ set-dist 11 29 3"
$ns_ at 101.677235942440 "$god_ set-dist 11 42 3"
$ns_ at 102.407996854109 "$god_ set-dist 4 38 2"
$ns_ at 102.407996854109 "$god_ set-dist 38 45 3"
$ns_ at 102.507383162307 "$node_(13) setdest 323.661563329306 160.572763099133 0.000000000000"
$ns_ at 102.949789312310 "$god_ set-dist 24 40 3"
$ns_ at 102.949789312310 "$god_ set-dist 24 41 2"
$ns_ at 102.949789312310 "$god_ set-dist 36 41 2"
$ns_ at 102.949789312310 "$god_ set-dist 38 40 2"
$ns_ at 102.949789312310 "$god_ set-dist 38 41 1"
$ns_ at 103.060370543357 "$god_ set-dist 15 21 1"
$ns_ at 103.060370543357 "$god_ set-dist 15 30 2"
$ns_ at 103.658291101994 "$god_ set-dist 6 16 1"
$ns_ at 103.658291101994 "$god_ set-dist 6 22 2"
$ns_ at 103.658291101994 "$god_ set-dist 16 48 2"
$ns_ at 104.003367341639 "$node_(9) setdest 264.304062268987 343.014617326446 0.000000000000"
$ns_ at 104.564799942128 "$node_(37) setdest 587.450304604057 452.237446272138 16.400433641693"
$ns_ at 104.690428094886 "$god_ set-dist 15 16 2"
$ns_ at 104.690428094886 "$god_ set-dist 15 22 3"
$ns_ at 104.734292394095 "$god_ set-dist 6 7 1"
$ns_ at 104.923367865460 "$god_ set-dist 44 46 1"
$ns_ at 104.980819311719 "$god_ set-dist 0 37 3"
$ns_ at 104.980819311719 "$god_ set-dist 7 37 2"
$ns_ at 104.980819311719 "$god_ set-dist 8 37 1"
$ns_ at 104.980819311719 "$god_ set-dist 10 37 3"
$ns_ at 104.980819311719 "$god_ set-dist 22 37 3"
$ns_ at 104.980819311719 "$god_ set-dist 26 37 2"
$ns_ at 105.210729642739 "$god_ set-dist 24 40 4"
$ns_ at 105.210729642739 "$god_ set-dist 38 40 3"
$ns_ at 105.210729642739 "$god_ set-dist 40 41 2"
$ns_ at 105.210729642739 "$god_ set-dist 40 48 3"
$ns_ at 105.691585057627 "$god_ set-dist 15 48 1"
$ns_ at 106.299768591516 "$god_ set-dist 25 37 2"
$ns_ at 106.299768591516 "$god_ set-dist 37 39 2"
$ns_ at 106.299768591516 "$god_ set-dist 37 44 1"
$ns_ at 106.299768591516 "$god_ set-dist 37 46 2"
$ns_ at 106.573900610811 "$god_ set-dist 20 37 1"
$ns_ at 106.588337495599 "$node_(27) setdest 513.976898574549 485.586923433486 13.427579857627"
$ns_ at 106.796484286781 "$node_(44) setdest 113.448945530080 215.917337124889 9.348637686231"
$ns_ at 106.801204313100 "$god_ set-dist 4 39 2"
$ns_ at 106.978102890227 "$god_ set-dist 6 48 2"
$ns_ at 106.978102890227 "$god_ set-dist 16 48 3"
$ns_ at 107.459245881178 "$god_ set-dist 3 37 3"
$ns_ at 107.459245881178 "$god_ set-dist 23 37 1"
$ns_ at 107.459245881178 "$god_ set-dist 27 37 2"
$ns_ at 107.459245881178 "$god_ set-dist 37 43 3"
$ns_ at 107.459245881178 "$god_ set-dist 37 49 2"
$ns_ at 107.637299627665 "$god_ set-dist 19 25 2"
$ns_ at 107.637299627665 "$god_ set-dist 25 27 1"
$ns_ at 107.653040563411 "$god_ set-dist 41 47 1"
$ns_ at 107.653253332300 "$node_(35) setdest 335.582617277090 504.313207985169 2.847121123271"
$ns_ at 107.777137462922 "$god_ set-dist 3 8 2"
$ns_ at 107.777137462922 "$god_ set-dist 8 19 2"
$ns_ at 107.777137462922 "$god_ set-dist 8 27 1"
$ns_ at 107.908862675035 "$god_ set-dist 3 20 2"
$ns_ at 107.908862675035 "$god_ set-dist 19 20 2"
$ns_ at 107.908862675035 "$god_ set-dist 20 27 1"
$ns_ at 107.915051391654 "$god_ set-dist 0 13 3"
$ns_ at 107.915051391654 "$god_ set-dist 0 27 2"
$ns_ at 107.915051391654 "$god_ set-dist 0 28 4"
$ns_ at 107.915051391654 "$god_ set-dist 0 29 3"
$ns_ at 107.915051391654 "$god_ set-dist 0 36 4"
$ns_ at 107.950164377685 "$god_ set-dist 19 21 2"
$ns_ at 107.950164377685 "$god_ set-dist 19 30 3"
$ns_ at 107.950164377685 "$god_ set-dist 21 27 1"
$ns_ at 107.950164377685 "$god_ set-dist 27 30 2"
$ns_ at 107.974572127530 "$god_ set-dist 3 44 2"
$ns_ at 107.974572127530 "$god_ set-dist 19 44 2"
$ns_ at 107.974572127530 "$god_ set-dist 27 44 1"
$ns_ at 108.253288936511 "$god_ set-dist 15 18 1"
$ns_ at 108.379411672863 "$god_ set-dist 17 29 1"
$ns_ at 108.379411672863 "$god_ set-dist 17 36 2"
$ns_ at 108.379411672863 "$god_ set-dist 17 47 2"
$ns_ at 108.427524397270 "$god_ set-dist 5 38 1"
$ns_ at 108.427524397270 "$god_ set-dist 12 38 2"
$ns_ at 108.427524397270 "$god_ set-dist 19 38 2"
$ns_ at 109.032155671798 "$god_ set-dist 8 19 3"
$ns_ at 109.032155671798 "$god_ set-dist 19 20 3"
$ns_ at 109.032155671798 "$god_ set-dist 19 21 3"
$ns_ at 109.032155671798 "$god_ set-dist 19 23 3"
$ns_ at 109.032155671798 "$god_ set-dist 19 25 3"
$ns_ at 109.032155671798 "$god_ set-dist 19 27 2"
$ns_ at 109.032155671798 "$god_ set-dist 19 30 4"
$ns_ at 109.032155671798 "$god_ set-dist 19 41 3"
$ns_ at 109.032155671798 "$god_ set-dist 19 44 3"
$ns_ at 109.069788826628 "$god_ set-dist 2 40 2"
$ns_ at 109.069788826628 "$god_ set-dist 6 40 1"
$ns_ at 109.069788826628 "$god_ set-dist 24 40 3"
$ns_ at 109.069788826628 "$god_ set-dist 38 40 2"
$ns_ at 109.215473843758 "$god_ set-dist 43 44 2"
$ns_ at 109.215473843758 "$god_ set-dist 44 49 1"
$ns_ at 109.291606589946 "$node_(1) setdest 630.128868826852 298.900103715999 4.863415856750"
$ns_ at 109.479328198576 "$god_ set-dist 4 37 1"
$ns_ at 109.479328198576 "$god_ set-dist 30 37 2"
$ns_ at 109.479328198576 "$god_ set-dist 37 45 2"
$ns_ at 109.847562368038 "$god_ set-dist 27 39 1"
$ns_ at 109.933340604169 "$god_ set-dist 11 37 2"
$ns_ at 109.933340604169 "$god_ set-dist 33 37 1"
$ns_ at 110.160833132825 "$god_ set-dist 2 31 2"
$ns_ at 110.160833132825 "$god_ set-dist 6 31 1"
$ns_ at 110.160833132825 "$god_ set-dist 24 31 3"
$ns_ at 110.160833132825 "$god_ set-dist 31 38 2"
$ns_ at 110.241033974233 "$god_ set-dist 1 26 1"
$ns_ at 110.241033974233 "$god_ set-dist 26 28 2"
$ns_ at 110.427234283499 "$node_(45) setdest 570.573519852313 264.425219008803 8.057057688913"
$ns_ at 110.491750660140 "$god_ set-dist 2 25 2"
$ns_ at 110.491750660140 "$god_ set-dist 8 25 1"
$ns_ at 110.625761528183 "$god_ set-dist 37 41 1"
$ns_ at 110.725446643731 "$god_ set-dist 3 8 3"
$ns_ at 110.725446643731 "$god_ set-dist 3 20 3"
$ns_ at 110.725446643731 "$god_ set-dist 3 27 2"
$ns_ at 110.820262107820 "$god_ set-dist 21 37 1"
$ns_ at 110.887944793128 "$god_ set-dist 26 27 1"
$ns_ at 110.887944793128 "$god_ set-dist 27 45 2"
$ns_ at 110.904661019730 "$node_(4) setdest 605.360943157011 453.504389477641 0.000000000000"
$ns_ at 110.964547739981 "$god_ set-dist 1 27 1"
$ns_ at 111.011243377641 "$god_ set-dist 7 15 1"
$ns_ at 111.011243377641 "$god_ set-dist 15 22 2"
$ns_ at 111.030667053756 "$god_ set-dist 15 47 1"
$ns_ at 111.030667053756 "$god_ set-dist 34 47 2"
$ns_ at 111.081105111032 "$node_(22) setdest 417.098156082541 106.150741216111 17.577124884362"
$ns_ at 111.138665836612 "$god_ set-dist 22 49 1"
$ns_ at 111.588321011092 "$god_ set-dist 21 38 2"
$ns_ at 111.588321011092 "$god_ set-dist 30 38 3"
$ns_ at 111.694989332627 "$god_ set-dist 5 11 2"
$ns_ at 111.694989332627 "$god_ set-dist 11 13 2"
$ns_ at 111.694989332627 "$god_ set-dist 11 17 2"
$ns_ at 111.694989332627 "$god_ set-dist 11 27 1"
$ns_ at 111.694989332627 "$god_ set-dist 11 29 2"
$ns_ at 111.694989332627 "$god_ set-dist 11 42 2"
$ns_ at 112.010105409455 "$god_ set-dist 28 37 2"
$ns_ at 112.176315599171 "$god_ set-dist 11 45 1"
$ns_ at 112.176315599171 "$god_ set-dist 32 45 2"
$ns_ at 112.176315599171 "$god_ set-dist 40 45 2"
$ns_ at 112.243192320051 "$god_ set-dist 36 37 2"
$ns_ at 112.454138671695 "$god_ set-dist 24 35 2"
$ns_ at 112.454138671695 "$god_ set-dist 35 37 1"
$ns_ at 112.570836902477 "$god_ set-dist 5 35 2"
$ns_ at 112.570836902477 "$god_ set-dist 17 35 2"
$ns_ at 112.570836902477 "$god_ set-dist 27 35 1"
$ns_ at 112.570836902477 "$god_ set-dist 35 42 2"
$ns_ at 112.867287080394 "$god_ set-dist 5 33 2"
$ns_ at 112.867287080394 "$god_ set-dist 17 33 2"
$ns_ at 112.867287080394 "$god_ set-dist 27 33 1"
$ns_ at 112.867287080394 "$god_ set-dist 33 42 2"
$ns_ at 112.867727878191 "$god_ set-dist 4 12 3"
$ns_ at 112.867727878191 "$god_ set-dist 4 14 2"
$ns_ at 112.867727878191 "$god_ set-dist 12 44 2"
$ns_ at 112.867727878191 "$god_ set-dist 14 37 2"
$ns_ at 112.867727878191 "$god_ set-dist 14 44 1"
$ns_ at 112.867727878191 "$god_ set-dist 19 44 2"
$ns_ at 113.066720185205 "$god_ set-dist 24 35 3"
$ns_ at 113.066720185205 "$god_ set-dist 24 37 2"
$ns_ at 113.466534903051 "$god_ set-dist 6 45 2"
$ns_ at 113.466534903051 "$god_ set-dist 15 45 2"
$ns_ at 113.466534903051 "$god_ set-dist 21 45 1"
$ns_ at 113.538670559960 "$god_ set-dist 4 25 1"
$ns_ at 113.644094959923 "$god_ set-dist 5 11 3"
$ns_ at 113.644094959923 "$god_ set-dist 5 27 2"
$ns_ at 113.644094959923 "$god_ set-dist 5 33 3"
$ns_ at 113.644094959923 "$god_ set-dist 5 35 3"
$ns_ at 113.708528325123 "$god_ set-dist 5 22 2"
$ns_ at 113.708528325123 "$god_ set-dist 19 22 2"
$ns_ at 113.708528325123 "$god_ set-dist 22 34 1"
$ns_ at 113.883729083198 "$god_ set-dist 39 45 1"
$ns_ at 114.137147427590 "$god_ set-dist 11 17 3"
$ns_ at 114.137147427590 "$god_ set-dist 17 27 2"
$ns_ at 114.137147427590 "$god_ set-dist 17 33 3"
$ns_ at 114.137147427590 "$god_ set-dist 17 35 3"
$ns_ at 114.146923821743 "$god_ set-dist 34 37 2"
$ns_ at 114.146923821743 "$god_ set-dist 34 44 1"
$ns_ at 114.154484361709 "$god_ set-dist 11 22 1"
$ns_ at 114.154484361709 "$god_ set-dist 22 45 2"
$ns_ at 114.159516714378 "$god_ set-dist 1 9 2"
$ns_ at 114.253470616188 "$node_(16) setdest 541.534370106912 424.145095055499 3.536098561135"
$ns_ at 114.289868351772 "$god_ set-dist 22 39 1"
$ns_ at 114.789493489615 "$god_ set-dist 16 45 2"
$ns_ at 114.789493489615 "$god_ set-dist 25 45 1"
$ns_ at 114.891733941422 "$god_ set-dist 38 45 2"
$ns_ at 114.891733941422 "$god_ set-dist 41 45 1"
$ns_ at 114.921813054246 "$god_ set-dist 4 22 2"
$ns_ at 114.921813054246 "$god_ set-dist 22 25 1"
$ns_ at 114.968264964849 "$god_ set-dist 42 49 1"
$ns_ at 115.168140184310 "$god_ set-dist 22 31 1"
$ns_ at 115.170118885188 "$god_ set-dist 2 37 2"
$ns_ at 115.466240771016 "$god_ set-dist 1 19 2"
$ns_ at 115.466240771016 "$god_ set-dist 6 19 1"
$ns_ at 115.466240771016 "$god_ set-dist 8 19 2"
$ns_ at 115.466240771016 "$god_ set-dist 19 20 2"
$ns_ at 115.466240771016 "$god_ set-dist 19 21 2"
$ns_ at 115.466240771016 "$god_ set-dist 19 23 2"
$ns_ at 115.466240771016 "$god_ set-dist 19 30 3"
$ns_ at 115.466240771016 "$god_ set-dist 19 41 2"
$ns_ at 115.466240771016 "$god_ set-dist 19 45 3"
$ns_ at 115.561815532163 "$god_ set-dist 27 42 2"
$ns_ at 115.561815532163 "$god_ set-dist 33 42 3"
$ns_ at 115.561815532163 "$god_ set-dist 35 42 3"
$ns_ at 115.735740536037 "$god_ set-dist 26 37 1"
$ns_ at 115.775800909540 "$node_(30) setdest 49.888423484935 198.565768483486 5.133921585012"
$ns_ at 116.047160913955 "$god_ set-dist 4 5 2"
$ns_ at 116.047160913955 "$god_ set-dist 5 33 2"
$ns_ at 116.047160913955 "$god_ set-dist 5 35 2"
$ns_ at 116.047160913955 "$god_ set-dist 5 44 1"
$ns_ at 116.107205926540 "$god_ set-dist 37 40 2"
$ns_ at 116.107205926540 "$god_ set-dist 40 44 1"
$ns_ at 116.107205926540 "$god_ set-dist 40 47 2"
$ns_ at 116.107205926540 "$god_ set-dist 40 48 2"
$ns_ at 116.177709946494 "$god_ set-dist 30 38 2"
$ns_ at 116.177709946494 "$god_ set-dist 30 41 1"
$ns_ at 116.195345948249 "$node_(33) setdest 653.116348904604 243.819472557970 10.478071444537"
$ns_ at 116.249449357386 "$god_ set-dist 16 37 2"
$ns_ at 116.249449357386 "$god_ set-dist 16 44 1"
$ns_ at 116.249449357386 "$god_ set-dist 16 47 2"
$ns_ at 116.249449357386 "$god_ set-dist 16 48 2"
$ns_ at 116.364253722463 "$god_ set-dist 1 22 2"
$ns_ at 116.364253722463 "$god_ set-dist 18 22 1"
$ns_ at 116.364253722463 "$god_ set-dist 22 28 3"
$ns_ at 116.437898433567 "$god_ set-dist 13 22 2"
$ns_ at 116.437898433567 "$god_ set-dist 22 27 1"
$ns_ at 116.437898433567 "$god_ set-dist 22 29 2"
$ns_ at 116.437898433567 "$god_ set-dist 22 36 3"
$ns_ at 116.441063535041 "$god_ set-dist 40 42 1"
$ns_ at 116.478882424249 "$god_ set-dist 4 5 3"
$ns_ at 116.478882424249 "$god_ set-dist 4 12 4"
$ns_ at 116.478882424249 "$god_ set-dist 4 14 3"
$ns_ at 116.478882424249 "$god_ set-dist 4 44 2"
$ns_ at 116.485018975777 "$god_ set-dist 9 22 1"
$ns_ at 116.648599471878 "$god_ set-dist 0 33 3"
$ns_ at 116.648599471878 "$god_ set-dist 7 33 2"
$ns_ at 116.684074617176 "$god_ set-dist 27 31 2"
$ns_ at 116.684074617176 "$god_ set-dist 31 33 3"
$ns_ at 116.686135755497 "$god_ set-dist 3 41 3"
$ns_ at 116.686135755497 "$god_ set-dist 41 43 3"
$ns_ at 116.686135755497 "$god_ set-dist 41 49 2"
$ns_ at 116.848964668485 "$god_ set-dist 15 33 1"
$ns_ at 116.848964668485 "$god_ set-dist 17 33 2"
$ns_ at 116.848964668485 "$god_ set-dist 33 42 2"
$ns_ at 117.116280658952 "$god_ set-dist 30 37 1"
$ns_ at 117.130775363247 "$node_(5) setdest 35.767255036530 90.406528307255 0.398499463426"
$ns_ at 117.213666887472 "$god_ set-dist 37 45 1"
$ns_ at 117.326809215427 "$god_ set-dist 1 18 2"
$ns_ at 117.326809215427 "$god_ set-dist 18 28 3"
$ns_ at 117.521909967413 "$god_ set-dist 2 6 2"
$ns_ at 117.521909967413 "$god_ set-dist 2 16 3"
$ns_ at 117.521909967413 "$god_ set-dist 2 31 3"
$ns_ at 117.521909967413 "$god_ set-dist 2 40 3"
$ns_ at 118.114638620289 "$god_ set-dist 11 29 3"
$ns_ at 118.114638620289 "$god_ set-dist 27 29 2"
$ns_ at 118.114638620289 "$god_ set-dist 27 36 3"
$ns_ at 118.139777431741 "$god_ set-dist 25 32 2"
$ns_ at 118.323158459207 "$node_(12) setdest 278.663475651295 138.466419487031 19.386148483567"
$ns_ at 118.435965902013 "$god_ set-dist 16 30 2"
$ns_ at 118.435965902013 "$god_ set-dist 22 30 2"
$ns_ at 118.435965902013 "$god_ set-dist 25 30 1"
$ns_ at 118.435965902013 "$god_ set-dist 30 40 2"
$ns_ at 118.444953203870 "$god_ set-dist 39 44 2"
$ns_ at 118.490949285187 "$god_ set-dist 10 33 3"
$ns_ at 118.490949285187 "$god_ set-dist 33 46 2"
$ns_ at 118.622634152014 "$god_ set-dist 16 39 1"
$ns_ at 118.794308914113 "$god_ set-dist 2 16 2"
$ns_ at 118.794308914113 "$god_ set-dist 15 16 1"
$ns_ at 118.910689874999 "$god_ set-dist 6 41 2"
$ns_ at 118.910689874999 "$god_ set-dist 19 41 3"
$ns_ at 118.971351970732 "$god_ set-dist 15 17 2"
$ns_ at 118.971351970732 "$god_ set-dist 17 33 3"
$ns_ at 118.991822191060 "$god_ set-dist 35 42 2"
$ns_ at 118.991822191060 "$god_ set-dist 37 42 2"
$ns_ at 118.991822191060 "$god_ set-dist 42 44 1"
$ns_ at 119.020883857893 "$god_ set-dist 11 17 2"
$ns_ at 119.020883857893 "$god_ set-dist 17 40 1"
$ns_ at 119.206141489512 "$god_ set-dist 22 37 2"
$ns_ at 119.206141489512 "$god_ set-dist 27 37 1"
$ns_ at 119.206141489512 "$god_ set-dist 32 37 2"
$ns_ at 119.206426419536 "$god_ set-dist 0 12 2"
$ns_ at 119.206426419536 "$god_ set-dist 10 12 2"
$ns_ at 119.206426419536 "$god_ set-dist 12 22 2"
$ns_ at 119.206426419536 "$god_ set-dist 12 31 1"
$ns_ at 119.206426419536 "$god_ set-dist 12 32 2"
$ns_ at 119.206426419536 "$god_ set-dist 12 43 2"
$ns_ at 119.495097868687 "$god_ set-dist 1 32 3"
$ns_ at 119.495097868687 "$god_ set-dist 27 32 2"
$ns_ at 119.495097868687 "$god_ set-dist 32 37 3"
$ns_ at 119.506803777474 "$god_ set-dist 18 37 1"
$ns_ at 119.506803777474 "$god_ set-dist 32 37 2"
$ns_ at 119.640230234242 "$god_ set-dist 4 12 3"
$ns_ at 119.640230234242 "$god_ set-dist 4 14 2"
$ns_ at 119.640230234242 "$god_ set-dist 4 27 1"
$ns_ at 119.645293580873 "$god_ set-dist 6 21 2"
$ns_ at 119.645293580873 "$god_ set-dist 6 30 3"
$ns_ at 119.645293580873 "$god_ set-dist 6 45 3"
$ns_ at 119.645293580873 "$god_ set-dist 19 21 3"
$ns_ at 119.645293580873 "$god_ set-dist 19 30 4"
$ns_ at 119.645293580873 "$god_ set-dist 19 45 4"
$ns_ at 119.710587287554 "$god_ set-dist 14 22 1"
$ns_ at 119.759605482985 "$god_ set-dist 11 13 3"
$ns_ at 119.759605482985 "$god_ set-dist 13 27 2"
$ns_ at 119.763942358439 "$god_ set-dist 37 38 2"
$ns_ at 119.766923929410 "$god_ set-dist 1 6 2"
$ns_ at 119.766923929410 "$god_ set-dist 1 19 3"
$ns_ at 119.766923929410 "$god_ set-dist 1 31 3"
$ns_ at 119.766978720131 "$god_ set-dist 22 48 2"
$ns_ at 119.766978720131 "$god_ set-dist 27 48 1"
$ns_ at 119.809026040629 "$node_(29) setdest 115.202472983420 381.200908038250 8.989317326289"
$ns_ at 119.901915991567 "$god_ set-dist 6 45 2"
$ns_ at 119.901915991567 "$god_ set-dist 13 45 2"
$ns_ at 119.901915991567 "$god_ set-dist 19 45 3"
$ns_ at 119.901915991567 "$god_ set-dist 20 45 1"
$ns_ at 119.901915991567 "$god_ set-dist 29 45 2"
$ns_ at 120.054801608940 "$god_ set-dist 11 33 2"
$ns_ at 120.400316462508 "$god_ set-dist 15 35 1"
$ns_ at 120.490990536502 "$god_ set-dist 1 28 2"
$ns_ at 120.490990536502 "$god_ set-dist 26 28 3"
$ns_ at 120.490990536502 "$god_ set-dist 27 28 3"
$ns_ at 120.490990536502 "$god_ set-dist 28 35 3"
$ns_ at 120.493803008295 "$god_ set-dist 18 45 1"
$ns_ at 120.493803008295 "$god_ set-dist 34 45 2"
$ns_ at 120.660228942173 "$god_ set-dist 5 37 3"
$ns_ at 120.660228942173 "$god_ set-dist 37 42 3"
$ns_ at 120.660228942173 "$god_ set-dist 37 44 2"
$ns_ at 120.720142657830 "$god_ set-dist 3 36 4"
$ns_ at 120.720142657830 "$god_ set-dist 9 36 3"
$ns_ at 120.720142657830 "$god_ set-dist 14 36 3"
$ns_ at 120.720142657830 "$god_ set-dist 17 36 3"
$ns_ at 120.720142657830 "$god_ set-dist 22 36 4"
$ns_ at 120.720142657830 "$god_ set-dist 29 36 2"
$ns_ at 120.720142657830 "$god_ set-dist 32 36 4"
$ns_ at 120.720142657830 "$god_ set-dist 36 42 3"
$ns_ at 120.900903623528 "$god_ set-dist 25 37 1"
$ns_ at 121.005517288762 "$node_(49) setdest 247.719382752113 209.272909625146 11.879562747420"
$ns_ at 121.092951910553 "$god_ set-dist 30 32 2"
$ns_ at 121.092951910553 "$god_ set-dist 30 39 1"
$ns_ at 121.226974646513 "$god_ set-dist 17 49 1"
$ns_ at 121.237768200254 "$god_ set-dist 11 30 1"
$ns_ at 121.284684550141 "$god_ set-dist 22 24 3"
$ns_ at 121.284684550141 "$god_ set-dist 22 36 3"
$ns_ at 121.284684550141 "$god_ set-dist 22 38 2"
$ns_ at 121.284684550141 "$god_ set-dist 22 44 1"
$ns_ at 121.284684550141 "$god_ set-dist 22 47 2"
$ns_ at 121.287218158793 "$god_ set-dist 6 12 1"
$ns_ at 121.287218158793 "$god_ set-dist 8 12 2"
$ns_ at 121.287218158793 "$god_ set-dist 12 18 2"
$ns_ at 121.287218158793 "$god_ set-dist 12 20 2"
$ns_ at 121.287218158793 "$god_ set-dist 12 23 2"
$ns_ at 121.287218158793 "$god_ set-dist 12 45 3"
$ns_ at 121.376361723856 "$god_ set-dist 22 47 3"
$ns_ at 121.376361723856 "$god_ set-dist 40 47 3"
$ns_ at 121.376361723856 "$god_ set-dist 44 47 2"
$ns_ at 121.509500281528 "$god_ set-dist 4 14 3"
$ns_ at 121.509500281528 "$god_ set-dist 14 27 2"
$ns_ at 121.509500281528 "$god_ set-dist 14 37 3"
$ns_ at 121.540235502358 "$god_ set-dist 9 35 1"
$ns_ at 121.540235502358 "$god_ set-dist 17 35 2"
$ns_ at 121.577224219375 "$god_ set-dist 33 39 2"
$ns_ at 121.801068499397 "$god_ set-dist 17 33 2"
$ns_ at 121.801068499397 "$god_ set-dist 17 44 1"
$ns_ at 121.920675959834 "$god_ set-dist 6 22 1"
$ns_ at 121.936449587653 "$god_ set-dist 27 45 1"
$ns_ at 122.018381089073 "$god_ set-dist 21 43 3"
$ns_ at 122.018381089073 "$god_ set-dist 23 43 3"
$ns_ at 122.018381089073 "$god_ set-dist 26 43 3"
$ns_ at 122.018381089073 "$god_ set-dist 43 49 2"
$ns_ at 122.071436797115 "$god_ set-dist 1 12 2"
$ns_ at 122.071436797115 "$god_ set-dist 12 13 1"
$ns_ at 122.071436797115 "$god_ set-dist 12 28 2"
$ns_ at 122.077050594635 "$god_ set-dist 23 45 1"
$ns_ at 122.243602930736 "$node_(19) setdest 601.402144581463 470.426043669837 6.205653490214"
$ns_ at 122.618277393767 "$god_ set-dist 33 38 1"
$ns_ at 122.770568220677 "$god_ set-dist 3 20 2"
$ns_ at 122.770568220677 "$god_ set-dist 20 49 1"
$ns_ at 122.849583240326 "$god_ set-dist 12 29 1"
$ns_ at 122.849583240326 "$god_ set-dist 12 47 2"
$ns_ at 122.849583240326 "$god_ set-dist 12 48 2"
$ns_ at 122.878339113859 "$god_ set-dist 6 30 2"
$ns_ at 122.878339113859 "$god_ set-dist 12 30 3"
$ns_ at 122.878339113859 "$god_ set-dist 19 30 3"
$ns_ at 122.878339113859 "$god_ set-dist 27 30 1"
$ns_ at 122.878339113859 "$god_ set-dist 30 34 2"
$ns_ at 122.878589496027 "$god_ set-dist 12 47 3"
$ns_ at 122.878589496027 "$god_ set-dist 17 47 3"
$ns_ at 122.878589496027 "$god_ set-dist 29 47 2"
$ns_ at 123.186266396515 "$god_ set-dist 6 18 2"
$ns_ at 123.186266396515 "$god_ set-dist 12 18 3"
$ns_ at 123.289097517932 "$god_ set-dist 3 26 3"
$ns_ at 123.289097517932 "$god_ set-dist 26 49 2"
$ns_ at 123.389748846166 "$god_ set-dist 13 30 2"
$ns_ at 123.389748846166 "$god_ set-dist 20 30 1"
$ns_ at 123.389748846166 "$god_ set-dist 29 30 2"
$ns_ at 123.492331200205 "$god_ set-dist 0 28 3"
$ns_ at 123.492331200205 "$god_ set-dist 0 29 2"
$ns_ at 123.492331200205 "$god_ set-dist 10 28 3"
$ns_ at 123.492331200205 "$god_ set-dist 10 29 2"
$ns_ at 123.492331200205 "$god_ set-dist 28 34 2"
$ns_ at 123.492331200205 "$god_ set-dist 28 43 3"
$ns_ at 123.492331200205 "$god_ set-dist 29 34 1"
$ns_ at 123.492331200205 "$god_ set-dist 29 43 2"
$ns_ at 123.563699971010 "$god_ set-dist 11 29 2"
$ns_ at 123.563699971010 "$god_ set-dist 28 49 2"
$ns_ at 123.563699971010 "$god_ set-dist 29 49 1"
$ns_ at 123.604703600458 "$god_ set-dist 27 34 2"
$ns_ at 123.604703600458 "$god_ set-dist 30 34 3"
$ns_ at 123.647956424237 "$node_(11) setdest 603.846879906522 334.007135693329 7.005635392194"
$ns_ at 123.672375590845 "$god_ set-dist 22 42 1"
$ns_ at 123.746173465219 "$god_ set-dist 2 45 2"
$ns_ at 123.746173465219 "$god_ set-dist 8 45 1"
$ns_ at 123.788522681468 "$node_(43) setdest 579.881704469536 466.936288623313 10.629867420302"
$ns_ at 123.827290808683 "$god_ set-dist 18 30 1"
$ns_ at 123.827290808683 "$god_ set-dist 30 34 2"
$ns_ at 123.924363158343 "$god_ set-dist 21 22 1"
$ns_ at 123.924363158343 "$god_ set-dist 21 43 2"
$ns_ at 123.924363158343 "$god_ set-dist 22 47 2"
$ns_ at 124.024643226620 "$god_ set-dist 12 48 3"
$ns_ at 124.024643226620 "$god_ set-dist 29 48 2"
$ns_ at 124.131990456697 "$god_ set-dist 0 13 2"
$ns_ at 124.131990456697 "$god_ set-dist 10 13 2"
$ns_ at 124.131990456697 "$god_ set-dist 11 13 2"
$ns_ at 124.131990456697 "$god_ set-dist 13 49 1"
$ns_ at 124.151803046957 "$god_ set-dist 11 16 1"
$ns_ at 124.152481863535 "$god_ set-dist 17 33 3"
$ns_ at 124.152481863535 "$god_ set-dist 33 44 2"
$ns_ at 124.175699983673 "$god_ set-dist 11 23 1"
$ns_ at 124.188834020505 "$node_(8) setdest 313.172878336617 236.346331697432 17.620883678352"
$ns_ at 124.196798631716 "$god_ set-dist 3 8 2"
$ns_ at 124.196798631716 "$god_ set-dist 8 49 1"
$ns_ at 124.264681573013 "$god_ set-dist 2 22 2"
$ns_ at 124.264681573013 "$god_ set-dist 15 22 1"
$ns_ at 124.281146278759 "$god_ set-dist 3 26 2"
$ns_ at 124.281146278759 "$god_ set-dist 22 26 1"
$ns_ at 124.281146278759 "$god_ set-dist 26 43 2"
$ns_ at 124.293454624548 "$god_ set-dist 37 39 1"
$ns_ at 124.364444858401 "$god_ set-dist 1 31 2"
$ns_ at 124.364444858401 "$god_ set-dist 31 44 1"
$ns_ at 124.364444858401 "$god_ set-dist 31 48 2"
$ns_ at 124.541643192340 "$god_ set-dist 1 45 1"
$ns_ at 124.542134018189 "$god_ set-dist 1 13 2"
$ns_ at 124.571370389409 "$god_ set-dist 8 45 2"
$ns_ at 124.641988419417 "$god_ set-dist 12 18 2"
$ns_ at 124.641988419417 "$god_ set-dist 12 34 1"
$ns_ at 124.641988419417 "$god_ set-dist 12 46 2"
$ns_ at 124.660862136157 "$god_ set-dist 11 20 1"
$ns_ at 124.664793922059 "$god_ set-dist 6 27 2"
$ns_ at 124.664793922059 "$god_ set-dist 12 27 3"
$ns_ at 124.664793922059 "$god_ set-dist 19 27 3"
$ns_ at 124.692311911734 "$god_ set-dist 11 37 1"
$ns_ at 124.692787818047 "$god_ set-dist 22 23 1"
$ns_ at 124.692787818047 "$god_ set-dist 23 43 2"
$ns_ at 124.767992768064 "$god_ set-dist 11 32 2"
$ns_ at 124.960452383349 "$god_ set-dist 26 44 2"
$ns_ at 125.035150460018 "$god_ set-dist 3 35 2"
$ns_ at 125.035150460018 "$god_ set-dist 22 35 1"
$ns_ at 125.035150460018 "$god_ set-dist 35 43 2"
$ns_ at 125.051115219087 "$god_ set-dist 15 26 1"
$ns_ at 125.091538516929 "$node_(37) setdest 587.450304604057 452.237446272138 0.000000000000"
$ns_ at 125.198497071511 "$god_ set-dist 25 44 2"
$ns_ at 125.218424528390 "$node_(48) setdest 659.951820217534 601.352281379810 17.760787982085"
$ns_ at 125.248704668235 "$god_ set-dist 12 21 2"
$ns_ at 125.248704668235 "$god_ set-dist 12 27 2"
$ns_ at 125.248704668235 "$god_ set-dist 12 35 2"
$ns_ at 125.248704668235 "$god_ set-dist 12 41 2"
$ns_ at 125.248704668235 "$god_ set-dist 12 44 1"
$ns_ at 125.248704668235 "$god_ set-dist 12 48 2"
$ns_ at 125.281780963866 "$god_ set-dist 45 48 1"
$ns_ at 125.303657470110 "$god_ set-dist 17 22 1"
$ns_ at 125.445499585569 "$god_ set-dist 12 48 3"
$ns_ at 125.445499585569 "$god_ set-dist 17 48 3"
$ns_ at 125.445499585569 "$god_ set-dist 31 48 3"
$ns_ at 125.445499585569 "$god_ set-dist 44 48 2"
$ns_ at 125.508097659043 "$god_ set-dist 3 19 1"
$ns_ at 125.561957441005 "$god_ set-dist 11 49 2"
$ns_ at 125.567009773742 "$god_ set-dist 0 41 3"
$ns_ at 125.567009773742 "$god_ set-dist 7 41 2"
$ns_ at 125.602029907205 "$god_ set-dist 27 40 2"
$ns_ at 125.602029907205 "$god_ set-dist 40 48 3"
$ns_ at 125.609451606025 "$god_ set-dist 8 22 1"
$ns_ at 125.609451606025 "$god_ set-dist 8 43 2"
$ns_ at 125.643281060725 "$god_ set-dist 5 49 1"
$ns_ at 125.702932078030 "$god_ set-dist 1 29 2"
$ns_ at 125.712301020149 "$god_ set-dist 19 21 2"
$ns_ at 125.712301020149 "$god_ set-dist 19 25 2"
$ns_ at 125.712301020149 "$god_ set-dist 19 27 2"
$ns_ at 125.712301020149 "$god_ set-dist 19 39 2"
$ns_ at 125.712301020149 "$god_ set-dist 19 49 1"
$ns_ at 125.884757240831 "$god_ set-dist 7 43 1"
$ns_ at 125.884757240831 "$god_ set-dist 20 43 2"
$ns_ at 125.907677054004 "$god_ set-dist 22 28 2"
$ns_ at 125.907677054004 "$god_ set-dist 22 29 1"
$ns_ at 125.915752740105 "$god_ set-dist 19 28 2"
$ns_ at 125.915752740105 "$god_ set-dist 19 29 1"
$ns_ at 126.037955276798 "$god_ set-dist 20 22 1"
$ns_ at 126.056201615058 "$god_ set-dist 26 48 1"
$ns_ at 126.087829950797 "$god_ set-dist 10 41 3"
$ns_ at 126.087829950797 "$god_ set-dist 41 46 2"
$ns_ at 126.138931187350 "$god_ set-dist 9 12 1"
$ns_ at 126.138931187350 "$god_ set-dist 12 25 2"
$ns_ at 126.138931187350 "$god_ set-dist 12 26 2"
$ns_ at 126.138931187350 "$god_ set-dist 12 39 2"
$ns_ at 126.258439616453 "$god_ set-dist 19 28 3"
$ns_ at 126.258439616453 "$god_ set-dist 22 28 3"
$ns_ at 126.258439616453 "$god_ set-dist 28 29 2"
$ns_ at 126.258439616453 "$god_ set-dist 28 34 3"
$ns_ at 126.258439616453 "$god_ set-dist 28 43 4"
$ns_ at 126.264442144143 "$god_ set-dist 9 19 1"
$ns_ at 126.264442144143 "$god_ set-dist 19 26 2"
$ns_ at 126.264442144143 "$god_ set-dist 19 35 2"
$ns_ at 126.264442144143 "$god_ set-dist 19 41 2"
$ns_ at 126.316087006903 "$god_ set-dist 4 11 1"
$ns_ at 126.320435437837 "$god_ set-dist 4 14 2"
$ns_ at 126.320435437837 "$god_ set-dist 8 14 1"
$ns_ at 126.320435437837 "$god_ set-dist 14 37 2"
$ns_ at 126.334495500301 "$god_ set-dist 16 29 1"
$ns_ at 126.547982162407 "$god_ set-dist 1 12 3"
$ns_ at 126.547982162407 "$god_ set-dist 1 17 3"
$ns_ at 126.547982162407 "$god_ set-dist 1 31 3"
$ns_ at 126.547982162407 "$god_ set-dist 1 40 3"
$ns_ at 126.547982162407 "$god_ set-dist 1 44 2"
$ns_ at 126.593154558132 "$god_ set-dist 23 30 1"
$ns_ at 126.677583788324 "$god_ set-dist 10 13 3"
$ns_ at 126.677583788324 "$god_ set-dist 10 28 4"
$ns_ at 126.677583788324 "$god_ set-dist 10 49 2"
$ns_ at 126.748777090061 "$god_ set-dist 12 49 1"
$ns_ at 126.882458643925 "$god_ set-dist 3 42 1"
$ns_ at 126.903722218213 "$god_ set-dist 19 44 1"
$ns_ at 126.941986189932 "$god_ set-dist 35 44 2"
$ns_ at 126.976272198225 "$god_ set-dist 4 5 2"
$ns_ at 126.976272198225 "$god_ set-dist 5 8 1"
$ns_ at 126.976272198225 "$god_ set-dist 5 37 2"
$ns_ at 127.037194803800 "$node_(2) setdest 407.670845956434 247.242435814446 13.721304110724"
$ns_ at 127.039036973950 "$god_ set-dist 8 16 1"
$ns_ at 127.062066326762 "$god_ set-dist 25 33 2"
$ns_ at 127.090908751651 "$god_ set-dist 2 30 2"
$ns_ at 127.090908751651 "$god_ set-dist 30 48 1"
$ns_ at 127.115642219765 "$god_ set-dist 16 27 2"
$ns_ at 127.181357229579 "$god_ set-dist 9 41 2"
$ns_ at 127.309540050822 "$god_ set-dist 13 19 1"
$ns_ at 127.309540050822 "$god_ set-dist 19 28 2"
$ns_ at 127.373898872509 "$god_ set-dist 39 49 2"
$ns_ at 127.376144681197 "$god_ set-dist 4 5 3"
$ns_ at 127.376144681197 "$god_ set-dist 4 8 2"
$ns_ at 127.376144681197 "$god_ set-dist 4 14 3"
$ns_ at 127.414668007585 "$god_ set-dist 0 13 3"
$ns_ at 127.414668007585 "$god_ set-dist 0 28 4"
$ns_ at 127.414668007585 "$god_ set-dist 0 49 2"
$ns_ at 127.423518694958 "$god_ set-dist 0 13 2"
$ns_ at 127.423518694958 "$god_ set-dist 0 28 3"
$ns_ at 127.423518694958 "$god_ set-dist 10 13 2"
$ns_ at 127.423518694958 "$god_ set-dist 10 28 3"
$ns_ at 127.423518694958 "$god_ set-dist 13 22 1"
$ns_ at 127.423518694958 "$god_ set-dist 13 43 2"
$ns_ at 127.423518694958 "$god_ set-dist 22 28 2"
$ns_ at 127.423518694958 "$god_ set-dist 28 43 3"
$ns_ at 127.434741208297 "$god_ set-dist 18 33 2"
$ns_ at 127.434741208297 "$god_ set-dist 32 33 3"
$ns_ at 127.434741208297 "$god_ set-dist 33 40 3"
$ns_ at 127.754916980857 "$god_ set-dist 25 49 2"
$ns_ at 127.824985134630 "$god_ set-dist 1 12 2"
$ns_ at 127.824985134630 "$god_ set-dist 12 15 1"
$ns_ at 127.824985134630 "$god_ set-dist 12 33 2"
$ns_ at 127.824985134630 "$god_ set-dist 12 47 2"
$ns_ at 127.824985134630 "$god_ set-dist 12 48 2"
$ns_ at 127.864823232380 "$god_ set-dist 27 49 2"
$ns_ at 127.871250693966 "$node_(41) setdest 515.069381178923 372.561854818572 0.000000000000"
$ns_ at 128.040575005715 "$god_ set-dist 8 34 1"
$ns_ at 128.070422930726 "$god_ set-dist 1 42 3"
$ns_ at 128.070422930726 "$god_ set-dist 15 42 2"
$ns_ at 128.070422930726 "$god_ set-dist 33 42 3"
$ns_ at 128.070422930726 "$god_ set-dist 42 47 3"
$ns_ at 128.070422930726 "$god_ set-dist 42 48 3"
$ns_ at 128.194536532286 "$god_ set-dist 43 46 1"
$ns_ at 128.208597411889 "$god_ set-dist 5 37 3"
$ns_ at 128.208597411889 "$god_ set-dist 8 37 2"
$ns_ at 128.208597411889 "$god_ set-dist 14 37 3"
$ns_ at 128.231410542321 "$god_ set-dist 2 11 2"
$ns_ at 128.231410542321 "$god_ set-dist 2 23 1"
$ns_ at 128.231410542321 "$god_ set-dist 2 39 2"
$ns_ at 128.231410542321 "$god_ set-dist 2 46 2"
$ns_ at 128.236159107790 "$node_(31) setdest 317.039599643144 637.408473517504 15.064208692255"
$ns_ at 128.346237001111 "$god_ set-dist 0 13 3"
$ns_ at 128.346237001111 "$god_ set-dist 0 22 2"
$ns_ at 128.346237001111 "$god_ set-dist 0 28 4"
$ns_ at 128.369855709008 "$god_ set-dist 27 44 2"
$ns_ at 128.450071072867 "$node_(36) setdest 79.733202691308 504.926350196982 5.380393876490"
$ns_ at 128.507728397127 "$god_ set-dist 8 12 1"
$ns_ at 128.507754162229 "$god_ set-dist 10 13 3"
$ns_ at 128.507754162229 "$god_ set-dist 10 22 2"
$ns_ at 128.507754162229 "$god_ set-dist 10 28 4"
$ns_ at 128.513164287375 "$god_ set-dist 2 20 1"
$ns_ at 128.572094702835 "$god_ set-dist 12 24 2"
$ns_ at 128.572094702835 "$god_ set-dist 12 36 2"
$ns_ at 128.572094702835 "$god_ set-dist 12 38 1"
$ns_ at 128.579904447627 "$god_ set-dist 16 21 1"
$ns_ at 128.704590959539 "$god_ set-dist 16 23 1"
$ns_ at 128.713337584293 "$god_ set-dist 44 46 2"
$ns_ at 128.743407063585 "$god_ set-dist 13 43 3"
$ns_ at 128.743407063585 "$god_ set-dist 22 43 2"
$ns_ at 128.743407063585 "$god_ set-dist 28 43 4"
$ns_ at 128.762771083859 "$god_ set-dist 12 31 2"
$ns_ at 128.766093596760 "$god_ set-dist 25 40 2"
$ns_ at 128.835197550573 "$god_ set-dist 11 19 2"
$ns_ at 128.835197550573 "$god_ set-dist 19 22 1"
$ns_ at 128.844539895019 "$god_ set-dist 2 48 2"
$ns_ at 128.883260949430 "$god_ set-dist 1 42 2"
$ns_ at 128.883260949430 "$god_ set-dist 8 42 1"
$ns_ at 128.883260949430 "$god_ set-dist 33 42 2"
$ns_ at 128.883260949430 "$god_ set-dist 42 47 2"
$ns_ at 128.883260949430 "$god_ set-dist 42 48 2"
$ns_ at 129.001404782065 "$god_ set-dist 5 11 2"
$ns_ at 129.001404782065 "$god_ set-dist 5 22 1"
$ns_ at 129.027004103553 "$god_ set-dist 11 12 2"
$ns_ at 129.027004103553 "$god_ set-dist 12 22 1"
$ns_ at 129.087971704007 "$god_ set-dist 16 19 1"
$ns_ at 129.125342756563 "$node_(0) setdest 168.750922048975 602.384134369413 14.183804977273"
$ns_ at 129.143629023699 "$god_ set-dist 2 31 2"
$ns_ at 129.143629023699 "$god_ set-dist 2 40 2"
$ns_ at 129.143629023699 "$god_ set-dist 2 44 1"
$ns_ at 129.159158951917 "$god_ set-dist 17 41 3"
$ns_ at 129.159158951917 "$god_ set-dist 19 41 3"
$ns_ at 129.159158951917 "$god_ set-dist 31 41 3"
$ns_ at 129.159158951917 "$god_ set-dist 41 44 2"
$ns_ at 129.165889790853 "$god_ set-dist 3 22 2"
$ns_ at 129.165889790853 "$god_ set-dist 3 26 3"
$ns_ at 129.165889790853 "$god_ set-dist 3 27 3"
$ns_ at 129.165889790853 "$god_ set-dist 3 35 3"
$ns_ at 129.174084625251 "$god_ set-dist 2 12 1"
$ns_ at 129.254943678985 "$god_ set-dist 15 25 1"
$ns_ at 129.327085566719 "$god_ set-dist 25 48 1"
$ns_ at 129.329764919017 "$god_ set-dist 29 31 1"
$ns_ at 129.496077965621 "$god_ set-dist 8 25 2"
$ns_ at 129.522879296012 "$god_ set-dist 18 48 1"
$ns_ at 129.522879296012 "$god_ set-dist 32 48 2"
$ns_ at 129.522879296012 "$god_ set-dist 40 48 2"
$ns_ at 129.540071739621 "$god_ set-dist 2 33 1"
$ns_ at 129.735180815247 "$god_ set-dist 9 27 2"
$ns_ at 129.948131022120 "$god_ set-dist 3 35 2"
$ns_ at 129.948131022120 "$god_ set-dist 16 35 1"
$ns_ at 129.981396052147 "$god_ set-dist 17 41 2"
$ns_ at 129.981396052147 "$god_ set-dist 19 41 2"
$ns_ at 129.981396052147 "$god_ set-dist 22 41 1"
$ns_ at 129.981396052147 "$god_ set-dist 31 41 2"
$ns_ at 130.054283855332 "$node_(3) setdest 14.938668310000 192.757314423453 1.815964672184"
$ns_ at 130.095327962604 "$god_ set-dist 9 11 1"
$ns_ at 130.153207174741 "$god_ set-dist 38 48 2"
$ns_ at 130.154517558883 "$god_ set-dist 29 40 1"
$ns_ at 130.307715481045 "$god_ set-dist 8 26 2"
$ns_ at 130.390316404594 "$god_ set-dist 17 27 3"
$ns_ at 130.390316404594 "$god_ set-dist 19 27 3"
$ns_ at 130.390316404594 "$god_ set-dist 22 27 2"
$ns_ at 130.489543043535 "$god_ set-dist 15 34 2"
$ns_ at 130.513859960745 "$god_ set-dist 2 6 1"
$ns_ at 130.550043500979 "$god_ set-dist 1 17 2"
$ns_ at 130.550043500979 "$god_ set-dist 8 17 1"
$ns_ at 130.550043500979 "$god_ set-dist 17 27 2"
$ns_ at 130.550043500979 "$god_ set-dist 17 33 2"
$ns_ at 130.550043500979 "$god_ set-dist 17 47 2"
$ns_ at 130.550043500979 "$god_ set-dist 17 48 2"
$ns_ at 130.696118359066 "$god_ set-dist 11 40 2"
$ns_ at 130.809271427172 "$god_ set-dist 8 27 2"
$ns_ at 130.809271427172 "$god_ set-dist 17 27 3"
$ns_ at 130.809271427172 "$god_ set-dist 27 42 3"
$ns_ at 130.843820173443 "$god_ set-dist 3 20 3"
$ns_ at 130.843820173443 "$god_ set-dist 3 49 2"
$ns_ at 130.873742991303 "$god_ set-dist 8 33 2"
$ns_ at 130.873742991303 "$god_ set-dist 17 33 3"
$ns_ at 130.873742991303 "$god_ set-dist 33 34 3"
$ns_ at 130.873742991303 "$god_ set-dist 33 42 3"
$ns_ at 130.901701962715 "$god_ set-dist 8 48 2"
$ns_ at 130.901701962715 "$god_ set-dist 17 48 3"
$ns_ at 130.901701962715 "$god_ set-dist 42 48 3"
$ns_ at 131.028719682839 "$god_ set-dist 1 30 1"
$ns_ at 131.048869006770 "$god_ set-dist 2 41 1"
$ns_ at 131.170336376738 "$node_(28) setdest 491.745468669817 254.584667811545 0.456592523253"
$ns_ at 131.308351730538 "$god_ set-dist 1 40 2"
$ns_ at 131.308351730538 "$god_ set-dist 8 40 1"
$ns_ at 131.308351730538 "$god_ set-dist 40 47 2"
$ns_ at 131.313356007366 "$god_ set-dist 24 45 2"
$ns_ at 131.313356007366 "$god_ set-dist 28 45 2"
$ns_ at 131.313356007366 "$god_ set-dist 36 45 2"
$ns_ at 131.313356007366 "$god_ set-dist 45 47 1"
$ns_ at 131.488707932941 "$god_ set-dist 19 40 1"
$ns_ at 131.522762556114 "$god_ set-dist 26 33 2"
$ns_ at 131.572387952442 "$god_ set-dist 31 46 1"
$ns_ at 131.593178839837 "$god_ set-dist 6 20 2"
$ns_ at 131.617393628885 "$god_ set-dist 7 29 1"
$ns_ at 131.816830602767 "$god_ set-dist 11 48 1"
$ns_ at 131.913938114034 "$god_ set-dist 8 35 2"
$ns_ at 131.924930963723 "$god_ set-dist 1 19 2"
$ns_ at 131.924930963723 "$god_ set-dist 8 19 1"
$ns_ at 131.924930963723 "$god_ set-dist 19 47 2"
$ns_ at 131.934541885078 "$god_ set-dist 3 17 1"
$ns_ at 131.996004519160 "$god_ set-dist 2 22 1"
$ns_ at 131.996004519160 "$god_ set-dist 2 32 2"
$ns_ at 131.996004519160 "$god_ set-dist 22 24 2"
$ns_ at 131.996004519160 "$god_ set-dist 22 36 2"
$ns_ at 131.996004519160 "$god_ set-dist 24 32 3"
$ns_ at 131.996004519160 "$god_ set-dist 32 36 3"
$ns_ at 132.005654467018 "$god_ set-dist 39 45 2"
$ns_ at 132.023460521061 "$god_ set-dist 0 46 1"
$ns_ at 132.044577814771 "$god_ set-dist 22 39 2"
$ns_ at 132.126439281165 "$god_ set-dist 1 26 2"
$ns_ at 132.178662163924 "$god_ set-dist 11 22 2"
$ns_ at 132.181514415326 "$god_ set-dist 5 37 2"
$ns_ at 132.181514415326 "$god_ set-dist 12 37 2"
$ns_ at 132.181514415326 "$god_ set-dist 14 37 2"
$ns_ at 132.181514415326 "$god_ set-dist 15 37 1"
$ns_ at 132.201726431755 "$node_(34) setdest 299.337633604237 338.946209342874 7.122886153301"
$ns_ at 132.231293665561 "$god_ set-dist 33 35 2"
$ns_ at 132.246385943085 "$god_ set-dist 22 38 1"
$ns_ at 132.246385943085 "$god_ set-dist 32 38 2"
$ns_ at 132.461011996788 "$node_(12) setdest 278.663475651294 138.466419487031 0.000000000000"
$ns_ at 132.469342783030 "$god_ set-dist 2 32 3"
$ns_ at 132.469342783030 "$god_ set-dist 22 32 2"
$ns_ at 132.469342783030 "$god_ set-dist 24 32 4"
$ns_ at 132.469342783030 "$god_ set-dist 32 36 4"
$ns_ at 132.469342783030 "$god_ set-dist 32 38 3"
$ns_ at 132.489540023833 "$god_ set-dist 9 43 1"
$ns_ at 132.489540023833 "$god_ set-dist 13 43 2"
$ns_ at 132.489540023833 "$god_ set-dist 28 43 3"
$ns_ at 132.490135873358 "$god_ set-dist 1 8 2"
$ns_ at 132.490135873358 "$god_ set-dist 1 17 3"
$ns_ at 132.490135873358 "$god_ set-dist 1 19 3"
$ns_ at 132.490135873358 "$god_ set-dist 1 34 3"
$ns_ at 132.490135873358 "$god_ set-dist 1 40 3"
$ns_ at 132.490135873358 "$god_ set-dist 1 42 3"
$ns_ at 132.499301463444 "$god_ set-dist 21 44 2"
$ns_ at 132.532533697925 "$node_(27) setdest 513.976898574549 485.586923433487 0.000000000000"
$ns_ at 132.575214273710 "$god_ set-dist 0 13 2"
$ns_ at 132.575214273710 "$god_ set-dist 0 28 3"
$ns_ at 132.575214273710 "$god_ set-dist 10 13 2"
$ns_ at 132.575214273710 "$god_ set-dist 10 28 3"
$ns_ at 132.575214273710 "$god_ set-dist 13 34 1"
$ns_ at 132.575214273710 "$god_ set-dist 28 34 2"
$ns_ at 132.590423209973 "$god_ set-dist 8 47 2"
$ns_ at 132.590423209973 "$god_ set-dist 17 47 3"
$ns_ at 132.590423209973 "$god_ set-dist 19 47 3"
$ns_ at 132.590423209973 "$god_ set-dist 34 47 3"
$ns_ at 132.590423209973 "$god_ set-dist 40 47 3"
$ns_ at 132.590423209973 "$god_ set-dist 42 47 3"
$ns_ at 132.643665246608 "$god_ set-dist 32 49 2"
$ns_ at 132.660123308922 "$god_ set-dist 21 49 2"
$ns_ at 132.714983659743 "$god_ set-dist 2 49 1"
$ns_ at 132.714983659743 "$god_ set-dist 24 49 2"
$ns_ at 132.714983659743 "$god_ set-dist 36 49 2"
$ns_ at 132.992936851819 "$god_ set-dist 46 49 2"
$ns_ at 133.037460424010 "$god_ set-dist 5 45 2"
$ns_ at 133.037460424010 "$god_ set-dist 12 45 2"
$ns_ at 133.037460424010 "$god_ set-dist 14 45 2"
$ns_ at 133.037460424010 "$god_ set-dist 15 45 1"
$ns_ at 133.072084513956 "$god_ set-dist 3 26 2"
$ns_ at 133.072084513956 "$god_ set-dist 16 26 1"
$ns_ at 133.104761880373 "$god_ set-dist 22 26 2"
$ns_ at 133.148944918044 "$god_ set-dist 1 34 2"
$ns_ at 133.148944918044 "$god_ set-dist 15 34 1"
$ns_ at 133.148944918044 "$god_ set-dist 33 34 2"
$ns_ at 133.148944918044 "$god_ set-dist 34 47 2"
$ns_ at 133.268689359131 "$god_ set-dist 38 41 2"
$ns_ at 133.373793818774 "$god_ set-dist 8 31 1"
$ns_ at 133.449748497830 "$god_ set-dist 0 36 3"
$ns_ at 133.449748497830 "$god_ set-dist 3 36 3"
$ns_ at 133.449748497830 "$god_ set-dist 9 36 2"
$ns_ at 133.449748497830 "$god_ set-dist 10 36 3"
$ns_ at 133.449748497830 "$god_ set-dist 13 36 1"
$ns_ at 133.449748497830 "$god_ set-dist 14 36 2"
$ns_ at 133.449748497830 "$god_ set-dist 17 36 2"
$ns_ at 133.449748497830 "$god_ set-dist 19 36 2"
$ns_ at 133.449748497830 "$god_ set-dist 32 36 3"
$ns_ at 133.449748497830 "$god_ set-dist 34 36 2"
$ns_ at 133.449748497830 "$god_ set-dist 36 42 2"
$ns_ at 133.449748497830 "$god_ set-dist 36 43 3"
$ns_ at 133.585567220242 "$god_ set-dist 22 25 2"
$ns_ at 133.651747325663 "$god_ set-dist 2 21 1"
$ns_ at 133.848009426515 "$god_ set-dist 4 31 2"
$ns_ at 133.848009426515 "$god_ set-dist 18 31 1"
$ns_ at 133.848009426515 "$god_ set-dist 30 31 2"
$ns_ at 133.848009426515 "$god_ set-dist 31 37 2"
$ns_ at 133.848009426515 "$god_ set-dist 31 45 2"
$ns_ at 133.848009426515 "$god_ set-dist 31 48 2"
$ns_ at 133.871108283217 "$node_(26) setdest 600.255464567602 571.067041578224 3.201632529017"
$ns_ at 133.887144945502 "$god_ set-dist 2 9 1"
$ns_ at 133.887144945502 "$god_ set-dist 2 32 2"
$ns_ at 133.887144945502 "$god_ set-dist 2 43 2"
$ns_ at 133.887144945502 "$god_ set-dist 9 24 2"
$ns_ at 133.887144945502 "$god_ set-dist 24 32 3"
$ns_ at 133.887144945502 "$god_ set-dist 24 43 3"
$ns_ at 133.962887120486 "$god_ set-dist 38 49 1"
$ns_ at 133.978305384210 "$god_ set-dist 11 15 1"
$ns_ at 133.984615614478 "$node_(8) setdest 313.172878336617 236.346331697432 0.000000000000"
$ns_ at 134.056590757328 "$god_ set-dist 30 33 2"
$ns_ at 134.059853513499 "$god_ set-dist 12 28 1"
$ns_ at 134.065964459147 "$god_ set-dist 30 43 2"
$ns_ at 134.065964459147 "$god_ set-dist 37 43 2"
$ns_ at 134.065964459147 "$god_ set-dist 39 43 1"
$ns_ at 134.065964459147 "$god_ set-dist 41 43 2"
$ns_ at 134.153971426712 "$god_ set-dist 9 26 2"
$ns_ at 134.308951755590 "$god_ set-dist 3 20 2"
$ns_ at 134.308951755590 "$god_ set-dist 16 20 1"
$ns_ at 134.619882209960 "$god_ set-dist 20 44 2"
$ns_ at 134.637129706468 "$god_ set-dist 18 44 2"
$ns_ at 134.747207805229 "$god_ set-dist 2 24 2"
$ns_ at 134.747207805229 "$god_ set-dist 9 24 3"
$ns_ at 134.747207805229 "$god_ set-dist 24 32 4"
$ns_ at 134.747207805229 "$god_ set-dist 24 43 4"
$ns_ at 134.934726881620 "$god_ set-dist 4 43 2"
$ns_ at 134.934726881620 "$god_ set-dist 18 43 1"
$ns_ at 134.934726881620 "$god_ set-dist 43 45 2"
$ns_ at 134.934726881620 "$god_ set-dist 43 48 2"
$ns_ at 134.940029703153 "$god_ set-dist 1 35 2"
$ns_ at 135.198024855804 "$god_ set-dist 0 30 2"
$ns_ at 135.198024855804 "$god_ set-dist 10 30 2"
$ns_ at 135.198024855804 "$god_ set-dist 30 46 1"
$ns_ at 135.423194765800 "$god_ set-dist 22 46 2"
$ns_ at 135.547912270547 "$god_ set-dist 24 44 3"
$ns_ at 135.547912270547 "$god_ set-dist 38 44 2"
$ns_ at 135.617638265985 "$god_ set-dist 4 5 2"
$ns_ at 135.617638265985 "$god_ set-dist 4 12 2"
$ns_ at 135.617638265985 "$god_ set-dist 4 14 2"
$ns_ at 135.617638265985 "$god_ set-dist 4 15 1"
$ns_ at 135.664982331906 "$god_ set-dist 18 49 2"
$ns_ at 135.677337569518 "$god_ set-dist 27 33 2"
$ns_ at 135.729991492586 "$god_ set-dist 8 31 2"
$ns_ at 135.831064370082 "$god_ set-dist 5 48 3"
$ns_ at 135.831064370082 "$god_ set-dist 12 48 3"
$ns_ at 135.831064370082 "$god_ set-dist 14 48 3"
$ns_ at 135.831064370082 "$god_ set-dist 15 48 2"
$ns_ at 135.914225297147 "$god_ set-dist 6 24 3"
$ns_ at 135.914225297147 "$god_ set-dist 6 38 2"
$ns_ at 136.348810160440 "$god_ set-dist 18 29 1"
$ns_ at 136.432573484018 "$god_ set-dist 31 39 1"
$ns_ at 136.479458204129 "$god_ set-dist 2 3 2"
$ns_ at 136.479458204129 "$god_ set-dist 2 14 1"
$ns_ at 136.503044572027 "$god_ set-dist 4 5 3"
$ns_ at 136.503044572027 "$god_ set-dist 5 15 2"
$ns_ at 136.503044572027 "$god_ set-dist 5 26 3"
$ns_ at 136.503044572027 "$god_ set-dist 5 27 3"
$ns_ at 136.503044572027 "$god_ set-dist 5 37 3"
$ns_ at 136.503044572027 "$god_ set-dist 5 45 3"
$ns_ at 136.575248283229 "$god_ set-dist 22 35 2"
$ns_ at 136.621020553741 "$god_ set-dist 23 34 1"
$ns_ at 136.852957477618 "$god_ set-dist 24 48 3"
$ns_ at 136.852957477618 "$god_ set-dist 28 48 3"
$ns_ at 136.852957477618 "$god_ set-dist 36 48 3"
$ns_ at 136.852957477618 "$god_ set-dist 47 48 2"
$ns_ at 136.913299816239 "$god_ set-dist 23 44 2"
$ns_ at 136.913299816239 "$god_ set-dist 30 44 3"
$ns_ at 136.913299816239 "$god_ set-dist 44 48 3"
$ns_ at 136.917681084073 "$god_ set-dist 22 31 2"
$ns_ at 136.963677923988 "$god_ set-dist 20 49 2"
$ns_ at 137.093624703483 "$god_ set-dist 24 33 1"
$ns_ at 137.093624703483 "$god_ set-dist 24 48 2"
$ns_ at 137.403554977973 "$god_ set-dist 0 37 2"
$ns_ at 137.403554977973 "$god_ set-dist 0 39 1"
$ns_ at 137.403554977973 "$god_ set-dist 0 41 2"
$ns_ at 137.405892866421 "$node_(18) setdest 383.766074563224 67.548245810912 12.277309543844"
$ns_ at 137.424907998205 "$node_(10) setdest 251.473529312409 403.282061485264 17.763072977476"
$ns_ at 137.517581194210 "$god_ set-dist 18 48 2"
$ns_ at 137.517581194210 "$god_ set-dist 31 48 3"
$ns_ at 137.517581194210 "$god_ set-dist 32 48 3"
$ns_ at 137.517581194210 "$god_ set-dist 40 48 3"
$ns_ at 137.517581194210 "$god_ set-dist 43 48 3"
$ns_ at 137.533738509571 "$god_ set-dist 17 47 2"
$ns_ at 137.533738509571 "$god_ set-dist 19 47 2"
$ns_ at 137.533738509571 "$god_ set-dist 22 47 1"
$ns_ at 137.533738509571 "$god_ set-dist 40 47 2"
$ns_ at 137.533738509571 "$god_ set-dist 42 47 2"
$ns_ at 137.667130099566 "$god_ set-dist 21 33 2"
$ns_ at 137.736976236053 "$god_ set-dist 17 31 2"
$ns_ at 137.737868162287 "$god_ set-dist 33 36 1"
$ns_ at 137.737868162287 "$god_ set-dist 36 48 2"
$ns_ at 137.876529099995 "$god_ set-dist 22 40 2"
$ns_ at 137.876529099995 "$god_ set-dist 40 47 3"
$ns_ at 137.905617648743 "$god_ set-dist 2 18 1"
$ns_ at 137.905617648743 "$god_ set-dist 18 28 2"
$ns_ at 137.905617648743 "$god_ set-dist 18 36 2"
$ns_ at 137.993629371654 "$god_ set-dist 0 2 2"
$ns_ at 137.993629371654 "$god_ set-dist 2 10 2"
$ns_ at 137.993629371654 "$god_ set-dist 2 34 1"
$ns_ at 138.209646659721 "$node_(39) setdest 184.582731382271 64.869192140827 17.014730772717"
$ns_ at 138.282475224797 "$god_ set-dist 12 30 2"
$ns_ at 138.282475224797 "$god_ set-dist 14 30 2"
$ns_ at 138.282475224797 "$god_ set-dist 15 30 1"
$ns_ at 138.282475224797 "$god_ set-dist 30 44 2"
$ns_ at 138.345867151169 "$node_(14) setdest 51.966004264292 81.195227212414 0.932220787253"
$ns_ at 138.384725363410 "$god_ set-dist 7 49 2"
$ns_ at 138.428724727869 "$god_ set-dist 3 44 1"
$ns_ at 138.445758884093 "$god_ set-dist 7 22 2"
$ns_ at 138.452599275572 "$node_(33) setdest 653.116348904604 243.819472557970 0.000000000000"
$ns_ at 138.472338680637 "$god_ set-dist 2 45 1"
$ns_ at 138.472338680637 "$god_ set-dist 5 45 2"
$ns_ at 138.666864370948 "$god_ set-dist 31 49 2"
$ns_ at 138.684898982956 "$god_ set-dist 16 36 2"
$ns_ at 138.684898982956 "$god_ set-dist 22 36 1"
$ns_ at 138.724582011165 "$god_ set-dist 24 48 3"
$ns_ at 138.724582011165 "$god_ set-dist 33 48 2"
$ns_ at 138.724582011165 "$god_ set-dist 36 48 3"
$ns_ at 138.786048255232 "$god_ set-dist 6 18 1"
$ns_ at 138.875346604587 "$god_ set-dist 31 35 1"
$ns_ at 138.875346604587 "$god_ set-dist 31 48 2"
$ns_ at 138.908063631222 "$god_ set-dist 2 16 1"
$ns_ at 138.908063631222 "$god_ set-dist 16 28 2"
$ns_ at 138.910988286723 "$god_ set-dist 20 29 2"
$ns_ at 138.925908763871 "$god_ set-dist 34 39 1"
$ns_ at 138.933927983345 "$god_ set-dist 21 34 1"
$ns_ at 139.078580227187 "$god_ set-dist 22 28 1"
$ns_ at 139.093623259733 "$god_ set-dist 34 35 1"
$ns_ at 139.108259616734 "$god_ set-dist 24 29 3"
$ns_ at 139.108259616734 "$god_ set-dist 24 31 4"
$ns_ at 139.108259616734 "$god_ set-dist 29 38 2"
$ns_ at 139.108259616734 "$god_ set-dist 31 38 3"
$ns_ at 139.213080126218 "$god_ set-dist 4 32 3"
$ns_ at 139.213080126218 "$god_ set-dist 18 32 2"
$ns_ at 139.213080126218 "$god_ set-dist 32 45 3"
$ns_ at 139.221622685905 "$god_ set-dist 12 36 1"
$ns_ at 139.366181524352 "$god_ set-dist 4 14 3"
$ns_ at 139.366181524352 "$god_ set-dist 14 15 2"
$ns_ at 139.366181524352 "$god_ set-dist 14 30 3"
$ns_ at 139.366181524352 "$god_ set-dist 14 37 3"
$ns_ at 139.398333449290 "$god_ set-dist 2 35 1"
$ns_ at 139.398333449290 "$god_ set-dist 28 35 2"
$ns_ at 139.398333449290 "$god_ set-dist 35 36 2"
$ns_ at 139.441706146408 "$god_ set-dist 9 10 1"
$ns_ at 139.484518147321 "$god_ set-dist 35 43 1"
$ns_ at 139.484518147321 "$god_ set-dist 43 48 2"
$ns_ at 139.532842673365 "$god_ set-dist 35 40 1"
$ns_ at 139.532842673365 "$god_ set-dist 40 48 2"
$ns_ at 139.584182429934 "$node_(49) setdest 247.719382752113 209.272909625146 0.000000000000"
$ns_ at 139.585487812482 "$god_ set-dist 20 34 1"
$ns_ at 139.608145619130 "$god_ set-dist 1 38 2"
$ns_ at 139.611794273426 "$god_ set-dist 19 31 2"
$ns_ at 139.774666416127 "$god_ set-dist 6 48 3"
$ns_ at 139.774666416127 "$god_ set-dist 23 48 2"
$ns_ at 139.774666416127 "$god_ set-dist 29 48 3"
$ns_ at 139.774666416127 "$god_ set-dist 48 49 3"
$ns_ at 139.800017291978 "$god_ set-dist 6 23 2"
$ns_ at 139.801088390334 "$node_(23) setdest 175.836064886279 524.507198451901 12.879290086891"
$ns_ at 139.801649645419 "$god_ set-dist 6 23 1"
$ns_ at 139.813198420357 "$god_ set-dist 4 44 3"
$ns_ at 139.813198420357 "$god_ set-dist 15 44 2"
$ns_ at 139.813198420357 "$god_ set-dist 30 44 3"
$ns_ at 139.813198420357 "$god_ set-dist 37 44 3"
$ns_ at 139.968850377419 "$god_ set-dist 3 6 1"
$ns_ at 139.976981752427 "$god_ set-dist 15 39 1"
$ns_ at 139.993037535032 "$god_ set-dist 5 25 3"
$ns_ at 139.993037535032 "$god_ set-dist 9 25 2"
$ns_ at 140.028680139945 "$god_ set-dist 33 38 2"
$ns_ at 140.122595919814 "$god_ set-dist 0 5 3"
$ns_ at 140.122595919814 "$god_ set-dist 0 12 3"
$ns_ at 140.122595919814 "$god_ set-dist 0 13 3"
$ns_ at 140.122595919814 "$god_ set-dist 0 34 2"
$ns_ at 140.185896934379 "$god_ set-dist 10 37 2"
$ns_ at 140.185896934379 "$god_ set-dist 10 39 1"
$ns_ at 140.185896934379 "$god_ set-dist 10 41 2"
$ns_ at 140.188835413790 "$god_ set-dist 3 29 1"
$ns_ at 140.287519268166 "$node_(2) setdest 407.670845956434 247.242435814446 0.000000000000"
$ns_ at 140.418569712038 "$god_ set-dist 29 43 1"
$ns_ at 140.789396706121 "$node_(21) setdest 642.940767060891 62.031045712637 14.781024869171"
$ns_ at 140.888284126048 "$god_ set-dist 7 44 2"
$ns_ at 140.888284126048 "$god_ set-dist 27 44 3"
$ns_ at 140.998800469203 "$god_ set-dist 18 49 1"
$ns_ at 141.014942872300 "$god_ set-dist 13 48 3"
$ns_ at 141.014942872300 "$god_ set-dist 20 48 2"
$ns_ at 141.014942872300 "$god_ set-dist 38 48 3"
$ns_ at 141.080349438820 "$god_ set-dist 31 44 2"
$ns_ at 141.088129890581 "$god_ set-dist 4 14 2"
$ns_ at 141.088129890581 "$god_ set-dist 14 18 1"
$ns_ at 141.088129890581 "$god_ set-dist 14 30 2"
$ns_ at 141.088129890581 "$god_ set-dist 14 37 2"
$ns_ at 141.128100961100 "$god_ set-dist 0 22 3"
$ns_ at 141.128100961100 "$god_ set-dist 16 22 2"
$ns_ at 141.129000302291 "$god_ set-dist 10 29 1"
$ns_ at 141.357098643464 "$god_ set-dist 29 32 1"
$ns_ at 141.370061488809 "$god_ set-dist 21 33 1"
$ns_ at 141.582094086228 "$god_ set-dist 2 11 1"
$ns_ at 141.582094086228 "$god_ set-dist 11 28 2"
$ns_ at 141.582094086228 "$god_ set-dist 11 36 2"
$ns_ at 141.591001302851 "$god_ set-dist 23 33 2"
$ns_ at 141.601419814829 "$node_(0) setdest 168.750922048975 602.384134369414 0.000000000000"
$ns_ at 141.645717900292 "$god_ set-dist 31 42 2"
$ns_ at 141.698252619318 "$god_ set-dist 10 14 1"
$ns_ at 141.936515502730 "$god_ set-dist 1 48 2"
$ns_ at 141.984018761645 "$god_ set-dist 10 42 1"
$ns_ at 142.026081650513 "$god_ set-dist 25 31 1"
$ns_ at 142.084527331403 "$node_(7) setdest 306.505473638684 412.443471923061 14.571398145252"
$ns_ at 142.124848796816 "$god_ set-dist 6 10 1"
$ns_ at 142.199175925789 "$god_ set-dist 29 39 1"
$ns_ at 142.291099534139 "$god_ set-dist 11 31 1"
$ns_ at 142.320576428366 "$god_ set-dist 7 42 1"
$ns_ at 142.320576428366 "$god_ set-dist 27 42 2"
$ns_ at 142.371941728580 "$god_ set-dist 7 36 2"
$ns_ at 142.371941728580 "$god_ set-dist 15 36 1"
$ns_ at 142.371941728580 "$god_ set-dist 25 36 2"
$ns_ at 142.371941728580 "$god_ set-dist 26 36 2"
$ns_ at 142.371941728580 "$god_ set-dist 27 36 2"
$ns_ at 142.371941728580 "$god_ set-dist 30 36 2"
$ns_ at 142.371941728580 "$god_ set-dist 36 39 2"
$ns_ at 142.375166670087 "$god_ set-dist 25 43 1"
$ns_ at 142.398502175715 "$god_ set-dist 1 40 2"
$ns_ at 142.398502175715 "$god_ set-dist 23 40 1"
$ns_ at 142.398502175715 "$god_ set-dist 40 47 2"
$ns_ at 142.426480639984 "$god_ set-dist 1 19 2"
$ns_ at 142.426480639984 "$god_ set-dist 2 19 1"
$ns_ at 142.426480639984 "$god_ set-dist 19 33 2"
$ns_ at 142.426480639984 "$god_ set-dist 19 45 2"
$ns_ at 142.435183421111 "$node_(1) setdest 630.128868826853 298.900103715999 0.000000000000"
$ns_ at 142.559443926253 "$god_ set-dist 4 10 2"
$ns_ at 142.559443926253 "$god_ set-dist 10 18 1"
$ns_ at 142.559443926253 "$god_ set-dist 10 45 2"
$ns_ at 142.583563352606 "$god_ set-dist 13 18 1"
$ns_ at 142.595501061897 "$god_ set-dist 17 22 2"
$ns_ at 142.595501061897 "$god_ set-dist 17 47 3"
$ns_ at 142.620827348464 "$god_ set-dist 1 31 2"
$ns_ at 142.620827348464 "$god_ set-dist 23 31 1"
$ns_ at 142.620827348464 "$god_ set-dist 24 31 3"
$ns_ at 142.620827348464 "$god_ set-dist 31 38 2"
$ns_ at 142.620827348464 "$god_ set-dist 31 47 2"
$ns_ at 142.721591645780 "$god_ set-dist 14 31 2"
$ns_ at 142.771459058266 "$god_ set-dist 7 30 1"
$ns_ at 142.771459058266 "$god_ set-dist 30 42 2"
$ns_ at 142.776862108756 "$god_ set-dist 2 39 1"
$ns_ at 142.776862108756 "$god_ set-dist 28 39 2"
$ns_ at 142.802267145472 "$god_ set-dist 21 48 2"
$ns_ at 142.821731580780 "$god_ set-dist 2 7 1"
$ns_ at 142.821731580780 "$god_ set-dist 7 28 2"
$ns_ at 142.924364635491 "$god_ set-dist 1 11 1"
$ns_ at 142.937165919278 "$god_ set-dist 6 31 2"
$ns_ at 142.946319436606 "$god_ set-dist 22 42 2"
$ns_ at 142.946319436606 "$god_ set-dist 42 47 3"
$ns_ at 142.955642227558 "$god_ set-dist 7 41 1"
$ns_ at 142.968682667766 "$god_ set-dist 1 43 2"
$ns_ at 142.968682667766 "$god_ set-dist 11 43 1"
$ns_ at 143.015022481198 "$god_ set-dist 0 3 2"
$ns_ at 143.045463493641 "$god_ set-dist 23 43 1"
$ns_ at 143.045463493641 "$god_ set-dist 24 43 3"
$ns_ at 143.045463493641 "$god_ set-dist 38 43 2"
$ns_ at 143.045463493641 "$god_ set-dist 43 47 2"
$ns_ at 143.047494430161 "$god_ set-dist 8 39 1"
$ns_ at 143.202469913900 "$god_ set-dist 23 38 2"
$ns_ at 143.202469913900 "$god_ set-dist 31 38 3"
$ns_ at 143.202469913900 "$god_ set-dist 38 43 3"
$ns_ at 143.233733972658 "$god_ set-dist 22 41 2"
$ns_ at 143.233733972658 "$god_ set-dist 22 48 3"
$ns_ at 143.249823807791 "$god_ set-dist 7 49 1"
$ns_ at 143.315338896465 "$god_ set-dist 34 48 3"
$ns_ at 143.315338896465 "$god_ set-dist 35 48 2"
$ns_ at 143.315338896465 "$god_ set-dist 40 48 3"
$ns_ at 143.370406392851 "$god_ set-dist 10 19 1"
$ns_ at 143.371527368589 "$god_ set-dist 7 19 1"
$ns_ at 143.371527368589 "$god_ set-dist 19 27 2"
$ns_ at 143.371527368589 "$god_ set-dist 19 30 2"
$ns_ at 143.455686124713 "$god_ set-dist 1 44 3"
$ns_ at 143.455686124713 "$god_ set-dist 2 44 2"
$ns_ at 143.455686124713 "$god_ set-dist 33 44 3"
$ns_ at 143.455686124713 "$god_ set-dist 44 45 3"
$ns_ at 143.662014151739 "$god_ set-dist 6 15 2"
$ns_ at 143.681376617335 "$god_ set-dist 0 37 3"
$ns_ at 143.681376617335 "$god_ set-dist 32 37 3"
$ns_ at 143.681376617335 "$god_ set-dist 37 39 2"
$ns_ at 143.745794498732 "$god_ set-dist 14 23 1"
$ns_ at 143.814406208973 "$node_(24) setdest 9.773870164753 247.009762452922 2.008865656761"
$ns_ at 143.816746238672 "$god_ set-dist 10 44 1"
$ns_ at 143.850269006609 "$god_ set-dist 22 44 2"
$ns_ at 143.850269006609 "$god_ set-dist 44 47 3"
$ns_ at 143.854852230085 "$god_ set-dist 8 48 3"
$ns_ at 143.854852230085 "$god_ set-dist 41 48 2"
$ns_ at 143.874269788397 "$god_ set-dist 6 39 1"
$ns_ at 143.914601752382 "$god_ set-dist 8 36 1"
$ns_ at 143.914601752382 "$god_ set-dist 36 40 2"
$ns_ at 144.059250461270 "$god_ set-dist 29 46 1"
$ns_ at 144.131455257601 "$god_ set-dist 15 29 2"
$ns_ at 144.165050988297 "$god_ set-dist 10 35 1"
$ns_ at 144.211180948163 "$god_ set-dist 22 29 2"
$ns_ at 144.432666731861 "$god_ set-dist 3 31 2"
$ns_ at 144.471365484162 "$god_ set-dist 22 34 2"
$ns_ at 144.488126949348 "$god_ set-dist 1 10 2"
$ns_ at 144.488126949348 "$god_ set-dist 10 23 1"
$ns_ at 144.488126949348 "$god_ set-dist 10 24 3"
$ns_ at 144.488126949348 "$god_ set-dist 10 47 2"
$ns_ at 144.542888163848 "$god_ set-dist 4 19 2"
$ns_ at 144.542888163848 "$god_ set-dist 18 19 1"
$ns_ at 144.542888163848 "$god_ set-dist 19 37 2"
$ns_ at 144.639360619788 "$god_ set-dist 45 48 2"
$ns_ at 144.643975393445 "$god_ set-dist 19 22 2"
$ns_ at 144.672690039465 "$god_ set-dist 3 16 2"
$ns_ at 144.672690039465 "$god_ set-dist 3 26 3"
$ns_ at 144.678753636371 "$god_ set-dist 14 39 1"
$ns_ at 144.800507194686 "$god_ set-dist 14 22 2"
$ns_ at 144.899607401781 "$god_ set-dist 3 11 3"
$ns_ at 144.899607401781 "$god_ set-dist 3 25 3"
$ns_ at 144.899607401781 "$god_ set-dist 3 43 2"
$ns_ at 144.899607401781 "$god_ set-dist 3 48 4"
$ns_ at 144.912888337810 "$god_ set-dist 9 22 2"
$ns_ at 144.912888337810 "$god_ set-dist 22 32 3"
$ns_ at 144.951010575892 "$god_ set-dist 1 10 3"
$ns_ at 144.951010575892 "$god_ set-dist 1 23 2"
$ns_ at 144.951010575892 "$god_ set-dist 1 40 3"
$ns_ at 144.954362728618 "$god_ set-dist 3 24 3"
$ns_ at 144.954362728618 "$god_ set-dist 6 24 2"
$ns_ at 144.954362728618 "$god_ set-dist 18 24 2"
$ns_ at 144.954362728618 "$god_ set-dist 22 24 1"
$ns_ at 144.955070403742 "$god_ set-dist 21 38 1"
$ns_ at 145.044959641952 "$god_ set-dist 10 47 3"
$ns_ at 145.044959641952 "$god_ set-dist 23 47 2"
$ns_ at 145.044959641952 "$god_ set-dist 31 47 3"
$ns_ at 145.044959641952 "$god_ set-dist 40 47 3"
$ns_ at 145.044959641952 "$god_ set-dist 43 47 3"
$ns_ at 145.053376571795 "$god_ set-dist 3 15 3"
$ns_ at 145.053376571795 "$god_ set-dist 3 20 3"
$ns_ at 145.053376571795 "$god_ set-dist 3 21 3"
$ns_ at 145.053376571795 "$god_ set-dist 3 34 2"
$ns_ at 145.081778355652 "$node_(48) setdest 659.951820217533 601.352281379810 0.000000000000"
$ns_ at 145.082112622331 "$god_ set-dist 22 23 2"
$ns_ at 145.082112622331 "$god_ set-dist 23 24 3"
$ns_ at 145.227060858373 "$god_ set-dist 26 43 1"
$ns_ at 145.345212129299 "$god_ set-dist 11 34 1"
$ns_ at 145.345212129299 "$god_ set-dist 34 48 2"
$ns_ at 145.400090784749 "$god_ set-dist 3 22 3"
$ns_ at 145.400090784749 "$god_ set-dist 3 24 4"
$ns_ at 145.400090784749 "$god_ set-dist 6 22 2"
$ns_ at 145.400090784749 "$god_ set-dist 6 24 3"
$ns_ at 145.463367556512 "$god_ set-dist 21 46 2"
$ns_ at 145.467025572743 "$god_ set-dist 39 49 1"
$ns_ at 145.557766960967 "$god_ set-dist 12 18 1"
$ns_ at 145.604983216277 "$god_ set-dist 4 42 2"
$ns_ at 145.604983216277 "$god_ set-dist 18 42 1"
$ns_ at 145.604983216277 "$god_ set-dist 37 42 2"
$ns_ at 145.604983216277 "$god_ set-dist 42 45 2"
$ns_ at 145.687186669316 "$god_ set-dist 19 39 1"
$ns_ at 145.696068943757 "$god_ set-dist 26 31 1"
$ns_ at 145.735436153622 "$god_ set-dist 16 41 1"
$ns_ at 145.865633415763 "$god_ set-dist 39 42 1"
$ns_ at 145.930792286007 "$node_(6) setdest 194.444708080148 263.841668092428 0.000000000000"
$ns_ at 145.991888347709 "$god_ set-dist 19 23 1"
$ns_ at 146.081277018256 "$god_ set-dist 13 21 1"
$ns_ at 146.151767080375 "$god_ set-dist 8 10 1"
$ns_ at 146.151767080375 "$god_ set-dist 10 36 2"
$ns_ at 146.151767080375 "$god_ set-dist 10 38 2"
$ns_ at 146.227191924415 "$god_ set-dist 34 41 1"
$ns_ at 146.248815838485 "$god_ set-dist 10 47 2"
$ns_ at 146.248815838485 "$god_ set-dist 18 47 1"
$ns_ at 146.248815838485 "$god_ set-dist 31 47 2"
$ns_ at 146.248815838485 "$god_ set-dist 40 47 2"
$ns_ at 146.248815838485 "$god_ set-dist 42 47 2"
$ns_ at 146.248815838485 "$god_ set-dist 43 47 2"
$ns_ at 146.261674723791 "$god_ set-dist 10 49 1"
$ns_ at 146.271840111515 "$god_ set-dist 16 17 2"
$ns_ at 146.271840111515 "$god_ set-dist 17 25 3"
$ns_ at 146.271840111515 "$god_ set-dist 17 26 3"
$ns_ at 146.356735039247 "$god_ set-dist 18 22 2"
$ns_ at 146.356735039247 "$god_ set-dist 22 31 3"
$ns_ at 146.356735039247 "$god_ set-dist 22 43 3"
$ns_ at 146.367521903604 "$god_ set-dist 18 38 1"
$ns_ at 146.367521903604 "$god_ set-dist 31 38 2"
$ns_ at 146.367521903604 "$god_ set-dist 38 43 2"
$ns_ at 146.679353997851 "$god_ set-dist 16 30 1"
$ns_ at 146.679353997851 "$god_ set-dist 30 44 2"
$ns_ at 146.690331095510 "$node_(7) setdest 306.505473638684 412.443471923061 0.000000000000"
$ns_ at 146.727052715488 "$node_(22) setdest 417.098156082541 106.150741216110 0.000000000000"
$ns_ at 146.784078676149 "$god_ set-dist 29 31 2"
$ns_ at 146.839047314666 "$god_ set-dist 4 18 2"
$ns_ at 146.839047314666 "$god_ set-dist 4 42 3"
$ns_ at 146.852483491777 "$god_ set-dist 18 22 1"
$ns_ at 146.852483491777 "$god_ set-dist 22 31 2"
$ns_ at 146.852483491777 "$god_ set-dist 22 43 2"
$ns_ at 146.900875637011 "$god_ set-dist 9 11 2"
$ns_ at 146.900875637011 "$god_ set-dist 9 48 3"
$ns_ at 146.988169898317 "$god_ set-dist 10 17 1"
$ns_ at 147.028009833697 "$god_ set-dist 4 12 3"
$ns_ at 147.028009833697 "$god_ set-dist 12 15 2"
$ns_ at 147.089966489046 "$god_ set-dist 30 43 1"
$ns_ at 147.445672440520 "$god_ set-dist 21 36 1"
$ns_ at 147.454968370246 "$god_ set-dist 16 27 1"
$ns_ at 147.454968370246 "$god_ set-dist 27 44 2"
$ns_ at 147.555901127779 "$god_ set-dist 18 31 2"
$ns_ at 147.555901127779 "$god_ set-dist 22 31 3"
$ns_ at 147.555901127779 "$god_ set-dist 24 31 4"
$ns_ at 147.555901127779 "$god_ set-dist 31 38 3"
$ns_ at 147.555901127779 "$god_ set-dist 31 47 3"
$ns_ at 147.644343857281 "$god_ set-dist 27 43 1"
$ns_ at 147.709062232586 "$god_ set-dist 0 13 2"
$ns_ at 147.709062232586 "$god_ set-dist 13 39 1"
$ns_ at 147.800000197812 "$god_ set-dist 16 44 2"
$ns_ at 147.800000197812 "$god_ set-dist 25 44 3"
$ns_ at 147.800000197812 "$god_ set-dist 26 44 3"
$ns_ at 147.800000197812 "$god_ set-dist 27 44 3"
$ns_ at 147.800000197812 "$god_ set-dist 30 44 3"
$ns_ at 147.977121841616 "$god_ set-dist 16 21 2"
$ns_ at 148.005576209871 "$god_ set-dist 4 6 3"
$ns_ at 148.005576209871 "$god_ set-dist 4 14 3"
$ns_ at 148.005576209871 "$god_ set-dist 4 19 3"
$ns_ at 148.005576209871 "$god_ set-dist 4 23 2"
$ns_ at 148.005576209871 "$god_ set-dist 4 29 3"
$ns_ at 148.029419054166 "$god_ set-dist 23 42 1"
$ns_ at 148.094442414454 "$god_ set-dist 1 31 3"
$ns_ at 148.094442414454 "$god_ set-dist 11 31 2"
$ns_ at 148.364350711200 "$god_ set-dist 23 32 1"
$ns_ at 148.364350711200 "$god_ set-dist 32 37 2"
$ns_ at 148.364350711200 "$god_ set-dist 32 45 2"
$ns_ at 148.434779146986 "$god_ set-dist 5 36 1"
$ns_ at 148.539343766106 "$node_(44) setdest 113.448945530080 215.917337124889 0.000000000000"
$ns_ at 148.576578271114 "$god_ set-dist 1 29 3"
$ns_ at 148.576578271114 "$god_ set-dist 2 29 2"
$ns_ at 148.576578271114 "$god_ set-dist 29 33 3"
$ns_ at 148.615334078233 "$god_ set-dist 1 31 2"
$ns_ at 148.615334078233 "$god_ set-dist 30 31 1"
$ns_ at 148.645690524407 "$god_ set-dist 9 21 2"
$ns_ at 148.664168761268 "$god_ set-dist 0 13 3"
$ns_ at 148.664168761268 "$god_ set-dist 0 39 2"
$ns_ at 148.706383594375 "$god_ set-dist 1 25 1"
$ns_ at 148.846620699476 "$god_ set-dist 5 25 2"
$ns_ at 148.846620699476 "$god_ set-dist 17 25 2"
$ns_ at 148.846620699476 "$god_ set-dist 25 34 1"
$ns_ at 148.846620699476 "$god_ set-dist 25 44 2"
$ns_ at 148.951949283851 "$god_ set-dist 20 43 1"
$ns_ at 148.951949283851 "$god_ set-dist 33 43 2"
$ns_ at 148.968910364402 "$god_ set-dist 1 10 2"
$ns_ at 148.968910364402 "$god_ set-dist 2 10 1"
$ns_ at 148.968910364402 "$god_ set-dist 10 28 2"
$ns_ at 148.968910364402 "$god_ set-dist 10 33 2"
$ns_ at 149.077653306297 "$god_ set-dist 3 20 2"
$ns_ at 149.077653306297 "$god_ set-dist 10 20 1"
$ns_ at 149.084101462465 "$god_ set-dist 13 23 2"
$ns_ at 149.131389510899 "$god_ set-dist 17 26 2"
$ns_ at 149.131389510899 "$god_ set-dist 17 27 2"
$ns_ at 149.131389510899 "$god_ set-dist 17 30 2"
$ns_ at 149.131389510899 "$god_ set-dist 17 39 1"
$ns_ at 149.165365730101 "$god_ set-dist 5 18 1"
$ns_ at 149.165365730101 "$god_ set-dist 5 26 2"
$ns_ at 149.165365730101 "$god_ set-dist 5 27 2"
$ns_ at 149.165365730101 "$god_ set-dist 5 30 2"
$ns_ at 149.165365730101 "$god_ set-dist 5 37 2"
$ns_ at 149.177210902521 "$god_ set-dist 12 39 1"
$ns_ at 149.208750641689 "$god_ set-dist 32 42 1"
$ns_ at 149.356938514736 "$god_ set-dist 23 45 2"
$ns_ at 149.356938514736 "$god_ set-dist 32 45 3"
$ns_ at 149.379210957007 "$god_ set-dist 11 24 2"
$ns_ at 149.379210957007 "$god_ set-dist 11 47 1"
$ns_ at 149.412478502086 "$god_ set-dist 35 45 2"
$ns_ at 149.633072371850 "$god_ set-dist 30 34 1"
$ns_ at 149.633072371850 "$god_ set-dist 30 44 2"
$ns_ at 149.636371961470 "$god_ set-dist 31 34 2"
$ns_ at 149.651057770908 "$god_ set-dist 3 15 2"
$ns_ at 149.651057770908 "$god_ set-dist 10 15 1"
$ns_ at 149.661503016639 "$god_ set-dist 26 44 2"
$ns_ at 149.661503016639 "$god_ set-dist 27 44 2"
$ns_ at 149.661503016639 "$god_ set-dist 39 44 1"
$ns_ at 149.731725329183 "$god_ set-dist 2 30 1"
$ns_ at 149.731725329183 "$god_ set-dist 28 30 2"
$ns_ at 149.755197963022 "$god_ set-dist 18 36 1"
$ns_ at 149.755197963022 "$god_ set-dist 36 43 2"
$ns_ at 149.755197963022 "$god_ set-dist 36 46 2"
$ns_ at 149.796785653902 "$god_ set-dist 5 37 3"
$ns_ at 149.796785653902 "$god_ set-dist 12 37 3"
$ns_ at 149.796785653902 "$god_ set-dist 18 37 2"
$ns_ at 149.842598784632 "$god_ set-dist 5 31 3"
$ns_ at 149.842598784632 "$god_ set-dist 9 31 2"
$ns_ at 149.879502312756 "$god_ set-dist 17 26 3"
$ns_ at 149.879502312756 "$god_ set-dist 26 39 2"
$ns_ at 149.879502312756 "$god_ set-dist 26 44 3"
$ns_ at 149.927580206563 "$god_ set-dist 6 37 3"
$ns_ at 149.927580206563 "$god_ set-dist 14 37 3"
$ns_ at 149.927580206563 "$god_ set-dist 19 37 3"
$ns_ at 149.927580206563 "$god_ set-dist 23 37 2"
$ns_ at 149.927580206563 "$god_ set-dist 29 37 3"
$ns_ at 149.927580206563 "$god_ set-dist 32 37 3"
$ns_ at 149.927580206563 "$god_ set-dist 37 42 3"
$ns_ at 149.974200937283 "$god_ set-dist 36 45 1"
$ns_ at 150.230117961108 "$god_ set-dist 0 23 1"
$ns_ at 150.291830440975 "$god_ set-dist 7 21 2"
$ns_ at 150.441814865294 "$god_ set-dist 5 26 3"
$ns_ at 150.441814865294 "$god_ set-dist 12 26 3"
$ns_ at 150.441814865294 "$god_ set-dist 18 26 2"
$ns_ at 150.619125913585 "$node_(10) setdest 251.473529312409 403.282061485264 0.000000000000"
$ns_ at 150.672053873423 "$god_ set-dist 5 31 2"
$ns_ at 150.672053873423 "$god_ set-dist 5 39 1"
$ns_ at 150.711674592034 "$god_ set-dist 4 49 3"
$ns_ at 150.711674592034 "$god_ set-dist 15 49 2"
$ns_ at 150.711674592034 "$god_ set-dist 37 49 3"
$ns_ at 150.715360662286 "$god_ set-dist 17 27 3"
$ns_ at 150.715360662286 "$god_ set-dist 27 39 2"
$ns_ at 150.715360662286 "$god_ set-dist 27 44 3"
$ns_ at 150.856425743436 "$node_(34) setdest 299.337633604237 338.946209342874 0.000000000000"
$ns_ at 150.869067084891 "$god_ set-dist 36 49 1"
$ns_ at 150.888126837313 "$god_ set-dist 21 35 2"
$ns_ at 150.909928372830 "$node_(32) setdest 6.185497850316 532.184390585021 19.478695488434"
$ns_ at 151.067428056650 "$god_ set-dist 5 31 3"
$ns_ at 151.067428056650 "$god_ set-dist 12 31 3"
$ns_ at 151.067428056650 "$god_ set-dist 13 31 3"
$ns_ at 151.067428056650 "$god_ set-dist 31 39 2"
$ns_ at 151.097084751388 "$god_ set-dist 11 33 1"
$ns_ at 151.147680183494 "$god_ set-dist 0 21 3"
$ns_ at 151.147680183494 "$god_ set-dist 21 23 2"
$ns_ at 151.209348860295 "$god_ set-dist 3 30 2"
$ns_ at 151.209348860295 "$god_ set-dist 3 48 3"
$ns_ at 151.209348860295 "$god_ set-dist 10 30 1"
$ns_ at 151.209348860295 "$god_ set-dist 10 48 2"
$ns_ at 151.217321862138 "$god_ set-dist 13 29 2"
$ns_ at 151.225794052940 "$god_ set-dist 21 26 2"
$ns_ at 151.268356089529 "$god_ set-dist 21 28 1"
$ns_ at 151.268356089529 "$god_ set-dist 25 28 2"
$ns_ at 151.268356089529 "$god_ set-dist 27 28 2"
$ns_ at 151.293939111631 "$god_ set-dist 21 39 2"
$ns_ at 151.344813833409 "$god_ set-dist 21 32 3"
$ns_ at 151.344813833409 "$god_ set-dist 32 34 2"
$ns_ at 151.347268290732 "$god_ set-dist 20 38 2"
$ns_ at 151.358669489032 "$god_ set-dist 41 43 1"
$ns_ at 151.379134459913 "$god_ set-dist 0 4 2"
$ns_ at 151.379134459913 "$god_ set-dist 0 35 1"
$ns_ at 151.379134459913 "$god_ set-dist 0 37 2"
$ns_ at 151.607691010218 "$god_ set-dist 22 45 1"
$ns_ at 151.663751982723 "$god_ set-dist 15 43 1"
$ns_ at 151.864880333085 "$god_ set-dist 25 39 2"
$ns_ at 151.992290798373 "$god_ set-dist 32 39 2"
$ns_ at 151.995608359140 "$god_ set-dist 38 45 1"
$ns_ at 152.114974983235 "$god_ set-dist 27 31 1"
$ns_ at 152.288803918413 "$god_ set-dist 21 34 2"
$ns_ at 152.309214903387 "$god_ set-dist 12 29 2"
$ns_ at 152.309214903387 "$god_ set-dist 28 29 3"
$ns_ at 152.507383162307 "$node_(13) setdest 360.060243839987 657.161022014798 12.002220213521"
$ns_ at 152.566074465850 "$god_ set-dist 32 42 2"
$ns_ at 152.620022012546 "$god_ set-dist 18 46 2"
$ns_ at 152.620022012546 "$god_ set-dist 36 46 3"
$ns_ at 152.620022012546 "$god_ set-dist 38 46 3"
$ns_ at 152.713947627379 "$god_ set-dist 0 13 2"
$ns_ at 152.713947627379 "$god_ set-dist 7 13 1"
$ns_ at 152.713947627379 "$god_ set-dist 13 31 2"
$ns_ at 152.757685709541 "$god_ set-dist 0 5 2"
$ns_ at 152.757685709541 "$god_ set-dist 0 29 1"
$ns_ at 152.789958047691 "$god_ set-dist 21 24 1"
$ns_ at 152.789958047691 "$god_ set-dist 24 25 2"
$ns_ at 152.789958047691 "$god_ set-dist 24 27 2"
$ns_ at 152.789958047691 "$god_ set-dist 24 30 2"
$ns_ at 152.789958047691 "$god_ set-dist 24 31 3"
$ns_ at 152.794297291516 "$god_ set-dist 10 13 1"
$ns_ at 152.799589212186 "$god_ set-dist 11 39 2"
$ns_ at 152.987153987062 "$god_ set-dist 13 16 1"
$ns_ at 153.114555396260 "$god_ set-dist 18 29 2"
$ns_ at 153.114555396260 "$god_ set-dist 29 45 3"
$ns_ at 153.114555396260 "$god_ set-dist 29 47 3"
$ns_ at 153.125316839675 "$god_ set-dist 18 40 2"
$ns_ at 153.125316839675 "$god_ set-dist 40 45 3"
$ns_ at 153.125316839675 "$god_ set-dist 40 47 3"
$ns_ at 153.151557524752 "$god_ set-dist 5 27 3"
$ns_ at 153.151557524752 "$god_ set-dist 12 27 3"
$ns_ at 153.151557524752 "$god_ set-dist 18 27 2"
$ns_ at 153.167810226605 "$god_ set-dist 9 32 2"
$ns_ at 153.167810226605 "$god_ set-dist 12 32 3"
$ns_ at 153.223457629758 "$god_ set-dist 17 18 1"
$ns_ at 153.223457629758 "$god_ set-dist 17 45 2"
$ns_ at 153.223457629758 "$god_ set-dist 17 47 2"
$ns_ at 153.233610755662 "$god_ set-dist 0 5 3"
$ns_ at 153.233610755662 "$god_ set-dist 5 29 2"
$ns_ at 153.233610755662 "$god_ set-dist 5 32 3"
$ns_ at 153.270431811172 "$god_ set-dist 31 32 2"
$ns_ at 153.282048014207 "$god_ set-dist 30 39 2"
$ns_ at 153.282048014207 "$god_ set-dist 39 48 3"
$ns_ at 153.343889733705 "$god_ set-dist 21 25 2"
$ns_ at 153.343889733705 "$god_ set-dist 24 25 3"
$ns_ at 153.343889733705 "$god_ set-dist 25 28 3"
$ns_ at 153.384492767947 "$god_ set-dist 26 45 2"
$ns_ at 153.498428494473 "$god_ set-dist 18 25 2"
$ns_ at 153.555146482968 "$god_ set-dist 20 36 1"
$ns_ at 153.555146482968 "$god_ set-dist 36 46 2"
$ns_ at 153.586646943083 "$god_ set-dist 7 32 2"
$ns_ at 153.647575295056 "$node_(31) setdest 317.039599643144 637.408473517504 0.000000000000"
$ns_ at 153.687285113862 "$god_ set-dist 9 30 1"
$ns_ at 153.687285113862 "$god_ set-dist 9 48 2"
$ns_ at 153.717393929278 "$god_ set-dist 32 43 2"
$ns_ at 153.733403095485 "$god_ set-dist 24 39 2"
$ns_ at 153.733403095485 "$god_ set-dist 38 39 1"
$ns_ at 153.733403095485 "$god_ set-dist 38 46 2"
$ns_ at 153.762762347131 "$god_ set-dist 22 39 1"
$ns_ at 154.003367341639 "$node_(9) setdest 659.750168327716 657.430737690440 11.778105811646"
$ns_ at 154.063509118500 "$god_ set-dist 16 32 2"
$ns_ at 154.118865609091 "$god_ set-dist 21 27 2"
$ns_ at 154.118865609091 "$god_ set-dist 24 27 3"
$ns_ at 154.118865609091 "$god_ set-dist 27 28 3"
$ns_ at 154.253515021499 "$god_ set-dist 9 41 1"
$ns_ at 154.364056509138 "$god_ set-dist 39 41 2"
$ns_ at 154.444978850419 "$god_ set-dist 5 25 3"
$ns_ at 154.444978850419 "$god_ set-dist 12 25 3"
$ns_ at 154.444978850419 "$god_ set-dist 17 25 3"
$ns_ at 154.444978850419 "$god_ set-dist 25 34 2"
$ns_ at 154.444978850419 "$god_ set-dist 25 44 3"
$ns_ at 154.470370935114 "$god_ set-dist 3 24 3"
$ns_ at 154.470370935114 "$god_ set-dist 3 38 2"
$ns_ at 154.470370935114 "$god_ set-dist 19 24 2"
$ns_ at 154.470370935114 "$god_ set-dist 19 38 1"
$ns_ at 154.751755904112 "$god_ set-dist 21 30 2"
$ns_ at 154.751755904112 "$god_ set-dist 21 31 3"
$ns_ at 154.751755904112 "$god_ set-dist 24 30 3"
$ns_ at 154.751755904112 "$god_ set-dist 24 31 4"
$ns_ at 154.783258325662 "$god_ set-dist 29 43 2"
$ns_ at 154.826715860721 "$god_ set-dist 18 43 2"
$ns_ at 154.829014843790 "$god_ set-dist 32 46 2"
$ns_ at 154.958482278217 "$god_ set-dist 37 43 1"
$ns_ at 155.307234916968 "$god_ set-dist 18 28 1"
$ns_ at 155.417815236472 "$god_ set-dist 23 26 2"
$ns_ at 155.417815236472 "$god_ set-dist 26 32 3"
$ns_ at 155.462492862848 "$god_ set-dist 20 22 2"
$ns_ at 155.491784633907 "$god_ set-dist 25 28 2"
$ns_ at 155.491784633907 "$god_ set-dist 27 28 2"
$ns_ at 155.491784633907 "$god_ set-dist 28 45 1"
$ns_ at 155.563855844591 "$god_ set-dist 3 22 2"
$ns_ at 155.563855844591 "$god_ set-dist 19 22 1"
$ns_ at 155.603868511896 "$god_ set-dist 23 41 2"
$ns_ at 155.603868511896 "$god_ set-dist 32 41 3"
$ns_ at 155.647782337244 "$god_ set-dist 18 35 2"
$ns_ at 155.765043711101 "$god_ set-dist 11 23 2"
$ns_ at 155.765043711101 "$god_ set-dist 11 32 3"
$ns_ at 155.866696676059 "$god_ set-dist 23 49 2"
$ns_ at 155.910316751156 "$god_ set-dist 8 21 2"
$ns_ at 155.910316751156 "$god_ set-dist 21 29 3"
$ns_ at 155.910316751156 "$god_ set-dist 21 40 3"
$ns_ at 155.927650396410 "$god_ set-dist 36 39 1"
$ns_ at 155.999929538875 "$god_ set-dist 15 23 2"
$ns_ at 156.007954753111 "$node_(45) setdest 570.573519852313 264.425219008803 0.000000000000"
$ns_ at 156.030931949902 "$god_ set-dist 10 32 2"
$ns_ at 156.030931949902 "$god_ set-dist 13 32 3"
$ns_ at 156.030931949902 "$god_ set-dist 15 32 3"
$ns_ at 156.037403482188 "$god_ set-dist 4 19 2"
$ns_ at 156.037403482188 "$god_ set-dist 19 20 1"
$ns_ at 156.037403482188 "$god_ set-dist 19 37 2"
$ns_ at 156.044178803422 "$god_ set-dist 2 23 2"
$ns_ at 156.044178803422 "$god_ set-dist 2 32 3"
$ns_ at 156.069832366307 "$god_ set-dist 24 25 2"
$ns_ at 156.069832366307 "$god_ set-dist 24 27 2"
$ns_ at 156.069832366307 "$god_ set-dist 24 30 2"
$ns_ at 156.069832366307 "$god_ set-dist 24 31 3"
$ns_ at 156.069832366307 "$god_ set-dist 24 45 1"
$ns_ at 156.079598574566 "$god_ set-dist 9 11 1"
$ns_ at 156.108555305925 "$node_(25) setdest 502.295521608896 490.003546266988 0.000000000000"
$ns_ at 156.114440056713 "$god_ set-dist 1 32 4"
$ns_ at 156.114440056713 "$god_ set-dist 18 32 3"
$ns_ at 156.114440056713 "$god_ set-dist 20 32 3"
$ns_ at 156.114440056713 "$god_ set-dist 21 32 4"
$ns_ at 156.114440056713 "$god_ set-dist 23 32 2"
$ns_ at 156.114440056713 "$god_ set-dist 25 32 3"
$ns_ at 156.114440056713 "$god_ set-dist 27 32 3"
$ns_ at 156.114440056713 "$god_ set-dist 28 32 4"
$ns_ at 156.114440056713 "$god_ set-dist 30 32 3"
$ns_ at 156.114440056713 "$god_ set-dist 32 33 4"
$ns_ at 156.114440056713 "$god_ set-dist 32 45 4"
$ns_ at 156.114440056713 "$god_ set-dist 32 47 4"
$ns_ at 156.114440056713 "$god_ set-dist 32 48 4"
$ns_ at 156.185815995198 "$god_ set-dist 22 46 3"
$ns_ at 156.185815995198 "$god_ set-dist 38 46 3"
$ns_ at 156.185815995198 "$god_ set-dist 39 46 2"
$ns_ at 156.228861257505 "$god_ set-dist 3 15 3"
$ns_ at 156.228861257505 "$god_ set-dist 10 15 2"
$ns_ at 156.270708987453 "$god_ set-dist 35 39 2"
$ns_ at 156.374509696519 "$god_ set-dist 18 23 2"
$ns_ at 156.374509696519 "$god_ set-dist 23 28 3"
$ns_ at 156.438512167769 "$god_ set-dist 13 45 1"
$ns_ at 156.438512167769 "$god_ set-dist 44 45 2"
$ns_ at 156.445851995077 "$god_ set-dist 13 41 1"
$ns_ at 156.540495099889 "$god_ set-dist 4 21 2"
$ns_ at 156.547014510679 "$god_ set-dist 5 25 2"
$ns_ at 156.547014510679 "$god_ set-dist 9 25 1"
$ns_ at 156.547014510679 "$god_ set-dist 12 25 2"
$ns_ at 156.547014510679 "$god_ set-dist 17 25 2"
$ns_ at 156.547014510679 "$god_ set-dist 25 44 2"
$ns_ at 156.564076450429 "$god_ set-dist 39 43 2"
$ns_ at 156.591408483880 "$god_ set-dist 4 43 1"
$ns_ at 156.694301617801 "$god_ set-dist 15 38 2"
$ns_ at 156.694301617801 "$god_ set-dist 26 38 3"
$ns_ at 156.694301617801 "$god_ set-dist 38 43 3"
$ns_ at 156.756937997714 "$god_ set-dist 2 35 2"
$ns_ at 156.756937997714 "$god_ set-dist 28 35 3"
$ns_ at 156.756937997714 "$god_ set-dist 35 38 3"
$ns_ at 156.813699463746 "$god_ set-dist 21 37 2"
$ns_ at 156.841435122925 "$god_ set-dist 5 9 2"
$ns_ at 156.841435122925 "$god_ set-dist 5 25 3"
$ns_ at 156.848919427492 "$god_ set-dist 13 28 2"
$ns_ at 156.957269609565 "$god_ set-dist 23 27 2"
$ns_ at 157.180576708234 "$node_(29) setdest 115.202472983421 381.200908038250 0.000000000000"
$ns_ at 157.231647680846 "$god_ set-dist 9 27 1"
$ns_ at 157.231647680846 "$god_ set-dist 12 27 2"
$ns_ at 157.231647680846 "$god_ set-dist 17 27 2"
$ns_ at 157.231647680846 "$god_ set-dist 27 44 2"
$ns_ at 157.290517200160 "$god_ set-dist 18 30 2"
$ns_ at 157.314463968954 "$god_ set-dist 15 39 2"
$ns_ at 157.429889452863 "$god_ set-dist 7 26 2"
$ns_ at 157.454987584114 "$god_ set-dist 11 46 2"
$ns_ at 157.539588951607 "$node_(32) setdest 6.185497850315 532.184390585021 0.000000000000"
$ns_ at 157.874734956746 "$god_ set-dist 13 21 2"
$ns_ at 157.874734956746 "$god_ set-dist 21 44 3"
$ns_ at 157.990437961441 "$god_ set-dist 13 32 2"
$ns_ at 157.990437961441 "$god_ set-dist 13 40 1"
$ns_ at 157.990437961441 "$god_ set-dist 32 45 3"
$ns_ at 157.990437961441 "$god_ set-dist 40 45 2"
$ns_ at 158.070564884380 "$god_ set-dist 23 25 2"
$ns_ at 158.093327858820 "$god_ set-dist 20 23 2"
$ns_ at 158.093327858820 "$god_ set-dist 21 23 3"
$ns_ at 158.093327858820 "$god_ set-dist 23 33 3"
$ns_ at 158.093327858820 "$god_ set-dist 23 47 3"
$ns_ at 158.099956444880 "$god_ set-dist 19 46 1"
$ns_ at 158.099956444880 "$god_ set-dist 22 46 2"
$ns_ at 158.099956444880 "$god_ set-dist 38 46 2"
$ns_ at 158.345235835953 "$god_ set-dist 3 19 2"
$ns_ at 158.345235835953 "$god_ set-dist 3 22 3"
$ns_ at 158.345235835953 "$god_ set-dist 3 24 4"
$ns_ at 158.345235835953 "$god_ set-dist 3 38 3"
$ns_ at 158.366245172721 "$god_ set-dist 11 18 2"
$ns_ at 158.366245172721 "$god_ set-dist 18 48 3"
$ns_ at 158.368088168487 "$god_ set-dist 1 32 3"
$ns_ at 158.368088168487 "$god_ set-dist 23 32 1"
$ns_ at 158.368088168487 "$god_ set-dist 30 32 2"
$ns_ at 158.368088168487 "$god_ set-dist 32 48 3"
$ns_ at 158.482703805200 "$god_ set-dist 9 44 2"
$ns_ at 158.482703805200 "$god_ set-dist 25 44 3"
$ns_ at 158.482703805200 "$god_ set-dist 27 44 3"
$ns_ at 158.624988195710 "$god_ set-dist 19 35 1"
$ns_ at 158.624988195710 "$god_ set-dist 35 38 2"
$ns_ at 158.637777375250 "$god_ set-dist 8 23 2"
$ns_ at 158.671091410157 "$god_ set-dist 19 36 1"
$ns_ at 158.697481383576 "$god_ set-dist 4 39 3"
$ns_ at 158.697481383576 "$god_ set-dist 20 39 2"
$ns_ at 158.697481383576 "$god_ set-dist 37 39 3"
$ns_ at 158.766195969164 "$god_ set-dist 2 43 1"
$ns_ at 158.766195969164 "$god_ set-dist 28 43 2"
$ns_ at 158.766195969164 "$god_ set-dist 38 43 2"
$ns_ at 158.941622531622 "$god_ set-dist 3 48 4"
$ns_ at 158.941622531622 "$god_ set-dist 10 48 3"
$ns_ at 158.941622531622 "$god_ set-dist 23 48 3"
$ns_ at 158.941622531622 "$god_ set-dist 30 48 2"
$ns_ at 158.941622531622 "$god_ set-dist 32 48 4"
$ns_ at 159.024809754516 "$god_ set-dist 23 39 2"
$ns_ at 159.068808248280 "$god_ set-dist 3 23 1"
$ns_ at 159.107626003059 "$god_ set-dist 13 30 1"
$ns_ at 159.263113941233 "$god_ set-dist 11 34 2"
$ns_ at 159.263113941233 "$god_ set-dist 11 44 3"
$ns_ at 159.263113941233 "$god_ set-dist 34 48 3"
$ns_ at 159.263113941233 "$god_ set-dist 44 48 4"
$ns_ at 159.714372851563 "$god_ set-dist 9 17 2"
$ns_ at 159.714372851563 "$god_ set-dist 11 17 3"
$ns_ at 159.714372851563 "$god_ set-dist 17 25 3"
$ns_ at 159.714372851563 "$god_ set-dist 17 27 3"
$ns_ at 159.714372851563 "$god_ set-dist 17 48 4"
$ns_ at 159.787296867025 "$god_ set-dist 9 12 2"
$ns_ at 159.787296867025 "$god_ set-dist 12 25 3"
$ns_ at 159.787296867025 "$god_ set-dist 12 27 3"
$ns_ at 159.838251757872 "$god_ set-dist 18 42 2"
$ns_ at 159.838251757872 "$god_ set-dist 21 42 3"
$ns_ at 159.838251757872 "$god_ set-dist 42 47 3"
$ns_ at 159.877394554256 "$god_ set-dist 0 43 2"
$ns_ at 160.014374873140 "$god_ set-dist 13 35 1"
$ns_ at 160.050244510751 "$god_ set-dist 15 22 2"
$ns_ at 160.050244510751 "$god_ set-dist 22 26 3"
$ns_ at 160.062406043210 "$god_ set-dist 9 31 1"
$ns_ at 160.180991712556 "$god_ set-dist 10 18 2"
$ns_ at 160.225917741997 "$god_ set-dist 13 43 1"
$ns_ at 160.326387606429 "$god_ set-dist 13 29 1"
$ns_ at 160.326387606429 "$god_ set-dist 29 45 2"
$ns_ at 160.376963334742 "$god_ set-dist 24 34 2"
$ns_ at 160.376963334742 "$god_ set-dist 34 36 1"
$ns_ at 160.590547601819 "$god_ set-dist 14 23 2"
$ns_ at 160.747322053657 "$god_ set-dist 33 36 2"
$ns_ at 160.857078543644 "$god_ set-dist 19 30 1"
$ns_ at 160.904661019730 "$node_(4) setdest 640.215368067100 353.739186245424 10.724788939291"
$ns_ at 161.140112650034 "$god_ set-dist 11 21 2"
$ns_ at 161.140112650034 "$god_ set-dist 21 48 3"
$ns_ at 161.242839406779 "$god_ set-dist 9 26 1"
$ns_ at 161.437945870719 "$god_ set-dist 7 18 2"
$ns_ at 161.545823169584 "$god_ set-dist 8 30 1"
$ns_ at 161.569358246235 "$god_ set-dist 0 18 3"
$ns_ at 161.569358246235 "$god_ set-dist 16 18 2"
$ns_ at 161.689921976059 "$node_(15) setdest 509.733671197809 344.230127693123 0.000000000000"
$ns_ at 161.727543865711 "$god_ set-dist 20 21 2"
$ns_ at 161.727543865711 "$god_ set-dist 21 46 3"
$ns_ at 161.738604093236 "$god_ set-dist 13 46 1"
$ns_ at 161.754725720229 "$god_ set-dist 21 41 2"
$ns_ at 161.775210004045 "$god_ set-dist 0 4 3"
$ns_ at 161.775210004045 "$god_ set-dist 4 35 2"
$ns_ at 161.870906634601 "$god_ set-dist 16 39 2"
$ns_ at 161.900996233902 "$god_ set-dist 11 13 1"
$ns_ at 161.900996233902 "$god_ set-dist 11 17 2"
$ns_ at 161.900996233902 "$god_ set-dist 11 44 2"
$ns_ at 161.900996233902 "$god_ set-dist 13 48 2"
$ns_ at 161.900996233902 "$god_ set-dist 17 48 3"
$ns_ at 161.900996233902 "$god_ set-dist 44 48 3"
$ns_ at 162.053172658076 "$god_ set-dist 39 40 2"
$ns_ at 162.056761518059 "$god_ set-dist 15 19 1"
$ns_ at 162.152112517980 "$god_ set-dist 7 11 2"
$ns_ at 162.168289800183 "$god_ set-dist 3 24 3"
$ns_ at 162.168289800183 "$god_ set-dist 6 24 2"
$ns_ at 162.168289800183 "$god_ set-dist 9 24 2"
$ns_ at 162.168289800183 "$god_ set-dist 14 24 2"
$ns_ at 162.168289800183 "$god_ set-dist 17 24 2"
$ns_ at 162.168289800183 "$god_ set-dist 18 24 1"
$ns_ at 162.196467060317 "$god_ set-dist 9 39 2"
$ns_ at 162.196467060317 "$god_ set-dist 26 39 3"
$ns_ at 162.430449385999 "$god_ set-dist 6 37 2"
$ns_ at 162.430449385999 "$god_ set-dist 9 37 1"
$ns_ at 162.430449385999 "$god_ set-dist 14 37 2"
$ns_ at 162.430449385999 "$god_ set-dist 29 37 2"
$ns_ at 162.430449385999 "$god_ set-dist 37 42 2"
$ns_ at 162.430449385999 "$god_ set-dist 37 49 2"
$ns_ at 162.444277063743 "$god_ set-dist 7 39 2"
$ns_ at 162.444277063743 "$god_ set-dist 25 39 3"
$ns_ at 162.444277063743 "$god_ set-dist 27 39 3"
$ns_ at 162.455957853019 "$god_ set-dist 18 41 2"
$ns_ at 162.635139200574 "$god_ set-dist 9 18 2"
$ns_ at 162.635139200574 "$god_ set-dist 9 24 3"
$ns_ at 162.635139200574 "$god_ set-dist 18 31 3"
$ns_ at 162.747204591272 "$god_ set-dist 4 40 3"
$ns_ at 162.747204591272 "$god_ set-dist 40 43 2"
$ns_ at 163.263095973098 "$god_ set-dist 1 23 3"
$ns_ at 163.263095973098 "$god_ set-dist 1 32 4"
$ns_ at 163.263095973098 "$god_ set-dist 23 30 2"
$ns_ at 163.263095973098 "$god_ set-dist 23 45 3"
$ns_ at 163.263095973098 "$god_ set-dist 30 32 3"
$ns_ at 163.393291035315 "$god_ set-dist 15 21 2"
$ns_ at 163.393291035315 "$god_ set-dist 21 26 3"
$ns_ at 163.393291035315 "$god_ set-dist 21 35 3"
$ns_ at 163.714879175013 "$god_ set-dist 10 39 2"
$ns_ at 163.714879175013 "$god_ set-dist 31 39 3"
$ns_ at 163.752675546872 "$god_ set-dist 6 23 2"
$ns_ at 163.805003591584 "$god_ set-dist 9 14 2"
$ns_ at 163.805003591584 "$god_ set-dist 14 37 3"
$ns_ at 163.855975143585 "$god_ set-dist 0 39 3"
$ns_ at 163.855975143585 "$god_ set-dist 29 39 2"
$ns_ at 163.855975143585 "$god_ set-dist 32 39 3"
$ns_ at 163.864305692424 "$god_ set-dist 0 21 4"
$ns_ at 163.864305692424 "$god_ set-dist 2 21 2"
$ns_ at 163.864305692424 "$god_ set-dist 7 21 3"
$ns_ at 163.864305692424 "$god_ set-dist 9 21 3"
$ns_ at 163.864305692424 "$god_ set-dist 10 21 3"
$ns_ at 163.864305692424 "$god_ set-dist 16 21 3"
$ns_ at 163.864305692424 "$god_ set-dist 21 43 3"
$ns_ at 163.966980904277 "$god_ set-dist 3 48 3"
$ns_ at 163.966980904277 "$god_ set-dist 10 48 2"
$ns_ at 163.966980904277 "$god_ set-dist 23 48 2"
$ns_ at 163.966980904277 "$god_ set-dist 32 48 3"
$ns_ at 163.966980904277 "$god_ set-dist 34 48 2"
$ns_ at 163.966980904277 "$god_ set-dist 43 48 1"
$ns_ at 163.995129208881 "$god_ set-dist 25 38 3"
$ns_ at 163.995129208881 "$god_ set-dist 27 38 3"
$ns_ at 163.995129208881 "$god_ set-dist 38 45 2"
$ns_ at 164.008909787370 "$god_ set-dist 4 23 3"
$ns_ at 164.008909787370 "$god_ set-dist 4 32 4"
$ns_ at 164.008909787370 "$god_ set-dist 23 43 2"
$ns_ at 164.008909787370 "$god_ set-dist 23 48 3"
$ns_ at 164.008909787370 "$god_ set-dist 32 43 3"
$ns_ at 164.008909787370 "$god_ set-dist 32 48 4"
$ns_ at 164.030590866393 "$god_ set-dist 36 41 1"
$ns_ at 164.120327759712 "$god_ set-dist 19 41 1"
$ns_ at 164.509000177220 "$god_ set-dist 31 40 2"
$ns_ at 164.565925047094 "$god_ set-dist 5 25 2"
$ns_ at 164.565925047094 "$god_ set-dist 12 25 2"
$ns_ at 164.565925047094 "$god_ set-dist 13 25 1"
$ns_ at 164.565925047094 "$god_ set-dist 17 25 2"
$ns_ at 164.565925047094 "$god_ set-dist 25 38 2"
$ns_ at 164.565925047094 "$god_ set-dist 25 39 2"
$ns_ at 164.565925047094 "$god_ set-dist 25 44 2"
$ns_ at 164.606521258602 "$god_ set-dist 9 29 2"
$ns_ at 164.606521258602 "$god_ set-dist 29 37 3"
$ns_ at 164.676179386083 "$god_ set-dist 1 32 3"
$ns_ at 164.676179386083 "$god_ set-dist 1 40 2"
$ns_ at 164.676179386083 "$god_ set-dist 4 32 3"
$ns_ at 164.676179386083 "$god_ set-dist 4 40 2"
$ns_ at 164.676179386083 "$god_ set-dist 30 32 2"
$ns_ at 164.676179386083 "$god_ set-dist 30 40 1"
$ns_ at 164.713343657780 "$god_ set-dist 0 16 2"
$ns_ at 165.071868349132 "$god_ set-dist 15 18 2"
$ns_ at 165.101826213831 "$god_ set-dist 0 11 3"
$ns_ at 165.101826213831 "$god_ set-dist 11 35 2"
$ns_ at 165.102190609063 "$god_ set-dist 5 27 2"
$ns_ at 165.102190609063 "$god_ set-dist 12 27 2"
$ns_ at 165.102190609063 "$god_ set-dist 13 27 1"
$ns_ at 165.102190609063 "$god_ set-dist 17 27 2"
$ns_ at 165.102190609063 "$god_ set-dist 27 38 2"
$ns_ at 165.102190609063 "$god_ set-dist 27 39 2"
$ns_ at 165.102190609063 "$god_ set-dist 27 44 2"
$ns_ at 165.144724119759 "$god_ set-dist 3 36 2"
$ns_ at 165.144724119759 "$god_ set-dist 6 36 1"
$ns_ at 165.240687548817 "$god_ set-dist 17 18 2"
$ns_ at 165.240687548817 "$god_ set-dist 17 21 3"
$ns_ at 165.240687548817 "$god_ set-dist 17 24 3"
$ns_ at 165.240687548817 "$god_ set-dist 17 47 3"
$ns_ at 165.250617152682 "$node_(23) setdest 175.836064886279 524.507198451901 0.000000000000"
$ns_ at 165.490062577215 "$god_ set-dist 9 49 2"
$ns_ at 165.490062577215 "$god_ set-dist 37 49 3"
$ns_ at 165.493711813876 "$god_ set-dist 9 42 2"
$ns_ at 165.493711813876 "$god_ set-dist 37 42 3"
$ns_ at 165.549014859111 "$god_ set-dist 21 43 2"
$ns_ at 165.549014859111 "$god_ set-dist 24 43 2"
$ns_ at 165.549014859111 "$god_ set-dist 43 45 1"
$ns_ at 165.718929124834 "$god_ set-dist 14 21 3"
$ns_ at 165.718929124834 "$god_ set-dist 18 21 2"
$ns_ at 165.999498933156 "$god_ set-dist 14 37 2"
$ns_ at 165.999498933156 "$god_ set-dist 16 37 1"
$ns_ at 165.999498933156 "$god_ set-dist 29 37 2"
$ns_ at 165.999498933156 "$god_ set-dist 37 42 2"
$ns_ at 165.999498933156 "$god_ set-dist 37 49 2"
$ns_ at 166.001318344062 "$god_ set-dist 11 48 2"
$ns_ at 166.020105382366 "$god_ set-dist 18 20 2"
$ns_ at 166.020105382366 "$god_ set-dist 18 26 3"
$ns_ at 166.024571912889 "$god_ set-dist 26 31 2"
$ns_ at 166.047854729775 "$god_ set-dist 4 6 2"
$ns_ at 166.047854729775 "$god_ set-dist 4 9 1"
$ns_ at 166.047854729775 "$god_ set-dist 4 23 2"
$ns_ at 166.316312998329 "$god_ set-dist 13 39 2"
$ns_ at 166.316312998329 "$god_ set-dist 25 39 3"
$ns_ at 166.316312998329 "$god_ set-dist 27 39 3"
$ns_ at 166.344911817644 "$god_ set-dist 4 6 3"
$ns_ at 166.344911817644 "$god_ set-dist 6 9 2"
$ns_ at 166.360250336237 "$god_ set-dist 1 43 1"
$ns_ at 166.525805969761 "$god_ set-dist 13 38 2"
$ns_ at 166.525805969761 "$god_ set-dist 25 38 3"
$ns_ at 166.525805969761 "$god_ set-dist 27 38 3"
$ns_ at 166.600778616460 "$god_ set-dist 14 18 2"
$ns_ at 166.600778616460 "$god_ set-dist 14 24 3"
$ns_ at 166.629475852014 "$god_ set-dist 34 39 2"
$ns_ at 166.636077985329 "$god_ set-dist 11 44 3"
$ns_ at 166.636077985329 "$god_ set-dist 13 44 2"
$ns_ at 166.636077985329 "$god_ set-dist 25 44 3"
$ns_ at 166.636077985329 "$god_ set-dist 27 44 3"
$ns_ at 166.636077985329 "$god_ set-dist 44 45 3"
$ns_ at 166.738512767730 "$god_ set-dist 1 39 3"
$ns_ at 166.738512767730 "$god_ set-dist 2 39 2"
$ns_ at 166.738512767730 "$god_ set-dist 11 39 3"
$ns_ at 166.738512767730 "$god_ set-dist 33 39 3"
$ns_ at 166.738512767730 "$god_ set-dist 39 43 3"
$ns_ at 166.738512767730 "$god_ set-dist 39 48 4"
$ns_ at 166.894480167318 "$god_ set-dist 13 23 1"
$ns_ at 166.894480167318 "$god_ set-dist 23 45 2"
$ns_ at 166.927436216426 "$god_ set-dist 21 38 2"
$ns_ at 167.182688993275 "$god_ set-dist 18 34 2"
$ns_ at 167.295810486420 "$god_ set-dist 3 21 4"
$ns_ at 167.295810486420 "$god_ set-dist 6 21 3"
$ns_ at 167.295810486420 "$god_ set-dist 21 34 3"
$ns_ at 167.295810486420 "$god_ set-dist 21 36 2"
$ns_ at 167.482881436690 "$god_ set-dist 3 18 3"
$ns_ at 167.482881436690 "$god_ set-dist 6 18 2"
$ns_ at 167.517392442505 "$god_ set-dist 18 45 2"
$ns_ at 167.597138842566 "$node_(21) setdest 642.940767060891 62.031045712637 0.000000000000"
$ns_ at 167.710598254892 "$god_ set-dist 13 18 2"
$ns_ at 167.710598254892 "$god_ set-dist 18 25 3"
$ns_ at 167.710598254892 "$god_ set-dist 18 27 3"
$ns_ at 167.746169593476 "$god_ set-dist 13 22 2"
$ns_ at 167.790161451589 "$god_ set-dist 5 13 2"
$ns_ at 167.790161451589 "$god_ set-dist 5 25 3"
$ns_ at 167.790161451589 "$god_ set-dist 5 27 3"
$ns_ at 167.898493354897 "$god_ set-dist 14 24 2"
$ns_ at 167.898493354897 "$god_ set-dist 14 36 1"
$ns_ at 167.940212649342 "$god_ set-dist 1 30 2"
$ns_ at 167.940212649342 "$god_ set-dist 1 32 4"
$ns_ at 167.940212649342 "$god_ set-dist 1 40 3"
$ns_ at 168.116659917465 "$god_ set-dist 14 16 2"
$ns_ at 168.116659917465 "$god_ set-dist 14 26 3"
$ns_ at 168.116659917465 "$god_ set-dist 14 37 3"
$ns_ at 168.144010602943 "$god_ set-dist 26 46 2"
$ns_ at 168.238051670411 "$god_ set-dist 19 39 2"
$ns_ at 168.238051670411 "$god_ set-dist 35 39 3"
$ns_ at 168.238051670411 "$god_ set-dist 39 46 3"
$ns_ at 168.843205989096 "$god_ set-dist 13 21 3"
$ns_ at 168.843205989096 "$god_ set-dist 13 45 2"
$ns_ at 168.843205989096 "$god_ set-dist 17 45 3"
$ns_ at 168.843205989096 "$god_ set-dist 23 45 3"
$ns_ at 168.843205989096 "$god_ set-dist 29 45 3"
$ns_ at 168.843205989096 "$god_ set-dist 42 45 3"
$ns_ at 168.927173477134 "$god_ set-dist 3 43 3"
$ns_ at 168.927173477134 "$god_ set-dist 3 48 4"
$ns_ at 168.927173477134 "$god_ set-dist 10 43 2"
$ns_ at 168.927173477134 "$god_ set-dist 10 48 3"
$ns_ at 169.064060660257 "$god_ set-dist 11 13 2"
$ns_ at 169.064060660257 "$god_ set-dist 11 17 3"
$ns_ at 169.276788360037 "$god_ set-dist 23 39 3"
$ns_ at 169.276788360037 "$god_ set-dist 39 42 2"
$ns_ at 169.401779694744 "$node_(39) setdest 184.582731382272 64.869192140827 0.000000000000"
$ns_ at 169.494453308972 "$god_ set-dist 18 19 2"
$ns_ at 169.494453308972 "$god_ set-dist 18 23 3"
$ns_ at 169.494453308972 "$god_ set-dist 18 35 3"
$ns_ at 169.494453308972 "$god_ set-dist 18 46 3"
$ns_ at 169.538558857099 "$god_ set-dist 0 37 3"
$ns_ at 169.538558857099 "$god_ set-dist 35 37 2"
$ns_ at 169.954048984435 "$god_ set-dist 13 17 2"
$ns_ at 169.954048984435 "$god_ set-dist 17 25 3"
$ns_ at 169.954048984435 "$god_ set-dist 17 27 3"
$ns_ at 170.096270894257 "$node_(18) setdest 383.766074563224 67.548245810912 0.000000000000"
$ns_ at 170.266535079641 "$god_ set-dist 2 43 2"
$ns_ at 170.266535079641 "$god_ set-dist 2 48 3"
$ns_ at 170.266535079641 "$god_ set-dist 18 43 3"
$ns_ at 170.266535079641 "$god_ set-dist 38 43 3"
$ns_ at 170.509344236499 "$god_ set-dist 8 9 2"
$ns_ at 170.509344236499 "$god_ set-dist 9 39 3"
$ns_ at 170.524551599547 "$god_ set-dist 11 16 2"
$ns_ at 170.524551599547 "$god_ set-dist 11 29 3"
$ns_ at 170.524551599547 "$god_ set-dist 11 42 3"
$ns_ at 170.545818674249 "$god_ set-dist 17 24 2"
$ns_ at 170.545818674249 "$god_ set-dist 17 36 1"
$ns_ at 170.545818674249 "$god_ set-dist 17 45 2"
$ns_ at 170.545818674249 "$god_ set-dist 17 47 2"
$ns_ at 170.641979528106 "$god_ set-dist 5 43 3"
$ns_ at 170.641979528106 "$god_ set-dist 5 48 4"
$ns_ at 170.641979528106 "$god_ set-dist 17 43 3"
$ns_ at 170.641979528106 "$god_ set-dist 17 48 4"
$ns_ at 170.641979528106 "$god_ set-dist 34 43 2"
$ns_ at 170.641979528106 "$god_ set-dist 34 48 3"
$ns_ at 170.641979528106 "$god_ set-dist 43 44 3"
$ns_ at 170.641979528106 "$god_ set-dist 44 48 4"
$ns_ at 170.758319898857 "$node_(4) setdest 640.215368067100 353.739186245425 0.000000000000"
$ns_ at 170.769252854957 "$god_ set-dist 4 23 3"
$ns_ at 170.769252854957 "$god_ set-dist 9 23 2"
$ns_ at 170.769252854957 "$god_ set-dist 11 23 3"
$ns_ at 170.805493718089 "$god_ set-dist 31 43 2"
$ns_ at 170.911626441126 "$god_ set-dist 12 13 2"
$ns_ at 170.911626441126 "$god_ set-dist 12 25 3"
$ns_ at 170.911626441126 "$god_ set-dist 12 27 3"
$ns_ at 170.911626441126 "$god_ set-dist 12 43 3"
$ns_ at 170.911626441126 "$god_ set-dist 12 48 4"
$ns_ at 171.089590544426 "$god_ set-dist 16 24 2"
$ns_ at 171.089590544426 "$god_ set-dist 16 36 1"
$ns_ at 171.089590544426 "$god_ set-dist 31 36 2"
$ns_ at 171.144104763545 "$god_ set-dist 4 23 2"
$ns_ at 171.144104763545 "$god_ set-dist 11 23 2"
$ns_ at 171.144104763545 "$god_ set-dist 23 30 1"
$ns_ at 171.144104763545 "$god_ set-dist 23 45 2"
$ns_ at 171.539787219108 "$god_ set-dist 30 36 1"
$ns_ at 171.548690989579 "$god_ set-dist 13 31 1"
$ns_ at 171.568492780151 "$god_ set-dist 19 38 2"
$ns_ at 171.568492780151 "$god_ set-dist 23 38 3"
$ns_ at 171.568492780151 "$god_ set-dist 35 38 3"
$ns_ at 171.568492780151 "$god_ set-dist 38 46 3"
$ns_ at 171.737245202863 "$god_ set-dist 9 32 3"
$ns_ at 171.737245202863 "$god_ set-dist 9 40 2"
$ns_ at 171.769505769680 "$god_ set-dist 19 23 2"
$ns_ at 171.769505769680 "$god_ set-dist 22 23 3"
$ns_ at 171.890273289743 "$god_ set-dist 5 25 2"
$ns_ at 171.890273289743 "$god_ set-dist 5 48 3"
$ns_ at 171.890273289743 "$god_ set-dist 12 25 2"
$ns_ at 171.890273289743 "$god_ set-dist 12 48 3"
$ns_ at 171.890273289743 "$god_ set-dist 17 25 2"
$ns_ at 171.890273289743 "$god_ set-dist 17 48 3"
$ns_ at 171.890273289743 "$god_ set-dist 19 25 1"
$ns_ at 171.890273289743 "$god_ set-dist 19 48 2"
$ns_ at 171.890273289743 "$god_ set-dist 25 44 2"
$ns_ at 171.890273289743 "$god_ set-dist 44 48 3"
$ns_ at 172.065638324085 "$node_(35) setdest 335.582617277089 504.313207985170 0.000000000000"
$ns_ at 172.302229016674 "$god_ set-dist 42 46 1"
$ns_ at 172.304692100784 "$god_ set-dist 4 23 3"
$ns_ at 172.304692100784 "$god_ set-dist 4 30 2"
$ns_ at 172.304692100784 "$god_ set-dist 4 32 4"
$ns_ at 172.304692100784 "$god_ set-dist 4 40 3"
$ns_ at 172.378190124040 "$node_(11) setdest 603.846879906523 334.007135693329 0.000000000000"
$ns_ at 172.382377116940 "$god_ set-dist 16 29 2"
$ns_ at 172.382377116940 "$god_ set-dist 26 29 3"
$ns_ at 172.382377116940 "$god_ set-dist 29 37 3"
$ns_ at 172.705354411105 "$god_ set-dist 0 24 3"
$ns_ at 172.705354411105 "$god_ set-dist 0 36 2"
$ns_ at 172.705354411105 "$god_ set-dist 7 24 2"
$ns_ at 172.705354411105 "$god_ set-dist 7 36 1"
$ns_ at 172.845138678671 "$god_ set-dist 5 27 2"
$ns_ at 172.845138678671 "$god_ set-dist 12 27 2"
$ns_ at 172.845138678671 "$god_ set-dist 17 27 2"
$ns_ at 172.845138678671 "$god_ set-dist 19 27 1"
$ns_ at 172.845138678671 "$god_ set-dist 27 44 2"
$ns_ at 173.046806782299 "$god_ set-dist 13 37 1"
$ns_ at 173.046806782299 "$god_ set-dist 14 37 2"
$ns_ at 173.046806782299 "$god_ set-dist 29 37 2"
$ns_ at 173.053247804725 "$god_ set-dist 2 48 2"
$ns_ at 173.053247804725 "$god_ set-dist 3 48 3"
$ns_ at 173.053247804725 "$god_ set-dist 9 48 1"
$ns_ at 173.053247804725 "$god_ set-dist 10 48 2"
$ns_ at 173.053247804725 "$god_ set-dist 34 48 2"
$ns_ at 173.278476213733 "$god_ set-dist 4 38 3"
$ns_ at 173.278476213733 "$god_ set-dist 37 38 3"
$ns_ at 173.278476213733 "$god_ set-dist 38 47 2"
$ns_ at 173.447402162072 "$god_ set-dist 19 45 1"
$ns_ at 173.447402162072 "$god_ set-dist 29 45 2"
$ns_ at 173.447402162072 "$god_ set-dist 42 45 2"
$ns_ at 173.447402162072 "$god_ set-dist 44 45 2"
$ns_ at 173.592435822496 "$god_ set-dist 6 30 1"
$ns_ at 173.724126710441 "$god_ set-dist 13 14 2"
$ns_ at 173.724126710441 "$god_ set-dist 14 37 3"
$ns_ at 173.915683536729 "$god_ set-dist 18 43 2"
$ns_ at 173.915683536729 "$god_ set-dist 43 47 1"
$ns_ at 173.956714273129 "$god_ set-dist 11 16 1"
$ns_ at 173.956714273129 "$god_ set-dist 11 42 2"
$ns_ at 174.084233034297 "$god_ set-dist 30 49 1"
$ns_ at 174.432299996266 "$god_ set-dist 0 13 1"
$ns_ at 174.432299996266 "$god_ set-dist 0 37 2"
$ns_ at 174.477019451148 "$god_ set-dist 2 9 2"
$ns_ at 174.477019451148 "$god_ set-dist 2 48 3"
$ns_ at 174.477019451148 "$god_ set-dist 9 18 3"
$ns_ at 174.477019451148 "$god_ set-dist 9 28 3"
$ns_ at 174.477019451148 "$god_ set-dist 9 38 3"
$ns_ at 174.477019451148 "$god_ set-dist 38 48 4"
$ns_ at 174.643970781607 "$god_ set-dist 7 43 2"
$ns_ at 174.643970781607 "$god_ set-dist 14 43 3"
$ns_ at 174.659423612245 "$god_ set-dist 33 43 1"
$ns_ at 174.910391063829 "$god_ set-dist 30 42 1"
$ns_ at 174.979948945047 "$god_ set-dist 43 46 2"
$ns_ at 175.029584919780 "$god_ set-dist 19 44 2"
$ns_ at 175.029584919780 "$god_ set-dist 25 44 3"
$ns_ at 175.029584919780 "$god_ set-dist 27 44 3"
$ns_ at 175.029584919780 "$god_ set-dist 44 45 3"
$ns_ at 175.091538516929 "$node_(37) setdest 196.577002617534 307.741010529019 8.684787784339"
$ns_ at 175.319769868457 "$god_ set-dist 16 21 2"
$ns_ at 175.319769868457 "$god_ set-dist 16 45 1"
$ns_ at 175.340622850845 "$god_ set-dist 13 24 3"
$ns_ at 175.340622850845 "$god_ set-dist 13 36 2"
$ns_ at 175.538617840991 "$god_ set-dist 10 24 2"
$ns_ at 175.538617840991 "$god_ set-dist 10 36 1"
$ns_ at 175.718143114087 "$god_ set-dist 5 32 2"
$ns_ at 175.718143114087 "$god_ set-dist 12 32 2"
$ns_ at 175.718143114087 "$god_ set-dist 28 32 3"
$ns_ at 175.718143114087 "$god_ set-dist 32 42 1"
$ns_ at 175.845428176062 "$god_ set-dist 13 49 2"
$ns_ at 176.073643891287 "$god_ set-dist 35 37 1"
$ns_ at 176.284382795044 "$god_ set-dist 0 26 3"
$ns_ at 176.284382795044 "$god_ set-dist 26 35 2"
$ns_ at 176.327868872240 "$god_ set-dist 26 30 2"
$ns_ at 177.037935424812 "$god_ set-dist 3 9 3"
$ns_ at 177.037935424812 "$god_ set-dist 3 48 4"
$ns_ at 177.037935424812 "$god_ set-dist 9 10 2"
$ns_ at 177.037935424812 "$god_ set-dist 10 48 3"
$ns_ at 177.064050609619 "$god_ set-dist 5 37 2"
$ns_ at 177.064050609619 "$god_ set-dist 12 37 2"
$ns_ at 177.064050609619 "$god_ set-dist 14 37 2"
$ns_ at 177.064050609619 "$god_ set-dist 17 37 2"
$ns_ at 177.064050609619 "$god_ set-dist 19 37 1"
$ns_ at 177.091193990620 "$god_ set-dist 5 19 2"
$ns_ at 177.091193990620 "$god_ set-dist 5 25 3"
$ns_ at 177.091193990620 "$god_ set-dist 5 27 3"
$ns_ at 177.091193990620 "$god_ set-dist 5 37 3"
$ns_ at 177.236158952384 "$god_ set-dist 5 9 3"
$ns_ at 177.236158952384 "$god_ set-dist 5 48 4"
$ns_ at 177.236158952384 "$god_ set-dist 9 34 2"
$ns_ at 177.236158952384 "$god_ set-dist 9 44 3"
$ns_ at 177.236158952384 "$god_ set-dist 34 48 3"
$ns_ at 177.236158952384 "$god_ set-dist 44 48 4"
$ns_ at 177.537471398347 "$node_(43) setdest 579.881704469536 466.936288623314 0.000000000000"
$ns_ at 177.756455940909 "$god_ set-dist 6 13 2"
$ns_ at 177.867855001760 "$god_ set-dist 35 42 1"
$ns_ at 177.871250693966 "$node_(41) setdest 366.317062059871 580.496895851883 2.694276534116"
$ns_ at 178.038335624971 "$god_ set-dist 19 47 1"
$ns_ at 178.038335624971 "$god_ set-dist 29 47 2"
$ns_ at 178.038335624971 "$god_ set-dist 32 47 3"
$ns_ at 178.038335624971 "$god_ set-dist 40 47 2"
$ns_ at 178.038335624971 "$god_ set-dist 42 47 2"
$ns_ at 178.042320133719 "$god_ set-dist 0 24 4"
$ns_ at 178.042320133719 "$god_ set-dist 3 24 4"
$ns_ at 178.042320133719 "$god_ set-dist 6 24 3"
$ns_ at 178.042320133719 "$god_ set-dist 7 24 3"
$ns_ at 178.042320133719 "$god_ set-dist 10 24 3"
$ns_ at 178.042320133719 "$god_ set-dist 14 24 3"
$ns_ at 178.042320133719 "$god_ set-dist 17 24 3"
$ns_ at 178.042320133719 "$god_ set-dist 24 34 3"
$ns_ at 178.042320133719 "$god_ set-dist 24 36 2"
$ns_ at 178.100067365279 "$god_ set-dist 2 37 1"
$ns_ at 178.100067365279 "$god_ set-dist 2 48 2"
$ns_ at 178.100067365279 "$god_ set-dist 5 37 2"
$ns_ at 178.100067365279 "$god_ set-dist 5 48 3"
$ns_ at 178.100067365279 "$god_ set-dist 37 38 2"
$ns_ at 178.100067365279 "$god_ set-dist 38 48 3"
$ns_ at 178.207356074442 "$god_ set-dist 11 17 2"
$ns_ at 178.207356074442 "$god_ set-dist 11 19 1"
$ns_ at 178.207356074442 "$god_ set-dist 11 29 2"
$ns_ at 178.316320627746 "$god_ set-dist 4 18 3"
$ns_ at 178.316320627746 "$god_ set-dist 18 43 3"
$ns_ at 178.316320627746 "$god_ set-dist 18 47 2"
$ns_ at 178.786521478316 "$god_ set-dist 16 49 2"
$ns_ at 178.786521478316 "$god_ set-dist 26 49 3"
$ns_ at 178.815265679538 "$god_ set-dist 13 29 2"
$ns_ at 178.815265679538 "$god_ set-dist 29 43 3"
$ns_ at 178.907102168049 "$god_ set-dist 41 46 1"
$ns_ at 179.080409575791 "$god_ set-dist 7 37 1"
$ns_ at 179.285250893207 "$god_ set-dist 36 44 1"
$ns_ at 179.285250893207 "$god_ set-dist 44 45 2"
$ns_ at 179.285250893207 "$god_ set-dist 44 47 2"
$ns_ at 179.414578517375 "$god_ set-dist 32 36 2"
$ns_ at 179.414578517375 "$god_ set-dist 36 42 1"
$ns_ at 179.526683183747 "$god_ set-dist 8 13 2"
$ns_ at 179.526683183747 "$god_ set-dist 13 39 3"
$ns_ at 179.727844749454 "$god_ set-dist 11 29 3"
$ns_ at 179.727844749454 "$god_ set-dist 19 29 2"
$ns_ at 179.727844749454 "$god_ set-dist 29 45 3"
$ns_ at 179.727844749454 "$god_ set-dist 29 47 3"
$ns_ at 179.839301220985 "$god_ set-dist 12 43 2"
$ns_ at 179.839301220985 "$god_ set-dist 14 43 2"
$ns_ at 179.839301220985 "$god_ set-dist 17 43 2"
$ns_ at 179.839301220985 "$god_ set-dist 19 43 1"
$ns_ at 180.025608370501 "$god_ set-dist 2 13 2"
$ns_ at 180.025608370501 "$god_ set-dist 13 18 3"
$ns_ at 180.025608370501 "$god_ set-dist 13 28 3"
$ns_ at 180.025608370501 "$god_ set-dist 13 38 3"
$ns_ at 180.050568270383 "$god_ set-dist 16 42 2"
$ns_ at 180.050568270383 "$god_ set-dist 26 42 3"
$ns_ at 180.178868746073 "$god_ set-dist 11 29 2"
$ns_ at 180.178868746073 "$god_ set-dist 29 30 1"
$ns_ at 180.178868746073 "$god_ set-dist 29 43 2"
$ns_ at 180.178868746073 "$god_ set-dist 29 45 2"
$ns_ at 180.230576448625 "$god_ set-dist 9 17 3"
$ns_ at 180.230576448625 "$god_ set-dist 11 17 3"
$ns_ at 180.230576448625 "$god_ set-dist 17 19 2"
$ns_ at 180.230576448625 "$god_ set-dist 17 25 3"
$ns_ at 180.230576448625 "$god_ set-dist 17 27 3"
$ns_ at 180.230576448625 "$god_ set-dist 17 37 3"
$ns_ at 180.230576448625 "$god_ set-dist 17 43 3"
$ns_ at 180.230576448625 "$god_ set-dist 17 48 4"
$ns_ at 180.429599199729 "$god_ set-dist 6 16 2"
$ns_ at 180.429599199729 "$god_ set-dist 6 26 3"
$ns_ at 180.431002490507 "$god_ set-dist 37 46 1"
$ns_ at 180.514789988780 "$god_ set-dist 13 42 2"
$ns_ at 180.915940344722 "$god_ set-dist 11 29 3"
$ns_ at 180.915940344722 "$god_ set-dist 11 30 2"
$ns_ at 181.568044604781 "$god_ set-dist 7 9 2"
$ns_ at 181.954355707939 "$god_ set-dist 17 37 2"
$ns_ at 181.954355707939 "$god_ set-dist 17 48 3"
$ns_ at 181.954355707939 "$god_ set-dist 34 37 1"
$ns_ at 181.954355707939 "$god_ set-dist 34 48 2"
$ns_ at 181.954355707939 "$god_ set-dist 37 44 2"
$ns_ at 181.954355707939 "$god_ set-dist 44 48 3"
$ns_ at 182.078395982211 "$node_(38) setdest 362.795069392626 61.626398490810 0.000000000000"
$ns_ at 182.366325347281 "$god_ set-dist 21 30 3"
$ns_ at 182.366325347281 "$god_ set-dist 24 30 3"
$ns_ at 182.366325347281 "$god_ set-dist 29 45 3"
$ns_ at 182.366325347281 "$god_ set-dist 30 45 2"
$ns_ at 182.370273096537 "$god_ set-dist 9 12 3"
$ns_ at 182.370273096537 "$god_ set-dist 9 14 3"
$ns_ at 182.370273096537 "$god_ set-dist 9 19 2"
$ns_ at 182.370273096537 "$god_ set-dist 9 22 3"
$ns_ at 182.420318010613 "$god_ set-dist 20 26 2"
$ns_ at 182.461011996788 "$node_(12) setdest 598.976280781689 388.897352172213 16.982251636756"
$ns_ at 182.532533697925 "$node_(27) setdest 637.347845774692 609.824215819462 19.989293738681"
$ns_ at 182.619300863165 "$god_ set-dist 4 16 1"
$ns_ at 182.619300863165 "$god_ set-dist 4 23 2"
$ns_ at 182.619300863165 "$god_ set-dist 4 32 3"
$ns_ at 182.619300863165 "$god_ set-dist 4 40 2"
$ns_ at 182.738868071745 "$god_ set-dist 3 23 2"
$ns_ at 182.784901013145 "$god_ set-dist 9 14 2"
$ns_ at 182.784901013145 "$god_ set-dist 14 30 1"
$ns_ at 182.848051550764 "$god_ set-dist 30 31 2"
$ns_ at 182.901224269361 "$god_ set-dist 14 19 2"
$ns_ at 182.999090130373 "$god_ set-dist 27 31 2"
$ns_ at 183.252510532384 "$god_ set-dist 9 12 2"
$ns_ at 183.252510532384 "$god_ set-dist 12 30 1"
$ns_ at 183.343043910590 "$god_ set-dist 6 9 3"
$ns_ at 183.343043910590 "$god_ set-dist 9 12 3"
$ns_ at 183.343043910590 "$god_ set-dist 9 14 3"
$ns_ at 183.343043910590 "$god_ set-dist 9 30 2"
$ns_ at 183.343043910590 "$god_ set-dist 9 49 3"
$ns_ at 183.578354927059 "$god_ set-dist 13 22 3"
$ns_ at 183.578354927059 "$god_ set-dist 19 22 2"
$ns_ at 183.578354927059 "$god_ set-dist 22 35 3"
$ns_ at 183.578354927059 "$god_ set-dist 22 46 3"
$ns_ at 183.632906654741 "$god_ set-dist 4 23 3"
$ns_ at 183.632906654741 "$god_ set-dist 11 23 3"
$ns_ at 183.632906654741 "$god_ set-dist 16 23 2"
$ns_ at 183.632906654741 "$god_ set-dist 21 23 4"
$ns_ at 183.632906654741 "$god_ set-dist 23 24 4"
$ns_ at 183.632906654741 "$god_ set-dist 23 26 3"
$ns_ at 183.632906654741 "$god_ set-dist 23 45 3"
$ns_ at 183.638292664703 "$node_(26) setdest 600.255464567601 571.067041578224 0.000000000000"
$ns_ at 183.984615614478 "$node_(8) setdest 91.022223870415 394.001878402753 9.763628656705"
$ns_ at 184.006116994076 "$god_ set-dist 13 15 2"
$ns_ at 184.177205858656 "$god_ set-dist 7 27 2"
$ns_ at 184.195979144440 "$god_ set-dist 1 19 1"
$ns_ at 184.195979144440 "$god_ set-dist 1 32 3"
$ns_ at 184.195979144440 "$god_ set-dist 1 40 2"
$ns_ at 184.195979144440 "$god_ set-dist 1 42 2"
$ns_ at 184.432521318856 "$god_ set-dist 0 12 2"
$ns_ at 184.432521318856 "$god_ set-dist 10 12 1"
$ns_ at 184.432521318856 "$god_ set-dist 12 31 2"
$ns_ at 184.440711466024 "$god_ set-dist 22 27 3"
$ns_ at 184.440711466024 "$god_ set-dist 24 27 3"
$ns_ at 184.440711466024 "$god_ set-dist 27 28 3"
$ns_ at 184.440711466024 "$god_ set-dist 27 45 2"
$ns_ at 184.520787959309 "$god_ set-dist 0 26 2"
$ns_ at 184.520787959309 "$god_ set-dist 13 26 1"
$ns_ at 184.520787959309 "$god_ set-dist 23 26 2"
$ns_ at 184.754853223174 "$god_ set-dist 7 12 1"
$ns_ at 184.772829901389 "$god_ set-dist 4 12 2"
$ns_ at 184.772829901389 "$god_ set-dist 9 12 2"
$ns_ at 184.772829901389 "$god_ set-dist 12 20 1"
$ns_ at 184.826182342661 "$god_ set-dist 0 24 3"
$ns_ at 184.826182342661 "$god_ set-dist 2 24 1"
$ns_ at 184.826182342661 "$god_ set-dist 3 24 3"
$ns_ at 184.826182342661 "$god_ set-dist 6 24 2"
$ns_ at 184.826182342661 "$god_ set-dist 7 24 2"
$ns_ at 184.826182342661 "$god_ set-dist 10 24 2"
$ns_ at 184.826182342661 "$god_ set-dist 14 24 2"
$ns_ at 184.826182342661 "$god_ set-dist 23 24 3"
$ns_ at 184.826182342661 "$god_ set-dist 24 30 2"
$ns_ at 184.826182342661 "$god_ set-dist 24 34 2"
$ns_ at 184.851473636645 "$god_ set-dist 4 6 2"
$ns_ at 184.851473636645 "$god_ set-dist 4 19 1"
$ns_ at 184.851473636645 "$god_ set-dist 4 42 2"
$ns_ at 184.851473636645 "$god_ set-dist 4 49 2"
$ns_ at 184.954124098244 "$god_ set-dist 14 43 3"
$ns_ at 184.954124098244 "$god_ set-dist 29 43 3"
$ns_ at 184.954124098244 "$god_ set-dist 30 43 2"
$ns_ at 185.009352472961 "$god_ set-dist 9 29 3"
$ns_ at 185.009352472961 "$god_ set-dist 9 46 2"
$ns_ at 185.151776962484 "$god_ set-dist 14 27 3"
$ns_ at 185.151776962484 "$god_ set-dist 27 30 2"
$ns_ at 185.455310233510 "$god_ set-dist 28 40 2"
$ns_ at 185.455310233510 "$god_ set-dist 36 40 1"
$ns_ at 185.522784361387 "$god_ set-dist 27 29 3"
$ns_ at 185.522784361387 "$god_ set-dist 27 46 2"
$ns_ at 185.716723560505 "$god_ set-dist 3 37 2"
$ns_ at 185.716723560505 "$god_ set-dist 3 48 3"
$ns_ at 185.716723560505 "$god_ set-dist 10 37 1"
$ns_ at 185.716723560505 "$god_ set-dist 10 48 2"
$ns_ at 185.902841192229 "$god_ set-dist 17 25 2"
$ns_ at 185.902841192229 "$god_ set-dist 17 30 1"
$ns_ at 185.941326121127 "$god_ set-dist 36 37 1"
$ns_ at 185.941326121127 "$god_ set-dist 36 48 2"
$ns_ at 185.941326121127 "$god_ set-dist 37 39 2"
$ns_ at 185.941326121127 "$god_ set-dist 39 48 3"
$ns_ at 185.968020438676 "$god_ set-dist 12 15 1"
$ns_ at 185.968020438676 "$god_ set-dist 12 26 2"
$ns_ at 186.028362344457 "$god_ set-dist 8 41 2"
$ns_ at 186.051133171472 "$god_ set-dist 1 16 1"
$ns_ at 186.064914121154 "$god_ set-dist 9 31 2"
$ns_ at 186.065275690585 "$god_ set-dist 0 5 2"
$ns_ at 186.065275690585 "$god_ set-dist 0 42 1"
$ns_ at 186.354749619549 "$god_ set-dist 12 47 1"
$ns_ at 186.427237488327 "$god_ set-dist 9 11 2"
$ns_ at 186.468625509745 "$god_ set-dist 1 27 2"
$ns_ at 186.468625509745 "$god_ set-dist 21 27 3"
$ns_ at 186.599499016441 "$god_ set-dist 12 32 3"
$ns_ at 186.599499016441 "$god_ set-dist 12 42 2"
$ns_ at 186.608602304888 "$god_ set-dist 12 16 1"
$ns_ at 186.635146363702 "$god_ set-dist 12 45 1"
$ns_ at 186.669901445919 "$god_ set-dist 6 27 3"
$ns_ at 186.669901445919 "$god_ set-dist 19 27 2"
$ns_ at 186.669901445919 "$god_ set-dist 27 49 3"
$ns_ at 186.696498154996 "$god_ set-dist 12 24 1"
$ns_ at 186.696498154996 "$god_ set-dist 17 24 2"
$ns_ at 186.696498154996 "$god_ set-dist 24 44 2"
$ns_ at 186.708846362867 "$god_ set-dist 3 41 2"
$ns_ at 186.708846362867 "$god_ set-dist 10 41 1"
$ns_ at 186.748605973384 "$god_ set-dist 16 47 1"
$ns_ at 186.748605973384 "$god_ set-dist 31 47 2"
$ns_ at 186.883919417335 "$god_ set-dist 2 48 3"
$ns_ at 186.883919417335 "$god_ set-dist 3 48 4"
$ns_ at 186.883919417335 "$god_ set-dist 5 48 4"
$ns_ at 186.883919417335 "$god_ set-dist 10 48 3"
$ns_ at 186.883919417335 "$god_ set-dist 18 48 4"
$ns_ at 186.883919417335 "$god_ set-dist 34 48 3"
$ns_ at 186.883919417335 "$god_ set-dist 36 48 3"
$ns_ at 186.883919417335 "$god_ set-dist 37 48 2"
$ns_ at 186.883919417335 "$god_ set-dist 38 48 4"
$ns_ at 186.883919417335 "$god_ set-dist 39 48 4"
$ns_ at 186.883919417335 "$god_ set-dist 44 48 4"
$ns_ at 186.921298894059 "$god_ set-dist 9 20 2"
$ns_ at 187.045174548693 "$god_ set-dist 13 43 2"
$ns_ at 187.102620308503 "$god_ set-dist 13 20 2"
$ns_ at 187.147438029525 "$god_ set-dist 1 42 3"
$ns_ at 187.147438029525 "$god_ set-dist 4 42 3"
$ns_ at 187.147438029525 "$god_ set-dist 11 42 3"
$ns_ at 187.147438029525 "$god_ set-dist 19 42 2"
$ns_ at 187.170679467032 "$god_ set-dist 28 32 4"
$ns_ at 187.170679467032 "$god_ set-dist 28 36 2"
$ns_ at 187.170679467032 "$god_ set-dist 28 40 3"
$ns_ at 187.170679467032 "$god_ set-dist 28 42 3"
$ns_ at 187.243643199187 "$god_ set-dist 9 15 2"
$ns_ at 187.277979094413 "$god_ set-dist 27 35 2"
$ns_ at 187.277979094413 "$god_ set-dist 27 42 3"
$ns_ at 187.317951437538 "$god_ set-dist 9 35 2"
$ns_ at 187.317951437538 "$god_ set-dist 9 42 3"
$ns_ at 187.691636883459 "$god_ set-dist 7 17 1"
$ns_ at 187.777534936590 "$god_ set-dist 5 13 3"
$ns_ at 187.777534936590 "$god_ set-dist 13 34 2"
$ns_ at 187.777782502007 "$god_ set-dist 12 41 1"
$ns_ at 187.827883248472 "$god_ set-dist 1 14 3"
$ns_ at 187.827883248472 "$god_ set-dist 2 14 2"
$ns_ at 187.827883248472 "$god_ set-dist 11 14 3"
$ns_ at 187.827883248472 "$god_ set-dist 14 33 3"
$ns_ at 188.119043992532 "$god_ set-dist 12 37 1"
$ns_ at 188.329826226736 "$god_ set-dist 8 35 1"
$ns_ at 188.329826226736 "$god_ set-dist 18 35 2"
$ns_ at 188.329826226736 "$god_ set-dist 22 35 2"
$ns_ at 188.329826226736 "$god_ set-dist 35 38 2"
$ns_ at 188.329826226736 "$god_ set-dist 35 39 2"
$ns_ at 188.452599275572 "$node_(33) setdest 370.863519564646 308.986654123111 8.954536505636"
$ns_ at 188.459546395138 "$god_ set-dist 20 27 2"
$ns_ at 188.651260501832 "$god_ set-dist 8 37 1"
$ns_ at 188.696370859876 "$god_ set-dist 3 10 2"
$ns_ at 188.696370859876 "$god_ set-dist 3 20 3"
$ns_ at 188.696370859876 "$god_ set-dist 3 31 3"
$ns_ at 188.696370859876 "$god_ set-dist 3 37 3"
$ns_ at 188.696370859876 "$god_ set-dist 3 41 3"
$ns_ at 188.706441316169 "$god_ set-dist 4 9 2"
$ns_ at 188.779065725771 "$god_ set-dist 12 44 2"
$ns_ at 188.779065725771 "$god_ set-dist 24 44 3"
$ns_ at 188.779065725771 "$god_ set-dist 28 44 3"
$ns_ at 188.900560096954 "$god_ set-dist 15 27 2"
$ns_ at 188.984727067460 "$god_ set-dist 0 27 3"
$ns_ at 188.984727067460 "$god_ set-dist 13 27 2"
$ns_ at 188.984727067460 "$god_ set-dist 23 27 3"
$ns_ at 189.084529373660 "$god_ set-dist 8 15 2"
$ns_ at 189.119260796691 "$god_ set-dist 28 33 1"
$ns_ at 189.160429025395 "$god_ set-dist 8 46 1"
$ns_ at 189.160429025395 "$god_ set-dist 18 46 2"
$ns_ at 189.160429025395 "$god_ set-dist 22 46 2"
$ns_ at 189.160429025395 "$god_ set-dist 38 46 2"
$ns_ at 189.160429025395 "$god_ set-dist 39 46 2"
$ns_ at 189.192841443230 "$god_ set-dist 3 13 3"
$ns_ at 189.192841443230 "$god_ set-dist 13 40 2"
$ns_ at 189.451437262093 "$god_ set-dist 3 27 4"
$ns_ at 189.451437262093 "$god_ set-dist 16 27 2"
$ns_ at 189.451437262093 "$god_ set-dist 27 32 4"
$ns_ at 189.451437262093 "$god_ set-dist 27 40 3"
$ns_ at 189.462925992408 "$god_ set-dist 11 27 2"
$ns_ at 189.466138436443 "$god_ set-dist 36 47 2"
$ns_ at 189.466138436443 "$god_ set-dist 42 47 3"
$ns_ at 189.466138436443 "$god_ set-dist 44 47 3"
$ns_ at 189.583423434247 "$god_ set-dist 3 9 4"
$ns_ at 189.583423434247 "$god_ set-dist 9 16 2"
$ns_ at 189.583423434247 "$god_ set-dist 9 40 3"
$ns_ at 189.584182429934 "$node_(49) setdest 170.066059917151 395.250107171485 13.373836810179"
$ns_ at 189.659994845530 "$god_ set-dist 13 41 2"
$ns_ at 189.938244325948 "$god_ set-dist 29 36 1"
$ns_ at 189.938244325948 "$god_ set-dist 29 45 2"
$ns_ at 190.148588814389 "$god_ set-dist 12 39 2"
$ns_ at 190.160791841531 "$god_ set-dist 4 6 3"
$ns_ at 190.160791841531 "$god_ set-dist 6 19 2"
$ns_ at 190.160791841531 "$god_ set-dist 6 43 3"
$ns_ at 190.171014218725 "$god_ set-dist 11 12 1"
$ns_ at 190.171014218725 "$god_ set-dist 11 14 2"
$ns_ at 190.171014218725 "$god_ set-dist 11 17 2"
$ns_ at 190.287519268166 "$node_(2) setdest 186.113171305400 328.683800449649 15.004714690377"
$ns_ at 190.293092393645 "$god_ set-dist 0 5 3"
$ns_ at 190.293092393645 "$god_ set-dist 5 32 3"
$ns_ at 190.293092393645 "$god_ set-dist 5 42 2"
$ns_ at 190.303754685641 "$god_ set-dist 1 17 2"
$ns_ at 190.303754685641 "$god_ set-dist 2 17 1"
$ns_ at 190.303754685641 "$god_ set-dist 17 33 2"
$ns_ at 190.348181403863 "$god_ set-dist 3 18 2"
$ns_ at 190.348181403863 "$god_ set-dist 3 21 3"
$ns_ at 190.348181403863 "$god_ set-dist 3 22 2"
$ns_ at 190.348181403863 "$god_ set-dist 3 38 2"
$ns_ at 190.348181403863 "$god_ set-dist 3 49 1"
$ns_ at 190.372488152653 "$god_ set-dist 19 33 1"
$ns_ at 190.372488152653 "$god_ set-dist 32 33 3"
$ns_ at 190.372488152653 "$god_ set-dist 33 40 2"
$ns_ at 190.381516732854 "$god_ set-dist 8 27 3"
$ns_ at 190.381516732854 "$god_ set-dist 27 37 2"
$ns_ at 190.404536961686 "$god_ set-dist 1 14 2"
$ns_ at 190.404536961686 "$god_ set-dist 2 14 1"
$ns_ at 190.404536961686 "$god_ set-dist 14 33 2"
$ns_ at 190.514424006913 "$god_ set-dist 12 33 1"
$ns_ at 190.536562442548 "$god_ set-dist 13 19 2"
$ns_ at 190.559900739283 "$god_ set-dist 13 30 2"
$ns_ at 190.565248248857 "$god_ set-dist 3 8 1"
$ns_ at 190.565248248857 "$god_ set-dist 3 9 3"
$ns_ at 190.565248248857 "$god_ set-dist 3 20 2"
$ns_ at 190.565248248857 "$god_ set-dist 3 37 2"
$ns_ at 190.644876427524 "$god_ set-dist 3 9 4"
$ns_ at 190.644876427524 "$god_ set-dist 8 9 3"
$ns_ at 190.644876427524 "$god_ set-dist 9 37 2"
$ns_ at 190.671654666755 "$god_ set-dist 29 45 3"
$ns_ at 190.671654666755 "$god_ set-dist 36 45 2"
$ns_ at 190.671654666755 "$god_ set-dist 42 45 3"
$ns_ at 190.671654666755 "$god_ set-dist 44 45 3"
$ns_ at 190.850927750403 "$god_ set-dist 4 27 2"
$ns_ at 190.851925257814 "$god_ set-dist 1 12 1"
$ns_ at 191.148468526226 "$god_ set-dist 2 24 2"
$ns_ at 191.159599996453 "$god_ set-dist 2 27 3"
$ns_ at 191.159599996453 "$god_ set-dist 5 27 4"
$ns_ at 191.159599996453 "$god_ set-dist 10 27 3"
$ns_ at 191.159599996453 "$god_ set-dist 12 27 3"
$ns_ at 191.159599996453 "$god_ set-dist 18 27 4"
$ns_ at 191.159599996453 "$god_ set-dist 27 34 3"
$ns_ at 191.159599996453 "$god_ set-dist 27 36 3"
$ns_ at 191.159599996453 "$god_ set-dist 27 38 4"
$ns_ at 191.159599996453 "$god_ set-dist 27 39 4"
$ns_ at 191.159599996453 "$god_ set-dist 27 41 2"
$ns_ at 191.159599996453 "$god_ set-dist 27 44 4"
$ns_ at 191.229796975672 "$god_ set-dist 0 9 3"
$ns_ at 191.229796975672 "$god_ set-dist 9 13 2"
$ns_ at 191.229796975672 "$god_ set-dist 9 23 3"
$ns_ at 191.229796975672 "$god_ set-dist 9 32 4"
$ns_ at 191.291549362570 "$node_(27) setdest 637.347845774691 609.824215819462 0.000000000000"
$ns_ at 191.601419814829 "$node_(0) setdest 156.213778178782 208.677144803769 7.871177233105"
$ns_ at 191.676983327057 "$god_ set-dist 10 13 2"
$ns_ at 191.676983327057 "$god_ set-dist 13 44 3"
$ns_ at 191.690570796392 "$god_ set-dist 8 18 2"
$ns_ at 191.690570796392 "$god_ set-dist 18 35 3"
$ns_ at 191.690570796392 "$god_ set-dist 18 46 3"
$ns_ at 191.872259539106 "$god_ set-dist 25 44 2"
$ns_ at 191.872259539106 "$god_ set-dist 27 44 3"
$ns_ at 191.872259539106 "$god_ set-dist 30 44 1"
$ns_ at 191.872259539106 "$god_ set-dist 44 48 3"
$ns_ at 191.966383709383 "$god_ set-dist 12 14 2"
$ns_ at 191.966383709383 "$god_ set-dist 14 24 3"
$ns_ at 191.979886294458 "$god_ set-dist 1 2 2"
$ns_ at 191.979886294458 "$god_ set-dist 1 14 3"
$ns_ at 192.033797075179 "$god_ set-dist 2 9 3"
$ns_ at 192.033797075179 "$god_ set-dist 5 9 4"
$ns_ at 192.033797075179 "$god_ set-dist 9 10 3"
$ns_ at 192.033797075179 "$god_ set-dist 9 12 3"
$ns_ at 192.033797075179 "$god_ set-dist 9 18 4"
$ns_ at 192.033797075179 "$god_ set-dist 9 34 3"
$ns_ at 192.033797075179 "$god_ set-dist 9 36 3"
$ns_ at 192.033797075179 "$god_ set-dist 9 38 4"
$ns_ at 192.033797075179 "$god_ set-dist 9 39 4"
$ns_ at 192.033797075179 "$god_ set-dist 9 41 2"
$ns_ at 192.061840125689 "$god_ set-dist 13 33 3"
$ns_ at 192.061840125689 "$god_ set-dist 13 37 2"
$ns_ at 192.083301017615 "$god_ set-dist 0 26 3"
$ns_ at 192.083301017615 "$god_ set-dist 13 26 2"
$ns_ at 192.083301017615 "$god_ set-dist 23 26 3"
$ns_ at 192.132182322592 "$god_ set-dist 19 32 3"
$ns_ at 192.132182322592 "$god_ set-dist 19 40 2"
$ns_ at 192.132182322592 "$god_ set-dist 32 33 4"
$ns_ at 192.132182322592 "$god_ set-dist 33 40 3"
$ns_ at 192.175732862516 "$god_ set-dist 22 33 1"
$ns_ at 192.175732862516 "$god_ set-dist 33 39 2"
$ns_ at 192.239029981105 "$god_ set-dist 1 17 3"
$ns_ at 192.239029981105 "$god_ set-dist 12 17 2"
$ns_ at 192.239029981105 "$god_ set-dist 17 24 3"
$ns_ at 192.283623031113 "$god_ set-dist 8 38 2"
$ns_ at 192.283623031113 "$god_ set-dist 35 38 3"
$ns_ at 192.283623031113 "$god_ set-dist 38 46 3"
$ns_ at 192.358178543832 "$god_ set-dist 1 32 4"
$ns_ at 192.358178543832 "$god_ set-dist 1 40 3"
$ns_ at 192.358178543832 "$god_ set-dist 4 32 4"
$ns_ at 192.358178543832 "$god_ set-dist 4 40 3"
$ns_ at 192.358178543832 "$god_ set-dist 11 32 4"
$ns_ at 192.358178543832 "$god_ set-dist 11 40 3"
$ns_ at 192.358178543832 "$god_ set-dist 16 32 3"
$ns_ at 192.358178543832 "$god_ set-dist 16 40 2"
$ns_ at 192.358178543832 "$god_ set-dist 26 32 4"
$ns_ at 192.358178543832 "$god_ set-dist 26 40 3"
$ns_ at 192.358178543832 "$god_ set-dist 32 45 4"
$ns_ at 192.358178543832 "$god_ set-dist 32 47 4"
$ns_ at 192.358178543832 "$god_ set-dist 40 45 3"
$ns_ at 192.358178543832 "$god_ set-dist 40 47 3"
$ns_ at 192.366594818221 "$god_ set-dist 2 35 1"
$ns_ at 192.366594818221 "$god_ set-dist 18 35 2"
$ns_ at 192.366594818221 "$god_ set-dist 28 35 2"
$ns_ at 192.366594818221 "$god_ set-dist 35 38 2"
$ns_ at 192.381148068010 "$god_ set-dist 2 32 2"
$ns_ at 192.381148068010 "$god_ set-dist 2 42 1"
$ns_ at 192.381148068010 "$god_ set-dist 11 32 3"
$ns_ at 192.381148068010 "$god_ set-dist 11 42 2"
$ns_ at 192.381148068010 "$god_ set-dist 28 32 3"
$ns_ at 192.381148068010 "$god_ set-dist 28 42 2"
$ns_ at 192.381148068010 "$god_ set-dist 32 33 3"
$ns_ at 192.381148068010 "$god_ set-dist 32 45 3"
$ns_ at 192.381148068010 "$god_ set-dist 32 47 3"
$ns_ at 192.381148068010 "$god_ set-dist 33 42 2"
$ns_ at 192.381148068010 "$god_ set-dist 42 45 2"
$ns_ at 192.381148068010 "$god_ set-dist 42 47 2"
$ns_ at 192.425170084942 "$god_ set-dist 13 33 2"
$ns_ at 192.425170084942 "$god_ set-dist 16 33 1"
$ns_ at 192.425170084942 "$god_ set-dist 31 33 2"
$ns_ at 192.435183421111 "$node_(1) setdest 298.176456988022 85.678812340180 6.469234331884"
$ns_ at 192.488435136295 "$god_ set-dist 8 23 1"
$ns_ at 192.488435136295 "$god_ set-dist 21 23 3"
$ns_ at 192.488435136295 "$god_ set-dist 22 23 2"
$ns_ at 192.488435136295 "$god_ set-dist 23 39 2"
$ns_ at 192.532241067775 "$god_ set-dist 2 40 1"
$ns_ at 192.532241067775 "$god_ set-dist 11 40 2"
$ns_ at 192.532241067775 "$god_ set-dist 28 40 2"
$ns_ at 192.532241067775 "$god_ set-dist 33 40 2"
$ns_ at 192.532241067775 "$god_ set-dist 40 45 2"
$ns_ at 192.532241067775 "$god_ set-dist 40 47 2"
$ns_ at 192.655643313116 "$god_ set-dist 4 5 2"
$ns_ at 192.655643313116 "$god_ set-dist 4 6 2"
$ns_ at 192.655643313116 "$god_ set-dist 4 12 1"
$ns_ at 192.655643313116 "$god_ set-dist 4 18 2"
$ns_ at 192.655643313116 "$god_ set-dist 4 38 2"
$ns_ at 192.655643313116 "$god_ set-dist 5 48 3"
$ns_ at 192.655643313116 "$god_ set-dist 12 48 2"
$ns_ at 192.655643313116 "$god_ set-dist 18 48 3"
$ns_ at 192.655643313116 "$god_ set-dist 38 48 3"
$ns_ at 192.754306547649 "$god_ set-dist 8 21 3"
$ns_ at 192.754306547649 "$god_ set-dist 8 22 2"
$ns_ at 192.754306547649 "$god_ set-dist 21 23 4"
$ns_ at 192.754306547649 "$god_ set-dist 22 23 3"
$ns_ at 192.754306547649 "$god_ set-dist 22 46 3"
$ns_ at 192.930207580396 "$god_ set-dist 35 36 1"
$ns_ at 192.981962687000 "$god_ set-dist 2 28 2"
$ns_ at 192.981962687000 "$god_ set-dist 14 28 3"
$ns_ at 192.981962687000 "$god_ set-dist 17 28 3"
$ns_ at 192.981962687000 "$god_ set-dist 28 32 4"
$ns_ at 192.981962687000 "$god_ set-dist 28 35 3"
$ns_ at 192.981962687000 "$god_ set-dist 28 40 3"
$ns_ at 192.981962687000 "$god_ set-dist 28 42 3"
$ns_ at 193.285665709033 "$god_ set-dist 19 26 1"
$ns_ at 193.285665709033 "$god_ set-dist 26 49 2"
$ns_ at 193.343389313998 "$god_ set-dist 1 5 3"
$ns_ at 193.343389313998 "$god_ set-dist 4 5 3"
$ns_ at 193.343389313998 "$god_ set-dist 5 12 2"
$ns_ at 193.343389313998 "$god_ set-dist 5 48 4"
$ns_ at 193.356977154866 "$god_ set-dist 9 12 2"
$ns_ at 193.356977154866 "$god_ set-dist 9 18 3"
$ns_ at 193.356977154866 "$god_ set-dist 9 38 3"
$ns_ at 193.356977154866 "$god_ set-dist 12 25 1"
$ns_ at 193.356977154866 "$god_ set-dist 12 27 2"
$ns_ at 193.356977154866 "$god_ set-dist 18 25 2"
$ns_ at 193.356977154866 "$god_ set-dist 18 27 3"
$ns_ at 193.356977154866 "$god_ set-dist 25 38 2"
$ns_ at 193.356977154866 "$god_ set-dist 27 38 3"
$ns_ at 193.383962536889 "$god_ set-dist 2 11 2"
$ns_ at 193.383962536889 "$god_ set-dist 5 11 3"
$ns_ at 193.383962536889 "$god_ set-dist 11 14 3"
$ns_ at 193.383962536889 "$god_ set-dist 11 17 3"
$ns_ at 193.383962536889 "$god_ set-dist 11 32 4"
$ns_ at 193.383962536889 "$god_ set-dist 11 40 3"
$ns_ at 193.383962536889 "$god_ set-dist 11 42 3"
$ns_ at 193.674610796896 "$god_ set-dist 37 49 1"
$ns_ at 193.777415804851 "$god_ set-dist 2 44 1"
$ns_ at 193.777415804851 "$god_ set-dist 33 44 2"
$ns_ at 193.777415804851 "$god_ set-dist 44 45 2"
$ns_ at 193.777415804851 "$god_ set-dist 44 47 2"
$ns_ at 193.810628849972 "$god_ set-dist 3 18 3"
$ns_ at 193.810628849972 "$god_ set-dist 18 49 2"
$ns_ at 193.950229152407 "$god_ set-dist 6 13 3"
$ns_ at 193.950229152407 "$god_ set-dist 7 13 2"
$ns_ at 193.950229152407 "$god_ set-dist 13 14 3"
$ns_ at 193.950229152407 "$god_ set-dist 13 17 3"
$ns_ at 193.950229152407 "$god_ set-dist 13 49 3"
$ns_ at 193.993077425594 "$node_(13) setdest 360.060243839987 657.161022014799 0.000000000000"
$ns_ at 194.065218077402 "$god_ set-dist 2 46 1"
$ns_ at 194.065218077402 "$god_ set-dist 18 46 2"
$ns_ at 194.065218077402 "$god_ set-dist 22 46 2"
$ns_ at 194.065218077402 "$god_ set-dist 38 46 2"
$ns_ at 194.074146802508 "$god_ set-dist 2 33 2"
$ns_ at 194.074146802508 "$god_ set-dist 14 33 3"
$ns_ at 194.074146802508 "$god_ set-dist 17 33 3"
$ns_ at 194.074146802508 "$god_ set-dist 32 33 4"
$ns_ at 194.074146802508 "$god_ set-dist 33 40 3"
$ns_ at 194.074146802508 "$god_ set-dist 33 42 3"
$ns_ at 194.074146802508 "$god_ set-dist 33 44 3"
$ns_ at 194.109246492870 "$god_ set-dist 2 27 2"
$ns_ at 194.109246492870 "$god_ set-dist 5 27 3"
$ns_ at 194.109246492870 "$god_ set-dist 10 27 2"
$ns_ at 194.109246492870 "$god_ set-dist 27 34 2"
$ns_ at 194.109246492870 "$god_ set-dist 27 36 2"
$ns_ at 194.109246492870 "$god_ set-dist 27 39 3"
$ns_ at 194.109246492870 "$god_ set-dist 27 41 1"
$ns_ at 194.125749671836 "$god_ set-dist 3 21 4"
$ns_ at 194.125749671836 "$god_ set-dist 3 22 3"
$ns_ at 194.125749671836 "$god_ set-dist 21 49 3"
$ns_ at 194.125749671836 "$god_ set-dist 22 49 2"
$ns_ at 194.146818084239 "$god_ set-dist 1 32 3"
$ns_ at 194.146818084239 "$god_ set-dist 1 40 2"
$ns_ at 194.146818084239 "$god_ set-dist 4 32 3"
$ns_ at 194.146818084239 "$god_ set-dist 4 40 2"
$ns_ at 194.146818084239 "$god_ set-dist 11 32 3"
$ns_ at 194.146818084239 "$god_ set-dist 11 40 2"
$ns_ at 194.146818084239 "$god_ set-dist 26 32 3"
$ns_ at 194.146818084239 "$god_ set-dist 26 40 2"
$ns_ at 194.146818084239 "$god_ set-dist 32 33 3"
$ns_ at 194.146818084239 "$god_ set-dist 32 37 2"
$ns_ at 194.146818084239 "$god_ set-dist 33 40 2"
$ns_ at 194.146818084239 "$god_ set-dist 37 40 1"
$ns_ at 194.196631416617 "$god_ set-dist 13 16 2"
$ns_ at 194.196631416617 "$god_ set-dist 13 33 3"
$ns_ at 194.196631416617 "$god_ set-dist 13 47 3"
$ns_ at 194.272354655319 "$god_ set-dist 6 43 2"
$ns_ at 194.272354655319 "$god_ set-dist 12 43 1"
$ns_ at 194.272354655319 "$god_ set-dist 18 43 2"
$ns_ at 194.272354655319 "$god_ set-dist 38 43 2"
$ns_ at 194.407379247691 "$god_ set-dist 3 38 3"
$ns_ at 194.407379247691 "$god_ set-dist 38 49 2"
$ns_ at 194.530210529541 "$god_ set-dist 16 31 2"
$ns_ at 194.530210529541 "$god_ set-dist 31 33 3"
$ns_ at 194.530210529541 "$god_ set-dist 31 47 3"
$ns_ at 194.599050646424 "$god_ set-dist 36 46 1"
$ns_ at 194.651470638318 "$god_ set-dist 19 49 2"
$ns_ at 194.675577258786 "$god_ set-dist 3 20 3"
$ns_ at 194.675577258786 "$god_ set-dist 8 20 2"
$ns_ at 194.849841503484 "$god_ set-dist 1 6 3"
$ns_ at 194.849841503484 "$god_ set-dist 4 6 3"
$ns_ at 194.849841503484 "$god_ set-dist 6 11 3"
$ns_ at 194.849841503484 "$god_ set-dist 6 12 2"
$ns_ at 194.849841503484 "$god_ set-dist 6 24 3"
$ns_ at 194.849841503484 "$god_ set-dist 6 28 3"
$ns_ at 194.849841503484 "$god_ set-dist 6 33 3"
$ns_ at 194.849841503484 "$god_ set-dist 6 43 3"
$ns_ at 194.979479774992 "$god_ set-dist 26 32 4"
$ns_ at 194.979479774992 "$god_ set-dist 26 37 2"
$ns_ at 194.979479774992 "$god_ set-dist 26 40 3"
$ns_ at 194.979479774992 "$god_ set-dist 26 49 3"
$ns_ at 195.081778355652 "$node_(48) setdest 105.927987518493 13.934592376089 12.050875217324"
$ns_ at 195.083578040996 "$god_ set-dist 2 29 1"
$ns_ at 195.083578040996 "$god_ set-dist 29 45 2"
$ns_ at 195.083578040996 "$god_ set-dist 29 47 2"
$ns_ at 195.088747603095 "$god_ set-dist 13 49 2"
$ns_ at 195.088747603095 "$god_ set-dist 46 49 1"
$ns_ at 195.157199173392 "$god_ set-dist 3 16 3"
$ns_ at 195.157199173392 "$god_ set-dist 8 16 2"
$ns_ at 195.173137890368 "$god_ set-dist 23 49 1"
$ns_ at 195.221136840799 "$god_ set-dist 13 33 2"
$ns_ at 195.221136840799 "$god_ set-dist 25 33 1"
$ns_ at 195.221136840799 "$god_ set-dist 31 33 2"
$ns_ at 195.636032276234 "$god_ set-dist 2 48 2"
$ns_ at 195.636032276234 "$god_ set-dist 5 48 3"
$ns_ at 195.636032276234 "$god_ set-dist 10 48 2"
$ns_ at 195.636032276234 "$god_ set-dist 34 48 2"
$ns_ at 195.636032276234 "$god_ set-dist 36 48 2"
$ns_ at 195.636032276234 "$god_ set-dist 39 48 3"
$ns_ at 195.636032276234 "$god_ set-dist 41 48 1"
$ns_ at 195.690274001963 "$god_ set-dist 35 49 1"
$ns_ at 195.812134601628 "$god_ set-dist 5 9 3"
$ns_ at 195.812134601628 "$god_ set-dist 5 25 2"
$ns_ at 195.812134601628 "$god_ set-dist 5 30 1"
$ns_ at 195.903996792610 "$god_ set-dist 0 5 2"
$ns_ at 195.903996792610 "$god_ set-dist 0 30 1"
$ns_ at 195.906513940496 "$god_ set-dist 2 47 2"
$ns_ at 195.906513940496 "$god_ set-dist 6 47 3"
$ns_ at 195.906513940496 "$god_ set-dist 14 47 3"
$ns_ at 195.906513940496 "$god_ set-dist 17 47 3"
$ns_ at 195.906513940496 "$god_ set-dist 29 47 3"
$ns_ at 195.906513940496 "$god_ set-dist 42 47 3"
$ns_ at 195.906513940496 "$god_ set-dist 44 47 3"
$ns_ at 195.930792286007 "$node_(6) setdest 36.330078068808 497.409361049334 2.468332651400"
$ns_ at 195.989005768444 "$god_ set-dist 3 38 2"
$ns_ at 195.989005768444 "$god_ set-dist 17 24 2"
$ns_ at 195.989005768444 "$god_ set-dist 17 28 2"
$ns_ at 195.989005768444 "$god_ set-dist 17 38 1"
$ns_ at 196.080715292229 "$god_ set-dist 3 19 3"
$ns_ at 196.080715292229 "$god_ set-dist 3 26 4"
$ns_ at 196.080715292229 "$god_ set-dist 8 19 2"
$ns_ at 196.080715292229 "$god_ set-dist 8 26 3"
$ns_ at 196.253907824601 "$god_ set-dist 12 49 2"
$ns_ at 196.253907824601 "$god_ set-dist 24 49 3"
$ns_ at 196.253907824601 "$god_ set-dist 28 49 3"
$ns_ at 196.312889300179 "$god_ set-dist 3 12 3"
$ns_ at 196.312889300179 "$god_ set-dist 8 12 2"
$ns_ at 196.312889300179 "$god_ set-dist 8 24 3"
$ns_ at 196.312889300179 "$god_ set-dist 8 28 3"
$ns_ at 196.441315123322 "$god_ set-dist 2 45 2"
$ns_ at 196.441315123322 "$god_ set-dist 6 45 3"
$ns_ at 196.441315123322 "$god_ set-dist 14 45 3"
$ns_ at 196.441315123322 "$god_ set-dist 17 45 3"
$ns_ at 196.441315123322 "$god_ set-dist 29 45 3"
$ns_ at 196.441315123322 "$god_ set-dist 42 45 3"
$ns_ at 196.441315123322 "$god_ set-dist 44 45 3"
$ns_ at 196.563780324957 "$god_ set-dist 5 9 4"
$ns_ at 196.563780324957 "$god_ set-dist 5 25 3"
$ns_ at 196.563780324957 "$god_ set-dist 9 30 3"
$ns_ at 196.563780324957 "$god_ set-dist 9 44 4"
$ns_ at 196.563780324957 "$god_ set-dist 25 30 2"
$ns_ at 196.563780324957 "$god_ set-dist 25 44 3"
$ns_ at 196.668533070017 "$god_ set-dist 1 6 2"
$ns_ at 196.668533070017 "$god_ set-dist 4 6 2"
$ns_ at 196.668533070017 "$god_ set-dist 6 11 2"
$ns_ at 196.668533070017 "$god_ set-dist 6 33 2"
$ns_ at 196.668533070017 "$god_ set-dist 6 37 1"
$ns_ at 196.668533070017 "$god_ set-dist 6 43 2"
$ns_ at 196.668533070017 "$god_ set-dist 6 45 2"
$ns_ at 196.668533070017 "$god_ set-dist 6 47 2"
$ns_ at 196.690331095510 "$node_(7) setdest 618.262715676950 207.014923372563 5.641626076181"
$ns_ at 196.727052715488 "$node_(22) setdest 438.930298338528 555.418415548520 5.608307692811"
$ns_ at 196.727776289797 "$god_ set-dist 1 38 3"
$ns_ at 196.727776289797 "$god_ set-dist 4 38 3"
$ns_ at 196.727776289797 "$god_ set-dist 9 38 4"
$ns_ at 196.727776289797 "$god_ set-dist 11 38 3"
$ns_ at 196.727776289797 "$god_ set-dist 12 38 2"
$ns_ at 196.727776289797 "$god_ set-dist 25 38 3"
$ns_ at 196.727776289797 "$god_ set-dist 38 43 3"
$ns_ at 196.897191220908 "$node_(9) setdest 659.750168327716 657.430737690439 0.000000000000"
$ns_ at 197.136222240928 "$god_ set-dist 0 24 4"
$ns_ at 197.136222240928 "$god_ set-dist 7 24 3"
$ns_ at 197.136222240928 "$god_ set-dist 10 24 3"
$ns_ at 197.136222240928 "$god_ set-dist 12 24 2"
$ns_ at 197.136222240928 "$god_ set-dist 23 24 4"
$ns_ at 197.136222240928 "$god_ set-dist 24 30 3"
$ns_ at 197.136222240928 "$god_ set-dist 24 34 3"
$ns_ at 197.176021007882 "$god_ set-dist 10 12 2"
$ns_ at 197.176021007882 "$god_ set-dist 10 28 3"
$ns_ at 197.242994187165 "$god_ set-dist 0 8 1"
$ns_ at 197.242994187165 "$god_ set-dist 0 39 2"
$ns_ at 197.298058348783 "$god_ set-dist 16 48 1"
$ns_ at 197.355481011805 "$god_ set-dist 1 24 1"
$ns_ at 197.355481011805 "$god_ set-dist 1 38 2"
$ns_ at 197.376560796924 "$god_ set-dist 11 48 1"
$ns_ at 197.557349137304 "$god_ set-dist 20 22 1"
$ns_ at 197.603864781262 "$god_ set-dist 0 49 1"
$ns_ at 197.659488843860 "$god_ set-dist 4 18 3"
$ns_ at 197.659488843860 "$god_ set-dist 9 18 4"
$ns_ at 197.659488843860 "$god_ set-dist 11 18 3"
$ns_ at 197.659488843860 "$god_ set-dist 12 18 2"
$ns_ at 197.659488843860 "$god_ set-dist 18 25 3"
$ns_ at 197.659488843860 "$god_ set-dist 18 43 3"
$ns_ at 197.663178950554 "$god_ set-dist 1 42 2"
$ns_ at 197.663178950554 "$god_ set-dist 4 42 2"
$ns_ at 197.663178950554 "$god_ set-dist 11 42 2"
$ns_ at 197.663178950554 "$god_ set-dist 33 42 2"
$ns_ at 197.663178950554 "$god_ set-dist 37 42 1"
$ns_ at 197.663178950554 "$god_ set-dist 42 45 2"
$ns_ at 197.663178950554 "$god_ set-dist 42 47 2"
$ns_ at 197.684682788123 "$god_ set-dist 1 5 2"
$ns_ at 197.684682788123 "$god_ set-dist 1 22 1"
$ns_ at 197.684682788123 "$god_ set-dist 1 39 2"
$ns_ at 197.735442558927 "$god_ set-dist 0 28 4"
$ns_ at 197.735442558927 "$god_ set-dist 7 28 3"
$ns_ at 197.735442558927 "$god_ set-dist 12 28 2"
$ns_ at 197.735442558927 "$god_ set-dist 23 28 4"
$ns_ at 197.735442558927 "$god_ set-dist 28 30 3"
$ns_ at 197.735442558927 "$god_ set-dist 28 34 3"
$ns_ at 197.753399292084 "$god_ set-dist 8 39 2"
$ns_ at 197.756011921388 "$god_ set-dist 15 22 1"
$ns_ at 197.756011921388 "$god_ set-dist 22 26 2"
$ns_ at 197.994004500790 "$god_ set-dist 19 48 1"
$ns_ at 198.022390310751 "$god_ set-dist 2 39 1"
$ns_ at 198.079730129480 "$god_ set-dist 0 39 3"
$ns_ at 198.079730129480 "$god_ set-dist 23 39 3"
$ns_ at 198.079730129480 "$god_ set-dist 39 49 2"
$ns_ at 198.117498915029 "$god_ set-dist 0 34 1"
$ns_ at 198.385407661154 "$god_ set-dist 1 28 1"
$ns_ at 198.539343766106 "$node_(44) setdest 590.446163688973 221.175122310972 13.292649557086"
$ns_ at 198.975608550197 "$god_ set-dist 0 21 3"
$ns_ at 198.975608550197 "$god_ set-dist 0 22 2"
$ns_ at 198.975608550197 "$god_ set-dist 0 24 3"
$ns_ at 198.975608550197 "$god_ set-dist 0 28 3"
$ns_ at 198.975608550197 "$god_ set-dist 21 23 3"
$ns_ at 198.975608550197 "$god_ set-dist 21 34 2"
$ns_ at 198.975608550197 "$god_ set-dist 22 23 2"
$ns_ at 198.975608550197 "$god_ set-dist 22 34 1"
$ns_ at 198.975608550197 "$god_ set-dist 23 24 3"
$ns_ at 198.975608550197 "$god_ set-dist 23 28 3"
$ns_ at 198.975608550197 "$god_ set-dist 24 34 2"
$ns_ at 198.975608550197 "$god_ set-dist 28 34 2"
$ns_ at 199.136478912028 "$god_ set-dist 3 4 4"
$ns_ at 199.136478912028 "$god_ set-dist 4 6 3"
$ns_ at 199.136478912028 "$god_ set-dist 4 8 3"
$ns_ at 199.136478912028 "$god_ set-dist 4 32 4"
$ns_ at 199.136478912028 "$god_ set-dist 4 37 2"
$ns_ at 199.136478912028 "$god_ set-dist 4 40 3"
$ns_ at 199.136478912028 "$god_ set-dist 4 42 3"
$ns_ at 199.136478912028 "$god_ set-dist 4 49 3"
$ns_ at 199.173095648410 "$god_ set-dist 15 48 1"
$ns_ at 199.173095648410 "$god_ set-dist 22 48 2"
$ns_ at 199.211141733184 "$god_ set-dist 7 14 2"
$ns_ at 199.211141733184 "$god_ set-dist 9 14 4"
$ns_ at 199.211141733184 "$god_ set-dist 14 25 3"
$ns_ at 199.423657008723 "$god_ set-dist 2 18 2"
$ns_ at 199.619908931776 "$god_ set-dist 2 23 1"
$ns_ at 199.619908931776 "$god_ set-dist 23 38 2"
$ns_ at 199.619908931776 "$god_ set-dist 23 39 2"
$ns_ at 199.678513754396 "$god_ set-dist 2 38 2"
$ns_ at 199.678513754396 "$god_ set-dist 23 38 3"
#
# Destination Unreachables: 0
#
# Route Changes: 4943
#
# Link Changes: 1787
#
# Node | Route Changes | Link Changes
#    0 |           186 |           53
#    1 |           167 |           57
#    2 |           177 |          100
#    3 |           224 |           52
#    4 |           188 |           66
#    5 |           223 |           68
#    6 |           157 |           72
#    7 |           100 |           58
#    8 |           142 |           76
#    9 |           209 |           95
#   10 |           169 |           48
#   11 |           209 |           78
#   12 |           294 |           81
#   13 |           213 |          117
#   14 |           169 |           70
#   15 |           176 |           81
#   16 |           146 |           72
#   17 |           262 |           45
#   18 |           173 |          114
#   19 |           261 |           79
#   20 |           112 |           58
#   21 |           183 |           86
#   22 |           214 |           86
#   23 |           246 |           91
#   24 |           244 |           62
#   25 |           211 |           54
#   26 |           210 |           87
#   27 |           229 |           98
#   28 |           204 |           41
#   29 |           163 |           74
#   30 |           263 |           79
#   31 |           211 |          104
#   32 |           231 |           36
#   33 |           169 |           55
#   34 |           171 |           85
#   35 |           170 |           67
#   36 |           225 |           71
#   37 |           277 |           69
#   38 |           195 |           54
#   39 |           225 |          116
#   40 |           160 |           41
#   41 |           119 |           72
#   42 |           218 |           55
#   43 |           225 |           84
#   44 |           205 |           74
#   45 |           246 |           52
#   46 |           101 |           45
#   47 |           188 |           36
#   48 |           274 |           75
#   49 |           152 |           85
#



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
    exec nam aodvpause_50.nam &
    exit 0
}
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns_ at $val(stop) "\$node_($i) reset"
}
$ns_ at $val(stop) "$ns_ nam-end-wireless $val(stop)"
$ns_ at $val(stop) "finish"
$ns_ at $val(stop) "puts \"done\" ; $ns_ halt"
$ns_ run




