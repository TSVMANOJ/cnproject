
set val(chan)   Channel/WirelessChannel    ;# channel type
set val(prop)   Propagation/TwoRayGround   ;# radio-propagation model
set val(netif)  Phy/WirelessPhy            ;# network interface type
set val(mac)    Mac/802_11                 ;# MAC type
set val(ifq)    Queue/DropTail/PriQueue ;# interface queue type
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
set tracefile [open dsdvpause_150.tr w]
$ns_ trace-all $tracefile
#$ns use-newtrace
#Open the NAM trace file
set namfile [open dsdvpause_150.nam w]
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
# nodes: 50, pause: 150.00, max speed: 20.00, max x: 670.00, max y: 670.00
#
$node_(0) set X_ 601.329767179348
$node_(0) set Y_ 127.118337394347
$node_(0) set Z_ 0.000000000000
$node_(1) set X_ 96.738529838997
$node_(1) set Y_ 357.525989745140
$node_(1) set Z_ 0.000000000000
$node_(2) set X_ 530.006429932857
$node_(2) set Y_ 263.041441415581
$node_(2) set Z_ 0.000000000000
$node_(3) set X_ 103.253547446043
$node_(3) set Y_ 208.995458237141
$node_(3) set Z_ 0.000000000000
$node_(4) set X_ 162.918198827418
$node_(4) set Y_ 350.713953792235
$node_(4) set Z_ 0.000000000000
$node_(5) set X_ 602.226304247294
$node_(5) set Y_ 42.175120649027
$node_(5) set Z_ 0.000000000000
$node_(6) set X_ 42.803817587717
$node_(6) set Y_ 118.540562267051
$node_(6) set Z_ 0.000000000000
$node_(7) set X_ 592.837966424482
$node_(7) set Y_ 194.952481025857
$node_(7) set Z_ 0.000000000000
$node_(8) set X_ 546.784453587878
$node_(8) set Y_ 163.569826945319
$node_(8) set Z_ 0.000000000000
$node_(9) set X_ 101.931268524310
$node_(9) set Y_ 362.743167160214
$node_(9) set Z_ 0.000000000000
$node_(10) set X_ 470.311513506993
$node_(10) set Y_ 3.832965839481
$node_(10) set Z_ 0.000000000000
$node_(11) set X_ 601.818042429665
$node_(11) set Y_ 599.170686008293
$node_(11) set Z_ 0.000000000000
$node_(12) set X_ 289.773383476507
$node_(12) set Y_ 104.999075864863
$node_(12) set Z_ 0.000000000000
$node_(13) set X_ 635.446736235852
$node_(13) set Y_ 136.094423164064
$node_(13) set Z_ 0.000000000000
$node_(14) set X_ 643.163368817880
$node_(14) set Y_ 399.474152745824
$node_(14) set Z_ 0.000000000000
$node_(15) set X_ 409.712176260104
$node_(15) set Y_ 335.125158207033
$node_(15) set Z_ 0.000000000000
$node_(16) set X_ 422.767747171617
$node_(16) set Y_ 144.922920920413
$node_(16) set Z_ 0.000000000000
$node_(17) set X_ 140.707517086333
$node_(17) set Y_ 233.502914146196
$node_(17) set Z_ 0.000000000000
$node_(18) set X_ 519.673799197690
$node_(18) set Y_ 54.626046480196
$node_(18) set Z_ 0.000000000000
$node_(19) set X_ 501.299225378372
$node_(19) set Y_ 597.787137885980
$node_(19) set Z_ 0.000000000000
$node_(20) set X_ 47.442368741150
$node_(20) set Y_ 519.669716456277
$node_(20) set Z_ 0.000000000000
$node_(21) set X_ 648.327071243439
$node_(21) set Y_ 327.350627977618
$node_(21) set Z_ 0.000000000000
$node_(22) set X_ 267.996057780269
$node_(22) set Y_ 233.927613163121
$node_(22) set Z_ 0.000000000000
$node_(23) set X_ 564.157942706917
$node_(23) set Y_ 305.501801111823
$node_(23) set Z_ 0.000000000000
$node_(24) set X_ 459.899804850379
$node_(24) set Y_ 369.781640201011
$node_(24) set Z_ 0.000000000000
$node_(25) set X_ 160.709067570857
$node_(25) set Y_ 58.631655717125
$node_(25) set Z_ 0.000000000000
$node_(26) set X_ 495.071551367846
$node_(26) set Y_ 47.790493581077
$node_(26) set Z_ 0.000000000000
$node_(27) set X_ 452.190871789516
$node_(27) set Y_ 260.124996892642
$node_(27) set Z_ 0.000000000000
$node_(28) set X_ 419.598644258575
$node_(28) set Y_ 337.505333428529
$node_(28) set Z_ 0.000000000000
$node_(29) set X_ 174.415207851763
$node_(29) set Y_ 347.969956267101
$node_(29) set Z_ 0.000000000000
$node_(30) set X_ 99.326285286776
$node_(30) set Y_ 393.059194906688
$node_(30) set Z_ 0.000000000000
$node_(31) set X_ 439.744626478498
$node_(31) set Y_ 626.849222242515
$node_(31) set Z_ 0.000000000000
$node_(32) set X_ 184.618724463669
$node_(32) set Y_ 292.877504939335
$node_(32) set Z_ 0.000000000000
$node_(33) set X_ 16.499922385436
$node_(33) set Y_ 118.774584218653
$node_(33) set Z_ 0.000000000000
$node_(34) set X_ 221.481038231416
$node_(34) set Y_ 520.326634260812
$node_(34) set Z_ 0.000000000000
$node_(35) set X_ 635.956593451316
$node_(35) set Y_ 328.990485277032
$node_(35) set Z_ 0.000000000000
$node_(36) set X_ 400.367266781719
$node_(36) set Y_ 434.529701809440
$node_(36) set Z_ 0.000000000000
$node_(37) set X_ 608.965837220870
$node_(37) set Y_ 497.814777802088
$node_(37) set Z_ 0.000000000000
$node_(38) set X_ 578.608868806773
$node_(38) set Y_ 257.101737327679
$node_(38) set Z_ 0.000000000000
$node_(39) set X_ 229.997242460825
$node_(39) set Y_ 261.581280585124
$node_(39) set Z_ 0.000000000000
$node_(40) set X_ 557.175921849579
$node_(40) set Y_ 340.901487431840
$node_(40) set Z_ 0.000000000000
$node_(41) set X_ 550.255677025575
$node_(41) set Y_ 13.195698078420
$node_(41) set Z_ 0.000000000000
$node_(42) set X_ 275.102933899362
$node_(42) set Y_ 54.656399662730
$node_(42) set Z_ 0.000000000000
$node_(43) set X_ 103.992497278480
$node_(43) set Y_ 331.334469925512
$node_(43) set Z_ 0.000000000000
$node_(44) set X_ 519.093842597566
$node_(44) set Y_ 175.665817283674
$node_(44) set Z_ 0.000000000000
$node_(45) set X_ 287.165641128191
$node_(45) set Y_ 186.495166425825
$node_(45) set Z_ 0.000000000000
$node_(46) set X_ 651.867555740395
$node_(46) set Y_ 391.227435813124
$node_(46) set Z_ 0.000000000000
$node_(47) set X_ 369.046647844767
$node_(47) set Y_ 266.212323469148
$node_(47) set Z_ 0.000000000000
$node_(48) set X_ 235.711546057836
$node_(48) set Y_ 172.530072982482
$node_(48) set Z_ 0.000000000000
$node_(49) set X_ 29.490903398047
$node_(49) set Y_ 161.958897800057
$node_(49) set Z_ 0.000000000000
$god_ set-dist 0 1 3
$god_ set-dist 0 2 1
$god_ set-dist 0 3 3
$god_ set-dist 0 4 3
$god_ set-dist 0 5 1
$god_ set-dist 0 6 3
$god_ set-dist 0 7 1
$god_ set-dist 0 8 1
$god_ set-dist 0 9 3
$god_ set-dist 0 10 1
$god_ set-dist 0 11 3
$god_ set-dist 0 12 2
$god_ set-dist 0 13 1
$god_ set-dist 0 14 2
$god_ set-dist 0 15 2
$god_ set-dist 0 16 1
$god_ set-dist 0 17 3
$god_ set-dist 0 18 1
$god_ set-dist 0 19 3
$god_ set-dist 0 20 4
$god_ set-dist 0 21 1
$god_ set-dist 0 22 2
$god_ set-dist 0 23 1
$god_ set-dist 0 24 2
$god_ set-dist 0 25 3
$god_ set-dist 0 26 1
$god_ set-dist 0 27 1
$god_ set-dist 0 28 2
$god_ set-dist 0 29 3
$god_ set-dist 0 30 3
$god_ set-dist 0 31 3
$god_ set-dist 0 32 3
$god_ set-dist 0 33 3
$god_ set-dist 0 34 3
$god_ set-dist 0 35 1
$god_ set-dist 0 36 2
$god_ set-dist 0 37 2
$god_ set-dist 0 38 1
$god_ set-dist 0 39 2
$god_ set-dist 0 40 1
$god_ set-dist 0 41 1
$god_ set-dist 0 42 2
$god_ set-dist 0 43 3
$god_ set-dist 0 44 1
$god_ set-dist 0 45 2
$god_ set-dist 0 46 2
$god_ set-dist 0 47 2
$god_ set-dist 0 48 2
$god_ set-dist 0 49 3
$god_ set-dist 1 2 3
$god_ set-dist 1 3 1
$god_ set-dist 1 4 1
$god_ set-dist 1 5 3
$god_ set-dist 1 6 1
$god_ set-dist 1 7 3
$god_ set-dist 1 8 3
$god_ set-dist 1 9 1
$god_ set-dist 1 10 3
$god_ set-dist 1 11 3
$god_ set-dist 1 12 2
$god_ set-dist 1 13 3
$god_ set-dist 1 14 3
$god_ set-dist 1 15 2
$god_ set-dist 1 16 2
$god_ set-dist 1 17 1
$god_ set-dist 1 18 3
$god_ set-dist 1 19 3
$god_ set-dist 1 20 1
$god_ set-dist 1 21 3
$god_ set-dist 1 22 1
$god_ set-dist 1 23 3
$god_ set-dist 1 24 2
$god_ set-dist 1 25 2
$god_ set-dist 1 26 3
$god_ set-dist 1 27 2
$god_ set-dist 1 28 2
$god_ set-dist 1 29 1
$god_ set-dist 1 30 1
$god_ set-dist 1 31 2
$god_ set-dist 1 32 1
$god_ set-dist 1 33 2
$god_ set-dist 1 34 1
$god_ set-dist 1 35 3
$god_ set-dist 1 36 2
$god_ set-dist 1 37 3
$god_ set-dist 1 38 3
$god_ set-dist 1 39 1
$god_ set-dist 1 40 3
$god_ set-dist 1 41 3
$god_ set-dist 1 42 2
$god_ set-dist 1 43 1
$god_ set-dist 1 44 3
$god_ set-dist 1 45 2
$god_ set-dist 1 46 3
$god_ set-dist 1 47 2
$god_ set-dist 1 48 1
$god_ set-dist 1 49 1
$god_ set-dist 2 3 3
$god_ set-dist 2 4 2
$god_ set-dist 2 5 1
$god_ set-dist 2 6 3
$god_ set-dist 2 7 1
$god_ set-dist 2 8 1
$god_ set-dist 2 9 3
$god_ set-dist 2 10 2
$god_ set-dist 2 11 2
$god_ set-dist 2 12 2
$god_ set-dist 2 13 1
$god_ set-dist 2 14 1
$god_ set-dist 2 15 1
$god_ set-dist 2 16 1
$god_ set-dist 2 17 2
$god_ set-dist 2 18 1
$god_ set-dist 2 19 2
$god_ set-dist 2 20 3
$god_ set-dist 2 21 1
$god_ set-dist 2 22 2
$god_ set-dist 2 23 1
$god_ set-dist 2 24 1
$god_ set-dist 2 25 3
$god_ set-dist 2 26 1
$god_ set-dist 2 27 1
$god_ set-dist 2 28 1
$god_ set-dist 2 29 2
$god_ set-dist 2 30 3
$god_ set-dist 2 31 2
$god_ set-dist 2 32 2
$god_ set-dist 2 33 3
$god_ set-dist 2 34 2
$god_ set-dist 2 35 1
$god_ set-dist 2 36 1
$god_ set-dist 2 37 1
$god_ set-dist 2 38 1
$god_ set-dist 2 39 2
$god_ set-dist 2 40 1
$god_ set-dist 2 41 2
$god_ set-dist 2 42 2
$god_ set-dist 2 43 3
$god_ set-dist 2 44 1
$god_ set-dist 2 45 2
$god_ set-dist 2 46 1
$god_ set-dist 2 47 1
$god_ set-dist 2 48 2
$god_ set-dist 2 49 3
$god_ set-dist 3 4 1
$god_ set-dist 3 5 3
$god_ set-dist 3 6 1
$god_ set-dist 3 7 3
$god_ set-dist 3 8 3
$god_ set-dist 3 9 1
$god_ set-dist 3 10 2
$god_ set-dist 3 11 4
$god_ set-dist 3 12 1
$god_ set-dist 3 13 3
$god_ set-dist 3 14 3
$god_ set-dist 3 15 2
$god_ set-dist 3 16 2
$god_ set-dist 3 17 1
$god_ set-dist 3 18 2
$god_ set-dist 3 19 3
$god_ set-dist 3 20 2
$god_ set-dist 3 21 3
$god_ set-dist 3 22 1
$god_ set-dist 3 23 3
$god_ set-dist 3 24 2
$god_ set-dist 3 25 1
$god_ set-dist 3 26 2
$god_ set-dist 3 27 2
$god_ set-dist 3 28 2
$god_ set-dist 3 29 1
$god_ set-dist 3 30 1
$god_ set-dist 3 31 3
$god_ set-dist 3 32 1
$god_ set-dist 3 33 1
$god_ set-dist 3 34 2
$god_ set-dist 3 35 3
$god_ set-dist 3 36 2
$god_ set-dist 3 37 3
$god_ set-dist 3 38 3
$god_ set-dist 3 39 1
$god_ set-dist 3 40 3
$god_ set-dist 3 41 3
$god_ set-dist 3 42 1
$god_ set-dist 3 43 1
$god_ set-dist 3 44 2
$god_ set-dist 3 45 1
$god_ set-dist 3 46 3
$god_ set-dist 3 47 2
$god_ set-dist 3 48 1
$god_ set-dist 3 49 1
$god_ set-dist 4 5 3
$god_ set-dist 4 6 2
$god_ set-dist 4 7 2
$god_ set-dist 4 8 2
$god_ set-dist 4 9 1
$god_ set-dist 4 10 3
$god_ set-dist 4 11 3
$god_ set-dist 4 12 2
$god_ set-dist 4 13 3
$god_ set-dist 4 14 2
$god_ set-dist 4 15 1
$god_ set-dist 4 16 2
$god_ set-dist 4 17 1
$god_ set-dist 4 18 3
$god_ set-dist 4 19 3
$god_ set-dist 4 20 1
$god_ set-dist 4 21 2
$god_ set-dist 4 22 1
$god_ set-dist 4 23 2
$god_ set-dist 4 24 2
$god_ set-dist 4 25 2
$god_ set-dist 4 26 2
$god_ set-dist 4 27 2
$god_ set-dist 4 28 2
$god_ set-dist 4 29 1
$god_ set-dist 4 30 1
$god_ set-dist 4 31 2
$god_ set-dist 4 32 1
$god_ set-dist 4 33 2
$god_ set-dist 4 34 1
$god_ set-dist 4 35 2
$god_ set-dist 4 36 2
$god_ set-dist 4 37 3
$god_ set-dist 4 38 2
$god_ set-dist 4 39 1
$god_ set-dist 4 40 2
$god_ set-dist 4 41 3
$god_ set-dist 4 42 2
$god_ set-dist 4 43 1
$god_ set-dist 4 44 2
$god_ set-dist 4 45 1
$god_ set-dist 4 46 2
$god_ set-dist 4 47 1
$god_ set-dist 4 48 1
$god_ set-dist 4 49 1
$god_ set-dist 5 6 3
$god_ set-dist 5 7 1
$god_ set-dist 5 8 1
$god_ set-dist 5 9 3
$god_ set-dist 5 10 1
$god_ set-dist 5 11 3
$god_ set-dist 5 12 2
$god_ set-dist 5 13 1
$god_ set-dist 5 14 2
$god_ set-dist 5 15 2
$god_ set-dist 5 16 1
$god_ set-dist 5 17 3
$god_ set-dist 5 18 1
$god_ set-dist 5 19 3
$god_ set-dist 5 20 4
$god_ set-dist 5 21 2
$god_ set-dist 5 22 2
$god_ set-dist 5 23 2
$god_ set-dist 5 24 2
$god_ set-dist 5 25 3
$god_ set-dist 5 26 1
$god_ set-dist 5 27 2
$god_ set-dist 5 28 2
$god_ set-dist 5 29 3
$god_ set-dist 5 30 3
$god_ set-dist 5 31 3
$god_ set-dist 5 32 3
$god_ set-dist 5 33 3
$god_ set-dist 5 34 3
$god_ set-dist 5 35 2
$god_ set-dist 5 36 2
$god_ set-dist 5 37 2
$god_ set-dist 5 38 1
$god_ set-dist 5 39 2
$god_ set-dist 5 40 2
$god_ set-dist 5 41 1
$god_ set-dist 5 42 2
$god_ set-dist 5 43 3
$god_ set-dist 5 44 1
$god_ set-dist 5 45 2
$god_ set-dist 5 46 2
$god_ set-dist 5 47 2
$god_ set-dist 5 48 2
$god_ set-dist 5 49 3
$god_ set-dist 6 7 3
$god_ set-dist 6 8 3
$god_ set-dist 6 9 2
$god_ set-dist 6 10 2
$god_ set-dist 6 11 4
$god_ set-dist 6 12 1
$god_ set-dist 6 13 3
$god_ set-dist 6 14 3
$god_ set-dist 6 15 2
$god_ set-dist 6 16 2
$god_ set-dist 6 17 1
$god_ set-dist 6 18 2
$god_ set-dist 6 19 3
$god_ set-dist 6 20 2
$god_ set-dist 6 21 3
$god_ set-dist 6 22 2
$god_ set-dist 6 23 3
$god_ set-dist 6 24 3
$god_ set-dist 6 25 1
$god_ set-dist 6 26 2
$god_ set-dist 6 27 2
$god_ set-dist 6 28 2
$god_ set-dist 6 29 2
$god_ set-dist 6 30 2
$god_ set-dist 6 31 3
$god_ set-dist 6 32 1
$god_ set-dist 6 33 1
$god_ set-dist 6 34 2
$god_ set-dist 6 35 3
$god_ set-dist 6 36 2
$god_ set-dist 6 37 3
$god_ set-dist 6 38 3
$god_ set-dist 6 39 1
$god_ set-dist 6 40 3
$god_ set-dist 6 41 3
$god_ set-dist 6 42 1
$god_ set-dist 6 43 1
$god_ set-dist 6 44 2
$god_ set-dist 6 45 2
$god_ set-dist 6 46 3
$god_ set-dist 6 47 2
$god_ set-dist 6 48 1
$god_ set-dist 6 49 1
$god_ set-dist 7 8 1
$god_ set-dist 7 9 3
$god_ set-dist 7 10 1
$god_ set-dist 7 11 2
$god_ set-dist 7 12 2
$god_ set-dist 7 13 1
$god_ set-dist 7 14 1
$god_ set-dist 7 15 1
$god_ set-dist 7 16 1
$god_ set-dist 7 17 2
$god_ set-dist 7 18 1
$god_ set-dist 7 19 2
$god_ set-dist 7 20 3
$god_ set-dist 7 21 1
$god_ set-dist 7 22 2
$god_ set-dist 7 23 1
$god_ set-dist 7 24 1
$god_ set-dist 7 25 3
$god_ set-dist 7 26 1
$god_ set-dist 7 27 1
$god_ set-dist 7 28 1
$god_ set-dist 7 29 2
$god_ set-dist 7 30 3
$god_ set-dist 7 31 3
$god_ set-dist 7 32 2
$god_ set-dist 7 33 3
$god_ set-dist 7 34 3
$god_ set-dist 7 35 1
$god_ set-dist 7 36 2
$god_ set-dist 7 37 2
$god_ set-dist 7 38 1
$god_ set-dist 7 39 2
$god_ set-dist 7 40 1
$god_ set-dist 7 41 1
$god_ set-dist 7 42 2
$god_ set-dist 7 43 3
$god_ set-dist 7 44 1
$god_ set-dist 7 45 2
$god_ set-dist 7 46 1
$god_ set-dist 7 47 1
$god_ set-dist 7 48 2
$god_ set-dist 7 49 3
$god_ set-dist 8 9 3
$god_ set-dist 8 10 1
$god_ set-dist 8 11 3
$god_ set-dist 8 12 2
$god_ set-dist 8 13 1
$god_ set-dist 8 14 2
$god_ set-dist 8 15 1
$god_ set-dist 8 16 1
$god_ set-dist 8 17 2
$god_ set-dist 8 18 1
$god_ set-dist 8 19 2
$god_ set-dist 8 20 3
$god_ set-dist 8 21 1
$god_ set-dist 8 22 2
$god_ set-dist 8 23 1
$god_ set-dist 8 24 1
$god_ set-dist 8 25 3
$god_ set-dist 8 26 1
$god_ set-dist 8 27 1
$god_ set-dist 8 28 1
$god_ set-dist 8 29 2
$god_ set-dist 8 30 3
$god_ set-dist 8 31 3
$god_ set-dist 8 32 2
$god_ set-dist 8 33 3
$god_ set-dist 8 34 3
$god_ set-dist 8 35 1
$god_ set-dist 8 36 2
$god_ set-dist 8 37 2
$god_ set-dist 8 38 1
$god_ set-dist 8 39 2
$god_ set-dist 8 40 1
$god_ set-dist 8 41 1
$god_ set-dist 8 42 2
$god_ set-dist 8 43 3
$god_ set-dist 8 44 1
$god_ set-dist 8 45 2
$god_ set-dist 8 46 2
$god_ set-dist 8 47 1
$god_ set-dist 8 48 2
$god_ set-dist 8 49 3
$god_ set-dist 9 10 3
$god_ set-dist 9 11 3
$god_ set-dist 9 12 2
$god_ set-dist 9 13 3
$god_ set-dist 9 14 3
$god_ set-dist 9 15 2
$god_ set-dist 9 16 2
$god_ set-dist 9 17 1
$god_ set-dist 9 18 3
$god_ set-dist 9 19 3
$god_ set-dist 9 20 1
$god_ set-dist 9 21 3
$god_ set-dist 9 22 1
$god_ set-dist 9 23 3
$god_ set-dist 9 24 2
$god_ set-dist 9 25 2
$god_ set-dist 9 26 3
$god_ set-dist 9 27 2
$god_ set-dist 9 28 2
$god_ set-dist 9 29 1
$god_ set-dist 9 30 1
$god_ set-dist 9 31 2
$god_ set-dist 9 32 1
$god_ set-dist 9 33 2
$god_ set-dist 9 34 1
$god_ set-dist 9 35 3
$god_ set-dist 9 36 2
$god_ set-dist 9 37 3
$god_ set-dist 9 38 3
$god_ set-dist 9 39 1
$god_ set-dist 9 40 3
$god_ set-dist 9 41 3
$god_ set-dist 9 42 2
$god_ set-dist 9 43 1
$god_ set-dist 9 44 3
$god_ set-dist 9 45 2
$god_ set-dist 9 46 3
$god_ set-dist 9 47 2
$god_ set-dist 9 48 1
$god_ set-dist 9 49 1
$god_ set-dist 10 11 3
$god_ set-dist 10 12 1
$god_ set-dist 10 13 1
$god_ set-dist 10 14 2
$god_ set-dist 10 15 2
$god_ set-dist 10 16 1
$god_ set-dist 10 17 2
$god_ set-dist 10 18 1
$god_ set-dist 10 19 3
$god_ set-dist 10 20 4
$god_ set-dist 10 21 2
$god_ set-dist 10 22 2
$god_ set-dist 10 23 2
$god_ set-dist 10 24 2
$god_ set-dist 10 25 2
$god_ set-dist 10 26 1
$god_ set-dist 10 27 2
$god_ set-dist 10 28 2
$god_ set-dist 10 29 3
$god_ set-dist 10 30 3
$god_ set-dist 10 31 4
$god_ set-dist 10 32 2
$god_ set-dist 10 33 3
$god_ set-dist 10 34 3
$god_ set-dist 10 35 2
$god_ set-dist 10 36 3
$god_ set-dist 10 37 3
$god_ set-dist 10 38 2
$god_ set-dist 10 39 2
$god_ set-dist 10 40 2
$god_ set-dist 10 41 1
$god_ set-dist 10 42 1
$god_ set-dist 10 43 3
$god_ set-dist 10 44 1
$god_ set-dist 10 45 2
$god_ set-dist 10 46 2
$god_ set-dist 10 47 2
$god_ set-dist 10 48 2
$god_ set-dist 10 49 3
$god_ set-dist 11 12 3
$god_ set-dist 11 13 3
$god_ set-dist 11 14 1
$god_ set-dist 11 15 2
$god_ set-dist 11 16 3
$god_ set-dist 11 17 4
$god_ set-dist 11 18 3
$god_ set-dist 11 19 1
$god_ set-dist 11 20 3
$god_ set-dist 11 21 2
$god_ set-dist 11 22 3
$god_ set-dist 11 23 2
$god_ set-dist 11 24 2
$god_ set-dist 11 25 4
$god_ set-dist 11 26 3
$god_ set-dist 11 27 2
$god_ set-dist 11 28 2
$god_ set-dist 11 29 3
$god_ set-dist 11 30 3
$god_ set-dist 11 31 1
$god_ set-dist 11 32 3
$god_ set-dist 11 33 4
$god_ set-dist 11 34 2
$god_ set-dist 11 35 2
$god_ set-dist 11 36 2
$god_ set-dist 11 37 1
$god_ set-dist 11 38 2
$god_ set-dist 11 39 3
$god_ set-dist 11 40 2
$god_ set-dist 11 41 3
$god_ set-dist 11 42 4
$god_ set-dist 11 43 3
$god_ set-dist 11 44 3
$god_ set-dist 11 45 3
$god_ set-dist 11 46 1
$god_ set-dist 11 47 3
$god_ set-dist 11 48 3
$god_ set-dist 11 49 4
$god_ set-dist 12 13 2
$god_ set-dist 12 14 2
$god_ set-dist 12 15 2
$god_ set-dist 12 16 1
$god_ set-dist 12 17 1
$god_ set-dist 12 18 1
$god_ set-dist 12 19 3
$god_ set-dist 12 20 3
$god_ set-dist 12 21 2
$god_ set-dist 12 22 1
$god_ set-dist 12 23 2
$god_ set-dist 12 24 2
$god_ set-dist 12 25 1
$god_ set-dist 12 26 1
$god_ set-dist 12 27 1
$god_ set-dist 12 28 2
$god_ set-dist 12 29 2
$god_ set-dist 12 30 2
$god_ set-dist 12 31 3
$god_ set-dist 12 32 1
$god_ set-dist 12 33 2
$god_ set-dist 12 34 2
$god_ set-dist 12 35 2
$god_ set-dist 12 36 2
$god_ set-dist 12 37 3
$god_ set-dist 12 38 2
$god_ set-dist 12 39 1
$god_ set-dist 12 40 2
$god_ set-dist 12 41 2
$god_ set-dist 12 42 1
$god_ set-dist 12 43 2
$god_ set-dist 12 44 1
$god_ set-dist 12 45 1
$god_ set-dist 12 46 2
$god_ set-dist 12 47 1
$god_ set-dist 12 48 1
$god_ set-dist 12 49 2
$god_ set-dist 13 14 2
$god_ set-dist 13 15 2
$god_ set-dist 13 16 1
$god_ set-dist 13 17 3
$god_ set-dist 13 18 1
$god_ set-dist 13 19 3
$god_ set-dist 13 20 4
$god_ set-dist 13 21 1
$god_ set-dist 13 22 2
$god_ set-dist 13 23 1
$god_ set-dist 13 24 2
$god_ set-dist 13 25 3
$god_ set-dist 13 26 1
$god_ set-dist 13 27 1
$god_ set-dist 13 28 2
$god_ set-dist 13 29 3
$god_ set-dist 13 30 3
$god_ set-dist 13 31 3
$god_ set-dist 13 32 3
$god_ set-dist 13 33 3
$god_ set-dist 13 34 3
$god_ set-dist 13 35 1
$god_ set-dist 13 36 2
$god_ set-dist 13 37 2
$god_ set-dist 13 38 1
$god_ set-dist 13 39 2
$god_ set-dist 13 40 1
$god_ set-dist 13 41 1
$god_ set-dist 13 42 2
$god_ set-dist 13 43 3
$god_ set-dist 13 44 1
$god_ set-dist 13 45 2
$god_ set-dist 13 46 2
$god_ set-dist 13 47 2
$god_ set-dist 13 48 2
$god_ set-dist 13 49 3
$god_ set-dist 14 15 1
$god_ set-dist 14 16 2
$god_ set-dist 14 17 3
$god_ set-dist 14 18 2
$god_ set-dist 14 19 1
$god_ set-dist 14 20 3
$god_ set-dist 14 21 1
$god_ set-dist 14 22 2
$god_ set-dist 14 23 1
$god_ set-dist 14 24 1
$god_ set-dist 14 25 3
$god_ set-dist 14 26 2
$god_ set-dist 14 27 1
$god_ set-dist 14 28 1
$god_ set-dist 14 29 2
$god_ set-dist 14 30 3
$god_ set-dist 14 31 2
$god_ set-dist 14 32 2
$god_ set-dist 14 33 3
$god_ set-dist 14 34 2
$god_ set-dist 14 35 1
$god_ set-dist 14 36 1
$god_ set-dist 14 37 1
$god_ set-dist 14 38 1
$god_ set-dist 14 39 2
$god_ set-dist 14 40 1
$god_ set-dist 14 41 2
$god_ set-dist 14 42 3
$god_ set-dist 14 43 3
$god_ set-dist 14 44 2
$god_ set-dist 14 45 2
$god_ set-dist 14 46 1
$god_ set-dist 14 47 2
$god_ set-dist 14 48 2
$god_ set-dist 14 49 3
$god_ set-dist 15 16 1
$god_ set-dist 15 17 2
$god_ set-dist 15 18 2
$god_ set-dist 15 19 2
$god_ set-dist 15 20 2
$god_ set-dist 15 21 1
$god_ set-dist 15 22 1
$god_ set-dist 15 23 1
$god_ set-dist 15 24 1
$god_ set-dist 15 25 2
$god_ set-dist 15 26 2
$god_ set-dist 15 27 1
$god_ set-dist 15 28 1
$god_ set-dist 15 29 1
$god_ set-dist 15 30 2
$god_ set-dist 15 31 2
$god_ set-dist 15 32 1
$god_ set-dist 15 33 2
$god_ set-dist 15 34 2
$god_ set-dist 15 35 1
$god_ set-dist 15 36 1
$god_ set-dist 15 37 2
$god_ set-dist 15 38 1
$god_ set-dist 15 39 1
$god_ set-dist 15 40 1
$god_ set-dist 15 41 2
$god_ set-dist 15 42 2
$god_ set-dist 15 43 2
$god_ set-dist 15 44 1
$god_ set-dist 15 45 1
$god_ set-dist 15 46 1
$god_ set-dist 15 47 1
$god_ set-dist 15 48 1
$god_ set-dist 15 49 2
$god_ set-dist 16 17 2
$god_ set-dist 16 18 1
$god_ set-dist 16 19 2
$god_ set-dist 16 20 3
$god_ set-dist 16 21 2
$god_ set-dist 16 22 1
$god_ set-dist 16 23 1
$god_ set-dist 16 24 1
$god_ set-dist 16 25 2
$god_ set-dist 16 26 1
$god_ set-dist 16 27 1
$god_ set-dist 16 28 1
$god_ set-dist 16 29 2
$god_ set-dist 16 30 2
$god_ set-dist 16 31 3
$god_ set-dist 16 32 2
$god_ set-dist 16 33 2
$god_ set-dist 16 34 3
$god_ set-dist 16 35 2
$god_ set-dist 16 36 2
$god_ set-dist 16 37 2
$god_ set-dist 16 38 1
$god_ set-dist 16 39 1
$god_ set-dist 16 40 1
$god_ set-dist 16 41 1
$god_ set-dist 16 42 1
$god_ set-dist 16 43 2
$god_ set-dist 16 44 1
$god_ set-dist 16 45 1
$god_ set-dist 16 46 2
$god_ set-dist 16 47 1
$god_ set-dist 16 48 1
$god_ set-dist 16 49 2
$god_ set-dist 17 18 2
$god_ set-dist 17 19 3
$god_ set-dist 17 20 2
$god_ set-dist 17 21 3
$god_ set-dist 17 22 1
$god_ set-dist 17 23 2
$god_ set-dist 17 24 2
$god_ set-dist 17 25 1
$god_ set-dist 17 26 2
$god_ set-dist 17 27 2
$god_ set-dist 17 28 2
$god_ set-dist 17 29 1
$god_ set-dist 17 30 1
$god_ set-dist 17 31 3
$god_ set-dist 17 32 1
$god_ set-dist 17 33 1
$god_ set-dist 17 34 2
$god_ set-dist 17 35 3
$god_ set-dist 17 36 2
$god_ set-dist 17 37 3
$god_ set-dist 17 38 2
$god_ set-dist 17 39 1
$god_ set-dist 17 40 2
$god_ set-dist 17 41 3
$god_ set-dist 17 42 1
$god_ set-dist 17 43 1
$god_ set-dist 17 44 2
$god_ set-dist 17 45 1
$god_ set-dist 17 46 3
$god_ set-dist 17 47 1
$god_ set-dist 17 48 1
$god_ set-dist 17 49 1
$god_ set-dist 18 19 3
$god_ set-dist 18 20 4
$god_ set-dist 18 21 2
$god_ set-dist 18 22 2
$god_ set-dist 18 23 2
$god_ set-dist 18 24 2
$god_ set-dist 18 25 2
$god_ set-dist 18 26 1
$god_ set-dist 18 27 1
$god_ set-dist 18 28 2
$god_ set-dist 18 29 3
$god_ set-dist 18 30 3
$god_ set-dist 18 31 3
$god_ set-dist 18 32 2
$god_ set-dist 18 33 3
$god_ set-dist 18 34 3
$god_ set-dist 18 35 2
$god_ set-dist 18 36 2
$god_ set-dist 18 37 2
$god_ set-dist 18 38 1
$god_ set-dist 18 39 2
$god_ set-dist 18 40 2
$god_ set-dist 18 41 1
$god_ set-dist 18 42 1
$god_ set-dist 18 43 3
$god_ set-dist 18 44 1
$god_ set-dist 18 45 2
$god_ set-dist 18 46 2
$god_ set-dist 18 47 2
$god_ set-dist 18 48 2
$god_ set-dist 18 49 3
$god_ set-dist 19 20 3
$god_ set-dist 19 21 2
$god_ set-dist 19 22 2
$god_ set-dist 19 23 2
$god_ set-dist 19 24 1
$god_ set-dist 19 25 3
$god_ set-dist 19 26 3
$god_ set-dist 19 27 2
$god_ set-dist 19 28 2
$god_ set-dist 19 29 2
$god_ set-dist 19 30 3
$god_ set-dist 19 31 1
$god_ set-dist 19 32 3
$god_ set-dist 19 33 4
$god_ set-dist 19 34 2
$god_ set-dist 19 35 2
$god_ set-dist 19 36 1
$god_ set-dist 19 37 1
$god_ set-dist 19 38 2
$god_ set-dist 19 39 2
$god_ set-dist 19 40 2
$god_ set-dist 19 41 3
$god_ set-dist 19 42 3
$god_ set-dist 19 43 3
$god_ set-dist 19 44 2
$god_ set-dist 19 45 3
$god_ set-dist 19 46 2
$god_ set-dist 19 47 2
$god_ set-dist 19 48 3
$god_ set-dist 19 49 3
$god_ set-dist 20 21 3
$god_ set-dist 20 22 2
$god_ set-dist 20 23 3
$god_ set-dist 20 24 3
$god_ set-dist 20 25 3
$god_ set-dist 20 26 3
$god_ set-dist 20 27 3
$god_ set-dist 20 28 2
$god_ set-dist 20 29 1
$god_ set-dist 20 30 1
$god_ set-dist 20 31 2
$god_ set-dist 20 32 2
$god_ set-dist 20 33 2
$god_ set-dist 20 34 1
$god_ set-dist 20 35 3
$god_ set-dist 20 36 2
$god_ set-dist 20 37 3
$god_ set-dist 20 38 3
$god_ set-dist 20 39 2
$god_ set-dist 20 40 3
$god_ set-dist 20 41 4
$god_ set-dist 20 42 3
$god_ set-dist 20 43 1
$god_ set-dist 20 44 3
$god_ set-dist 20 45 2
$god_ set-dist 20 46 3
$god_ set-dist 20 47 2
$god_ set-dist 20 48 2
$god_ set-dist 20 49 2
$god_ set-dist 21 22 2
$god_ set-dist 21 23 1
$god_ set-dist 21 24 1
$god_ set-dist 21 25 3
$god_ set-dist 21 26 2
$god_ set-dist 21 27 1
$god_ set-dist 21 28 1
$god_ set-dist 21 29 2
$god_ set-dist 21 30 3
$god_ set-dist 21 31 2
$god_ set-dist 21 32 2
$god_ set-dist 21 33 3
$god_ set-dist 21 34 3
$god_ set-dist 21 35 1
$god_ set-dist 21 36 2
$god_ set-dist 21 37 1
$god_ set-dist 21 38 1
$god_ set-dist 21 39 2
$god_ set-dist 21 40 1
$god_ set-dist 21 41 2
$god_ set-dist 21 42 3
$god_ set-dist 21 43 3
$god_ set-dist 21 44 1
$god_ set-dist 21 45 2
$god_ set-dist 21 46 1
$god_ set-dist 21 47 2
$god_ set-dist 21 48 2
$god_ set-dist 21 49 3
$god_ set-dist 22 23 2
$god_ set-dist 22 24 1
$god_ set-dist 22 25 1
$god_ set-dist 22 26 2
$god_ set-dist 22 27 1
$god_ set-dist 22 28 1
$god_ set-dist 22 29 1
$god_ set-dist 22 30 1
$god_ set-dist 22 31 2
$god_ set-dist 22 32 1
$god_ set-dist 22 33 2
$god_ set-dist 22 34 2
$god_ set-dist 22 35 2
$god_ set-dist 22 36 1
$god_ set-dist 22 37 2
$god_ set-dist 22 38 2
$god_ set-dist 22 39 1
$god_ set-dist 22 40 2
$god_ set-dist 22 41 2
$god_ set-dist 22 42 1
$god_ set-dist 22 43 1
$god_ set-dist 22 44 2
$god_ set-dist 22 45 1
$god_ set-dist 22 46 2
$god_ set-dist 22 47 1
$god_ set-dist 22 48 1
$god_ set-dist 22 49 1
$god_ set-dist 23 24 1
$god_ set-dist 23 25 3
$god_ set-dist 23 26 2
$god_ set-dist 23 27 1
$god_ set-dist 23 28 1
$god_ set-dist 23 29 2
$god_ set-dist 23 30 3
$god_ set-dist 23 31 2
$god_ set-dist 23 32 2
$god_ set-dist 23 33 3
$god_ set-dist 23 34 2
$god_ set-dist 23 35 1
$god_ set-dist 23 36 1
$god_ set-dist 23 37 1
$god_ set-dist 23 38 1
$god_ set-dist 23 39 2
$god_ set-dist 23 40 1
$god_ set-dist 23 41 2
$god_ set-dist 23 42 2
$god_ set-dist 23 43 3
$god_ set-dist 23 44 1
$god_ set-dist 23 45 2
$god_ set-dist 23 46 1
$god_ set-dist 23 47 1
$god_ set-dist 23 48 2
$god_ set-dist 23 49 3
$god_ set-dist 24 25 2
$god_ set-dist 24 26 2
$god_ set-dist 24 27 1
$god_ set-dist 24 28 1
$god_ set-dist 24 29 2
$god_ set-dist 24 30 2
$god_ set-dist 24 31 2
$god_ set-dist 24 32 2
$god_ set-dist 24 33 3
$god_ set-dist 24 34 2
$god_ set-dist 24 35 1
$god_ set-dist 24 36 1
$god_ set-dist 24 37 1
$god_ set-dist 24 38 1
$god_ set-dist 24 39 2
$god_ set-dist 24 40 1
$god_ set-dist 24 41 2
$god_ set-dist 24 42 2
$god_ set-dist 24 43 2
$god_ set-dist 24 44 1
$god_ set-dist 24 45 2
$god_ set-dist 24 46 1
$god_ set-dist 24 47 1
$god_ set-dist 24 48 2
$god_ set-dist 24 49 2
$god_ set-dist 25 26 2
$god_ set-dist 25 27 2
$god_ set-dist 25 28 2
$god_ set-dist 25 29 2
$god_ set-dist 25 30 2
$god_ set-dist 25 31 3
$god_ set-dist 25 32 1
$god_ set-dist 25 33 1
$god_ set-dist 25 34 2
$god_ set-dist 25 35 3
$god_ set-dist 25 36 2
$god_ set-dist 25 37 3
$god_ set-dist 25 38 3
$god_ set-dist 25 39 1
$god_ set-dist 25 40 3
$god_ set-dist 25 41 3
$god_ set-dist 25 42 1
$god_ set-dist 25 43 2
$god_ set-dist 25 44 2
$god_ set-dist 25 45 1
$god_ set-dist 25 46 3
$god_ set-dist 25 47 2
$god_ set-dist 25 48 1
$god_ set-dist 25 49 1
$god_ set-dist 26 27 1
$god_ set-dist 26 28 2
$god_ set-dist 26 29 2
$god_ set-dist 26 30 3
$god_ set-dist 26 31 3
$god_ set-dist 26 32 2
$god_ set-dist 26 33 3
$god_ set-dist 26 34 3
$god_ set-dist 26 35 2
$god_ set-dist 26 36 2
$god_ set-dist 26 37 2
$god_ set-dist 26 38 1
$god_ set-dist 26 39 2
$god_ set-dist 26 40 2
$god_ set-dist 26 41 1
$god_ set-dist 26 42 1
$god_ set-dist 26 43 2
$god_ set-dist 26 44 1
$god_ set-dist 26 45 1
$god_ set-dist 26 46 2
$god_ set-dist 26 47 2
$god_ set-dist 26 48 2
$god_ set-dist 26 49 3
$god_ set-dist 27 28 1
$god_ set-dist 27 29 2
$god_ set-dist 27 30 2
$god_ set-dist 27 31 2
$god_ set-dist 27 32 2
$god_ set-dist 27 33 2
$god_ set-dist 27 34 2
$god_ set-dist 27 35 1
$god_ set-dist 27 36 1
$god_ set-dist 27 37 2
$god_ set-dist 27 38 1
$god_ set-dist 27 39 1
$god_ set-dist 27 40 1
$god_ set-dist 27 41 2
$god_ set-dist 27 42 2
$god_ set-dist 27 43 2
$god_ set-dist 27 44 1
$god_ set-dist 27 45 1
$god_ set-dist 27 46 1
$god_ set-dist 27 47 1
$god_ set-dist 27 48 1
$god_ set-dist 27 49 2
$god_ set-dist 28 29 1
$god_ set-dist 28 30 2
$god_ set-dist 28 31 2
$god_ set-dist 28 32 1
$god_ set-dist 28 33 2
$god_ set-dist 28 34 2
$god_ set-dist 28 35 1
$god_ set-dist 28 36 1
$god_ set-dist 28 37 1
$god_ set-dist 28 38 1
$god_ set-dist 28 39 1
$god_ set-dist 28 40 1
$god_ set-dist 28 41 2
$god_ set-dist 28 42 2
$god_ set-dist 28 43 2
$god_ set-dist 28 44 1
$god_ set-dist 28 45 1
$god_ set-dist 28 46 1
$god_ set-dist 28 47 1
$god_ set-dist 28 48 1
$god_ set-dist 28 49 2
$god_ set-dist 29 30 1
$god_ set-dist 29 31 2
$god_ set-dist 29 32 1
$god_ set-dist 29 33 2
$god_ set-dist 29 34 1
$god_ set-dist 29 35 2
$god_ set-dist 29 36 1
$god_ set-dist 29 37 2
$god_ set-dist 29 38 2
$god_ set-dist 29 39 1
$god_ set-dist 29 40 2
$god_ set-dist 29 41 3
$god_ set-dist 29 42 2
$god_ set-dist 29 43 1
$god_ set-dist 29 44 2
$god_ set-dist 29 45 1
$god_ set-dist 29 46 2
$god_ set-dist 29 47 1
$god_ set-dist 29 48 1
$god_ set-dist 29 49 1
$god_ set-dist 30 31 2
$god_ set-dist 30 32 1
$god_ set-dist 30 33 2
$god_ set-dist 30 34 1
$god_ set-dist 30 35 3
$god_ set-dist 30 36 2
$god_ set-dist 30 37 3
$god_ set-dist 30 38 3
$god_ set-dist 30 39 1
$god_ set-dist 30 40 3
$god_ set-dist 30 41 3
$god_ set-dist 30 42 2
$god_ set-dist 30 43 1
$god_ set-dist 30 44 3
$god_ set-dist 30 45 2
$god_ set-dist 30 46 3
$god_ set-dist 30 47 2
$god_ set-dist 30 48 2
$god_ set-dist 30 49 1
$god_ set-dist 31 32 2
$god_ set-dist 31 33 3
$god_ set-dist 31 34 1
$god_ set-dist 31 35 2
$god_ set-dist 31 36 1
$god_ set-dist 31 37 1
$god_ set-dist 31 38 2
$god_ set-dist 31 39 2
$god_ set-dist 31 40 2
$god_ set-dist 31 41 3
$god_ set-dist 31 42 3
$god_ set-dist 31 43 2
$god_ set-dist 31 44 3
$god_ set-dist 31 45 3
$god_ set-dist 31 46 2
$god_ set-dist 31 47 2
$god_ set-dist 31 48 3
$god_ set-dist 31 49 3
$god_ set-dist 32 33 1
$god_ set-dist 32 34 1
$god_ set-dist 32 35 2
$god_ set-dist 32 36 2
$god_ set-dist 32 37 2
$god_ set-dist 32 38 2
$god_ set-dist 32 39 1
$god_ set-dist 32 40 2
$god_ set-dist 32 41 3
$god_ set-dist 32 42 2
$god_ set-dist 32 43 1
$god_ set-dist 32 44 2
$god_ set-dist 32 45 1
$god_ set-dist 32 46 2
$god_ set-dist 32 47 1
$god_ set-dist 32 48 1
$god_ set-dist 32 49 1
$god_ set-dist 33 34 2
$god_ set-dist 33 35 3
$god_ set-dist 33 36 3
$god_ set-dist 33 37 3
$god_ set-dist 33 38 3
$god_ set-dist 33 39 2
$god_ set-dist 33 40 3
$god_ set-dist 33 41 3
$god_ set-dist 33 42 2
$god_ set-dist 33 43 1
$god_ set-dist 33 44 3
$god_ set-dist 33 45 2
$god_ set-dist 33 46 3
$god_ set-dist 33 47 2
$god_ set-dist 33 48 1
$god_ set-dist 33 49 1
$god_ set-dist 34 35 3
$god_ set-dist 34 36 1
$god_ set-dist 34 37 2
$god_ set-dist 34 38 3
$god_ set-dist 34 39 2
$god_ set-dist 34 40 2
$god_ set-dist 34 41 4
$god_ set-dist 34 42 3
$god_ set-dist 34 43 1
$god_ set-dist 34 44 3
$god_ set-dist 34 45 2
$god_ set-dist 34 46 3
$god_ set-dist 34 47 2
$god_ set-dist 34 48 2
$god_ set-dist 34 49 2
$god_ set-dist 35 36 2
$god_ set-dist 35 37 1
$god_ set-dist 35 38 1
$god_ set-dist 35 39 2
$god_ set-dist 35 40 1
$god_ set-dist 35 41 2
$god_ set-dist 35 42 3
$god_ set-dist 35 43 3
$god_ set-dist 35 44 1
$god_ set-dist 35 45 2
$god_ set-dist 35 46 1
$god_ set-dist 35 47 2
$god_ set-dist 35 48 2
$god_ set-dist 35 49 3
$god_ set-dist 36 37 1
$god_ set-dist 36 38 2
$god_ set-dist 36 39 1
$god_ set-dist 36 40 1
$god_ set-dist 36 41 3
$god_ set-dist 36 42 2
$god_ set-dist 36 43 2
$god_ set-dist 36 44 2
$god_ set-dist 36 45 2
$god_ set-dist 36 46 2
$god_ set-dist 36 47 1
$god_ set-dist 36 48 2
$god_ set-dist 36 49 2
$god_ set-dist 37 38 1
$god_ set-dist 37 39 2
$god_ set-dist 37 40 1
$god_ set-dist 37 41 2
$god_ set-dist 37 42 3
$god_ set-dist 37 43 3
$god_ set-dist 37 44 2
$god_ set-dist 37 45 2
$god_ set-dist 37 46 1
$god_ set-dist 37 47 2
$god_ set-dist 37 48 2
$god_ set-dist 37 49 3
$god_ set-dist 38 39 2
$god_ set-dist 38 40 1
$god_ set-dist 38 41 1
$god_ set-dist 38 42 2
$god_ set-dist 38 43 3
$god_ set-dist 38 44 1
$god_ set-dist 38 45 2
$god_ set-dist 38 46 1
$god_ set-dist 38 47 1
$god_ set-dist 38 48 2
$god_ set-dist 38 49 3
$god_ set-dist 39 40 2
$god_ set-dist 39 41 2
$god_ set-dist 39 42 1
$god_ set-dist 39 43 1
$god_ set-dist 39 44 2
$god_ set-dist 39 45 1
$god_ set-dist 39 46 2
$god_ set-dist 39 47 1
$god_ set-dist 39 48 1
$god_ set-dist 39 49 1
$god_ set-dist 40 41 2
$god_ set-dist 40 42 2
$god_ set-dist 40 43 3
$god_ set-dist 40 44 1
$god_ set-dist 40 45 2
$god_ set-dist 40 46 1
$god_ set-dist 40 47 1
$god_ set-dist 40 48 2
$god_ set-dist 40 49 3
$god_ set-dist 41 42 2
$god_ set-dist 41 43 3
$god_ set-dist 41 44 1
$god_ set-dist 41 45 2
$god_ set-dist 41 46 2
$god_ set-dist 41 47 2
$god_ set-dist 41 48 2
$god_ set-dist 41 49 3
$god_ set-dist 42 43 2
$god_ set-dist 42 44 2
$god_ set-dist 42 45 1
$god_ set-dist 42 46 3
$god_ set-dist 42 47 1
$god_ set-dist 42 48 1
$god_ set-dist 42 49 2
$god_ set-dist 43 44 2
$god_ set-dist 43 45 1
$god_ set-dist 43 46 3
$god_ set-dist 43 47 2
$god_ set-dist 43 48 1
$god_ set-dist 43 49 1
$god_ set-dist 44 45 1
$god_ set-dist 44 46 2
$god_ set-dist 44 47 1
$god_ set-dist 44 48 2
$god_ set-dist 44 49 3
$god_ set-dist 45 46 2
$god_ set-dist 45 47 1
$god_ set-dist 45 48 1
$god_ set-dist 45 49 2
$god_ set-dist 46 47 2
$god_ set-dist 46 48 2
$god_ set-dist 46 49 3
$god_ set-dist 47 48 1
$god_ set-dist 47 49 2
$god_ set-dist 48 49 1
$ns_ at 150.000000000000 "$node_(0) setdest 462.740678566057 455.808262112112 8.060114313034"
$ns_ at 150.000000000000 "$node_(1) setdest 563.129372664473 204.211685225840 11.272589211515"
$ns_ at 150.000000000000 "$node_(2) setdest 402.692278975154 231.425942377326 15.238524002399"
$ns_ at 150.000000000000 "$node_(3) setdest 23.926815888094 494.644450784206 19.062738196237"
$ns_ at 150.000000000000 "$node_(4) setdest 81.769160006192 535.580901196419 6.410640220487"
$ns_ at 150.000000000000 "$node_(5) setdest 156.153885959650 455.087617225532 3.958861688954"
$ns_ at 150.000000000000 "$node_(6) setdest 369.560616037019 421.731795372957 12.358931831703"
$ns_ at 150.000000000000 "$node_(7) setdest 251.659672182335 546.441259174557 3.686351568150"
$ns_ at 150.000000000000 "$node_(8) setdest 406.503383927677 224.905802623929 7.191796138858"
$ns_ at 150.000000000000 "$node_(9) setdest 149.141730782921 233.160143107481 6.642613695390"
$ns_ at 150.000000000000 "$node_(10) setdest 507.024871171725 384.406379516359 4.273891022655"
$ns_ at 150.000000000000 "$node_(11) setdest 345.035373246613 552.887727066560 13.611378933109"
$ns_ at 150.000000000000 "$node_(12) setdest 322.608416656160 167.853739311355 5.678684115681"
$ns_ at 150.000000000000 "$node_(13) setdest 395.624942206775 573.255150585219 13.947527827948"
$ns_ at 150.000000000000 "$node_(14) setdest 439.043025805370 64.466569754073 17.327678926326"
$ns_ at 150.000000000000 "$node_(15) setdest 479.894560593662 522.268307891630 10.208409322274"
$ns_ at 150.000000000000 "$node_(16) setdest 401.873580592150 338.501742132558 6.061392137960"
$ns_ at 150.000000000000 "$node_(17) setdest 114.564540737640 651.036696491212 19.595135775345"
$ns_ at 150.000000000000 "$node_(18) setdest 514.492536241759 386.893675533096 4.456009600975"
$ns_ at 150.000000000000 "$node_(19) setdest 64.266914151962 87.732563400262 2.173828755542"
$ns_ at 150.000000000000 "$node_(20) setdest 178.685236993835 595.572586061689 18.512777167060"
$ns_ at 150.000000000000 "$node_(21) setdest 64.850668799816 477.862034734642 16.049610008094"
$ns_ at 150.000000000000 "$node_(22) setdest 103.607629793786 73.725226718198 0.154245875795"
$ns_ at 150.000000000000 "$node_(23) setdest 441.286703743421 525.385344463902 8.172974432814"
$ns_ at 150.000000000000 "$node_(24) setdest 572.351176850275 593.754244542421 2.964562996437"
$ns_ at 150.000000000000 "$node_(25) setdest 492.781496438792 142.206057277243 13.096807483615"
$ns_ at 150.000000000000 "$node_(26) setdest 95.171440557032 358.491578524990 16.158325206705"
$ns_ at 150.000000000000 "$node_(27) setdest 504.415898634705 613.435064427204 10.636096352783"
$ns_ at 150.000000000000 "$node_(28) setdest 35.887079877898 170.199643809238 14.891055765874"
$ns_ at 150.000000000000 "$node_(29) setdest 340.956474495807 44.558833872023 7.457044453143"
$ns_ at 150.000000000000 "$node_(30) setdest 616.081391583413 347.966252129288 13.167569753447"
$ns_ at 150.000000000000 "$node_(31) setdest 403.894390799113 246.900337744800 7.444553810281"
$ns_ at 150.000000000000 "$node_(32) setdest 180.622787168142 516.290380907804 15.509316149619"
$ns_ at 150.000000000000 "$node_(33) setdest 186.646054389975 612.506381308503 5.314040818559"
$ns_ at 150.000000000000 "$node_(34) setdest 443.438508299927 376.739221236612 2.859722435200"
$ns_ at 150.000000000000 "$node_(35) setdest 26.394271953033 525.369985668677 8.797369596980"
$ns_ at 150.000000000000 "$node_(36) setdest 529.201843620740 538.787268562650 5.988230594795"
$ns_ at 150.000000000000 "$node_(37) setdest 15.907742676514 123.051539919041 1.845826284013"
$ns_ at 150.000000000000 "$node_(38) setdest 236.886531643662 574.114838462762 10.259609849658"
$ns_ at 150.000000000000 "$node_(39) setdest 525.771605933666 103.129685570247 19.544266579954"
$ns_ at 150.000000000000 "$node_(40) setdest 7.087371403857 534.230877198284 6.158166909800"
$ns_ at 150.000000000000 "$node_(41) setdest 31.735526051137 132.156501449308 14.071686087854"
$ns_ at 150.000000000000 "$node_(42) setdest 533.426320213516 448.104427642124 12.358558590193"
$ns_ at 150.000000000000 "$node_(43) setdest 343.936316636101 538.081112790590 5.764081356798"
$ns_ at 150.000000000000 "$node_(44) setdest 214.296469752133 653.692070354696 19.652712910381"
$ns_ at 150.000000000000 "$node_(45) setdest 496.342472641085 571.414149476714 18.173100329005"
$ns_ at 150.000000000000 "$node_(46) setdest 424.938819952606 49.715010088571 0.399621772375"
$ns_ at 150.000000000000 "$node_(47) setdest 45.436790348229 531.561425115163 17.809948903618"
$ns_ at 150.000000000000 "$node_(48) setdest 84.567409383604 271.330577707095 5.759267834464"
$ns_ at 150.000000000000 "$node_(49) setdest 525.102441932845 504.141719742091 19.791545364224"
$ns_ at 150.079510106459 "$god_ set-dist 6 9 1"
$ns_ at 150.099106590602 "$god_ set-dist 2 41 1"
$ns_ at 150.099106590602 "$god_ set-dist 34 41 3"
$ns_ at 150.099106590602 "$god_ set-dist 36 41 2"
$ns_ at 150.125964171822 "$god_ set-dist 19 45 2"
$ns_ at 150.125964171822 "$god_ set-dist 24 45 1"
$ns_ at 150.137545535215 "$god_ set-dist 34 38 2"
$ns_ at 150.137545535215 "$god_ set-dist 36 38 1"
$ns_ at 150.151845597547 "$god_ set-dist 28 37 2"
$ns_ at 150.151845597547 "$god_ set-dist 32 37 3"
$ns_ at 150.151845597547 "$god_ set-dist 33 37 4"
$ns_ at 150.151845597547 "$god_ set-dist 37 48 3"
$ns_ at 150.163566943157 "$god_ set-dist 2 3 2"
$ns_ at 150.163566943157 "$god_ set-dist 2 25 2"
$ns_ at 150.163566943157 "$god_ set-dist 2 43 2"
$ns_ at 150.163566943157 "$god_ set-dist 2 45 1"
$ns_ at 150.222024668967 "$god_ set-dist 11 44 2"
$ns_ at 150.222024668967 "$god_ set-dist 14 44 1"
$ns_ at 150.251958403687 "$god_ set-dist 6 22 1"
$ns_ at 150.251958403687 "$god_ set-dist 6 24 2"
$ns_ at 150.279803838459 "$god_ set-dist 8 11 2"
$ns_ at 150.279803838459 "$god_ set-dist 8 14 1"
$ns_ at 150.336152876407 "$god_ set-dist 2 37 2"
$ns_ at 150.362811279153 "$god_ set-dist 44 46 1"
$ns_ at 150.364049619546 "$god_ set-dist 1 33 1"
$ns_ at 150.413966153068 "$god_ set-dist 1 2 2"
$ns_ at 150.413966153068 "$god_ set-dist 1 26 2"
$ns_ at 150.413966153068 "$god_ set-dist 1 44 2"
$ns_ at 150.413966153068 "$god_ set-dist 1 45 1"
$ns_ at 150.452185933824 "$god_ set-dist 24 39 1"
$ns_ at 150.457574898971 "$god_ set-dist 4 14 3"
$ns_ at 150.457574898971 "$god_ set-dist 4 15 2"
$ns_ at 150.457574898971 "$god_ set-dist 4 21 3"
$ns_ at 150.457574898971 "$god_ set-dist 4 35 3"
$ns_ at 150.457574898971 "$god_ set-dist 4 46 3"
$ns_ at 150.469051349743 "$god_ set-dist 11 13 2"
$ns_ at 150.469051349743 "$god_ set-dist 13 46 1"
$ns_ at 150.498267524689 "$god_ set-dist 13 14 1"
$ns_ at 150.498267524689 "$god_ set-dist 13 19 2"
$ns_ at 150.557354826424 "$god_ set-dist 2 9 2"
$ns_ at 150.557354826424 "$god_ set-dist 9 26 2"
$ns_ at 150.557354826424 "$god_ set-dist 9 44 2"
$ns_ at 150.557354826424 "$god_ set-dist 9 45 1"
$ns_ at 150.565529528610 "$god_ set-dist 22 44 1"
$ns_ at 150.565529528610 "$god_ set-dist 30 44 2"
$ns_ at 150.565529528610 "$god_ set-dist 44 49 2"
$ns_ at 150.570200266213 "$god_ set-dist 3 11 3"
$ns_ at 150.570200266213 "$god_ set-dist 6 11 3"
$ns_ at 150.570200266213 "$god_ set-dist 11 17 3"
$ns_ at 150.570200266213 "$god_ set-dist 11 22 2"
$ns_ at 150.570200266213 "$god_ set-dist 11 25 3"
$ns_ at 150.570200266213 "$god_ set-dist 11 29 2"
$ns_ at 150.570200266213 "$god_ set-dist 11 36 1"
$ns_ at 150.570200266213 "$god_ set-dist 11 39 2"
$ns_ at 150.570200266213 "$god_ set-dist 11 42 3"
$ns_ at 150.570200266213 "$god_ set-dist 11 47 2"
$ns_ at 150.570200266213 "$god_ set-dist 11 49 3"
$ns_ at 150.681198479234 "$god_ set-dist 15 37 1"
$ns_ at 150.681198479234 "$god_ set-dist 32 37 2"
$ns_ at 150.681198479234 "$god_ set-dist 33 37 3"
$ns_ at 150.681198479234 "$god_ set-dist 37 48 2"
$ns_ at 150.685481146428 "$god_ set-dist 4 14 2"
$ns_ at 150.685481146428 "$god_ set-dist 4 21 2"
$ns_ at 150.685481146428 "$god_ set-dist 4 28 1"
$ns_ at 150.685481146428 "$god_ set-dist 4 35 2"
$ns_ at 150.685481146428 "$god_ set-dist 4 46 2"
$ns_ at 150.715067755693 "$god_ set-dist 34 35 2"
$ns_ at 150.715067755693 "$god_ set-dist 35 36 1"
$ns_ at 150.723683696967 "$god_ set-dist 30 48 1"
$ns_ at 150.773788578491 "$god_ set-dist 1 8 2"
$ns_ at 150.773788578491 "$god_ set-dist 3 8 2"
$ns_ at 150.773788578491 "$god_ set-dist 8 9 2"
$ns_ at 150.773788578491 "$god_ set-dist 8 25 2"
$ns_ at 150.773788578491 "$god_ set-dist 8 43 2"
$ns_ at 150.773788578491 "$god_ set-dist 8 45 1"
$ns_ at 150.796884508030 "$god_ set-dist 7 31 2"
$ns_ at 150.796884508030 "$god_ set-dist 8 31 2"
$ns_ at 150.796884508030 "$god_ set-dist 10 31 3"
$ns_ at 150.796884508030 "$god_ set-dist 16 31 2"
$ns_ at 150.796884508030 "$god_ set-dist 24 31 1"
$ns_ at 150.796884508030 "$god_ set-dist 31 44 2"
$ns_ at 150.796884508030 "$god_ set-dist 31 45 2"
$ns_ at 150.807790692601 "$god_ set-dist 4 46 3"
$ns_ at 150.807790692601 "$god_ set-dist 28 46 2"
$ns_ at 150.814871010407 "$god_ set-dist 9 33 1"
$ns_ at 150.909646607833 "$god_ set-dist 2 6 2"
$ns_ at 150.909646607833 "$god_ set-dist 2 22 1"
$ns_ at 150.909646607833 "$god_ set-dist 2 30 2"
$ns_ at 150.909646607833 "$god_ set-dist 2 49 2"
$ns_ at 150.925161991387 "$god_ set-dist 6 29 1"
$ns_ at 150.931035142891 "$god_ set-dist 13 19 3"
$ns_ at 150.931035142891 "$god_ set-dist 14 19 2"
$ns_ at 150.937629698588 "$god_ set-dist 12 28 1"
$ns_ at 150.971120663643 "$god_ set-dist 37 41 3"
$ns_ at 150.971120663643 "$god_ set-dist 38 41 2"
$ns_ at 151.088109189059 "$god_ set-dist 21 34 2"
$ns_ at 151.088109189059 "$god_ set-dist 21 36 1"
$ns_ at 151.113278670354 "$god_ set-dist 10 20 3"
$ns_ at 151.113278670354 "$god_ set-dist 12 20 2"
$ns_ at 151.113278670354 "$god_ set-dist 18 20 3"
$ns_ at 151.113278670354 "$god_ set-dist 20 25 2"
$ns_ at 151.113278670354 "$god_ set-dist 20 32 1"
$ns_ at 151.118321131567 "$god_ set-dist 0 11 2"
$ns_ at 151.118321131567 "$god_ set-dist 0 14 1"
$ns_ at 151.127012298433 "$god_ set-dist 15 48 2"
$ns_ at 151.127012298433 "$god_ set-dist 37 48 3"
$ns_ at 151.133602427638 "$god_ set-dist 7 17 3"
$ns_ at 151.133602427638 "$god_ set-dist 7 47 2"
$ns_ at 151.182898641848 "$god_ set-dist 23 43 2"
$ns_ at 151.182898641848 "$god_ set-dist 38 43 2"
$ns_ at 151.182898641848 "$god_ set-dist 40 43 2"
$ns_ at 151.182898641848 "$god_ set-dist 43 47 1"
$ns_ at 151.253268594209 "$god_ set-dist 8 49 2"
$ns_ at 151.253268594209 "$god_ set-dist 26 49 2"
$ns_ at 151.253268594209 "$god_ set-dist 45 49 1"
$ns_ at 151.258525967441 "$god_ set-dist 15 33 3"
$ns_ at 151.258525967441 "$god_ set-dist 32 33 2"
$ns_ at 151.258525967441 "$god_ set-dist 33 37 4"
$ns_ at 151.270806605289 "$god_ set-dist 20 25 3"
$ns_ at 151.270806605289 "$god_ set-dist 25 32 2"
$ns_ at 151.270806605289 "$god_ set-dist 25 34 3"
$ns_ at 151.284512943199 "$god_ set-dist 34 46 2"
$ns_ at 151.284512943199 "$god_ set-dist 36 46 1"
$ns_ at 151.337238558711 "$god_ set-dist 3 42 2"
$ns_ at 151.337773475228 "$god_ set-dist 1 23 2"
$ns_ at 151.337773475228 "$god_ set-dist 1 38 2"
$ns_ at 151.337773475228 "$god_ set-dist 1 40 2"
$ns_ at 151.337773475228 "$god_ set-dist 1 47 1"
$ns_ at 151.394778884470 "$god_ set-dist 10 49 2"
$ns_ at 151.394778884470 "$god_ set-dist 12 49 1"
$ns_ at 151.394778884470 "$god_ set-dist 18 49 2"
$ns_ at 151.436689307096 "$god_ set-dist 6 8 2"
$ns_ at 151.436689307096 "$god_ set-dist 8 12 1"
$ns_ at 151.495978334124 "$god_ set-dist 6 41 2"
$ns_ at 151.495978334124 "$god_ set-dist 17 41 2"
$ns_ at 151.495978334124 "$god_ set-dist 25 41 2"
$ns_ at 151.495978334124 "$god_ set-dist 41 42 1"
$ns_ at 151.505484227284 "$god_ set-dist 2 10 1"
$ns_ at 151.505484227284 "$god_ set-dist 10 36 2"
$ns_ at 151.554077489574 "$god_ set-dist 4 6 1"
$ns_ at 151.558307593740 "$god_ set-dist 39 44 1"
$ns_ at 151.568417953660 "$god_ set-dist 2 39 1"
$ns_ at 151.620248792514 "$god_ set-dist 11 29 3"
$ns_ at 151.620248792514 "$god_ set-dist 19 29 3"
$ns_ at 151.620248792514 "$god_ set-dist 29 36 2"
$ns_ at 151.622186011911 "$god_ set-dist 8 30 2"
$ns_ at 151.622186011911 "$god_ set-dist 23 30 2"
$ns_ at 151.622186011911 "$god_ set-dist 30 38 2"
$ns_ at 151.622186011911 "$god_ set-dist 30 40 2"
$ns_ at 151.622186011911 "$god_ set-dist 30 47 1"
$ns_ at 151.645697811786 "$god_ set-dist 11 22 3"
$ns_ at 151.645697811786 "$god_ set-dist 22 36 2"
$ns_ at 151.647734423333 "$god_ set-dist 9 23 2"
$ns_ at 151.647734423333 "$god_ set-dist 9 38 2"
$ns_ at 151.647734423333 "$god_ set-dist 9 40 2"
$ns_ at 151.647734423333 "$god_ set-dist 9 47 1"
$ns_ at 151.683465763898 "$god_ set-dist 11 16 2"
$ns_ at 151.683465763898 "$god_ set-dist 11 22 2"
$ns_ at 151.683465763898 "$god_ set-dist 11 24 1"
$ns_ at 151.683465763898 "$god_ set-dist 11 45 2"
$ns_ at 151.755339387728 "$god_ set-dist 10 29 2"
$ns_ at 151.755339387728 "$god_ set-dist 12 29 1"
$ns_ at 151.755339387728 "$god_ set-dist 18 29 2"
$ns_ at 151.774419072904 "$god_ set-dist 36 45 1"
$ns_ at 151.793394315223 "$god_ set-dist 3 41 2"
$ns_ at 151.793394315223 "$god_ set-dist 12 41 1"
$ns_ at 151.793394315223 "$god_ set-dist 20 41 3"
$ns_ at 151.793394315223 "$god_ set-dist 29 41 2"
$ns_ at 151.793394315223 "$god_ set-dist 32 41 2"
$ns_ at 151.793394315223 "$god_ set-dist 41 49 2"
$ns_ at 151.844777257157 "$god_ set-dist 14 42 2"
$ns_ at 151.844777257157 "$god_ set-dist 21 42 2"
$ns_ at 151.844777257157 "$god_ set-dist 35 42 2"
$ns_ at 151.844777257157 "$god_ set-dist 42 44 1"
$ns_ at 151.844777257157 "$god_ set-dist 42 46 2"
$ns_ at 151.882446529948 "$god_ set-dist 27 33 3"
$ns_ at 151.882446529948 "$god_ set-dist 27 48 2"
$ns_ at 151.882446529948 "$god_ set-dist 33 46 4"
$ns_ at 151.882446529948 "$god_ set-dist 46 48 3"
$ns_ at 151.897205777065 "$god_ set-dist 26 30 2"
$ns_ at 151.897205777065 "$god_ set-dist 30 45 1"
$ns_ at 151.944347869956 "$god_ set-dist 2 12 1"
$ns_ at 151.965723685407 "$god_ set-dist 34 44 2"
$ns_ at 151.965723685407 "$god_ set-dist 36 44 1"
$ns_ at 152.123442891384 "$god_ set-dist 7 34 2"
$ns_ at 152.123442891384 "$god_ set-dist 8 34 2"
$ns_ at 152.123442891384 "$god_ set-dist 15 34 1"
$ns_ at 152.123442891384 "$god_ set-dist 16 34 2"
$ns_ at 152.156455124414 "$god_ set-dist 17 42 2"
$ns_ at 152.185510129007 "$god_ set-dist 42 49 1"
$ns_ at 152.206227137087 "$god_ set-dist 11 40 1"
$ns_ at 152.221337849573 "$god_ set-dist 3 23 2"
$ns_ at 152.221337849573 "$god_ set-dist 3 38 2"
$ns_ at 152.221337849573 "$god_ set-dist 3 40 2"
$ns_ at 152.221337849573 "$god_ set-dist 3 47 1"
$ns_ at 152.235578559097 "$god_ set-dist 0 25 2"
$ns_ at 152.235578559097 "$god_ set-dist 5 25 2"
$ns_ at 152.235578559097 "$god_ set-dist 7 25 2"
$ns_ at 152.235578559097 "$god_ set-dist 13 25 2"
$ns_ at 152.235578559097 "$god_ set-dist 16 25 1"
$ns_ at 152.235578559097 "$god_ set-dist 23 25 2"
$ns_ at 152.235578559097 "$god_ set-dist 25 38 2"
$ns_ at 152.235578559097 "$god_ set-dist 25 40 2"
$ns_ at 152.304405850768 "$god_ set-dist 15 19 1"
$ns_ at 152.304405850768 "$god_ set-dist 19 29 2"
$ns_ at 152.304405850768 "$god_ set-dist 19 32 2"
$ns_ at 152.311999262120 "$god_ set-dist 34 42 2"
$ns_ at 152.311999262120 "$god_ set-dist 34 47 1"
$ns_ at 152.502711023950 "$god_ set-dist 15 31 1"
$ns_ at 152.507703862161 "$god_ set-dist 28 34 1"
$ns_ at 152.537927930299 "$god_ set-dist 17 31 2"
$ns_ at 152.537927930299 "$god_ set-dist 17 34 1"
$ns_ at 152.537927930299 "$god_ set-dist 25 34 2"
$ns_ at 152.565825490982 "$god_ set-dist 7 17 2"
$ns_ at 152.565825490982 "$god_ set-dist 14 17 2"
$ns_ at 152.565825490982 "$god_ set-dist 17 21 2"
$ns_ at 152.565825490982 "$god_ set-dist 17 28 1"
$ns_ at 152.565825490982 "$god_ set-dist 17 35 2"
$ns_ at 152.566436240723 "$god_ set-dist 26 39 1"
$ns_ at 152.684008778030 "$god_ set-dist 3 10 3"
$ns_ at 152.684008778030 "$god_ set-dist 3 12 2"
$ns_ at 152.684008778030 "$god_ set-dist 3 18 3"
$ns_ at 152.684008778030 "$god_ set-dist 3 41 3"
$ns_ at 152.703147024534 "$god_ set-dist 22 26 1"
$ns_ at 152.710410227214 "$god_ set-dist 0 46 1"
$ns_ at 152.813992444000 "$god_ set-dist 38 45 1"
$ns_ at 152.813992444000 "$god_ set-dist 38 49 2"
$ns_ at 152.816040322640 "$god_ set-dist 8 42 1"
$ns_ at 152.883328620222 "$god_ set-dist 0 19 2"
$ns_ at 152.883328620222 "$god_ set-dist 13 19 2"
$ns_ at 152.883328620222 "$god_ set-dist 19 40 1"
$ns_ at 152.925790131930 "$god_ set-dist 28 42 1"
$ns_ at 152.993668026127 "$god_ set-dist 6 36 3"
$ns_ at 152.993668026127 "$god_ set-dist 36 39 2"
$ns_ at 152.998500302100 "$god_ set-dist 7 30 2"
$ns_ at 152.998500302100 "$god_ set-dist 14 30 2"
$ns_ at 152.998500302100 "$god_ set-dist 21 30 2"
$ns_ at 152.998500302100 "$god_ set-dist 28 30 1"
$ns_ at 152.998500302100 "$god_ set-dist 30 35 2"
$ns_ at 153.053149573057 "$god_ set-dist 1 7 2"
$ns_ at 153.053149573057 "$god_ set-dist 1 14 2"
$ns_ at 153.053149573057 "$god_ set-dist 1 21 2"
$ns_ at 153.053149573057 "$god_ set-dist 1 28 1"
$ns_ at 153.053149573057 "$god_ set-dist 1 35 2"
$ns_ at 153.091651988857 "$god_ set-dist 12 37 2"
$ns_ at 153.091651988857 "$god_ set-dist 27 37 1"
$ns_ at 153.105631480924 "$god_ set-dist 2 42 1"
$ns_ at 153.114043159052 "$god_ set-dist 8 39 1"
$ns_ at 153.156645207234 "$god_ set-dist 40 45 1"
$ns_ at 153.156645207234 "$god_ set-dist 40 49 2"
$ns_ at 153.219651237952 "$god_ set-dist 16 21 1"
$ns_ at 153.219651237952 "$god_ set-dist 21 25 2"
$ns_ at 153.272402750617 "$god_ set-dist 10 32 3"
$ns_ at 153.272402750617 "$god_ set-dist 12 32 2"
$ns_ at 153.272402750617 "$god_ set-dist 18 32 3"
$ns_ at 153.272402750617 "$god_ set-dist 32 41 3"
$ns_ at 153.298335905605 "$god_ set-dist 26 28 1"
$ns_ at 153.298335905605 "$god_ set-dist 26 34 2"
$ns_ at 153.323834214423 "$god_ set-dist 25 26 1"
$ns_ at 153.323834214423 "$god_ set-dist 26 33 2"
$ns_ at 153.386654390402 "$god_ set-dist 13 24 1"
$ns_ at 153.386654390402 "$god_ set-dist 13 31 2"
$ns_ at 153.418904739229 "$god_ set-dist 23 45 1"
$ns_ at 153.418904739229 "$god_ set-dist 23 49 2"
$ns_ at 153.533938799399 "$god_ set-dist 11 14 2"
$ns_ at 153.540438094829 "$god_ set-dist 15 33 2"
$ns_ at 153.540438094829 "$god_ set-dist 19 33 3"
$ns_ at 153.540438094829 "$god_ set-dist 29 33 1"
$ns_ at 153.540438094829 "$god_ set-dist 33 37 3"
$ns_ at 153.540438094829 "$god_ set-dist 33 46 3"
$ns_ at 153.656094783706 "$god_ set-dist 6 30 1"
$ns_ at 153.686916091213 "$god_ set-dist 17 20 1"
$ns_ at 153.686916091213 "$god_ set-dist 20 25 2"
$ns_ at 153.739755639621 "$god_ set-dist 47 49 1"
$ns_ at 153.742959865409 "$god_ set-dist 7 43 2"
$ns_ at 153.742959865409 "$god_ set-dist 14 43 2"
$ns_ at 153.742959865409 "$god_ set-dist 21 43 2"
$ns_ at 153.742959865409 "$god_ set-dist 28 43 1"
$ns_ at 153.742959865409 "$god_ set-dist 35 43 2"
$ns_ at 153.767517682098 "$god_ set-dist 26 48 1"
$ns_ at 153.854990328206 "$god_ set-dist 11 21 1"
$ns_ at 153.901157856871 "$god_ set-dist 17 25 2"
$ns_ at 153.901157856871 "$god_ set-dist 20 25 3"
$ns_ at 153.901157856871 "$god_ set-dist 25 34 3"
$ns_ at 153.962242222162 "$god_ set-dist 11 15 1"
$ns_ at 153.962242222162 "$god_ set-dist 11 29 2"
$ns_ at 153.962242222162 "$god_ set-dist 11 32 2"
$ns_ at 153.962242222162 "$god_ set-dist 11 33 3"
$ns_ at 153.971801637559 "$god_ set-dist 16 35 1"
$ns_ at 153.971801637559 "$god_ set-dist 25 35 2"
$ns_ at 154.093461983525 "$god_ set-dist 10 17 3"
$ns_ at 154.093461983525 "$god_ set-dist 12 17 2"
$ns_ at 154.093461983525 "$god_ set-dist 17 18 3"
$ns_ at 154.093461983525 "$god_ set-dist 17 41 3"
$ns_ at 154.127076214470 "$god_ set-dist 3 25 2"
$ns_ at 154.162401555489 "$god_ set-dist 20 25 2"
$ns_ at 154.162401555489 "$god_ set-dist 25 29 1"
$ns_ at 154.162401555489 "$god_ set-dist 25 34 2"
$ns_ at 154.174288491816 "$god_ set-dist 14 16 1"
$ns_ at 154.174288491816 "$god_ set-dist 14 25 2"
$ns_ at 154.201810756679 "$god_ set-dist 20 42 2"
$ns_ at 154.201810756679 "$god_ set-dist 29 42 1"
$ns_ at 154.240751247451 "$god_ set-dist 10 20 4"
$ns_ at 154.240751247451 "$god_ set-dist 12 20 3"
$ns_ at 154.240751247451 "$god_ set-dist 18 20 4"
$ns_ at 154.240751247451 "$god_ set-dist 20 25 3"
$ns_ at 154.240751247451 "$god_ set-dist 20 29 2"
$ns_ at 154.240751247451 "$god_ set-dist 20 41 4"
$ns_ at 154.240751247451 "$god_ set-dist 20 42 3"
$ns_ at 154.245100457723 "$god_ set-dist 8 47 2"
$ns_ at 154.321868290554 "$god_ set-dist 7 9 2"
$ns_ at 154.321868290554 "$god_ set-dist 9 14 2"
$ns_ at 154.321868290554 "$god_ set-dist 9 21 2"
$ns_ at 154.321868290554 "$god_ set-dist 9 28 1"
$ns_ at 154.321868290554 "$god_ set-dist 9 35 2"
$ns_ at 154.341483134701 "$god_ set-dist 6 38 2"
$ns_ at 154.341483134701 "$god_ set-dist 38 39 1"
$ns_ at 154.579280027094 "$god_ set-dist 11 23 1"
$ns_ at 154.631793762898 "$god_ set-dist 3 45 2"
$ns_ at 154.814602600643 "$god_ set-dist 1 18 2"
$ns_ at 154.814602600643 "$god_ set-dist 3 18 2"
$ns_ at 154.814602600643 "$god_ set-dist 4 18 2"
$ns_ at 154.814602600643 "$god_ set-dist 9 18 2"
$ns_ at 154.814602600643 "$god_ set-dist 17 18 2"
$ns_ at 154.814602600643 "$god_ set-dist 18 20 3"
$ns_ at 154.814602600643 "$god_ set-dist 18 30 2"
$ns_ at 154.814602600643 "$god_ set-dist 18 32 2"
$ns_ at 154.814602600643 "$god_ set-dist 18 39 1"
$ns_ at 154.814602600643 "$god_ set-dist 18 43 2"
$ns_ at 154.821669621215 "$god_ set-dist 1 10 2"
$ns_ at 154.821669621215 "$god_ set-dist 3 10 2"
$ns_ at 154.821669621215 "$god_ set-dist 4 10 2"
$ns_ at 154.821669621215 "$god_ set-dist 9 10 2"
$ns_ at 154.821669621215 "$god_ set-dist 10 17 2"
$ns_ at 154.821669621215 "$god_ set-dist 10 20 3"
$ns_ at 154.821669621215 "$god_ set-dist 10 30 2"
$ns_ at 154.821669621215 "$god_ set-dist 10 32 2"
$ns_ at 154.821669621215 "$god_ set-dist 10 39 1"
$ns_ at 154.821669621215 "$god_ set-dist 10 43 2"
$ns_ at 154.858424087487 "$god_ set-dist 0 24 1"
$ns_ at 154.858424087487 "$god_ set-dist 0 31 2"
$ns_ at 154.893509594986 "$god_ set-dist 3 8 3"
$ns_ at 154.893509594986 "$god_ set-dist 3 10 3"
$ns_ at 154.893509594986 "$god_ set-dist 3 18 3"
$ns_ at 154.893509594986 "$god_ set-dist 3 39 2"
$ns_ at 154.979092239334 "$god_ set-dist 1 41 2"
$ns_ at 154.979092239334 "$god_ set-dist 4 41 2"
$ns_ at 154.979092239334 "$god_ set-dist 9 41 2"
$ns_ at 154.979092239334 "$god_ set-dist 17 41 2"
$ns_ at 154.979092239334 "$god_ set-dist 20 41 3"
$ns_ at 154.979092239334 "$god_ set-dist 30 41 2"
$ns_ at 154.979092239334 "$god_ set-dist 32 41 2"
$ns_ at 154.979092239334 "$god_ set-dist 39 41 1"
$ns_ at 154.979092239334 "$god_ set-dist 41 43 2"
$ns_ at 155.077537506529 "$god_ set-dist 2 33 2"
$ns_ at 155.077537506529 "$god_ set-dist 2 48 1"
$ns_ at 155.077537506529 "$god_ set-dist 46 48 2"
$ns_ at 155.090286989449 "$god_ set-dist 1 7 3"
$ns_ at 155.090286989449 "$god_ set-dist 4 7 3"
$ns_ at 155.090286989449 "$god_ set-dist 7 9 3"
$ns_ at 155.090286989449 "$god_ set-dist 7 17 3"
$ns_ at 155.090286989449 "$god_ set-dist 7 28 2"
$ns_ at 155.090286989449 "$god_ set-dist 7 30 3"
$ns_ at 155.090286989449 "$god_ set-dist 7 43 3"
$ns_ at 155.126519469596 "$god_ set-dist 21 45 1"
$ns_ at 155.126519469596 "$god_ set-dist 21 49 2"
$ns_ at 155.127981858039 "$god_ set-dist 6 40 2"
$ns_ at 155.127981858039 "$god_ set-dist 39 40 1"
$ns_ at 155.192828344240 "$god_ set-dist 14 49 2"
$ns_ at 155.192828344240 "$god_ set-dist 28 49 1"
$ns_ at 155.192828344240 "$god_ set-dist 35 49 2"
$ns_ at 155.248110258135 "$god_ set-dist 10 25 1"
$ns_ at 155.248110258135 "$god_ set-dist 10 33 2"
$ns_ at 155.331307218918 "$god_ set-dist 22 24 2"
$ns_ at 155.365269882837 "$god_ set-dist 3 8 2"
$ns_ at 155.365269882837 "$god_ set-dist 8 22 1"
$ns_ at 155.366340000885 "$god_ set-dist 19 23 1"
$ns_ at 155.409480347068 "$god_ set-dist 19 21 1"
$ns_ at 155.442149868239 "$god_ set-dist 25 41 1"
$ns_ at 155.442149868239 "$god_ set-dist 33 41 2"
$ns_ at 155.451025612061 "$god_ set-dist 11 35 1"
$ns_ at 155.511299534904 "$god_ set-dist 14 18 1"
$ns_ at 155.519317679573 "$god_ set-dist 13 15 1"
$ns_ at 155.519317679573 "$god_ set-dist 13 20 3"
$ns_ at 155.519317679573 "$god_ set-dist 13 29 2"
$ns_ at 155.519317679573 "$god_ set-dist 13 32 2"
$ns_ at 155.519317679573 "$god_ set-dist 13 34 2"
$ns_ at 155.532506271889 "$god_ set-dist 2 46 2"
$ns_ at 155.532506271889 "$god_ set-dist 46 48 3"
$ns_ at 155.539941904039 "$god_ set-dist 31 40 1"
$ns_ at 155.555705394321 "$god_ set-dist 3 23 3"
$ns_ at 155.555705394321 "$god_ set-dist 23 47 2"
$ns_ at 155.641848234658 "$god_ set-dist 1 14 3"
$ns_ at 155.641848234658 "$god_ set-dist 4 14 3"
$ns_ at 155.641848234658 "$god_ set-dist 9 14 3"
$ns_ at 155.641848234658 "$god_ set-dist 14 17 3"
$ns_ at 155.641848234658 "$god_ set-dist 14 28 2"
$ns_ at 155.641848234658 "$god_ set-dist 14 30 3"
$ns_ at 155.641848234658 "$god_ set-dist 14 43 3"
$ns_ at 155.641848234658 "$god_ set-dist 14 49 3"
$ns_ at 155.653033109888 "$god_ set-dist 4 10 3"
$ns_ at 155.653033109888 "$god_ set-dist 4 18 3"
$ns_ at 155.653033109888 "$god_ set-dist 4 39 2"
$ns_ at 155.653033109888 "$god_ set-dist 4 41 3"
$ns_ at 155.700460581793 "$god_ set-dist 1 7 2"
$ns_ at 155.700460581793 "$god_ set-dist 6 7 2"
$ns_ at 155.700460581793 "$god_ set-dist 7 9 2"
$ns_ at 155.700460581793 "$god_ set-dist 7 17 2"
$ns_ at 155.700460581793 "$god_ set-dist 7 30 2"
$ns_ at 155.700460581793 "$god_ set-dist 7 39 1"
$ns_ at 155.700460581793 "$god_ set-dist 7 43 2"
$ns_ at 155.700460581793 "$god_ set-dist 7 49 2"
$ns_ at 155.732336946846 "$god_ set-dist 1 35 3"
$ns_ at 155.732336946846 "$god_ set-dist 4 35 3"
$ns_ at 155.732336946846 "$god_ set-dist 9 35 3"
$ns_ at 155.732336946846 "$god_ set-dist 17 35 3"
$ns_ at 155.732336946846 "$god_ set-dist 28 35 2"
$ns_ at 155.732336946846 "$god_ set-dist 30 35 3"
$ns_ at 155.732336946846 "$god_ set-dist 35 43 3"
$ns_ at 155.732336946846 "$god_ set-dist 35 49 3"
$ns_ at 155.773311403991 "$god_ set-dist 25 28 1"
$ns_ at 155.807182150202 "$god_ set-dist 1 12 1"
$ns_ at 155.807182150202 "$god_ set-dist 12 20 2"
$ns_ at 155.814693071557 "$god_ set-dist 4 7 2"
$ns_ at 155.814693071557 "$god_ set-dist 7 45 1"
$ns_ at 155.854346665095 "$god_ set-dist 5 44 2"
$ns_ at 155.908408132444 "$god_ set-dist 9 20 2"
$ns_ at 155.934168820915 "$god_ set-dist 10 43 3"
$ns_ at 155.934168820915 "$god_ set-dist 18 43 3"
$ns_ at 155.934168820915 "$god_ set-dist 39 43 2"
$ns_ at 155.934168820915 "$god_ set-dist 41 43 3"
$ns_ at 156.049922456972 "$god_ set-dist 11 29 3"
$ns_ at 156.049922456972 "$god_ set-dist 11 33 4"
$ns_ at 156.049922456972 "$god_ set-dist 13 29 3"
$ns_ at 156.049922456972 "$god_ set-dist 14 29 3"
$ns_ at 156.049922456972 "$god_ set-dist 15 29 2"
$ns_ at 156.049922456972 "$god_ set-dist 15 33 3"
$ns_ at 156.049922456972 "$god_ set-dist 19 29 3"
$ns_ at 156.049922456972 "$god_ set-dist 19 33 4"
$ns_ at 156.049922456972 "$god_ set-dist 29 35 3"
$ns_ at 156.049922456972 "$god_ set-dist 29 37 3"
$ns_ at 156.049922456972 "$god_ set-dist 29 46 3"
$ns_ at 156.049922456972 "$god_ set-dist 33 37 4"
$ns_ at 156.049922456972 "$god_ set-dist 33 46 4"
$ns_ at 156.068747896720 "$god_ set-dist 3 38 3"
$ns_ at 156.068747896720 "$god_ set-dist 38 47 2"
$ns_ at 156.069032030676 "$god_ set-dist 1 14 2"
$ns_ at 156.069032030676 "$god_ set-dist 4 14 2"
$ns_ at 156.069032030676 "$god_ set-dist 9 14 2"
$ns_ at 156.069032030676 "$god_ set-dist 14 17 2"
$ns_ at 156.069032030676 "$god_ set-dist 14 29 2"
$ns_ at 156.069032030676 "$god_ set-dist 14 30 2"
$ns_ at 156.069032030676 "$god_ set-dist 14 43 2"
$ns_ at 156.069032030676 "$god_ set-dist 14 45 1"
$ns_ at 156.069032030676 "$god_ set-dist 14 49 2"
$ns_ at 156.069426560401 "$god_ set-dist 0 1 2"
$ns_ at 156.069426560401 "$god_ set-dist 0 6 2"
$ns_ at 156.069426560401 "$god_ set-dist 0 9 2"
$ns_ at 156.069426560401 "$god_ set-dist 0 17 2"
$ns_ at 156.069426560401 "$god_ set-dist 0 20 3"
$ns_ at 156.069426560401 "$god_ set-dist 0 29 2"
$ns_ at 156.069426560401 "$god_ set-dist 0 30 2"
$ns_ at 156.069426560401 "$god_ set-dist 0 32 2"
$ns_ at 156.069426560401 "$god_ set-dist 0 39 1"
$ns_ at 156.069426560401 "$god_ set-dist 0 49 2"
$ns_ at 156.070320070690 "$god_ set-dist 6 36 2"
$ns_ at 156.070320070690 "$god_ set-dist 6 47 1"
$ns_ at 156.072605317183 "$god_ set-dist 34 45 1"
$ns_ at 156.099729805755 "$god_ set-dist 0 17 3"
$ns_ at 156.099729805755 "$god_ set-dist 10 17 3"
$ns_ at 156.099729805755 "$god_ set-dist 17 18 3"
$ns_ at 156.099729805755 "$god_ set-dist 17 39 2"
$ns_ at 156.099729805755 "$god_ set-dist 17 41 3"
$ns_ at 156.121235975527 "$god_ set-dist 6 23 2"
$ns_ at 156.121235975527 "$god_ set-dist 23 39 1"
$ns_ at 156.122035483195 "$god_ set-dist 0 9 3"
$ns_ at 156.122035483195 "$god_ set-dist 9 10 3"
$ns_ at 156.122035483195 "$god_ set-dist 9 18 3"
$ns_ at 156.122035483195 "$god_ set-dist 9 39 2"
$ns_ at 156.122035483195 "$god_ set-dist 9 41 3"
$ns_ at 156.137429662219 "$god_ set-dist 5 14 1"
$ns_ at 156.183252621041 "$god_ set-dist 3 31 2"
$ns_ at 156.183252621041 "$god_ set-dist 3 34 1"
$ns_ at 156.221500190945 "$god_ set-dist 1 35 2"
$ns_ at 156.221500190945 "$god_ set-dist 4 35 2"
$ns_ at 156.221500190945 "$god_ set-dist 9 35 2"
$ns_ at 156.221500190945 "$god_ set-dist 17 35 2"
$ns_ at 156.221500190945 "$god_ set-dist 29 35 2"
$ns_ at 156.221500190945 "$god_ set-dist 30 35 2"
$ns_ at 156.221500190945 "$god_ set-dist 35 43 2"
$ns_ at 156.221500190945 "$god_ set-dist 35 45 1"
$ns_ at 156.221500190945 "$god_ set-dist 35 49 2"
$ns_ at 156.236782801263 "$god_ set-dist 18 27 2"
$ns_ at 156.243967755657 "$god_ set-dist 2 29 1"
$ns_ at 156.243967755657 "$god_ set-dist 5 29 2"
$ns_ at 156.243967755657 "$god_ set-dist 13 29 2"
$ns_ at 156.280388308687 "$god_ set-dist 10 44 2"
$ns_ at 156.355682586569 "$god_ set-dist 11 30 2"
$ns_ at 156.355682586569 "$god_ set-dist 13 30 2"
$ns_ at 156.355682586569 "$god_ set-dist 15 30 1"
$ns_ at 156.355682586569 "$god_ set-dist 19 30 2"
$ns_ at 156.355682586569 "$god_ set-dist 30 37 2"
$ns_ at 156.355682586569 "$god_ set-dist 30 46 2"
$ns_ at 156.438947341301 "$god_ set-dist 23 31 1"
$ns_ at 156.441239285175 "$god_ set-dist 11 32 3"
$ns_ at 156.441239285175 "$god_ set-dist 13 32 3"
$ns_ at 156.441239285175 "$god_ set-dist 15 32 2"
$ns_ at 156.441239285175 "$god_ set-dist 19 32 3"
$ns_ at 156.441239285175 "$god_ set-dist 32 37 3"
$ns_ at 156.441239285175 "$god_ set-dist 32 46 3"
$ns_ at 156.449384313705 "$god_ set-dist 2 25 1"
$ns_ at 156.503305728607 "$god_ set-dist 41 44 2"
$ns_ at 156.511261886639 "$god_ set-dist 1 13 2"
$ns_ at 156.511261886639 "$god_ set-dist 6 13 2"
$ns_ at 156.511261886639 "$god_ set-dist 13 32 2"
$ns_ at 156.511261886639 "$god_ set-dist 13 39 1"
$ns_ at 156.511261886639 "$god_ set-dist 13 49 2"
$ns_ at 156.518041014840 "$god_ set-dist 0 32 3"
$ns_ at 156.518041014840 "$god_ set-dist 10 32 3"
$ns_ at 156.518041014840 "$god_ set-dist 13 32 3"
$ns_ at 156.518041014840 "$god_ set-dist 18 32 3"
$ns_ at 156.518041014840 "$god_ set-dist 32 39 2"
$ns_ at 156.518041014840 "$god_ set-dist 32 41 3"
$ns_ at 156.592183058678 "$god_ set-dist 12 31 2"
$ns_ at 156.592183058678 "$god_ set-dist 26 31 2"
$ns_ at 156.592183058678 "$god_ set-dist 27 31 1"
$ns_ at 156.596411738818 "$god_ set-dist 21 31 1"
$ns_ at 156.702117528917 "$god_ set-dist 16 29 1"
$ns_ at 156.729151813358 "$god_ set-dist 29 44 1"
$ns_ at 156.729151813358 "$god_ set-dist 29 46 2"
$ns_ at 156.729151813358 "$god_ set-dist 33 44 2"
$ns_ at 156.729151813358 "$god_ set-dist 33 46 3"
$ns_ at 156.759809125531 "$god_ set-dist 5 38 2"
$ns_ at 156.799000199146 "$god_ set-dist 6 21 2"
$ns_ at 156.799000199146 "$god_ set-dist 21 39 1"
$ns_ at 156.843851157647 "$god_ set-dist 1 20 2"
$ns_ at 156.843851157647 "$god_ set-dist 12 20 3"
$ns_ at 156.923700826765 "$god_ set-dist 6 28 1"
$ns_ at 156.975604729008 "$god_ set-dist 14 26 1"
$ns_ at 156.995131606884 "$god_ set-dist 6 14 2"
$ns_ at 156.995131606884 "$god_ set-dist 14 39 1"
$ns_ at 157.005112749910 "$god_ set-dist 27 42 1"
$ns_ at 157.005112749910 "$god_ set-dist 31 42 2"
$ns_ at 157.005112749910 "$god_ set-dist 37 42 2"
$ns_ at 157.139062422619 "$god_ set-dist 29 37 2"
$ns_ at 157.139062422619 "$god_ set-dist 33 37 3"
$ns_ at 157.139062422619 "$god_ set-dist 37 44 1"
$ns_ at 157.164843575132 "$god_ set-dist 11 12 2"
$ns_ at 157.164843575132 "$god_ set-dist 11 26 2"
$ns_ at 157.164843575132 "$god_ set-dist 11 27 1"
$ns_ at 157.164843575132 "$god_ set-dist 11 42 2"
$ns_ at 157.183273763099 "$god_ set-dist 4 13 2"
$ns_ at 157.183273763099 "$god_ set-dist 9 13 2"
$ns_ at 157.183273763099 "$god_ set-dist 13 17 2"
$ns_ at 157.183273763099 "$god_ set-dist 13 32 2"
$ns_ at 157.183273763099 "$god_ set-dist 13 43 2"
$ns_ at 157.183273763099 "$god_ set-dist 13 45 1"
$ns_ at 157.324968153495 "$god_ set-dist 12 19 2"
$ns_ at 157.324968153495 "$god_ set-dist 19 26 2"
$ns_ at 157.324968153495 "$god_ set-dist 19 27 1"
$ns_ at 157.324968153495 "$god_ set-dist 19 42 2"
$ns_ at 157.389615298267 "$god_ set-dist 0 20 4"
$ns_ at 157.389615298267 "$god_ set-dist 0 30 3"
$ns_ at 157.389615298267 "$god_ set-dist 10 20 4"
$ns_ at 157.389615298267 "$god_ set-dist 10 30 3"
$ns_ at 157.389615298267 "$god_ set-dist 18 20 4"
$ns_ at 157.389615298267 "$god_ set-dist 18 30 3"
$ns_ at 157.389615298267 "$god_ set-dist 20 39 3"
$ns_ at 157.389615298267 "$god_ set-dist 20 41 4"
$ns_ at 157.389615298267 "$god_ set-dist 30 39 2"
$ns_ at 157.389615298267 "$god_ set-dist 30 41 3"
$ns_ at 157.391493382084 "$god_ set-dist 1 42 1"
$ns_ at 157.422184386792 "$god_ set-dist 8 33 2"
$ns_ at 157.422184386792 "$god_ set-dist 11 33 3"
$ns_ at 157.422184386792 "$god_ set-dist 15 33 2"
$ns_ at 157.422184386792 "$god_ set-dist 19 33 3"
$ns_ at 157.422184386792 "$god_ set-dist 22 33 1"
$ns_ at 157.422184386792 "$god_ set-dist 27 33 2"
$ns_ at 157.522100208359 "$god_ set-dist 30 36 1"
$ns_ at 157.525930354100 "$god_ set-dist 19 35 1"
$ns_ at 157.578218524729 "$god_ set-dist 11 12 3"
$ns_ at 157.578218524729 "$god_ set-dist 12 19 3"
$ns_ at 157.578218524729 "$god_ set-dist 12 27 2"
$ns_ at 157.578218524729 "$god_ set-dist 12 31 3"
$ns_ at 157.674671536757 "$god_ set-dist 0 6 3"
$ns_ at 157.674671536757 "$god_ set-dist 6 7 3"
$ns_ at 157.674671536757 "$god_ set-dist 6 13 3"
$ns_ at 157.674671536757 "$god_ set-dist 6 14 3"
$ns_ at 157.674671536757 "$god_ set-dist 6 39 2"
$ns_ at 157.729752299598 "$god_ set-dist 0 20 3"
$ns_ at 157.729752299598 "$god_ set-dist 0 30 2"
$ns_ at 157.729752299598 "$god_ set-dist 18 20 3"
$ns_ at 157.729752299598 "$god_ set-dist 18 30 2"
$ns_ at 157.729752299598 "$god_ set-dist 20 44 2"
$ns_ at 157.729752299598 "$god_ set-dist 30 44 1"
$ns_ at 157.768468601188 "$god_ set-dist 3 40 3"
$ns_ at 157.768468601188 "$god_ set-dist 40 47 2"
$ns_ at 157.782427860538 "$god_ set-dist 1 5 2"
$ns_ at 157.782427860538 "$god_ set-dist 5 39 1"
$ns_ at 157.782427860538 "$god_ set-dist 5 49 2"
$ns_ at 157.840740350030 "$god_ set-dist 17 33 2"
$ns_ at 157.934185842513 "$god_ set-dist 1 2 1"
$ns_ at 158.085955918908 "$god_ set-dist 2 49 1"
$ns_ at 158.123820377226 "$god_ set-dist 2 20 2"
$ns_ at 158.123820377226 "$god_ set-dist 5 20 3"
$ns_ at 158.123820377226 "$god_ set-dist 10 20 3"
$ns_ at 158.123820377226 "$god_ set-dist 12 20 2"
$ns_ at 158.123820377226 "$god_ set-dist 16 20 2"
$ns_ at 158.123820377226 "$god_ set-dist 20 24 2"
$ns_ at 158.123820377226 "$god_ set-dist 20 27 2"
$ns_ at 158.123820377226 "$god_ set-dist 20 39 2"
$ns_ at 158.123820377226 "$god_ set-dist 20 41 3"
$ns_ at 158.123820377226 "$god_ set-dist 20 42 2"
$ns_ at 158.123820377226 "$god_ set-dist 20 47 1"
$ns_ at 158.133479719603 "$god_ set-dist 1 37 2"
$ns_ at 158.133479719603 "$god_ set-dist 1 44 1"
$ns_ at 158.133479719603 "$god_ set-dist 1 46 2"
$ns_ at 158.135792398940 "$god_ set-dist 25 45 2"
$ns_ at 158.168820921926 "$god_ set-dist 26 29 1"
$ns_ at 158.172201494490 "$god_ set-dist 0 6 2"
$ns_ at 158.172201494490 "$god_ set-dist 0 42 1"
$ns_ at 158.189540286501 "$node_(20) setdest 178.685236993835 595.572586061689 0.000000000000"
$ns_ at 158.190126506432 "$god_ set-dist 8 25 1"
$ns_ at 158.272416400474 "$god_ set-dist 15 22 2"
$ns_ at 158.272416400474 "$god_ set-dist 15 33 3"
$ns_ at 158.292497289572 "$god_ set-dist 2 30 1"
$ns_ at 158.292497289572 "$god_ set-dist 5 30 2"
$ns_ at 158.292497289572 "$god_ set-dist 10 30 2"
$ns_ at 158.292497289572 "$god_ set-dist 30 41 2"
$ns_ at 158.389752170715 "$god_ set-dist 12 31 2"
$ns_ at 158.389752170715 "$god_ set-dist 18 31 2"
$ns_ at 158.389752170715 "$god_ set-dist 31 44 1"
$ns_ at 158.431853094075 "$god_ set-dist 31 35 1"
$ns_ at 158.479729804668 "$god_ set-dist 6 7 2"
$ns_ at 158.479729804668 "$god_ set-dist 7 42 1"
$ns_ at 158.499688901343 "$god_ set-dist 10 37 2"
$ns_ at 158.499688901343 "$god_ set-dist 13 37 1"
$ns_ at 158.499688901343 "$god_ set-dist 37 41 2"
$ns_ at 158.514602310329 "$god_ set-dist 11 46 2"
$ns_ at 158.539847344107 "$god_ set-dist 18 25 1"
$ns_ at 158.539847344107 "$god_ set-dist 18 33 2"
$ns_ at 158.540998851444 "$god_ set-dist 9 10 2"
$ns_ at 158.540998851444 "$god_ set-dist 9 12 1"
$ns_ at 158.540998851444 "$god_ set-dist 9 18 2"
$ns_ at 158.540998851444 "$god_ set-dist 9 41 2"
$ns_ at 158.567395667457 "$god_ set-dist 10 14 1"
$ns_ at 158.571139548047 "$god_ set-dist 10 33 3"
$ns_ at 158.571139548047 "$god_ set-dist 18 33 3"
$ns_ at 158.571139548047 "$god_ set-dist 25 33 2"
$ns_ at 158.571139548047 "$god_ set-dist 33 41 3"
$ns_ at 158.586955173762 "$god_ set-dist 26 49 1"
$ns_ at 158.594905751671 "$god_ set-dist 31 45 1"
$ns_ at 158.594905751671 "$god_ set-dist 31 48 2"
$ns_ at 158.594905751671 "$god_ set-dist 31 49 2"
$ns_ at 158.608505412066 "$node_(2) setdest 402.692278975154 231.425942377326 0.000000000000"
$ns_ at 158.634122336681 "$god_ set-dist 38 42 1"
$ns_ at 158.726713610461 "$god_ set-dist 0 4 2"
$ns_ at 158.726713610461 "$god_ set-dist 0 9 2"
$ns_ at 158.726713610461 "$god_ set-dist 0 17 2"
$ns_ at 158.726713610461 "$god_ set-dist 0 32 2"
$ns_ at 158.726713610461 "$god_ set-dist 0 34 2"
$ns_ at 158.726713610461 "$god_ set-dist 0 43 2"
$ns_ at 158.726713610461 "$god_ set-dist 0 45 1"
$ns_ at 158.765005669554 "$god_ set-dist 13 41 2"
$ns_ at 158.765005669554 "$god_ set-dist 37 41 3"
$ns_ at 158.771072135553 "$god_ set-dist 35 39 1"
$ns_ at 158.802008286438 "$god_ set-dist 3 8 3"
$ns_ at 158.802008286438 "$god_ set-dist 3 22 2"
$ns_ at 158.905879070137 "$god_ set-dist 1 11 2"
$ns_ at 158.905879070137 "$god_ set-dist 3 11 2"
$ns_ at 158.905879070137 "$god_ set-dist 4 11 2"
$ns_ at 158.905879070137 "$god_ set-dist 9 11 2"
$ns_ at 158.905879070137 "$god_ set-dist 11 17 2"
$ns_ at 158.905879070137 "$god_ set-dist 11 20 2"
$ns_ at 158.905879070137 "$god_ set-dist 11 29 2"
$ns_ at 158.905879070137 "$god_ set-dist 11 32 2"
$ns_ at 158.905879070137 "$god_ set-dist 11 34 1"
$ns_ at 158.905879070137 "$god_ set-dist 11 43 2"
$ns_ at 158.944978975603 "$god_ set-dist 4 41 2"
$ns_ at 158.944978975603 "$god_ set-dist 17 41 2"
$ns_ at 158.944978975603 "$god_ set-dist 22 41 1"
$ns_ at 158.944978975603 "$god_ set-dist 32 41 2"
$ns_ at 158.944978975603 "$god_ set-dist 33 41 2"
$ns_ at 158.944978975603 "$god_ set-dist 41 43 2"
$ns_ at 158.946835400381 "$god_ set-dist 16 49 1"
$ns_ at 159.028638383561 "$god_ set-dist 27 30 1"
$ns_ at 159.051230565217 "$god_ set-dist 15 39 2"
$ns_ at 159.069864970029 "$god_ set-dist 18 31 3"
$ns_ at 159.069864970029 "$god_ set-dist 18 44 2"
$ns_ at 159.136104023448 "$god_ set-dist 0 17 3"
$ns_ at 159.136104023448 "$god_ set-dist 7 17 3"
$ns_ at 159.136104023448 "$god_ set-dist 13 17 3"
$ns_ at 159.136104023448 "$god_ set-dist 14 17 3"
$ns_ at 159.136104023448 "$god_ set-dist 17 35 3"
$ns_ at 159.136104023448 "$god_ set-dist 17 45 2"
$ns_ at 159.140664324953 "$god_ set-dist 11 49 2"
$ns_ at 159.140664324953 "$god_ set-dist 34 49 1"
$ns_ at 159.153574368408 "$god_ set-dist 18 31 2"
$ns_ at 159.153574368408 "$god_ set-dist 31 38 1"
$ns_ at 159.156858981695 "$god_ set-dist 12 30 1"
$ns_ at 159.173256853369 "$god_ set-dist 3 20 1"
$ns_ at 159.201087685896 "$god_ set-dist 6 14 2"
$ns_ at 159.201087685896 "$god_ set-dist 14 42 1"
$ns_ at 159.221621791529 "$god_ set-dist 37 49 2"
$ns_ at 159.221621791529 "$god_ set-dist 44 49 1"
$ns_ at 159.221621791529 "$god_ set-dist 46 49 2"
$ns_ at 159.226869640854 "$god_ set-dist 6 23 3"
$ns_ at 159.226869640854 "$god_ set-dist 17 23 3"
$ns_ at 159.226869640854 "$god_ set-dist 23 28 2"
$ns_ at 159.286311056516 "$god_ set-dist 34 44 1"
$ns_ at 159.371756971162 "$god_ set-dist 1 25 1"
$ns_ at 159.406706393591 "$god_ set-dist 24 30 1"
$ns_ at 159.415282325000 "$god_ set-dist 20 39 3"
$ns_ at 159.415282325000 "$god_ set-dist 39 47 2"
$ns_ at 159.472566314071 "$god_ set-dist 11 12 2"
$ns_ at 159.472566314071 "$god_ set-dist 11 44 1"
$ns_ at 159.491293457619 "$god_ set-dist 1 16 1"
$ns_ at 159.501111808924 "$god_ set-dist 5 6 2"
$ns_ at 159.501111808924 "$god_ set-dist 5 42 1"
$ns_ at 159.564745381630 "$god_ set-dist 6 13 2"
$ns_ at 159.564745381630 "$god_ set-dist 6 26 1"
$ns_ at 159.609158476326 "$god_ set-dist 1 26 1"
$ns_ at 159.655796812925 "$god_ set-dist 0 9 3"
$ns_ at 159.655796812925 "$god_ set-dist 7 9 3"
$ns_ at 159.655796812925 "$god_ set-dist 9 13 3"
$ns_ at 159.655796812925 "$god_ set-dist 9 14 3"
$ns_ at 159.655796812925 "$god_ set-dist 9 23 3"
$ns_ at 159.655796812925 "$god_ set-dist 9 35 3"
$ns_ at 159.655796812925 "$god_ set-dist 9 45 2"
$ns_ at 159.684714204583 "$god_ set-dist 13 36 1"
$ns_ at 159.704044447299 "$god_ set-dist 16 20 3"
$ns_ at 159.704044447299 "$god_ set-dist 16 47 2"
$ns_ at 159.722280015491 "$god_ set-dist 13 42 1"
$ns_ at 159.787825596933 "$god_ set-dist 28 36 2"
$ns_ at 159.896891755389 "$god_ set-dist 11 45 1"
$ns_ at 159.896891755389 "$god_ set-dist 11 48 2"
$ns_ at 159.930330014780 "$god_ set-dist 1 39 2"
$ns_ at 159.976259344084 "$god_ set-dist 14 41 1"
$ns_ at 159.976259344084 "$god_ set-dist 37 41 2"
$ns_ at 159.984556891370 "$god_ set-dist 6 32 2"
$ns_ at 160.024145353364 "$god_ set-dist 30 42 1"
$ns_ at 160.066421532608 "$god_ set-dist 1 19 2"
$ns_ at 160.066421532608 "$god_ set-dist 12 19 2"
$ns_ at 160.066421532608 "$god_ set-dist 19 29 2"
$ns_ at 160.066421532608 "$god_ set-dist 19 44 1"
$ns_ at 160.066421532608 "$god_ set-dist 19 49 2"
$ns_ at 160.080341495283 "$god_ set-dist 11 18 2"
$ns_ at 160.080341495283 "$god_ set-dist 11 38 1"
$ns_ at 160.220547773634 "$god_ set-dist 42 47 2"
$ns_ at 160.315004304260 "$god_ set-dist 9 14 2"
$ns_ at 160.315004304260 "$god_ set-dist 12 14 1"
$ns_ at 160.415169907671 "$god_ set-dist 16 20 2"
$ns_ at 160.415169907671 "$god_ set-dist 16 30 1"
$ns_ at 160.425116954596 "$god_ set-dist 21 42 1"
$ns_ at 160.443066403646 "$god_ set-dist 3 21 2"
$ns_ at 160.443066403646 "$god_ set-dist 20 21 2"
$ns_ at 160.443066403646 "$god_ set-dist 21 30 1"
$ns_ at 160.449193436250 "$god_ set-dist 40 42 1"
$ns_ at 160.458345352858 "$god_ set-dist 14 36 2"
$ns_ at 160.491501303576 "$god_ set-dist 32 48 2"
$ns_ at 160.504559154847 "$god_ set-dist 19 32 2"
$ns_ at 160.504559154847 "$god_ set-dist 32 37 2"
$ns_ at 160.504559154847 "$god_ set-dist 32 44 1"
$ns_ at 160.504559154847 "$god_ set-dist 32 46 2"
$ns_ at 160.516657960942 "$god_ set-dist 24 47 2"
$ns_ at 160.526906987028 "$god_ set-dist 26 40 1"
$ns_ at 160.540629314408 "$god_ set-dist 4 19 2"
$ns_ at 160.540629314408 "$god_ set-dist 19 43 2"
$ns_ at 160.540629314408 "$god_ set-dist 19 45 1"
$ns_ at 160.540629314408 "$god_ set-dist 19 48 2"
$ns_ at 160.548688063055 "$god_ set-dist 18 19 2"
$ns_ at 160.548688063055 "$god_ set-dist 19 38 1"
$ns_ at 160.568065412280 "$god_ set-dist 21 26 1"
$ns_ at 160.581107061863 "$god_ set-dist 0 4 3"
$ns_ at 160.581107061863 "$god_ set-dist 4 7 3"
$ns_ at 160.581107061863 "$god_ set-dist 4 13 3"
$ns_ at 160.581107061863 "$god_ set-dist 4 14 3"
$ns_ at 160.581107061863 "$god_ set-dist 4 19 3"
$ns_ at 160.581107061863 "$god_ set-dist 4 23 3"
$ns_ at 160.581107061863 "$god_ set-dist 4 35 3"
$ns_ at 160.581107061863 "$god_ set-dist 4 45 2"
$ns_ at 160.585864013240 "$god_ set-dist 17 22 2"
$ns_ at 160.585864013240 "$god_ set-dist 17 41 3"
$ns_ at 160.635157687159 "$god_ set-dist 37 43 2"
$ns_ at 160.635157687159 "$god_ set-dist 37 45 1"
$ns_ at 160.635157687159 "$god_ set-dist 37 48 2"
$ns_ at 160.658751260141 "$god_ set-dist 12 38 1"
$ns_ at 160.679533787468 "$god_ set-dist 14 37 2"
$ns_ at 160.679533787468 "$god_ set-dist 37 41 3"
$ns_ at 160.814655188199 "$god_ set-dist 24 34 1"
$ns_ at 160.840981014741 "$god_ set-dist 11 48 3"
$ns_ at 160.840981014741 "$god_ set-dist 19 48 3"
$ns_ at 160.840981014741 "$god_ set-dist 31 48 3"
$ns_ at 160.840981014741 "$god_ set-dist 37 48 3"
$ns_ at 160.840981014741 "$god_ set-dist 45 48 2"
$ns_ at 160.858826478127 "$god_ set-dist 27 47 2"
$ns_ at 160.892885855419 "$god_ set-dist 12 47 2"
$ns_ at 160.949026534792 "$god_ set-dist 3 19 2"
$ns_ at 160.949026534792 "$god_ set-dist 4 19 2"
$ns_ at 160.949026534792 "$god_ set-dist 9 19 2"
$ns_ at 160.949026534792 "$god_ set-dist 17 19 2"
$ns_ at 160.949026534792 "$god_ set-dist 19 20 2"
$ns_ at 160.949026534792 "$god_ set-dist 19 34 1"
$ns_ at 160.986064848324 "$god_ set-dist 20 26 2"
$ns_ at 160.986064848324 "$god_ set-dist 26 30 1"
$ns_ at 161.012157700542 "$god_ set-dist 3 40 2"
$ns_ at 161.012157700542 "$god_ set-dist 20 40 2"
$ns_ at 161.012157700542 "$god_ set-dist 30 40 1"
$ns_ at 161.025157615629 "$god_ set-dist 6 31 2"
$ns_ at 161.025157615629 "$god_ set-dist 30 31 1"
$ns_ at 161.025157615629 "$god_ set-dist 31 48 2"
$ns_ at 161.056956160191 "$god_ set-dist 36 47 2"
$ns_ at 161.081766299488 "$god_ set-dist 43 44 1"
$ns_ at 161.081766299488 "$god_ set-dist 43 46 2"
$ns_ at 161.105891481666 "$god_ set-dist 22 38 1"
$ns_ at 161.105891481666 "$god_ set-dist 33 38 2"
$ns_ at 161.134965550787 "$god_ set-dist 2 36 2"
$ns_ at 161.134965550787 "$god_ set-dist 25 36 3"
$ns_ at 161.134965550787 "$god_ set-dist 36 41 3"
$ns_ at 161.150025179919 "$god_ set-dist 17 48 2"
$ns_ at 161.165970483291 "$god_ set-dist 15 28 2"
$ns_ at 161.195617075914 "$god_ set-dist 21 33 2"
$ns_ at 161.195617075914 "$god_ set-dist 24 33 2"
$ns_ at 161.195617075914 "$god_ set-dist 28 33 1"
$ns_ at 161.195617075914 "$god_ set-dist 33 40 2"
$ns_ at 161.198258774836 "$god_ set-dist 1 46 3"
$ns_ at 161.198258774836 "$god_ set-dist 29 46 3"
$ns_ at 161.198258774836 "$god_ set-dist 32 46 3"
$ns_ at 161.198258774836 "$god_ set-dist 43 46 3"
$ns_ at 161.198258774836 "$god_ set-dist 44 46 2"
$ns_ at 161.198258774836 "$god_ set-dist 46 49 3"
$ns_ at 161.205449189448 "$god_ set-dist 21 22 1"
$ns_ at 161.267533295614 "$god_ set-dist 22 27 2"
$ns_ at 161.275593872029 "$god_ set-dist 22 32 2"
$ns_ at 161.275593872029 "$god_ set-dist 32 41 3"
$ns_ at 161.299711206925 "$god_ set-dist 3 38 2"
$ns_ at 161.299711206925 "$god_ set-dist 20 38 2"
$ns_ at 161.299711206925 "$god_ set-dist 30 38 1"
$ns_ at 161.334323592225 "$god_ set-dist 2 47 2"
$ns_ at 161.334323592225 "$god_ set-dist 5 47 3"
$ns_ at 161.334323592225 "$god_ set-dist 10 47 3"
$ns_ at 161.334323592225 "$god_ set-dist 18 47 3"
$ns_ at 161.354389665662 "$god_ set-dist 39 48 2"
$ns_ at 161.385775365018 "$god_ set-dist 26 27 2"
$ns_ at 161.396991255994 "$god_ set-dist 39 49 2"
$ns_ at 161.404177635516 "$god_ set-dist 3 48 2"
$ns_ at 161.511869823587 "$god_ set-dist 24 28 2"
$ns_ at 161.511869823587 "$god_ set-dist 24 33 3"
$ns_ at 161.554134648759 "$god_ set-dist 0 9 2"
$ns_ at 161.554134648759 "$god_ set-dist 0 12 1"
$ns_ at 161.581386995776 "$god_ set-dist 24 39 2"
$ns_ at 161.627590570991 "$god_ set-dist 23 39 2"
$ns_ at 161.644303577886 "$god_ set-dist 8 15 2"
$ns_ at 161.712690911565 "$god_ set-dist 7 9 2"
$ns_ at 161.712690911565 "$god_ set-dist 7 12 1"
$ns_ at 161.751853231441 "$god_ set-dist 1 21 1"
$ns_ at 161.751853231441 "$god_ set-dist 1 46 2"
$ns_ at 161.752677680702 "$god_ set-dist 5 9 2"
$ns_ at 161.752677680702 "$god_ set-dist 9 13 2"
$ns_ at 161.752677680702 "$god_ set-dist 9 26 1"
$ns_ at 161.787445129746 "$god_ set-dist 15 47 2"
$ns_ at 161.787445129746 "$god_ set-dist 46 47 3"
$ns_ at 161.799705338332 "$god_ set-dist 21 34 1"
$ns_ at 161.801731185102 "$god_ set-dist 28 40 2"
$ns_ at 161.801731185102 "$god_ set-dist 33 40 3"
$ns_ at 161.824416361558 "$god_ set-dist 27 34 1"
$ns_ at 161.970566593159 "$god_ set-dist 3 33 2"
$ns_ at 161.987388742516 "$god_ set-dist 21 49 1"
$ns_ at 161.987388742516 "$god_ set-dist 46 49 2"
$ns_ at 161.993974885748 "$god_ set-dist 6 17 2"
$ns_ at 162.050838524566 "$god_ set-dist 3 39 3"
$ns_ at 162.050838524566 "$god_ set-dist 29 39 2"
$ns_ at 162.136344028873 "$god_ set-dist 7 41 2"
$ns_ at 162.154745992010 "$god_ set-dist 2 6 1"
$ns_ at 162.154745992010 "$god_ set-dist 6 23 2"
$ns_ at 162.154745992010 "$god_ set-dist 6 35 2"
$ns_ at 162.165357063362 "$god_ set-dist 17 41 2"
$ns_ at 162.165357063362 "$god_ set-dist 28 41 1"
$ns_ at 162.165357063362 "$god_ set-dist 32 41 2"
$ns_ at 162.165357063362 "$god_ set-dist 34 41 2"
$ns_ at 162.165951583262 "$god_ set-dist 14 25 1"
$ns_ at 162.165951583262 "$god_ set-dist 25 46 2"
$ns_ at 162.168021397872 "$god_ set-dist 27 28 2"
$ns_ at 162.168021397872 "$god_ set-dist 27 33 3"
$ns_ at 162.250827474049 "$god_ set-dist 12 21 1"
$ns_ at 162.309300819311 "$god_ set-dist 24 42 1"
$ns_ at 162.338295379902 "$god_ set-dist 5 25 1"
$ns_ at 162.360613352310 "$god_ set-dist 35 42 1"
$ns_ at 162.405878995240 "$god_ set-dist 14 15 2"
$ns_ at 162.430971434419 "$god_ set-dist 7 15 2"
$ns_ at 162.487817654000 "$node_(12) setdest 322.608416656160 167.853739311355 0.000000000000"
$ns_ at 162.541112543593 "$god_ set-dist 3 29 2"
$ns_ at 162.541239457972 "$god_ set-dist 5 9 3"
$ns_ at 162.541239457972 "$god_ set-dist 5 26 2"
$ns_ at 162.577846273989 "$god_ set-dist 28 38 2"
$ns_ at 162.592557403788 "$god_ set-dist 3 23 2"
$ns_ at 162.592557403788 "$god_ set-dist 4 23 2"
$ns_ at 162.592557403788 "$god_ set-dist 9 23 2"
$ns_ at 162.592557403788 "$god_ set-dist 17 23 2"
$ns_ at 162.592557403788 "$god_ set-dist 20 23 2"
$ns_ at 162.592557403788 "$god_ set-dist 23 30 1"
$ns_ at 162.633490505611 "$god_ set-dist 8 17 3"
$ns_ at 162.633490505611 "$god_ set-dist 17 28 2"
$ns_ at 162.633490505611 "$god_ set-dist 17 39 3"
$ns_ at 162.633490505611 "$god_ set-dist 17 41 3"
$ns_ at 162.657997469852 "$god_ set-dist 0 41 2"
$ns_ at 162.675043248242 "$god_ set-dist 27 39 2"
$ns_ at 162.684392807172 "$god_ set-dist 3 8 2"
$ns_ at 162.684392807172 "$god_ set-dist 8 17 2"
$ns_ at 162.684392807172 "$god_ set-dist 8 49 1"
$ns_ at 162.690343782890 "$god_ set-dist 39 45 2"
$ns_ at 162.698622284576 "$god_ set-dist 39 44 2"
$ns_ at 162.705284768425 "$god_ set-dist 38 49 1"
$ns_ at 162.816107166169 "$god_ set-dist 5 9 2"
$ns_ at 162.816107166169 "$god_ set-dist 9 35 2"
$ns_ at 162.816107166169 "$god_ set-dist 9 42 1"
$ns_ at 162.817009573404 "$god_ set-dist 6 11 2"
$ns_ at 162.817009573404 "$god_ set-dist 11 30 1"
$ns_ at 162.817009573404 "$god_ set-dist 11 48 2"
$ns_ at 162.830521540318 "$god_ set-dist 8 29 1"
$ns_ at 162.832084341136 "$god_ set-dist 27 33 2"
$ns_ at 162.832084341136 "$god_ set-dist 27 49 1"
$ns_ at 162.849951498860 "$god_ set-dist 1 38 1"
$ns_ at 162.851382560377 "$god_ set-dist 3 6 2"
$ns_ at 162.896839788809 "$god_ set-dist 29 46 2"
$ns_ at 162.896839788809 "$god_ set-dist 32 46 2"
$ns_ at 162.896839788809 "$god_ set-dist 43 46 2"
$ns_ at 162.896839788809 "$god_ set-dist 45 46 1"
$ns_ at 162.896839788809 "$god_ set-dist 46 47 2"
$ns_ at 162.900057300391 "$god_ set-dist 33 40 2"
$ns_ at 162.900057300391 "$god_ set-dist 40 49 1"
$ns_ at 163.026635556720 "$god_ set-dist 9 19 3"
$ns_ at 163.026635556720 "$god_ set-dist 9 34 2"
$ns_ at 163.041163436462 "$god_ set-dist 11 20 1"
$ns_ at 163.041163436462 "$god_ set-dist 20 35 2"
$ns_ at 163.041163436462 "$god_ set-dist 20 37 2"
$ns_ at 163.050442686965 "$god_ set-dist 1 8 1"
$ns_ at 163.118086369385 "$god_ set-dist 3 49 2"
$ns_ at 163.129616780703 "$god_ set-dist 1 40 1"
$ns_ at 163.156775611304 "$god_ set-dist 13 26 2"
$ns_ at 163.212227295288 "$god_ set-dist 17 29 2"
$ns_ at 163.254302142343 "$god_ set-dist 28 39 2"
$ns_ at 163.254302142343 "$god_ set-dist 32 39 3"
$ns_ at 163.279943175334 "$god_ set-dist 24 33 2"
$ns_ at 163.279943175334 "$god_ set-dist 24 49 1"
$ns_ at 163.298505638314 "$god_ set-dist 3 23 3"
$ns_ at 163.298505638314 "$god_ set-dist 3 30 2"
$ns_ at 163.298701617020 "$god_ set-dist 21 29 1"
$ns_ at 163.351566605596 "$god_ set-dist 1 3 2"
$ns_ at 163.351566605596 "$god_ set-dist 2 3 3"
$ns_ at 163.351566605596 "$god_ set-dist 3 8 3"
$ns_ at 163.351566605596 "$god_ set-dist 3 16 3"
$ns_ at 163.351566605596 "$god_ set-dist 3 25 3"
$ns_ at 163.351566605596 "$god_ set-dist 3 38 3"
$ns_ at 163.351566605596 "$god_ set-dist 3 40 3"
$ns_ at 163.352230884557 "$god_ set-dist 4 35 2"
$ns_ at 163.352230884557 "$god_ set-dist 17 35 2"
$ns_ at 163.352230884557 "$god_ set-dist 30 35 1"
$ns_ at 163.360118736467 "$god_ set-dist 1 27 1"
$ns_ at 163.390562726463 "$god_ set-dist 6 16 1"
$ns_ at 163.418073490430 "$god_ set-dist 11 32 1"
$ns_ at 163.427662432661 "$god_ set-dist 0 44 2"
$ns_ at 163.428944294052 "$god_ set-dist 29 41 1"
$ns_ at 163.442375973931 "$god_ set-dist 28 32 2"
$ns_ at 163.521547280838 "$god_ set-dist 4 7 2"
$ns_ at 163.521547280838 "$god_ set-dist 4 13 2"
$ns_ at 163.521547280838 "$god_ set-dist 4 14 2"
$ns_ at 163.521547280838 "$god_ set-dist 4 37 2"
$ns_ at 163.521547280838 "$god_ set-dist 4 44 1"
$ns_ at 163.561857676979 "$god_ set-dist 10 13 2"
$ns_ at 163.561857676979 "$god_ set-dist 10 36 3"
$ns_ at 163.561857676979 "$god_ set-dist 10 37 3"
$ns_ at 163.608931979742 "$god_ set-dist 12 45 2"
$ns_ at 163.623128047847 "$god_ set-dist 4 14 3"
$ns_ at 163.623128047847 "$god_ set-dist 14 44 2"
$ns_ at 163.627436921557 "$god_ set-dist 8 20 2"
$ns_ at 163.627436921557 "$god_ set-dist 8 30 1"
$ns_ at 163.632788830847 "$god_ set-dist 4 7 3"
$ns_ at 163.632788830847 "$god_ set-dist 7 44 2"
$ns_ at 163.650458027738 "$god_ set-dist 5 31 2"
$ns_ at 163.650458027738 "$god_ set-dist 13 31 1"
$ns_ at 163.673964968841 "$god_ set-dist 29 32 2"
$ns_ at 163.673964968841 "$god_ set-dist 32 41 3"
$ns_ at 163.710446560579 "$god_ set-dist 41 48 1"
$ns_ at 163.756776887984 "$god_ set-dist 21 39 2"
$ns_ at 163.756776887984 "$god_ set-dist 34 39 3"
$ns_ at 163.766314790508 "$god_ set-dist 31 32 1"
$ns_ at 163.791197779056 "$god_ set-dist 23 42 1"
$ns_ at 163.814912596996 "$god_ set-dist 24 33 3"
$ns_ at 163.814912596996 "$god_ set-dist 33 49 2"
$ns_ at 163.862270680327 "$god_ set-dist 18 35 1"
$ns_ at 163.917843022849 "$god_ set-dist 10 43 2"
$ns_ at 163.917843022849 "$god_ set-dist 18 43 2"
$ns_ at 163.917843022849 "$god_ set-dist 26 43 1"
$ns_ at 164.073101468102 "$god_ set-dist 22 40 1"
$ns_ at 164.142414487822 "$god_ set-dist 0 32 3"
$ns_ at 164.142414487822 "$god_ set-dist 7 32 3"
$ns_ at 164.142414487822 "$god_ set-dist 14 32 3"
$ns_ at 164.142414487822 "$god_ set-dist 32 45 2"
$ns_ at 164.142414487822 "$god_ set-dist 32 46 3"
$ns_ at 164.147435642384 "$god_ set-dist 15 49 1"
$ns_ at 164.255564001768 "$god_ set-dist 7 25 1"
$ns_ at 164.304653162742 "$god_ set-dist 0 25 1"
$ns_ at 164.319302847930 "$god_ set-dist 1 24 1"
$ns_ at 164.319302847930 "$god_ set-dist 24 33 2"
$ns_ at 164.337010255530 "$god_ set-dist 14 45 2"
$ns_ at 164.337010255530 "$god_ set-dist 14 47 3"
$ns_ at 164.373054862731 "$god_ set-dist 12 44 2"
$ns_ at 164.377399660476 "$god_ set-dist 28 45 2"
$ns_ at 164.407379822255 "$node_(32) setdest 180.622787168143 516.290380907804 0.000000000000"
$ns_ at 164.539055509144 "$god_ set-dist 0 26 2"
$ns_ at 164.556522506122 "$god_ set-dist 29 45 2"
$ns_ at 164.561702922596 "$god_ set-dist 2 15 2"
$ns_ at 164.568837823197 "$god_ set-dist 0 37 1"
$ns_ at 164.568837823197 "$god_ set-dist 10 37 2"
$ns_ at 164.568837823197 "$god_ set-dist 25 37 2"
$ns_ at 164.584532942144 "$god_ set-dist 26 45 2"
$ns_ at 164.596644394148 "$god_ set-dist 4 14 2"
$ns_ at 164.596644394148 "$god_ set-dist 14 22 1"
$ns_ at 164.596644394148 "$god_ set-dist 14 33 2"
$ns_ at 164.596644394148 "$god_ set-dist 14 47 2"
$ns_ at 164.600749828706 "$god_ set-dist 35 49 1"
$ns_ at 164.603979129587 "$god_ set-dist 7 26 2"
$ns_ at 164.615867414744 "$god_ set-dist 1 17 2"
$ns_ at 164.642465719124 "$god_ set-dist 3 40 2"
$ns_ at 164.642465719124 "$god_ set-dist 34 39 2"
$ns_ at 164.642465719124 "$god_ set-dist 34 40 1"
$ns_ at 164.647829494460 "$god_ set-dist 28 34 2"
$ns_ at 164.670019378305 "$god_ set-dist 25 31 2"
$ns_ at 164.670019378305 "$god_ set-dist 31 49 1"
$ns_ at 164.687963783596 "$god_ set-dist 9 17 2"
$ns_ at 164.739975169920 "$god_ set-dist 23 49 1"
$ns_ at 164.773400419421 "$god_ set-dist 0 47 3"
$ns_ at 164.773400419421 "$god_ set-dist 7 47 3"
$ns_ at 164.773400419421 "$god_ set-dist 45 47 2"
$ns_ at 164.773400419421 "$god_ set-dist 46 47 3"
$ns_ at 164.785072469198 "$god_ set-dist 21 43 1"
$ns_ at 164.789923559449 "$god_ set-dist 13 17 2"
$ns_ at 164.789923559449 "$god_ set-dist 13 20 2"
$ns_ at 164.789923559449 "$god_ set-dist 13 30 1"
$ns_ at 164.798485017769 "$god_ set-dist 9 32 2"
$ns_ at 164.815040985575 "$god_ set-dist 6 41 1"
$ns_ at 164.873128939738 "$god_ set-dist 3 38 2"
$ns_ at 164.873128939738 "$god_ set-dist 18 34 2"
$ns_ at 164.873128939738 "$god_ set-dist 34 38 1"
$ns_ at 164.874361646362 "$god_ set-dist 43 45 2"
$ns_ at 164.900981114780 "$god_ set-dist 14 46 2"
$ns_ at 164.900981114780 "$god_ set-dist 41 46 3"
$ns_ at 164.903204918402 "$god_ set-dist 4 14 3"
$ns_ at 164.903204918402 "$god_ set-dist 4 22 2"
$ns_ at 164.903204918402 "$god_ set-dist 4 39 3"
$ns_ at 164.978888174545 "$god_ set-dist 16 48 2"
$ns_ at 164.995190087600 "$god_ set-dist 20 44 1"
$ns_ at 165.071725911718 "$god_ set-dist 39 40 2"
$ns_ at 165.100875213928 "$god_ set-dist 7 37 1"
$ns_ at 165.122847720016 "$god_ set-dist 17 25 3"
$ns_ at 165.122847720016 "$god_ set-dist 17 49 2"
$ns_ at 165.126151650317 "$god_ set-dist 12 20 3"
$ns_ at 165.126151650317 "$god_ set-dist 20 30 2"
$ns_ at 165.129748451362 "$god_ set-dist 22 39 2"
$ns_ at 165.129748451362 "$god_ set-dist 33 39 3"
$ns_ at 165.129748451362 "$god_ set-dist 39 47 3"
$ns_ at 165.241362650984 "$god_ set-dist 29 34 2"
$ns_ at 165.241362650984 "$god_ set-dist 34 41 3"
$ns_ at 165.243735527173 "$god_ set-dist 22 45 2"
$ns_ at 165.260453548947 "$god_ set-dist 25 36 2"
$ns_ at 165.260453548947 "$god_ set-dist 36 49 1"
$ns_ at 165.271405107650 "$god_ set-dist 35 39 2"
$ns_ at 165.272361853084 "$god_ set-dist 5 12 1"
$ns_ at 165.310488457781 "$god_ set-dist 14 27 2"
$ns_ at 165.334789850680 "$god_ set-dist 3 5 4"
$ns_ at 165.334789850680 "$god_ set-dist 3 9 2"
$ns_ at 165.334789850680 "$god_ set-dist 3 12 3"
$ns_ at 165.334789850680 "$god_ set-dist 3 42 3"
$ns_ at 165.378019984880 "$god_ set-dist 10 15 3"
$ns_ at 165.378019984880 "$god_ set-dist 15 16 2"
$ns_ at 165.378019984880 "$god_ set-dist 15 41 3"
$ns_ at 165.489460240991 "$god_ set-dist 13 49 1"
$ns_ at 165.541014763651 "$god_ set-dist 11 39 3"
$ns_ at 165.541014763651 "$god_ set-dist 19 39 3"
$ns_ at 165.541014763651 "$god_ set-dist 34 39 3"
$ns_ at 165.541014763651 "$god_ set-dist 38 39 2"
$ns_ at 165.551765476202 "$node_(3) setdest 23.926815888094 494.644450784206 0.000000000000"
$ns_ at 165.574357628911 "$god_ set-dist 11 25 2"
$ns_ at 165.574357628911 "$god_ set-dist 11 49 1"
$ns_ at 165.636979701728 "$god_ set-dist 5 19 2"
$ns_ at 165.636979701728 "$god_ set-dist 13 19 1"
$ns_ at 165.636979701728 "$god_ set-dist 19 39 2"
$ns_ at 165.662999356926 "$god_ set-dist 1 35 1"
$ns_ at 165.662999356926 "$god_ set-dist 33 35 2"
$ns_ at 165.676634810657 "$god_ set-dist 1 41 1"
$ns_ at 165.676634810657 "$god_ set-dist 32 41 2"
$ns_ at 165.676634810657 "$god_ set-dist 34 41 2"
$ns_ at 165.683644392595 "$god_ set-dist 14 23 2"
$ns_ at 165.733799725464 "$god_ set-dist 6 19 2"
$ns_ at 165.733799725464 "$god_ set-dist 6 37 2"
$ns_ at 165.733799725464 "$god_ set-dist 6 44 1"
$ns_ at 165.778480219637 "$god_ set-dist 10 33 2"
$ns_ at 165.778480219637 "$god_ set-dist 18 33 2"
$ns_ at 165.778480219637 "$god_ set-dist 26 33 1"
$ns_ at 165.778480219637 "$god_ set-dist 33 39 2"
$ns_ at 165.810266068338 "$god_ set-dist 2 17 3"
$ns_ at 165.810266068338 "$god_ set-dist 5 17 4"
$ns_ at 165.810266068338 "$god_ set-dist 8 17 3"
$ns_ at 165.810266068338 "$god_ set-dist 12 17 3"
$ns_ at 165.810266068338 "$god_ set-dist 13 17 3"
$ns_ at 165.810266068338 "$god_ set-dist 16 17 3"
$ns_ at 165.810266068338 "$god_ set-dist 17 23 3"
$ns_ at 165.810266068338 "$god_ set-dist 17 30 2"
$ns_ at 165.810266068338 "$god_ set-dist 17 35 3"
$ns_ at 165.810266068338 "$god_ set-dist 17 42 3"
$ns_ at 165.843820282183 "$god_ set-dist 12 40 1"
$ns_ at 165.951850529862 "$god_ set-dist 18 34 3"
$ns_ at 165.951850529862 "$god_ set-dist 18 38 2"
$ns_ at 165.995002788864 "$god_ set-dist 14 24 2"
$ns_ at 166.031725643216 "$god_ set-dist 14 21 2"
$ns_ at 166.083111698481 "$god_ set-dist 21 46 2"
$ns_ at 166.083111698481 "$god_ set-dist 28 46 3"
$ns_ at 166.083111698481 "$god_ set-dist 29 46 3"
$ns_ at 166.083111698481 "$god_ set-dist 43 46 3"
$ns_ at 166.094462278715 "$god_ set-dist 28 44 2"
$ns_ at 166.104658734154 "$god_ set-dist 8 20 3"
$ns_ at 166.104658734154 "$god_ set-dist 8 44 2"
$ns_ at 166.136029677341 "$god_ set-dist 0 32 2"
$ns_ at 166.136029677341 "$god_ set-dist 7 32 2"
$ns_ at 166.136029677341 "$god_ set-dist 21 32 1"
$ns_ at 166.136392122115 "$god_ set-dist 6 21 1"
$ns_ at 166.193070762037 "$god_ set-dist 5 13 2"
$ns_ at 166.193070762037 "$god_ set-dist 5 15 3"
$ns_ at 166.193070762037 "$god_ set-dist 5 19 3"
$ns_ at 166.193070762037 "$god_ set-dist 5 31 3"
$ns_ at 166.193070762037 "$god_ set-dist 5 36 3"
$ns_ at 166.246333090869 "$god_ set-dist 3 23 2"
$ns_ at 166.246333090869 "$god_ set-dist 17 23 2"
$ns_ at 166.246333090869 "$god_ set-dist 23 34 1"
$ns_ at 166.256876326638 "$god_ set-dist 6 34 1"
$ns_ at 166.293227036388 "$god_ set-dist 2 17 2"
$ns_ at 166.293227036388 "$god_ set-dist 5 17 3"
$ns_ at 166.293227036388 "$god_ set-dist 13 17 2"
$ns_ at 166.293227036388 "$god_ set-dist 16 17 2"
$ns_ at 166.293227036388 "$god_ set-dist 17 35 2"
$ns_ at 166.293227036388 "$god_ set-dist 17 37 2"
$ns_ at 166.293227036388 "$god_ set-dist 17 42 2"
$ns_ at 166.293227036388 "$god_ set-dist 17 44 1"
$ns_ at 166.316071164418 "$god_ set-dist 14 47 3"
$ns_ at 166.316071164418 "$god_ set-dist 22 47 2"
$ns_ at 166.373189725190 "$god_ set-dist 19 28 3"
$ns_ at 166.373189725190 "$god_ set-dist 21 28 2"
$ns_ at 166.373189725190 "$god_ set-dist 28 37 3"
$ns_ at 166.460902591833 "$god_ set-dist 3 39 4"
$ns_ at 166.460902591833 "$god_ set-dist 26 39 2"
$ns_ at 166.460902591833 "$god_ set-dist 33 39 3"
$ns_ at 166.460902591833 "$god_ set-dist 39 43 3"
$ns_ at 166.504379580944 "$god_ set-dist 6 8 1"
$ns_ at 166.508018831229 "$god_ set-dist 9 42 2"
$ns_ at 166.516407150793 "$god_ set-dist 31 46 1"
$ns_ at 166.516407150793 "$god_ set-dist 32 46 2"
$ns_ at 166.619588321115 "$god_ set-dist 3 18 4"
$ns_ at 166.619588321115 "$god_ set-dist 18 26 2"
$ns_ at 166.619588321115 "$god_ set-dist 18 33 3"
$ns_ at 166.619588321115 "$god_ set-dist 18 43 3"
$ns_ at 166.789837533597 "$god_ set-dist 1 13 1"
$ns_ at 166.789837533597 "$god_ set-dist 13 33 2"
$ns_ at 166.818607694108 "$god_ set-dist 1 33 2"
$ns_ at 166.818607694108 "$god_ set-dist 13 33 3"
$ns_ at 166.818607694108 "$god_ set-dist 24 33 3"
$ns_ at 166.818607694108 "$god_ set-dist 27 33 3"
$ns_ at 166.818607694108 "$god_ set-dist 33 35 3"
$ns_ at 166.818607694108 "$god_ set-dist 33 45 3"
$ns_ at 166.968010101359 "$god_ set-dist 11 25 3"
$ns_ at 166.968010101359 "$god_ set-dist 15 25 3"
$ns_ at 166.968010101359 "$god_ set-dist 25 31 3"
$ns_ at 166.968010101359 "$god_ set-dist 25 36 3"
$ns_ at 166.968010101359 "$god_ set-dist 25 49 2"
$ns_ at 166.993019535640 "$god_ set-dist 9 19 2"
$ns_ at 166.993019535640 "$god_ set-dist 19 28 2"
$ns_ at 166.993019535640 "$god_ set-dist 19 30 1"
$ns_ at 166.993019535640 "$god_ set-dist 19 48 2"
$ns_ at 167.004404379290 "$god_ set-dist 25 48 2"
$ns_ at 167.168380900411 "$node_(39) setdest 525.771605933666 103.129685570247 0.000000000000"
$ns_ at 167.182405527854 "$god_ set-dist 26 44 2"
$ns_ at 167.201710114769 "$god_ set-dist 1 31 1"
$ns_ at 167.201710114769 "$god_ set-dist 25 31 2"
$ns_ at 167.201710114769 "$god_ set-dist 31 41 2"
$ns_ at 167.212454355457 "$god_ set-dist 2 48 2"
$ns_ at 167.264007000830 "$god_ set-dist 8 28 2"
$ns_ at 167.267845008429 "$god_ set-dist 11 33 2"
$ns_ at 167.267845008429 "$god_ set-dist 11 43 1"
$ns_ at 167.294590765935 "$god_ set-dist 29 47 2"
$ns_ at 167.297730135645 "$god_ set-dist 5 31 2"
$ns_ at 167.297730135645 "$god_ set-dist 10 31 2"
$ns_ at 167.297730135645 "$god_ set-dist 16 31 1"
$ns_ at 167.314726252326 "$god_ set-dist 0 4 2"
$ns_ at 167.314726252326 "$god_ set-dist 0 30 1"
$ns_ at 167.314726252326 "$god_ set-dist 0 47 2"
$ns_ at 167.347653690455 "$god_ set-dist 8 45 2"
$ns_ at 167.389613484180 "$god_ set-dist 11 17 1"
$ns_ at 167.402828394460 "$god_ set-dist 29 44 2"
$ns_ at 167.432914860478 "$god_ set-dist 1 23 1"
$ns_ at 167.461832280609 "$god_ set-dist 3 10 4"
$ns_ at 167.461832280609 "$god_ set-dist 10 26 2"
$ns_ at 167.461832280609 "$god_ set-dist 10 33 3"
$ns_ at 167.461832280609 "$god_ set-dist 10 43 3"
$ns_ at 167.486496822656 "$god_ set-dist 4 29 2"
$ns_ at 167.524540120180 "$god_ set-dist 9 41 1"
$ns_ at 167.544946091576 "$god_ set-dist 7 45 2"
$ns_ at 167.696897757285 "$god_ set-dist 6 32 1"
$ns_ at 167.704332378923 "$god_ set-dist 0 49 1"
$ns_ at 167.734442616185 "$god_ set-dist 13 39 2"
$ns_ at 167.734442616185 "$god_ set-dist 15 39 3"
$ns_ at 167.734442616185 "$god_ set-dist 19 39 3"
$ns_ at 167.734442616185 "$god_ set-dist 36 39 3"
$ns_ at 167.757274673756 "$god_ set-dist 4 37 3"
$ns_ at 167.757274673756 "$god_ set-dist 37 44 2"
$ns_ at 167.757274673756 "$god_ set-dist 37 47 3"
$ns_ at 167.815500221920 "$god_ set-dist 2 17 3"
$ns_ at 167.815500221920 "$god_ set-dist 2 20 3"
$ns_ at 167.815500221920 "$god_ set-dist 2 44 2"
$ns_ at 167.829596378201 "$god_ set-dist 0 36 1"
$ns_ at 167.829596378201 "$god_ set-dist 5 36 2"
$ns_ at 167.829596378201 "$god_ set-dist 10 36 2"
$ns_ at 167.829596378201 "$god_ set-dist 25 36 2"
$ns_ at 167.829596378201 "$god_ set-dist 36 39 2"
$ns_ at 167.864860972882 "$god_ set-dist 4 7 2"
$ns_ at 167.864860972882 "$god_ set-dist 7 30 1"
$ns_ at 167.864860972882 "$god_ set-dist 7 47 2"
$ns_ at 167.881221416266 "$god_ set-dist 3 18 3"
$ns_ at 167.881221416266 "$god_ set-dist 3 35 2"
$ns_ at 167.881221416266 "$god_ set-dist 18 34 2"
$ns_ at 167.881221416266 "$god_ set-dist 34 35 1"
$ns_ at 167.887326969739 "$god_ set-dist 14 38 2"
$ns_ at 168.000477088389 "$god_ set-dist 22 44 2"
$ns_ at 168.015061128575 "$god_ set-dist 1 14 1"
$ns_ at 168.015061128575 "$god_ set-dist 4 14 2"
$ns_ at 168.015061128575 "$god_ set-dist 14 32 2"
$ns_ at 168.015061128575 "$god_ set-dist 14 47 2"
$ns_ at 168.124460280843 "$god_ set-dist 42 48 2"
$ns_ at 168.233140699448 "$god_ set-dist 19 49 1"
$ns_ at 168.234449689863 "$god_ set-dist 14 40 2"
$ns_ at 168.239944867531 "$god_ set-dist 2 45 2"
$ns_ at 168.239955979269 "$god_ set-dist 5 41 2"
$ns_ at 168.248683821150 "$god_ set-dist 31 42 1"
$ns_ at 168.250856882884 "$god_ set-dist 1 47 2"
$ns_ at 168.250856882884 "$god_ set-dist 14 47 3"
$ns_ at 168.274352154511 "$god_ set-dist 11 13 1"
$ns_ at 168.304978247565 "$god_ set-dist 28 47 2"
$ns_ at 168.316246880321 "$god_ set-dist 14 35 2"
$ns_ at 168.320559254776 "$god_ set-dist 25 28 2"
$ns_ at 168.331394247672 "$god_ set-dist 1 32 2"
$ns_ at 168.331394247672 "$god_ set-dist 14 32 3"
$ns_ at 168.404293442261 "$god_ set-dist 7 49 1"
$ns_ at 168.498295315924 "$god_ set-dist 30 47 2"
$ns_ at 168.506984105239 "$god_ set-dist 0 1 1"
$ns_ at 168.618197998570 "$god_ set-dist 17 42 3"
$ns_ at 168.618197998570 "$god_ set-dist 20 42 3"
$ns_ at 168.618197998570 "$god_ set-dist 42 44 2"
$ns_ at 168.687172452821 "$god_ set-dist 4 21 1"
$ns_ at 168.687172452821 "$god_ set-dist 4 37 2"
$ns_ at 168.752465159595 "$god_ set-dist 0 31 1"
$ns_ at 168.798615293817 "$god_ set-dist 1 4 2"
$ns_ at 168.798615293817 "$god_ set-dist 4 14 3"
$ns_ at 168.820926798753 "$god_ set-dist 16 28 2"
$ns_ at 168.824413241477 "$god_ set-dist 6 38 1"
$ns_ at 168.824413241477 "$god_ set-dist 6 46 2"
$ns_ at 168.841859093930 "$god_ set-dist 0 47 3"
$ns_ at 168.841859093930 "$god_ set-dist 7 47 3"
$ns_ at 168.841859093930 "$god_ set-dist 47 49 2"
$ns_ at 168.862102971015 "$god_ set-dist 1 7 1"
$ns_ at 168.885302276950 "$god_ set-dist 47 48 2"
$ns_ at 168.900169747394 "$god_ set-dist 11 14 3"
$ns_ at 168.900169747394 "$god_ set-dist 13 14 2"
$ns_ at 168.900169747394 "$god_ set-dist 14 15 3"
$ns_ at 168.900169747394 "$god_ set-dist 14 19 3"
$ns_ at 168.906291537895 "$god_ set-dist 4 30 2"
$ns_ at 168.924310358429 "$god_ set-dist 38 43 1"
$ns_ at 168.924310358429 "$god_ set-dist 43 46 2"
$ns_ at 168.965217582535 "$god_ set-dist 1 45 2"
$ns_ at 169.036487197319 "$god_ set-dist 4 11 1"
$ns_ at 169.074391355743 "$god_ set-dist 14 26 2"
$ns_ at 169.092665266872 "$god_ set-dist 5 17 4"
$ns_ at 169.092665266872 "$god_ set-dist 5 20 4"
$ns_ at 169.092665266872 "$god_ set-dist 5 44 3"
$ns_ at 169.092665266872 "$god_ set-dist 10 17 4"
$ns_ at 169.092665266872 "$god_ set-dist 10 20 4"
$ns_ at 169.092665266872 "$god_ set-dist 10 44 3"
$ns_ at 169.092665266872 "$god_ set-dist 16 17 3"
$ns_ at 169.092665266872 "$god_ set-dist 16 20 3"
$ns_ at 169.092665266872 "$god_ set-dist 16 44 2"
$ns_ at 169.092665266872 "$god_ set-dist 17 39 4"
$ns_ at 169.092665266872 "$god_ set-dist 20 39 4"
$ns_ at 169.092665266872 "$god_ set-dist 39 44 3"
$ns_ at 169.095879503580 "$god_ set-dist 8 27 2"
$ns_ at 169.169284337629 "$node_(11) setdest 345.035373246613 552.887727066559 0.000000000000"
$ns_ at 169.176423741017 "$god_ set-dist 7 21 2"
$ns_ at 169.189869599396 "$god_ set-dist 6 40 1"
$ns_ at 169.218130136358 "$god_ set-dist 28 42 2"
$ns_ at 169.226293387940 "$god_ set-dist 30 48 2"
$ns_ at 169.297787146961 "$god_ set-dist 14 29 1"
$ns_ at 169.352666713366 "$god_ set-dist 12 38 2"
$ns_ at 169.354528564494 "$god_ set-dist 9 37 2"
$ns_ at 169.354528564494 "$god_ set-dist 28 37 2"
$ns_ at 169.354528564494 "$god_ set-dist 30 37 1"
$ns_ at 169.376003957472 "$god_ set-dist 15 48 3"
$ns_ at 169.376003957472 "$god_ set-dist 19 48 3"
$ns_ at 169.376003957472 "$god_ set-dist 36 48 3"
$ns_ at 169.376003957472 "$god_ set-dist 45 48 3"
$ns_ at 169.376003957472 "$god_ set-dist 48 49 2"
$ns_ at 169.422109026915 "$god_ set-dist 31 33 2"
$ns_ at 169.422109026915 "$god_ set-dist 31 43 1"
$ns_ at 169.461546836568 "$god_ set-dist 28 30 2"
$ns_ at 169.461546836568 "$god_ set-dist 28 37 3"
$ns_ at 169.468636016740 "$god_ set-dist 15 28 3"
$ns_ at 169.468636016740 "$god_ set-dist 19 28 3"
$ns_ at 169.468636016740 "$god_ set-dist 28 36 3"
$ns_ at 169.468636016740 "$god_ set-dist 28 45 3"
$ns_ at 169.468636016740 "$god_ set-dist 28 49 2"
$ns_ at 169.490584106444 "$god_ set-dist 26 34 1"
$ns_ at 169.519060695382 "$god_ set-dist 9 47 2"
$ns_ at 169.536083073280 "$god_ set-dist 1 27 2"
$ns_ at 169.536083073280 "$god_ set-dist 27 48 3"
$ns_ at 169.538367454607 "$god_ set-dist 2 28 2"
$ns_ at 169.538367454607 "$god_ set-dist 27 28 3"
$ns_ at 169.551727951227 "$god_ set-dist 37 49 1"
$ns_ at 169.563360251438 "$god_ set-dist 4 7 3"
$ns_ at 169.563360251438 "$god_ set-dist 4 49 2"
$ns_ at 169.578982922629 "$node_(15) setdest 479.894560593662 522.268307891630 0.000000000000"
$ns_ at 169.706420914182 "$god_ set-dist 0 20 2"
$ns_ at 169.706420914182 "$god_ set-dist 2 20 2"
$ns_ at 169.706420914182 "$god_ set-dist 5 20 3"
$ns_ at 169.706420914182 "$god_ set-dist 8 20 2"
$ns_ at 169.706420914182 "$god_ set-dist 10 20 3"
$ns_ at 169.706420914182 "$god_ set-dist 12 20 2"
$ns_ at 169.706420914182 "$god_ set-dist 16 20 2"
$ns_ at 169.706420914182 "$god_ set-dist 20 21 1"
$ns_ at 169.706420914182 "$god_ set-dist 20 39 3"
$ns_ at 169.706420914182 "$god_ set-dist 20 42 2"
$ns_ at 169.736635679370 "$god_ set-dist 9 49 2"
$ns_ at 169.738585761646 "$god_ set-dist 4 25 3"
$ns_ at 169.738585761646 "$god_ set-dist 6 25 2"
$ns_ at 169.738585761646 "$god_ set-dist 25 32 3"
$ns_ at 169.738585761646 "$god_ set-dist 25 47 3"
$ns_ at 169.766865369639 "$god_ set-dist 2 31 1"
$ns_ at 169.775113712653 "$god_ set-dist 2 27 2"
$ns_ at 169.790613246213 "$god_ set-dist 4 28 2"
$ns_ at 169.848963924370 "$god_ set-dist 9 15 3"
$ns_ at 169.848963924370 "$god_ set-dist 9 19 3"
$ns_ at 169.848963924370 "$god_ set-dist 9 27 3"
$ns_ at 169.848963924370 "$god_ set-dist 9 30 2"
$ns_ at 169.848963924370 "$god_ set-dist 9 36 3"
$ns_ at 169.848963924370 "$god_ set-dist 9 37 3"
$ns_ at 169.848963924370 "$god_ set-dist 9 45 3"
$ns_ at 169.882198784604 "$god_ set-dist 18 41 2"
$ns_ at 169.903859786090 "$god_ set-dist 39 41 2"
$ns_ at 169.966867506370 "$god_ set-dist 21 37 2"
$ns_ at 170.063807983175 "$god_ set-dist 42 45 2"
$ns_ at 170.089103721614 "$god_ set-dist 40 43 1"
$ns_ at 170.157723715696 "$god_ set-dist 1 18 1"
$ns_ at 170.157723715696 "$god_ set-dist 18 43 2"
$ns_ at 170.364404506359 "$god_ set-dist 16 45 2"
$ns_ at 170.364404506359 "$god_ set-dist 41 45 3"
$ns_ at 170.424574637333 "$god_ set-dist 3 13 2"
$ns_ at 170.424574637333 "$god_ set-dist 13 34 1"
$ns_ at 170.443535776878 "$god_ set-dist 0 15 1"
$ns_ at 170.443535776878 "$god_ set-dist 5 15 2"
$ns_ at 170.443535776878 "$god_ set-dist 10 15 2"
$ns_ at 170.443535776878 "$god_ set-dist 14 15 2"
$ns_ at 170.443535776878 "$god_ set-dist 15 25 2"
$ns_ at 170.443535776878 "$god_ set-dist 15 39 2"
$ns_ at 170.448547377283 "$god_ set-dist 2 47 3"
$ns_ at 170.448547377283 "$god_ set-dist 5 47 4"
$ns_ at 170.448547377283 "$god_ set-dist 6 47 2"
$ns_ at 170.448547377283 "$god_ set-dist 8 47 3"
$ns_ at 170.448547377283 "$god_ set-dist 10 47 4"
$ns_ at 170.448547377283 "$god_ set-dist 12 47 3"
$ns_ at 170.448547377283 "$god_ set-dist 16 47 3"
$ns_ at 170.448547377283 "$god_ set-dist 39 47 4"
$ns_ at 170.448547377283 "$god_ set-dist 41 47 3"
$ns_ at 170.448547377283 "$god_ set-dist 42 47 3"
$ns_ at 170.502546256722 "$god_ set-dist 18 40 1"
$ns_ at 170.585632508366 "$god_ set-dist 22 35 1"
$ns_ at 170.585632508366 "$god_ set-dist 33 35 2"
$ns_ at 170.696971986332 "$god_ set-dist 6 35 1"
$ns_ at 170.743953962962 "$god_ set-dist 11 25 2"
$ns_ at 170.743953962962 "$god_ set-dist 19 25 2"
$ns_ at 170.743953962962 "$god_ set-dist 25 30 1"
$ns_ at 170.743953962962 "$god_ set-dist 25 32 2"
$ns_ at 170.761072665833 "$god_ set-dist 1 10 1"
$ns_ at 170.761072665833 "$god_ set-dist 3 10 3"
$ns_ at 170.761072665833 "$god_ set-dist 10 17 3"
$ns_ at 170.761072665833 "$god_ set-dist 10 34 2"
$ns_ at 170.761072665833 "$god_ set-dist 10 43 2"
$ns_ at 170.761072665833 "$god_ set-dist 10 44 2"
$ns_ at 170.761072665833 "$god_ set-dist 10 47 3"
$ns_ at 170.762180924118 "$node_(9) setdest 149.141730782921 233.160143107481 0.000000000000"
$ns_ at 170.766656751448 "$god_ set-dist 8 31 1"
$ns_ at 170.767679790294 "$god_ set-dist 4 25 2"
$ns_ at 170.767679790294 "$god_ set-dist 4 26 1"
$ns_ at 170.796537491414 "$god_ set-dist 9 15 2"
$ns_ at 170.796537491414 "$god_ set-dist 9 19 2"
$ns_ at 170.796537491414 "$god_ set-dist 9 21 1"
$ns_ at 170.796537491414 "$god_ set-dist 9 27 2"
$ns_ at 170.796537491414 "$god_ set-dist 9 36 2"
$ns_ at 170.796537491414 "$god_ set-dist 9 45 2"
$ns_ at 170.830933284309 "$god_ set-dist 7 31 1"
$ns_ at 171.084494478988 "$god_ set-dist 0 4 3"
$ns_ at 171.084494478988 "$god_ set-dist 0 20 3"
$ns_ at 171.084494478988 "$god_ set-dist 0 21 2"
$ns_ at 171.150854846743 "$god_ set-dist 41 42 2"
$ns_ at 171.156272348998 "$god_ set-dist 17 22 3"
$ns_ at 171.156272348998 "$god_ set-dist 17 28 3"
$ns_ at 171.156272348998 "$god_ set-dist 17 29 3"
$ns_ at 171.156272348998 "$god_ set-dist 17 33 3"
$ns_ at 171.156272348998 "$god_ set-dist 17 43 2"
$ns_ at 171.288722033684 "$node_(8) setdest 406.503383927677 224.905802623929 0.000000000000"
$ns_ at 171.292694950350 "$god_ set-dist 11 17 2"
$ns_ at 171.292694950350 "$god_ set-dist 17 37 3"
$ns_ at 171.349758918327 "$node_(17) setdest 114.564540737640 651.036696491212 0.000000000000"
$ns_ at 171.388372264185 "$god_ set-dist 1 44 2"
$ns_ at 171.388372264185 "$god_ set-dist 10 44 3"
$ns_ at 171.388372264185 "$god_ set-dist 14 44 3"
$ns_ at 171.405851257691 "$god_ set-dist 10 33 2"
$ns_ at 171.405851257691 "$god_ set-dist 33 41 1"
$ns_ at 171.432458604926 "$god_ set-dist 0 45 2"
$ns_ at 171.432458604926 "$god_ set-dist 5 45 3"
$ns_ at 171.432458604926 "$god_ set-dist 10 45 3"
$ns_ at 171.432458604926 "$god_ set-dist 14 45 3"
$ns_ at 171.432458604926 "$god_ set-dist 39 45 3"
$ns_ at 171.442202978608 "$god_ set-dist 4 25 3"
$ns_ at 171.442202978608 "$god_ set-dist 25 26 2"
$ns_ at 171.494945435528 "$god_ set-dist 13 18 2"
$ns_ at 171.531197024447 "$god_ set-dist 29 46 2"
$ns_ at 171.531197024447 "$god_ set-dist 42 46 1"
$ns_ at 171.562057726372 "$god_ set-dist 25 32 3"
$ns_ at 171.562057726372 "$god_ set-dist 30 32 2"
$ns_ at 171.591013932229 "$god_ set-dist 6 31 1"
$ns_ at 171.684448763733 "$god_ set-dist 37 42 1"
$ns_ at 171.692713567482 "$god_ set-dist 15 48 2"
$ns_ at 171.692713567482 "$god_ set-dist 19 48 2"
$ns_ at 171.692713567482 "$god_ set-dist 21 48 1"
$ns_ at 171.692713567482 "$god_ set-dist 27 48 2"
$ns_ at 171.692713567482 "$god_ set-dist 36 48 2"
$ns_ at 171.692713567482 "$god_ set-dist 45 48 2"
$ns_ at 171.713320692372 "$god_ set-dist 15 42 1"
$ns_ at 171.738063049096 "$god_ set-dist 36 42 1"
$ns_ at 171.757843831399 "$god_ set-dist 3 5 3"
$ns_ at 171.757843831399 "$god_ set-dist 3 16 2"
$ns_ at 171.757843831399 "$god_ set-dist 3 39 3"
$ns_ at 171.757843831399 "$god_ set-dist 5 17 3"
$ns_ at 171.757843831399 "$god_ set-dist 5 34 2"
$ns_ at 171.757843831399 "$god_ set-dist 5 47 3"
$ns_ at 171.757843831399 "$god_ set-dist 16 17 2"
$ns_ at 171.757843831399 "$god_ set-dist 16 34 1"
$ns_ at 171.757843831399 "$god_ set-dist 16 47 2"
$ns_ at 171.757843831399 "$god_ set-dist 17 39 3"
$ns_ at 171.757843831399 "$god_ set-dist 34 39 2"
$ns_ at 171.757843831399 "$god_ set-dist 39 47 3"
$ns_ at 171.783876884766 "$god_ set-dist 16 41 2"
$ns_ at 171.783876884766 "$god_ set-dist 27 41 3"
$ns_ at 171.786960090522 "$god_ set-dist 3 5 4"
$ns_ at 171.786960090522 "$god_ set-dist 3 13 3"
$ns_ at 171.786960090522 "$god_ set-dist 3 15 3"
$ns_ at 171.786960090522 "$god_ set-dist 3 16 3"
$ns_ at 171.786960090522 "$god_ set-dist 3 19 3"
$ns_ at 171.786960090522 "$god_ set-dist 3 23 3"
$ns_ at 171.786960090522 "$god_ set-dist 3 24 3"
$ns_ at 171.786960090522 "$god_ set-dist 3 27 3"
$ns_ at 171.786960090522 "$god_ set-dist 3 34 2"
$ns_ at 171.786960090522 "$god_ set-dist 3 35 3"
$ns_ at 171.786960090522 "$god_ set-dist 3 36 3"
$ns_ at 171.786960090522 "$god_ set-dist 3 39 4"
$ns_ at 171.786960090522 "$god_ set-dist 3 45 3"
$ns_ at 171.849352634401 "$god_ set-dist 3 5 3"
$ns_ at 171.849352634401 "$god_ set-dist 3 16 2"
$ns_ at 171.849352634401 "$god_ set-dist 3 39 3"
$ns_ at 171.849352634401 "$god_ set-dist 5 43 2"
$ns_ at 171.849352634401 "$god_ set-dist 16 43 1"
$ns_ at 171.849352634401 "$god_ set-dist 39 43 2"
$ns_ at 171.936035869237 "$god_ set-dist 4 9 2"
$ns_ at 171.936035869237 "$god_ set-dist 9 17 3"
$ns_ at 171.989594822254 "$god_ set-dist 10 29 1"
$ns_ at 171.991008504245 "$god_ set-dist 12 49 2"
$ns_ at 172.134689929680 "$god_ set-dist 18 30 1"
$ns_ at 172.214683784287 "$god_ set-dist 29 49 2"
$ns_ at 172.232093702156 "$god_ set-dist 26 32 1"
$ns_ at 172.238396225051 "$god_ set-dist 3 35 2"
$ns_ at 172.238396225051 "$god_ set-dist 35 43 1"
$ns_ at 172.344082404868 "$god_ set-dist 12 20 3"
$ns_ at 172.344082404868 "$god_ set-dist 12 21 2"
$ns_ at 172.357138153167 "$god_ set-dist 4 11 2"
$ns_ at 172.357138153167 "$god_ set-dist 4 37 3"
$ns_ at 172.410652524949 "$god_ set-dist 8 23 2"
$ns_ at 172.494657385866 "$god_ set-dist 17 42 2"
$ns_ at 172.494657385866 "$god_ set-dist 34 42 1"
$ns_ at 172.494657385866 "$god_ set-dist 42 47 2"
$ns_ at 172.555787109282 "$god_ set-dist 32 38 1"
$ns_ at 172.639776656323 "$node_(14) setdest 439.043025805371 64.466569754074 0.000000000000"
$ns_ at 172.693758481087 "$god_ set-dist 46 49 1"
$ns_ at 172.706329272315 "$god_ set-dist 31 32 2"
$ns_ at 172.722584966104 "$god_ set-dist 30 46 1"
$ns_ at 172.889748943850 "$god_ set-dist 15 16 1"
$ns_ at 172.919801703117 "$god_ set-dist 7 27 2"
$ns_ at 172.938792187078 "$god_ set-dist 9 17 2"
$ns_ at 172.938792187078 "$god_ set-dist 17 22 2"
$ns_ at 172.938792187078 "$god_ set-dist 17 28 2"
$ns_ at 172.938792187078 "$god_ set-dist 17 29 2"
$ns_ at 172.938792187078 "$god_ set-dist 17 33 2"
$ns_ at 172.938792187078 "$god_ set-dist 17 43 1"
$ns_ at 172.946188872084 "$god_ set-dist 0 14 2"
$ns_ at 173.031599945688 "$god_ set-dist 1 28 2"
$ns_ at 173.031599945688 "$god_ set-dist 13 28 3"
$ns_ at 173.031599945688 "$god_ set-dist 23 28 3"
$ns_ at 173.031599945688 "$god_ set-dist 24 28 3"
$ns_ at 173.043916631157 "$god_ set-dist 26 49 2"
$ns_ at 173.073052896535 "$god_ set-dist 24 44 2"
$ns_ at 173.189474109166 "$god_ set-dist 1 39 1"
$ns_ at 173.236886550972 "$god_ set-dist 6 13 1"
$ns_ at 173.236886550972 "$god_ set-dist 13 28 2"
$ns_ at 173.236886550972 "$god_ set-dist 13 33 2"
$ns_ at 173.291777677158 "$god_ set-dist 10 22 1"
$ns_ at 173.316579010758 "$god_ set-dist 2 23 2"
$ns_ at 173.319219901272 "$god_ set-dist 10 41 2"
$ns_ at 173.355768599746 "$god_ set-dist 13 44 2"
$ns_ at 173.470219288296 "$god_ set-dist 9 45 3"
$ns_ at 173.470219288296 "$god_ set-dist 21 45 2"
$ns_ at 173.470219288296 "$god_ set-dist 45 48 3"
$ns_ at 173.493961257132 "$god_ set-dist 26 40 2"
$ns_ at 173.497514279402 "$node_(47) setdest 45.436790348229 531.561425115162 0.000000000000"
$ns_ at 173.515499605654 "$god_ set-dist 16 37 1"
$ns_ at 173.578446367658 "$god_ set-dist 6 44 2"
$ns_ at 173.578446367658 "$god_ set-dist 41 44 3"
$ns_ at 173.584154708968 "$god_ set-dist 26 38 2"
$ns_ at 173.589250982315 "$god_ set-dist 1 5 1"
$ns_ at 173.590989711728 "$god_ set-dist 9 36 3"
$ns_ at 173.590989711728 "$god_ set-dist 21 36 2"
$ns_ at 173.590989711728 "$god_ set-dist 36 48 3"
$ns_ at 173.633517219023 "$god_ set-dist 32 49 2"
$ns_ at 173.687063993668 "$god_ set-dist 3 28 3"
$ns_ at 173.687063993668 "$god_ set-dist 11 28 3"
$ns_ at 173.687063993668 "$god_ set-dist 17 28 3"
$ns_ at 173.687063993668 "$god_ set-dist 20 28 3"
$ns_ at 173.687063993668 "$god_ set-dist 28 43 2"
$ns_ at 173.687063993668 "$god_ set-dist 28 44 3"
$ns_ at 173.687063993668 "$god_ set-dist 28 47 3"
$ns_ at 173.775873559283 "$god_ set-dist 32 46 3"
$ns_ at 173.775873559283 "$god_ set-dist 38 46 2"
$ns_ at 173.779591430570 "$god_ set-dist 6 11 1"
$ns_ at 173.779591430570 "$god_ set-dist 11 28 2"
$ns_ at 173.779591430570 "$god_ set-dist 11 41 2"
$ns_ at 173.805714256641 "$god_ set-dist 25 44 3"
$ns_ at 173.805714256641 "$god_ set-dist 30 44 2"
$ns_ at 173.819077224854 "$god_ set-dist 22 49 2"
$ns_ at 173.926180644069 "$god_ set-dist 36 44 2"
$ns_ at 174.019188357338 "$god_ set-dist 26 42 2"
$ns_ at 174.044368283695 "$god_ set-dist 25 41 2"
$ns_ at 174.106177176258 "$node_(45) setdest 496.342472641085 571.414149476714 0.000000000000"
$ns_ at 174.254429083953 "$god_ set-dist 2 47 2"
$ns_ at 174.254429083953 "$god_ set-dist 8 47 2"
$ns_ at 174.254429083953 "$god_ set-dist 21 47 1"
$ns_ at 174.261297000662 "$god_ set-dist 35 44 2"
$ns_ at 174.519550246081 "$god_ set-dist 26 30 2"
$ns_ at 174.519550246081 "$god_ set-dist 26 46 3"
$ns_ at 174.568018440623 "$god_ set-dist 5 19 2"
$ns_ at 174.568018440623 "$god_ set-dist 10 19 2"
$ns_ at 174.568018440623 "$god_ set-dist 14 19 2"
$ns_ at 174.568018440623 "$god_ set-dist 19 39 2"
$ns_ at 174.568018440623 "$god_ set-dist 19 42 1"
$ns_ at 174.702640437962 "$god_ set-dist 2 3 2"
$ns_ at 174.702640437962 "$god_ set-dist 3 8 2"
$ns_ at 174.702640437962 "$god_ set-dist 3 13 2"
$ns_ at 174.702640437962 "$god_ set-dist 3 15 2"
$ns_ at 174.702640437962 "$god_ set-dist 3 19 2"
$ns_ at 174.702640437962 "$god_ set-dist 3 21 1"
$ns_ at 174.702640437962 "$god_ set-dist 3 23 2"
$ns_ at 174.702640437962 "$god_ set-dist 3 24 2"
$ns_ at 174.702640437962 "$god_ set-dist 3 27 2"
$ns_ at 174.702640437962 "$god_ set-dist 3 42 2"
$ns_ at 174.813542220913 "$god_ set-dist 12 44 3"
$ns_ at 174.813542220913 "$god_ set-dist 18 44 3"
$ns_ at 174.813542220913 "$god_ set-dist 40 44 2"
$ns_ at 174.815455998076 "$god_ set-dist 6 24 1"
$ns_ at 174.815455998076 "$god_ set-dist 24 28 2"
$ns_ at 174.815455998076 "$god_ set-dist 24 33 2"
$ns_ at 174.941310624657 "$god_ set-dist 6 23 1"
$ns_ at 174.941310624657 "$god_ set-dist 23 28 2"
$ns_ at 174.941310624657 "$god_ set-dist 23 33 2"
$ns_ at 174.971976346372 "$god_ set-dist 3 44 1"
$ns_ at 174.971976346372 "$god_ set-dist 3 45 2"
$ns_ at 174.984772546067 "$god_ set-dist 3 8 3"
$ns_ at 174.984772546067 "$god_ set-dist 8 20 3"
$ns_ at 174.984772546067 "$god_ set-dist 8 21 2"
$ns_ at 174.984772546067 "$god_ set-dist 8 47 3"
$ns_ at 174.986480313612 "$god_ set-dist 9 27 3"
$ns_ at 174.986480313612 "$god_ set-dist 21 27 2"
$ns_ at 174.986480313612 "$god_ set-dist 27 48 3"
$ns_ at 175.004718429193 "$god_ set-dist 1 48 2"
$ns_ at 175.032744357007 "$god_ set-dist 3 8 2"
$ns_ at 175.032744357007 "$god_ set-dist 3 12 2"
$ns_ at 175.032744357007 "$god_ set-dist 3 26 1"
$ns_ at 175.032744357007 "$god_ set-dist 3 28 2"
$ns_ at 175.032744357007 "$god_ set-dist 3 41 2"
$ns_ at 175.035450433151 "$god_ set-dist 0 19 1"
$ns_ at 175.140534173314 "$god_ set-dist 14 19 3"
$ns_ at 175.140534173314 "$god_ set-dist 14 36 3"
$ns_ at 175.140534173314 "$god_ set-dist 14 42 2"
$ns_ at 175.346758983089 "$god_ set-dist 3 27 3"
$ns_ at 175.346758983089 "$god_ set-dist 27 44 2"
$ns_ at 175.350715224846 "$god_ set-dist 0 4 2"
$ns_ at 175.350715224846 "$god_ set-dist 0 6 1"
$ns_ at 175.350715224846 "$god_ set-dist 0 33 2"
$ns_ at 175.369506716849 "$god_ set-dist 5 28 3"
$ns_ at 175.369506716849 "$god_ set-dist 7 28 3"
$ns_ at 175.369506716849 "$god_ set-dist 12 28 2"
$ns_ at 175.369506716849 "$god_ set-dist 18 28 3"
$ns_ at 175.369506716849 "$god_ set-dist 28 39 3"
$ns_ at 175.384458138828 "$god_ set-dist 17 29 3"
$ns_ at 175.384458138828 "$god_ set-dist 29 43 2"
$ns_ at 175.462558472530 "$god_ set-dist 6 41 2"
$ns_ at 175.462558472530 "$god_ set-dist 11 41 3"
$ns_ at 175.489262293496 "$god_ set-dist 18 46 1"
$ns_ at 175.489843310293 "$god_ set-dist 13 43 1"
$ns_ at 175.493857438262 "$god_ set-dist 0 28 3"
$ns_ at 175.493857438262 "$god_ set-dist 6 28 2"
$ns_ at 175.493857438262 "$god_ set-dist 11 28 3"
$ns_ at 175.493857438262 "$god_ set-dist 13 28 3"
$ns_ at 175.493857438262 "$god_ set-dist 23 28 3"
$ns_ at 175.493857438262 "$god_ set-dist 24 28 3"
$ns_ at 175.493857438262 "$god_ set-dist 28 31 3"
$ns_ at 175.493857438262 "$god_ set-dist 28 49 3"
$ns_ at 175.585568993671 "$god_ set-dist 2 20 3"
$ns_ at 175.585568993671 "$god_ set-dist 2 21 2"
$ns_ at 175.585568993671 "$god_ set-dist 2 47 3"
$ns_ at 175.591884354507 "$god_ set-dist 3 8 3"
$ns_ at 175.591884354507 "$god_ set-dist 8 26 2"
$ns_ at 175.598099064849 "$god_ set-dist 3 33 1"
$ns_ at 175.612344697423 "$god_ set-dist 20 29 3"
$ns_ at 175.612344697423 "$god_ set-dist 21 29 2"
$ns_ at 175.612344697423 "$god_ set-dist 29 44 3"
$ns_ at 175.612344697423 "$god_ set-dist 29 47 3"
$ns_ at 175.618561545087 "$god_ set-dist 22 34 1"
$ns_ at 175.651250465060 "$god_ set-dist 3 45 3"
$ns_ at 175.651250465060 "$god_ set-dist 44 45 2"
$ns_ at 175.669229117397 "$god_ set-dist 44 49 2"
$ns_ at 175.685652303966 "$god_ set-dist 29 30 2"
$ns_ at 175.685652303966 "$god_ set-dist 29 45 3"
$ns_ at 175.745382131251 "$god_ set-dist 9 19 3"
$ns_ at 175.745382131251 "$god_ set-dist 19 21 2"
$ns_ at 175.745382131251 "$god_ set-dist 19 48 3"
$ns_ at 175.809730169242 "$god_ set-dist 9 15 3"
$ns_ at 175.809730169242 "$god_ set-dist 15 21 2"
$ns_ at 175.809730169242 "$god_ set-dist 15 48 3"
$ns_ at 175.961199091015 "$god_ set-dist 2 3 3"
$ns_ at 175.961199091015 "$god_ set-dist 2 26 2"
$ns_ at 175.980928925432 "$god_ set-dist 3 24 3"
$ns_ at 175.980928925432 "$god_ set-dist 21 24 2"
$ns_ at 175.991980758086 "$god_ set-dist 3 15 3"
$ns_ at 175.991980758086 "$god_ set-dist 15 44 2"
$ns_ at 176.039753006830 "$god_ set-dist 2 41 2"
$ns_ at 176.047676439960 "$god_ set-dist 1 41 2"
$ns_ at 176.047676439960 "$god_ set-dist 23 41 3"
$ns_ at 176.064107828655 "$god_ set-dist 8 41 2"
$ns_ at 176.064107828655 "$god_ set-dist 13 41 3"
$ns_ at 176.064107828655 "$god_ set-dist 24 41 3"
$ns_ at 176.064107828655 "$god_ set-dist 31 41 3"
$ns_ at 176.064107828655 "$god_ set-dist 41 49 3"
$ns_ at 176.068974830722 "$god_ set-dist 18 28 2"
$ns_ at 176.068974830722 "$god_ set-dist 18 29 1"
$ns_ at 176.068974830722 "$god_ set-dist 18 33 2"
$ns_ at 176.099251803235 "$god_ set-dist 23 43 1"
$ns_ at 176.118138364140 "$god_ set-dist 31 44 2"
$ns_ at 176.145896380139 "$node_(25) setdest 492.781496438791 142.206057277243 0.000000000000"
$ns_ at 176.191999497160 "$god_ set-dist 5 45 2"
$ns_ at 176.191999497160 "$god_ set-dist 10 45 2"
$ns_ at 176.191999497160 "$god_ set-dist 29 45 2"
$ns_ at 176.191999497160 "$god_ set-dist 39 45 2"
$ns_ at 176.191999497160 "$god_ set-dist 42 45 1"
$ns_ at 176.194287335859 "$god_ set-dist 14 41 2"
$ns_ at 176.238255535818 "$god_ set-dist 18 40 2"
$ns_ at 176.273751340669 "$god_ set-dist 4 48 2"
$ns_ at 176.294245227160 "$god_ set-dist 10 11 2"
$ns_ at 176.294245227160 "$god_ set-dist 10 30 1"
$ns_ at 176.299219588757 "$god_ set-dist 0 45 1"
$ns_ at 176.330659714317 "$god_ set-dist 18 35 2"
$ns_ at 176.334949314179 "$god_ set-dist 12 47 2"
$ns_ at 176.334949314179 "$god_ set-dist 26 47 1"
$ns_ at 176.334949314179 "$god_ set-dist 28 47 2"
$ns_ at 176.334949314179 "$god_ set-dist 29 47 2"
$ns_ at 176.334949314179 "$god_ set-dist 41 47 2"
$ns_ at 176.339897214802 "$god_ set-dist 0 12 2"
$ns_ at 176.339897214802 "$god_ set-dist 0 41 3"
$ns_ at 176.419478668652 "$god_ set-dist 12 35 1"
$ns_ at 176.437236389090 "$god_ set-dist 17 21 1"
$ns_ at 176.446851607104 "$god_ set-dist 14 27 3"
$ns_ at 176.446851607104 "$god_ set-dist 16 27 2"
$ns_ at 176.457557595807 "$god_ set-dist 0 4 3"
$ns_ at 176.457557595807 "$god_ set-dist 2 4 3"
$ns_ at 176.457557595807 "$god_ set-dist 4 6 2"
$ns_ at 176.457557595807 "$god_ set-dist 4 8 3"
$ns_ at 176.481851790305 "$god_ set-dist 5 11 2"
$ns_ at 176.481851790305 "$god_ set-dist 11 39 2"
$ns_ at 176.481851790305 "$god_ set-dist 11 42 1"
$ns_ at 176.481868210097 "$god_ set-dist 23 44 2"
$ns_ at 176.481868210097 "$god_ set-dist 44 46 3"
$ns_ at 176.609692888455 "$god_ set-dist 16 26 2"
$ns_ at 176.609692888455 "$god_ set-dist 26 37 3"
$ns_ at 176.629280335128 "$god_ set-dist 21 33 1"
$ns_ at 176.757943233690 "$god_ set-dist 0 20 2"
$ns_ at 176.757943233690 "$god_ set-dist 2 20 2"
$ns_ at 176.757943233690 "$god_ set-dist 7 20 2"
$ns_ at 176.757943233690 "$god_ set-dist 8 20 2"
$ns_ at 176.757943233690 "$god_ set-dist 20 38 1"
$ns_ at 176.892465848651 "$god_ set-dist 6 7 1"
$ns_ at 176.892465848651 "$god_ set-dist 7 33 2"
$ns_ at 176.934763005685 "$god_ set-dist 3 42 3"
$ns_ at 176.934763005685 "$god_ set-dist 21 42 2"
$ns_ at 177.030587810426 "$god_ set-dist 22 31 1"
$ns_ at 177.030587810426 "$god_ set-dist 28 31 2"
$ns_ at 177.030587810426 "$god_ set-dist 31 41 2"
$ns_ at 177.040136763005 "$god_ set-dist 43 49 2"
$ns_ at 177.074035231901 "$god_ set-dist 32 40 1"
$ns_ at 177.074035231901 "$god_ set-dist 32 46 2"
$ns_ at 177.086273076883 "$god_ set-dist 8 49 2"
$ns_ at 177.152418465526 "$god_ set-dist 3 48 1"
$ns_ at 177.188836955831 "$god_ set-dist 19 29 3"
$ns_ at 177.188836955831 "$god_ set-dist 27 29 3"
$ns_ at 177.188836955831 "$god_ set-dist 29 36 3"
$ns_ at 177.188836955831 "$god_ set-dist 29 42 2"
$ns_ at 177.188836955831 "$god_ set-dist 29 45 3"
$ns_ at 177.234827803123 "$god_ set-dist 3 49 3"
$ns_ at 177.234827803123 "$god_ set-dist 21 49 2"
$ns_ at 177.302845356200 "$god_ set-dist 14 19 2"
$ns_ at 177.302845356200 "$god_ set-dist 16 19 1"
$ns_ at 177.302845356200 "$god_ set-dist 19 29 2"
$ns_ at 177.339571166710 "$god_ set-dist 1 26 2"
$ns_ at 177.367914129239 "$god_ set-dist 8 13 2"
$ns_ at 177.420395760573 "$god_ set-dist 11 14 2"
$ns_ at 177.420395760573 "$god_ set-dist 11 16 1"
$ns_ at 177.427494723642 "$god_ set-dist 2 49 2"
$ns_ at 177.468741715483 "$god_ set-dist 21 30 2"
$ns_ at 177.626884477830 "$god_ set-dist 1 23 2"
$ns_ at 177.676738600477 "$node_(36) setdest 529.201843620740 538.787268562650 0.000000000000"
$ns_ at 177.689054271348 "$god_ set-dist 1 21 2"
$ns_ at 177.704369179020 "$god_ set-dist 32 46 3"
$ns_ at 177.704369179020 "$god_ set-dist 40 46 2"
$ns_ at 177.716401842738 "$god_ set-dist 3 19 3"
$ns_ at 177.716401842738 "$god_ set-dist 19 44 2"
$ns_ at 177.717154780086 "$god_ set-dist 32 35 1"
$ns_ at 177.717154780086 "$god_ set-dist 32 46 2"
$ns_ at 177.740782966022 "$god_ set-dist 11 14 3"
$ns_ at 177.740782966022 "$god_ set-dist 14 15 3"
$ns_ at 177.740782966022 "$god_ set-dist 14 16 2"
$ns_ at 177.740782966022 "$god_ set-dist 14 19 3"
$ns_ at 177.796858613904 "$god_ set-dist 3 30 3"
$ns_ at 177.796858613904 "$god_ set-dist 30 43 2"
$ns_ at 177.897169981101 "$god_ set-dist 2 13 2"
$ns_ at 177.916524326779 "$god_ set-dist 6 15 1"
$ns_ at 177.916524326779 "$god_ set-dist 9 15 2"
$ns_ at 177.916524326779 "$god_ set-dist 15 33 2"
$ns_ at 177.916524326779 "$god_ set-dist 15 48 2"
$ns_ at 177.931704934206 "$god_ set-dist 5 30 1"
$ns_ at 177.996347889471 "$god_ set-dist 0 33 3"
$ns_ at 177.996347889471 "$god_ set-dist 6 33 2"
$ns_ at 177.996347889471 "$god_ set-dist 7 33 3"
$ns_ at 177.996347889471 "$god_ set-dist 15 33 3"
$ns_ at 177.996347889471 "$god_ set-dist 24 33 3"
$ns_ at 177.996347889471 "$god_ set-dist 33 49 3"
$ns_ at 178.065597615577 "$god_ set-dist 5 28 2"
$ns_ at 178.065597615577 "$god_ set-dist 5 29 1"
$ns_ at 178.065597615577 "$god_ set-dist 5 33 2"
$ns_ at 178.110818050834 "$node_(28) setdest 35.887079877898 170.199643809238 0.000000000000"
$ns_ at 178.118035559210 "$god_ set-dist 1 9 2"
$ns_ at 178.151185886640 "$god_ set-dist 21 23 2"
$ns_ at 178.198346343689 "$god_ set-dist 39 42 2"
$ns_ at 178.240427752132 "$god_ set-dist 15 47 3"
$ns_ at 178.240427752132 "$god_ set-dist 19 47 3"
$ns_ at 178.240427752132 "$god_ set-dist 24 47 3"
$ns_ at 178.240427752132 "$god_ set-dist 27 47 3"
$ns_ at 178.240427752132 "$god_ set-dist 30 47 3"
$ns_ at 178.240427752132 "$god_ set-dist 34 47 2"
$ns_ at 178.240427752132 "$god_ set-dist 36 47 3"
$ns_ at 178.240427752132 "$god_ set-dist 42 47 3"
$ns_ at 178.240427752132 "$god_ set-dist 45 47 3"
$ns_ at 178.240427752132 "$god_ set-dist 47 49 3"
$ns_ at 178.397435093535 "$god_ set-dist 1 3 3"
$ns_ at 178.397435093535 "$god_ set-dist 1 43 2"
$ns_ at 178.397435093535 "$god_ set-dist 1 47 3"
$ns_ at 178.444124636655 "$god_ set-dist 4 12 3"
$ns_ at 178.444124636655 "$god_ set-dist 12 26 2"
$ns_ at 178.444124636655 "$god_ set-dist 12 47 3"
$ns_ at 178.444124636655 "$god_ set-dist 26 39 3"
$ns_ at 178.461643736238 "$god_ set-dist 16 46 1"
$ns_ at 178.527399507650 "$god_ set-dist 6 19 1"
$ns_ at 178.527399507650 "$god_ set-dist 9 19 2"
$ns_ at 178.527399507650 "$god_ set-dist 19 48 2"
$ns_ at 178.568499834517 "$god_ set-dist 32 46 3"
$ns_ at 178.568499834517 "$god_ set-dist 35 46 2"
$ns_ at 178.842134088115 "$god_ set-dist 18 31 1"
$ns_ at 178.847457707727 "$node_(44) setdest 214.296469752133 653.692070354697 0.000000000000"
$ns_ at 178.857857672032 "$god_ set-dist 7 23 2"
$ns_ at 178.857857672032 "$god_ set-dist 14 23 3"
$ns_ at 178.931094539181 "$god_ set-dist 1 49 2"
$ns_ at 178.933712298242 "$god_ set-dist 22 30 2"
$ns_ at 178.933712298242 "$god_ set-dist 28 30 3"
$ns_ at 178.933712298242 "$god_ set-dist 30 33 3"
$ns_ at 179.216265420931 "$god_ set-dist 13 21 2"
$ns_ at 179.238607855257 "$god_ set-dist 1 4 3"
$ns_ at 179.238607855257 "$god_ set-dist 1 17 3"
$ns_ at 179.238607855257 "$god_ set-dist 1 34 2"
$ns_ at 179.252721456694 "$god_ set-dist 12 30 2"
$ns_ at 179.252721456694 "$god_ set-dist 30 41 3"
$ns_ at 179.270189924225 "$god_ set-dist 4 39 4"
$ns_ at 179.270189924225 "$god_ set-dist 11 39 3"
$ns_ at 179.270189924225 "$god_ set-dist 16 39 2"
$ns_ at 179.270189924225 "$god_ set-dist 17 39 4"
$ns_ at 179.270189924225 "$god_ set-dist 21 39 3"
$ns_ at 179.270189924225 "$god_ set-dist 34 39 3"
$ns_ at 179.270189924225 "$god_ set-dist 39 43 3"
$ns_ at 179.270189924225 "$god_ set-dist 39 47 4"
$ns_ at 179.315514704120 "$god_ set-dist 15 17 3"
$ns_ at 179.315514704120 "$god_ set-dist 17 19 3"
$ns_ at 179.315514704120 "$god_ set-dist 17 24 3"
$ns_ at 179.315514704120 "$god_ set-dist 17 27 3"
$ns_ at 179.315514704120 "$god_ set-dist 17 30 3"
$ns_ at 179.315514704120 "$god_ set-dist 17 34 2"
$ns_ at 179.315514704120 "$god_ set-dist 17 36 3"
$ns_ at 179.315514704120 "$god_ set-dist 17 42 3"
$ns_ at 179.315514704120 "$god_ set-dist 17 45 3"
$ns_ at 179.315514704120 "$god_ set-dist 17 49 3"
$ns_ at 179.489430562867 "$god_ set-dist 16 36 1"
$ns_ at 179.489430562867 "$god_ set-dist 29 36 2"
$ns_ at 179.565304304599 "$god_ set-dist 22 38 2"
$ns_ at 179.565304304599 "$god_ set-dist 28 38 3"
$ns_ at 179.565304304599 "$god_ set-dist 38 41 3"
$ns_ at 179.584797800918 "$god_ set-dist 3 19 2"
$ns_ at 179.584797800918 "$god_ set-dist 17 19 2"
$ns_ at 179.584797800918 "$god_ set-dist 19 33 2"
$ns_ at 179.584797800918 "$god_ set-dist 19 43 1"
$ns_ at 179.584797800918 "$god_ set-dist 19 47 2"
$ns_ at 179.668524438852 "$god_ set-dist 3 12 3"
$ns_ at 179.668524438852 "$god_ set-dist 3 39 4"
$ns_ at 179.668524438852 "$god_ set-dist 12 48 2"
$ns_ at 179.668524438852 "$god_ set-dist 39 48 3"
$ns_ at 179.684392931314 "$god_ set-dist 4 29 3"
$ns_ at 179.684392931314 "$god_ set-dist 5 26 3"
$ns_ at 179.684392931314 "$god_ set-dist 18 26 3"
$ns_ at 179.684392931314 "$god_ set-dist 26 29 2"
$ns_ at 179.684392931314 "$god_ set-dist 29 47 3"
$ns_ at 179.690265866068 "$god_ set-dist 0 4 2"
$ns_ at 179.690265866068 "$god_ set-dist 0 34 1"
$ns_ at 179.690265866068 "$god_ set-dist 4 39 3"
$ns_ at 179.690265866068 "$god_ set-dist 34 39 2"
$ns_ at 179.696231569000 "$god_ set-dist 3 39 3"
$ns_ at 179.696231569000 "$god_ set-dist 28 39 2"
$ns_ at 179.696231569000 "$god_ set-dist 29 39 1"
$ns_ at 179.696231569000 "$god_ set-dist 33 39 2"
$ns_ at 179.696231569000 "$god_ set-dist 39 48 2"
$ns_ at 179.715163035529 "$god_ set-dist 7 20 3"
$ns_ at 179.715163035529 "$god_ set-dist 7 38 2"
$ns_ at 179.715163035529 "$god_ set-dist 7 44 3"
$ns_ at 179.790170296138 "$god_ set-dist 5 21 3"
$ns_ at 179.790170296138 "$god_ set-dist 16 21 2"
$ns_ at 179.793220457096 "$god_ set-dist 22 42 2"
$ns_ at 179.793220457096 "$god_ set-dist 28 42 3"
$ns_ at 179.793220457096 "$god_ set-dist 33 42 3"
$ns_ at 179.893431944373 "$god_ set-dist 1 13 2"
$ns_ at 179.913739982878 "$god_ set-dist 12 42 2"
$ns_ at 179.913739982878 "$god_ set-dist 41 42 3"
$ns_ at 180.152142128461 "$god_ set-dist 12 35 2"
$ns_ at 180.183969562932 "$god_ set-dist 7 15 1"
$ns_ at 180.183969562932 "$god_ set-dist 14 15 2"
$ns_ at 180.245022480578 "$god_ set-dist 0 48 3"
$ns_ at 180.245022480578 "$god_ set-dist 6 48 2"
$ns_ at 180.245022480578 "$god_ set-dist 7 48 3"
$ns_ at 180.245022480578 "$god_ set-dist 15 48 3"
$ns_ at 180.245022480578 "$god_ set-dist 24 48 3"
$ns_ at 180.245022480578 "$god_ set-dist 30 48 3"
$ns_ at 180.245022480578 "$god_ set-dist 42 48 3"
$ns_ at 180.245022480578 "$god_ set-dist 48 49 3"
$ns_ at 180.308821571964 "$god_ set-dist 8 20 3"
$ns_ at 180.308821571964 "$god_ set-dist 8 38 2"
$ns_ at 180.308821571964 "$god_ set-dist 8 44 3"
$ns_ at 180.329654460381 "$god_ set-dist 0 39 2"
$ns_ at 180.329654460381 "$god_ set-dist 4 39 4"
$ns_ at 180.329654460381 "$god_ set-dist 19 39 3"
$ns_ at 180.329654460381 "$god_ set-dist 23 39 3"
$ns_ at 180.329654460381 "$god_ set-dist 27 39 3"
$ns_ at 180.329654460381 "$god_ set-dist 34 39 3"
$ns_ at 180.329654460381 "$god_ set-dist 36 39 3"
$ns_ at 180.329654460381 "$god_ set-dist 39 45 3"
$ns_ at 180.430281779807 "$node_(49) setdest 525.102441932846 504.141719742091 0.000000000000"
$ns_ at 180.534135160840 "$god_ set-dist 13 46 2"
$ns_ at 180.546044154059 "$god_ set-dist 13 32 1"
$ns_ at 180.564238602153 "$god_ set-dist 18 21 3"
$ns_ at 180.564238602153 "$god_ set-dist 21 31 2"
$ns_ at 180.564238602153 "$god_ set-dist 21 46 3"
$ns_ at 180.664055536627 "$god_ set-dist 11 30 2"
$ns_ at 180.694276694922 "$god_ set-dist 7 13 2"
$ns_ at 180.694276694922 "$god_ set-dist 13 14 3"
$ns_ at 180.694276694922 "$god_ set-dist 13 39 3"
$ns_ at 180.762724976588 "$god_ set-dist 5 28 3"
$ns_ at 180.762724976588 "$god_ set-dist 18 28 3"
$ns_ at 180.762724976588 "$god_ set-dist 28 29 2"
$ns_ at 180.762724976588 "$god_ set-dist 28 39 3"
$ns_ at 180.763206491057 "$god_ set-dist 12 31 1"
$ns_ at 180.819271822509 "$node_(23) setdest 441.286703743422 525.385344463901 0.000000000000"
$ns_ at 180.834747817565 "$god_ set-dist 5 33 3"
$ns_ at 180.834747817565 "$god_ set-dist 18 33 3"
$ns_ at 180.834747817565 "$god_ set-dist 29 33 2"
$ns_ at 180.834747817565 "$god_ set-dist 33 39 3"
$ns_ at 180.848146372182 "$god_ set-dist 27 46 2"
$ns_ at 180.876710074641 "$god_ set-dist 5 42 2"
$ns_ at 181.156863773929 "$god_ set-dist 2 20 3"
$ns_ at 181.156863773929 "$god_ set-dist 2 38 2"
$ns_ at 181.156863773929 "$god_ set-dist 2 44 3"
$ns_ at 181.211352499690 "$god_ set-dist 6 37 1"
$ns_ at 181.211352499690 "$god_ set-dist 9 37 2"
$ns_ at 181.211352499690 "$god_ set-dist 26 37 2"
$ns_ at 181.279193378365 "$god_ set-dist 0 11 1"
$ns_ at 181.331009480236 "$god_ set-dist 3 15 2"
$ns_ at 181.331009480236 "$god_ set-dist 15 17 2"
$ns_ at 181.331009480236 "$god_ set-dist 15 33 2"
$ns_ at 181.331009480236 "$god_ set-dist 15 43 1"
$ns_ at 181.331009480236 "$god_ set-dist 15 47 2"
$ns_ at 181.331009480236 "$god_ set-dist 15 48 2"
$ns_ at 181.340755639857 "$node_(26) setdest 95.171440557032 358.491578524990 0.000000000000"
$ns_ at 181.346003022115 "$god_ set-dist 13 44 1"
$ns_ at 181.353215261844 "$node_(48) setdest 84.567409383604 271.330577707095 0.000000000000"
$ns_ at 181.482754021546 "$god_ set-dist 1 46 1"
$ns_ at 181.493488525056 "$node_(4) setdest 81.769160006192 535.580901196420 0.000000000000"
$ns_ at 181.614631188358 "$god_ set-dist 1 20 3"
$ns_ at 181.614631188358 "$god_ set-dist 1 38 2"
$ns_ at 181.614631188358 "$god_ set-dist 1 44 3"
$ns_ at 181.614631188358 "$god_ set-dist 14 38 3"
$ns_ at 181.614631188358 "$god_ set-dist 20 39 4"
$ns_ at 181.614631188358 "$god_ set-dist 38 39 3"
$ns_ at 181.614631188358 "$god_ set-dist 39 44 4"
$ns_ at 181.686056107097 "$god_ set-dist 6 45 1"
$ns_ at 181.686056107097 "$god_ set-dist 9 45 2"
$ns_ at 181.686056107097 "$god_ set-dist 29 45 2"
$ns_ at 181.799676088685 "$god_ set-dist 10 21 3"
$ns_ at 181.799676088685 "$god_ set-dist 14 21 3"
$ns_ at 181.799676088685 "$god_ set-dist 21 22 2"
$ns_ at 181.799676088685 "$god_ set-dist 21 25 3"
$ns_ at 181.834056799187 "$god_ set-dist 6 36 1"
$ns_ at 181.834056799187 "$god_ set-dist 9 36 2"
$ns_ at 181.838603349609 "$god_ set-dist 6 29 2"
$ns_ at 181.838603349609 "$god_ set-dist 29 32 3"
$ns_ at 181.838603349609 "$god_ set-dist 29 45 3"
$ns_ at 182.121857523626 "$node_(16) setdest 401.873580592151 338.501742132558 0.000000000000"
$ns_ at 182.154141372481 "$god_ set-dist 4 30 3"
$ns_ at 182.154141372481 "$god_ set-dist 30 34 2"
$ns_ at 182.155034791484 "$god_ set-dist 13 20 1"
$ns_ at 182.372280069006 "$god_ set-dist 8 24 2"
$ns_ at 182.470316322801 "$god_ set-dist 1 37 1"
$ns_ at 182.573152605775 "$god_ set-dist 7 22 1"
$ns_ at 182.573152605775 "$god_ set-dist 7 28 2"
$ns_ at 182.573152605775 "$god_ set-dist 7 33 2"
$ns_ at 182.573152605775 "$god_ set-dist 7 48 2"
$ns_ at 182.670923164645 "$god_ set-dist 25 42 2"
$ns_ at 182.707503051299 "$god_ set-dist 33 47 1"
$ns_ at 182.712881682849 "$god_ set-dist 27 30 2"
$ns_ at 182.718793865404 "$god_ set-dist 10 42 2"
$ns_ at 182.757254090546 "$god_ set-dist 10 31 1"
$ns_ at 182.821512627709 "$god_ set-dist 0 9 3"
$ns_ at 182.821512627709 "$god_ set-dist 6 9 2"
$ns_ at 182.821512627709 "$god_ set-dist 9 24 3"
$ns_ at 182.821512627709 "$god_ set-dist 9 30 3"
$ns_ at 182.821512627709 "$god_ set-dist 9 36 3"
$ns_ at 182.821512627709 "$god_ set-dist 9 37 3"
$ns_ at 182.821512627709 "$god_ set-dist 9 42 3"
$ns_ at 182.821512627709 "$god_ set-dist 9 45 3"
$ns_ at 182.821512627709 "$god_ set-dist 9 49 3"
$ns_ at 182.935094025342 "$god_ set-dist 3 29 3"
$ns_ at 182.935094025342 "$god_ set-dist 3 39 4"
$ns_ at 182.935094025342 "$god_ set-dist 5 48 3"
$ns_ at 182.935094025342 "$god_ set-dist 18 48 3"
$ns_ at 182.935094025342 "$god_ set-dist 29 48 2"
$ns_ at 182.935094025342 "$god_ set-dist 39 48 3"
$ns_ at 183.055770078890 "$god_ set-dist 6 26 2"
$ns_ at 183.055770078890 "$god_ set-dist 26 30 3"
$ns_ at 183.055770078890 "$god_ set-dist 26 37 3"
$ns_ at 183.225222580753 "$god_ set-dist 4 33 1"
$ns_ at 183.268212063002 "$god_ set-dist 25 31 1"
$ns_ at 183.375536046356 "$god_ set-dist 4 30 2"
$ns_ at 183.375536046356 "$god_ set-dist 4 37 2"
$ns_ at 183.375536046356 "$god_ set-dist 4 38 1"
$ns_ at 183.405399801886 "$god_ set-dist 4 30 3"
$ns_ at 183.405399801886 "$god_ set-dist 30 38 2"
$ns_ at 183.447203835382 "$god_ set-dist 1 20 2"
$ns_ at 183.447203835382 "$god_ set-dist 2 20 2"
$ns_ at 183.447203835382 "$god_ set-dist 7 20 2"
$ns_ at 183.447203835382 "$god_ set-dist 8 20 2"
$ns_ at 183.447203835382 "$god_ set-dist 20 35 1"
$ns_ at 183.447203835382 "$god_ set-dist 20 39 3"
$ns_ at 183.498097468293 "$god_ set-dist 27 31 2"
$ns_ at 183.578961380349 "$node_(27) setdest 504.415898634705 613.435064427204 0.000000000000"
$ns_ at 183.649468361521 "$god_ set-dist 13 48 3"
$ns_ at 183.649468361521 "$god_ set-dist 15 48 3"
$ns_ at 183.649468361521 "$god_ set-dist 19 48 3"
$ns_ at 183.649468361521 "$god_ set-dist 23 48 3"
$ns_ at 183.649468361521 "$god_ set-dist 43 48 2"
$ns_ at 183.668747420997 "$god_ set-dist 7 23 1"
$ns_ at 183.668747420997 "$god_ set-dist 14 23 2"
$ns_ at 183.668747420997 "$god_ set-dist 23 39 2"
$ns_ at 183.881816858754 "$god_ set-dist 2 24 2"
$ns_ at 183.988819304351 "$god_ set-dist 32 33 1"
$ns_ at 184.269412108557 "$god_ set-dist 9 13 3"
$ns_ at 184.269412108557 "$god_ set-dist 9 15 3"
$ns_ at 184.269412108557 "$god_ set-dist 9 19 3"
$ns_ at 184.269412108557 "$god_ set-dist 9 23 3"
$ns_ at 184.269412108557 "$god_ set-dist 9 43 2"
$ns_ at 184.331587045515 "$god_ set-dist 12 27 3"
$ns_ at 184.331587045515 "$god_ set-dist 27 40 2"
$ns_ at 184.398084764105 "$god_ set-dist 13 30 2"
$ns_ at 184.398084764105 "$god_ set-dist 30 44 3"
$ns_ at 184.446733970457 "$god_ set-dist 21 40 2"
$ns_ at 184.508335594639 "$god_ set-dist 6 21 2"
$ns_ at 184.513737180068 "$god_ set-dist 12 41 2"
$ns_ at 184.600982199569 "$god_ set-dist 9 11 3"
$ns_ at 184.600982199569 "$god_ set-dist 11 21 2"
$ns_ at 184.600982199569 "$god_ set-dist 11 48 3"
$ns_ at 184.622180485434 "$god_ set-dist 0 3 2"
$ns_ at 184.622180485434 "$god_ set-dist 0 17 2"
$ns_ at 184.622180485434 "$god_ set-dist 0 33 2"
$ns_ at 184.622180485434 "$god_ set-dist 0 43 1"
$ns_ at 184.622180485434 "$god_ set-dist 0 47 2"
$ns_ at 184.645648279734 "$god_ set-dist 5 31 1"
$ns_ at 184.709400714758 "$god_ set-dist 26 37 2"
$ns_ at 184.709400714758 "$god_ set-dist 34 37 1"
$ns_ at 184.777214124663 "$god_ set-dist 6 27 1"
$ns_ at 184.777214124663 "$god_ set-dist 12 27 2"
$ns_ at 184.806865597066 "$god_ set-dist 0 5 2"
$ns_ at 184.806865597066 "$god_ set-dist 5 27 3"
$ns_ at 184.878252183938 "$god_ set-dist 3 24 2"
$ns_ at 184.878252183938 "$god_ set-dist 17 24 2"
$ns_ at 184.878252183938 "$god_ set-dist 24 33 2"
$ns_ at 184.878252183938 "$god_ set-dist 24 43 1"
$ns_ at 184.878252183938 "$god_ set-dist 24 47 2"
$ns_ at 185.045720034730 "$god_ set-dist 17 27 2"
$ns_ at 185.045720034730 "$god_ set-dist 17 36 2"
$ns_ at 185.045720034730 "$god_ set-dist 17 37 2"
$ns_ at 185.045720034730 "$god_ set-dist 17 38 1"
$ns_ at 185.045720034730 "$god_ set-dist 17 42 2"
$ns_ at 185.045720034730 "$god_ set-dist 17 45 2"
$ns_ at 185.045720034730 "$god_ set-dist 17 49 2"
$ns_ at 185.175307549593 "$god_ set-dist 27 35 2"
$ns_ at 185.234127262074 "$god_ set-dist 6 12 2"
$ns_ at 185.234127262074 "$god_ set-dist 12 27 3"
$ns_ at 185.630962532944 "$god_ set-dist 12 20 2"
$ns_ at 185.630962532944 "$god_ set-dist 20 40 1"
$ns_ at 185.690021525064 "$god_ set-dist 0 25 2"
$ns_ at 185.690021525064 "$god_ set-dist 25 27 3"
$ns_ at 185.749854886240 "$node_(13) setdest 395.624942206775 573.255150585219 0.000000000000"
$ns_ at 185.823392900087 "$god_ set-dist 26 30 2"
$ns_ at 185.823392900087 "$god_ set-dist 26 35 1"
$ns_ at 185.972614686427 "$god_ set-dist 18 37 1"
$ns_ at 186.021514001613 "$god_ set-dist 1 21 3"
$ns_ at 186.021514001613 "$god_ set-dist 2 21 3"
$ns_ at 186.021514001613 "$god_ set-dist 7 21 3"
$ns_ at 186.021514001613 "$god_ set-dist 8 21 3"
$ns_ at 186.021514001613 "$god_ set-dist 21 30 3"
$ns_ at 186.021514001613 "$god_ set-dist 21 35 2"
$ns_ at 186.067202239859 "$node_(6) setdest 369.560616037019 421.731795372956 0.000000000000"
$ns_ at 186.073262156772 "$god_ set-dist 26 30 3"
$ns_ at 186.073262156772 "$god_ set-dist 30 35 2"
$ns_ at 186.104436249795 "$god_ set-dist 17 37 3"
$ns_ at 186.104436249795 "$god_ set-dist 37 38 2"
$ns_ at 186.116498532802 "$god_ set-dist 7 36 1"
$ns_ at 186.116498532802 "$god_ set-dist 14 36 2"
$ns_ at 186.116498532802 "$god_ set-dist 36 39 2"
$ns_ at 186.141653523112 "$god_ set-dist 5 41 3"
$ns_ at 186.141653523112 "$god_ set-dist 18 41 3"
$ns_ at 186.141653523112 "$god_ set-dist 29 41 2"
$ns_ at 186.141653523112 "$god_ set-dist 39 41 3"
$ns_ at 186.168318243712 "$god_ set-dist 18 24 1"
$ns_ at 186.204238989884 "$god_ set-dist 5 22 1"
$ns_ at 186.204238989884 "$god_ set-dist 5 26 2"
$ns_ at 186.204238989884 "$god_ set-dist 5 28 2"
$ns_ at 186.204238989884 "$god_ set-dist 5 33 2"
$ns_ at 186.204238989884 "$god_ set-dist 5 41 2"
$ns_ at 186.204238989884 "$god_ set-dist 5 48 2"
$ns_ at 186.308209686205 "$god_ set-dist 1 35 2"
$ns_ at 186.505244057087 "$god_ set-dist 9 17 3"
$ns_ at 186.505244057087 "$god_ set-dist 9 20 3"
$ns_ at 186.505244057087 "$god_ set-dist 9 21 2"
$ns_ at 186.505244057087 "$god_ set-dist 9 38 3"
$ns_ at 186.505244057087 "$god_ set-dist 9 44 3"
$ns_ at 186.505244057087 "$god_ set-dist 12 21 3"
$ns_ at 186.505244057087 "$god_ set-dist 21 29 3"
$ns_ at 186.505244057087 "$god_ set-dist 21 39 4"
$ns_ at 186.649467117808 "$god_ set-dist 2 4 2"
$ns_ at 186.649467117808 "$god_ set-dist 2 21 2"
$ns_ at 186.649467117808 "$god_ set-dist 2 34 1"
$ns_ at 186.649467117808 "$god_ set-dist 2 44 2"
$ns_ at 186.649467117808 "$god_ set-dist 4 39 3"
$ns_ at 186.649467117808 "$god_ set-dist 21 39 3"
$ns_ at 186.649467117808 "$god_ set-dist 34 39 2"
$ns_ at 186.649467117808 "$god_ set-dist 39 44 3"
$ns_ at 186.715021950994 "$god_ set-dist 7 19 1"
$ns_ at 186.715021950994 "$god_ set-dist 14 19 2"
$ns_ at 186.715021950994 "$god_ set-dist 19 39 2"
$ns_ at 186.796361619071 "$god_ set-dist 11 29 3"
$ns_ at 186.796361619071 "$god_ set-dist 13 29 3"
$ns_ at 186.796361619071 "$god_ set-dist 15 29 3"
$ns_ at 186.796361619071 "$god_ set-dist 16 29 2"
$ns_ at 186.796361619071 "$god_ set-dist 19 29 3"
$ns_ at 186.796361619071 "$god_ set-dist 23 29 3"
$ns_ at 186.796361619071 "$god_ set-dist 29 36 3"
$ns_ at 186.796361619071 "$god_ set-dist 29 38 3"
$ns_ at 186.796361619071 "$god_ set-dist 29 49 3"
$ns_ at 186.935930334412 "$god_ set-dist 20 30 3"
$ns_ at 186.935930334412 "$god_ set-dist 30 40 2"
$ns_ at 187.096246784208 "$god_ set-dist 6 18 1"
$ns_ at 187.096246784208 "$god_ set-dist 18 32 2"
$ns_ at 187.189657988835 "$god_ set-dist 7 44 2"
$ns_ at 187.189657988835 "$god_ set-dist 8 44 2"
$ns_ at 187.189657988835 "$god_ set-dist 35 44 1"
$ns_ at 187.338188855055 "$god_ set-dist 3 45 2"
$ns_ at 187.338188855055 "$god_ set-dist 33 45 2"
$ns_ at 187.338188855055 "$god_ set-dist 43 45 1"
$ns_ at 187.338188855055 "$god_ set-dist 45 47 2"
$ns_ at 187.393035820426 "$god_ set-dist 12 20 3"
$ns_ at 187.393035820426 "$god_ set-dist 12 32 3"
$ns_ at 187.393035820426 "$god_ set-dist 12 40 2"
$ns_ at 187.480971351226 "$god_ set-dist 4 7 2"
$ns_ at 187.480971351226 "$god_ set-dist 7 21 2"
$ns_ at 187.480971351226 "$god_ set-dist 7 34 1"
$ns_ at 187.536362752502 "$god_ set-dist 8 42 2"
$ns_ at 187.544617243953 "$node_(21) setdest 64.850668799816 477.862034734642 0.000000000000"
$ns_ at 187.549788716878 "$god_ set-dist 1 20 3"
$ns_ at 187.549788716878 "$god_ set-dist 1 40 2"
$ns_ at 187.644910991344 "$god_ set-dist 1 41 3"
$ns_ at 187.644910991344 "$god_ set-dist 2 41 3"
$ns_ at 187.644910991344 "$god_ set-dist 5 41 3"
$ns_ at 187.644910991344 "$god_ set-dist 6 41 3"
$ns_ at 187.644910991344 "$god_ set-dist 7 41 3"
$ns_ at 187.644910991344 "$god_ set-dist 8 41 3"
$ns_ at 187.644910991344 "$god_ set-dist 10 41 3"
$ns_ at 187.644910991344 "$god_ set-dist 14 41 3"
$ns_ at 187.644910991344 "$god_ set-dist 16 41 3"
$ns_ at 187.644910991344 "$god_ set-dist 22 41 2"
$ns_ at 187.644910991344 "$god_ set-dist 25 41 3"
$ns_ at 187.644910991344 "$god_ set-dist 30 41 4"
$ns_ at 187.644910991344 "$god_ set-dist 31 41 3"
$ns_ at 187.644910991344 "$god_ set-dist 40 41 3"
$ns_ at 187.644910991344 "$god_ set-dist 41 46 4"
$ns_ at 187.683778197841 "$god_ set-dist 27 47 2"
$ns_ at 187.683778197841 "$god_ set-dist 36 47 2"
$ns_ at 187.683778197841 "$god_ set-dist 38 47 1"
$ns_ at 187.683778197841 "$god_ set-dist 42 47 2"
$ns_ at 187.683778197841 "$god_ set-dist 47 49 2"
$ns_ at 187.724713401979 "$god_ set-dist 26 40 1"
$ns_ at 187.724713401979 "$god_ set-dist 40 41 2"
$ns_ at 187.805801558678 "$node_(41) setdest 31.735526051137 132.156501449307 0.000000000000"
$ns_ at 187.836678384856 "$god_ set-dist 2 42 2"
$ns_ at 187.880660879637 "$god_ set-dist 17 42 3"
$ns_ at 187.880660879637 "$god_ set-dist 38 42 2"
$ns_ at 187.880660879637 "$god_ set-dist 42 47 3"
$ns_ at 188.084716718652 "$node_(42) setdest 533.426320213516 448.104427642125 0.000000000000"
$ns_ at 188.334855013667 "$god_ set-dist 0 33 3"
$ns_ at 188.334855013667 "$god_ set-dist 15 33 3"
$ns_ at 188.334855013667 "$god_ set-dist 19 33 3"
$ns_ at 188.334855013667 "$god_ set-dist 23 33 3"
$ns_ at 188.334855013667 "$god_ set-dist 24 33 3"
$ns_ at 188.334855013667 "$god_ set-dist 33 43 2"
$ns_ at 188.334855013667 "$god_ set-dist 33 45 3"
$ns_ at 188.533536113331 "$god_ set-dist 1 24 2"
$ns_ at 188.629705717866 "$god_ set-dist 2 21 3"
$ns_ at 188.629705717866 "$god_ set-dist 7 21 3"
$ns_ at 188.629705717866 "$god_ set-dist 21 34 2"
$ns_ at 188.629705717866 "$god_ set-dist 21 37 3"
$ns_ at 188.629705717866 "$god_ set-dist 21 39 4"
$ns_ at 188.629705717866 "$god_ set-dist 21 42 3"
$ns_ at 188.777093928730 "$god_ set-dist 0 3 3"
$ns_ at 188.777093928730 "$god_ set-dist 3 15 3"
$ns_ at 188.777093928730 "$god_ set-dist 3 16 3"
$ns_ at 188.777093928730 "$god_ set-dist 3 19 3"
$ns_ at 188.777093928730 "$god_ set-dist 3 23 3"
$ns_ at 188.777093928730 "$god_ set-dist 3 24 3"
$ns_ at 188.777093928730 "$god_ set-dist 3 31 3"
$ns_ at 188.777093928730 "$god_ set-dist 3 43 2"
$ns_ at 188.777093928730 "$god_ set-dist 3 45 3"
$ns_ at 188.777093928730 "$god_ set-dist 3 46 4"
$ns_ at 188.817037154839 "$god_ set-dist 2 21 2"
$ns_ at 188.817037154839 "$god_ set-dist 7 21 2"
$ns_ at 188.817037154839 "$god_ set-dist 8 21 2"
$ns_ at 188.817037154839 "$god_ set-dist 21 35 1"
$ns_ at 188.817037154839 "$god_ set-dist 21 37 2"
$ns_ at 188.817037154839 "$god_ set-dist 21 39 3"
$ns_ at 188.817037154839 "$god_ set-dist 21 42 2"
$ns_ at 188.825620750431 "$god_ set-dist 3 30 4"
$ns_ at 188.825620750431 "$god_ set-dist 6 30 2"
$ns_ at 188.825620750431 "$god_ set-dist 30 32 3"
$ns_ at 188.898479358738 "$god_ set-dist 30 45 2"
$ns_ at 188.905785531172 "$god_ set-dist 4 8 2"
$ns_ at 188.905785531172 "$god_ set-dist 4 35 1"
$ns_ at 188.920041467432 "$god_ set-dist 1 22 2"
$ns_ at 188.920041467432 "$god_ set-dist 1 26 3"
$ns_ at 188.920041467432 "$god_ set-dist 1 28 3"
$ns_ at 188.920041467432 "$god_ set-dist 1 33 3"
$ns_ at 188.920041467432 "$god_ set-dist 1 48 3"
$ns_ at 189.203660763077 "$god_ set-dist 1 3 4"
$ns_ at 189.203660763077 "$god_ set-dist 1 6 2"
$ns_ at 189.203660763077 "$god_ set-dist 1 32 3"
$ns_ at 189.241918227762 "$god_ set-dist 19 30 2"
$ns_ at 189.247042888713 "$god_ set-dist 5 45 3"
$ns_ at 189.247042888713 "$god_ set-dist 12 45 3"
$ns_ at 189.247042888713 "$god_ set-dist 25 45 3"
$ns_ at 189.247042888713 "$god_ set-dist 31 45 2"
$ns_ at 189.351136290658 "$god_ set-dist 14 17 4"
$ns_ at 189.351136290658 "$god_ set-dist 14 43 3"
$ns_ at 189.351136290658 "$god_ set-dist 17 22 3"
$ns_ at 189.351136290658 "$god_ set-dist 17 29 4"
$ns_ at 189.351136290658 "$god_ set-dist 22 43 2"
$ns_ at 189.351136290658 "$god_ set-dist 29 43 3"
$ns_ at 189.393664046827 "$node_(30) setdest 616.081391583413 347.966252129288 0.000000000000"
$ns_ at 189.457459662570 "$god_ set-dist 43 49 1"
$ns_ at 189.507563868639 "$god_ set-dist 0 33 2"
$ns_ at 189.507563868639 "$god_ set-dist 15 33 2"
$ns_ at 189.507563868639 "$god_ set-dist 19 33 2"
$ns_ at 189.507563868639 "$god_ set-dist 23 33 2"
$ns_ at 189.507563868639 "$god_ set-dist 24 33 2"
$ns_ at 189.507563868639 "$god_ set-dist 33 35 1"
$ns_ at 189.507563868639 "$god_ set-dist 33 36 2"
$ns_ at 189.507563868639 "$god_ set-dist 33 37 2"
$ns_ at 189.507563868639 "$god_ set-dist 33 42 2"
$ns_ at 189.507563868639 "$god_ set-dist 33 45 2"
$ns_ at 189.507563868639 "$god_ set-dist 33 49 2"
$ns_ at 189.802805575927 "$god_ set-dist 17 36 3"
$ns_ at 189.802805575927 "$god_ set-dist 36 38 2"
$ns_ at 189.802805575927 "$god_ set-dist 36 47 3"
$ns_ at 189.861943111258 "$god_ set-dist 8 34 1"
$ns_ at 189.872353885912 "$god_ set-dist 0 10 2"
$ns_ at 189.872353885912 "$god_ set-dist 10 27 3"
$ns_ at 189.872353885912 "$god_ set-dist 10 45 3"
$ns_ at 190.014959583354 "$god_ set-dist 21 36 3"
$ns_ at 190.014959583354 "$god_ set-dist 33 36 3"
$ns_ at 190.014959583354 "$god_ set-dist 35 36 2"
$ns_ at 190.069121381364 "$god_ set-dist 38 49 2"
$ns_ at 190.278099511693 "$god_ set-dist 31 38 2"
$ns_ at 190.543758569841 "$god_ set-dist 21 37 3"
$ns_ at 190.543758569841 "$god_ set-dist 33 37 3"
$ns_ at 190.543758569841 "$god_ set-dist 35 37 2"
$ns_ at 190.674846032421 "$god_ set-dist 11 39 2"
$ns_ at 190.674846032421 "$god_ set-dist 13 39 2"
$ns_ at 190.674846032421 "$god_ set-dist 17 39 3"
$ns_ at 190.674846032421 "$god_ set-dist 31 39 1"
$ns_ at 190.674846032421 "$god_ set-dist 39 43 2"
$ns_ at 190.674846032421 "$god_ set-dist 39 47 3"
$ns_ at 190.675280016252 "$god_ set-dist 4 34 2"
$ns_ at 190.675280016252 "$god_ set-dist 4 36 3"
$ns_ at 190.675280016252 "$god_ set-dist 4 37 3"
$ns_ at 190.696146640832 "$god_ set-dist 1 29 2"
$ns_ at 190.725316101826 "$god_ set-dist 24 38 2"
$ns_ at 190.800901766910 "$god_ set-dist 18 29 2"
$ns_ at 190.800901766910 "$god_ set-dist 24 29 3"
$ns_ at 190.800901766910 "$god_ set-dist 29 37 3"
$ns_ at 190.800901766910 "$god_ set-dist 29 42 3"
$ns_ at 190.800901766910 "$god_ set-dist 29 46 3"
$ns_ at 190.896770061488 "$god_ set-dist 13 31 2"
$ns_ at 190.896770061488 "$god_ set-dist 13 39 3"
$ns_ at 191.172978845336 "$god_ set-dist 0 3 2"
$ns_ at 191.172978845336 "$god_ set-dist 1 3 3"
$ns_ at 191.172978845336 "$god_ set-dist 3 15 2"
$ns_ at 191.172978845336 "$god_ set-dist 3 16 2"
$ns_ at 191.172978845336 "$god_ set-dist 3 19 2"
$ns_ at 191.172978845336 "$god_ set-dist 3 23 2"
$ns_ at 191.172978845336 "$god_ set-dist 3 27 2"
$ns_ at 191.172978845336 "$god_ set-dist 3 30 3"
$ns_ at 191.172978845336 "$god_ set-dist 3 38 1"
$ns_ at 191.172978845336 "$god_ set-dist 3 45 2"
$ns_ at 191.172978845336 "$god_ set-dist 3 46 3"
$ns_ at 191.259958644826 "$god_ set-dist 33 36 2"
$ns_ at 191.259958644826 "$god_ set-dist 33 37 2"
$ns_ at 191.259958644826 "$god_ set-dist 33 40 1"
$ns_ at 191.366937637461 "$god_ set-dist 4 36 2"
$ns_ at 191.366937637461 "$god_ set-dist 17 36 2"
$ns_ at 191.366937637461 "$god_ set-dist 21 36 2"
$ns_ at 191.366937637461 "$god_ set-dist 36 43 1"
$ns_ at 191.366937637461 "$god_ set-dist 36 47 2"
$ns_ at 191.436657605343 "$god_ set-dist 40 44 1"
$ns_ at 191.567872088988 "$god_ set-dist 0 9 2"
$ns_ at 191.567872088988 "$god_ set-dist 9 11 2"
$ns_ at 191.567872088988 "$god_ set-dist 9 13 2"
$ns_ at 191.567872088988 "$god_ set-dist 9 15 2"
$ns_ at 191.567872088988 "$god_ set-dist 9 19 2"
$ns_ at 191.567872088988 "$god_ set-dist 9 20 2"
$ns_ at 191.567872088988 "$god_ set-dist 9 23 2"
$ns_ at 191.567872088988 "$god_ set-dist 9 24 2"
$ns_ at 191.567872088988 "$god_ set-dist 9 35 1"
$ns_ at 191.567872088988 "$god_ set-dist 9 38 2"
$ns_ at 191.567872088988 "$god_ set-dist 9 42 2"
$ns_ at 191.567872088988 "$god_ set-dist 9 44 2"
$ns_ at 191.567872088988 "$god_ set-dist 9 45 2"
$ns_ at 191.567872088988 "$god_ set-dist 9 49 2"
$ns_ at 191.579797609094 "$god_ set-dist 31 36 2"
$ns_ at 191.667387168047 "$god_ set-dist 3 16 3"
$ns_ at 191.667387168047 "$god_ set-dist 5 38 3"
$ns_ at 191.667387168047 "$god_ set-dist 10 38 3"
$ns_ at 191.667387168047 "$god_ set-dist 12 38 3"
$ns_ at 191.667387168047 "$god_ set-dist 16 38 2"
$ns_ at 191.667387168047 "$god_ set-dist 25 38 3"
$ns_ at 191.727710442210 "$god_ set-dist 10 45 2"
$ns_ at 191.727710442210 "$god_ set-dist 10 46 1"
$ns_ at 191.727710442210 "$god_ set-dist 29 46 2"
$ns_ at 191.855864863544 "$god_ set-dist 17 42 2"
$ns_ at 191.855864863544 "$god_ set-dist 42 43 1"
$ns_ at 191.855864863544 "$god_ set-dist 42 47 2"
$ns_ at 191.997585570120 "$god_ set-dist 27 43 1"
$ns_ at 192.026583866885 "$god_ set-dist 3 27 3"
$ns_ at 192.026583866885 "$god_ set-dist 27 38 2"
$ns_ at 192.093071963548 "$god_ set-dist 9 42 3"
$ns_ at 192.093071963548 "$god_ set-dist 35 42 2"
$ns_ at 192.093424539957 "$god_ set-dist 4 8 3"
$ns_ at 192.093424539957 "$god_ set-dist 8 21 3"
$ns_ at 192.093424539957 "$god_ set-dist 8 35 2"
$ns_ at 192.181276449814 "$god_ set-dist 9 49 3"
$ns_ at 192.181276449814 "$god_ set-dist 35 49 2"
$ns_ at 192.295968665238 "$god_ set-dist 9 45 3"
$ns_ at 192.295968665238 "$god_ set-dist 35 45 2"
$ns_ at 192.374244884459 "$god_ set-dist 11 14 2"
$ns_ at 192.374244884459 "$god_ set-dist 14 17 3"
$ns_ at 192.374244884459 "$god_ set-dist 14 31 1"
$ns_ at 192.374244884459 "$god_ set-dist 14 43 2"
$ns_ at 192.547363798334 "$god_ set-dist 0 1 2"
$ns_ at 192.547363798334 "$god_ set-dist 1 3 4"
$ns_ at 192.547363798334 "$god_ set-dist 1 38 3"
$ns_ at 192.551564675159 "$god_ set-dist 11 14 3"
$ns_ at 192.551564675159 "$god_ set-dist 11 31 2"
$ns_ at 192.551564675159 "$god_ set-dist 11 39 3"
$ns_ at 192.565416795582 "$god_ set-dist 2 47 2"
$ns_ at 192.565416795582 "$god_ set-dist 7 47 2"
$ns_ at 192.565416795582 "$god_ set-dist 35 47 1"
$ns_ at 192.579764463787 "$god_ set-dist 8 21 2"
$ns_ at 192.579764463787 "$god_ set-dist 21 37 2"
$ns_ at 192.579764463787 "$god_ set-dist 21 40 1"
$ns_ at 192.938521364775 "$god_ set-dist 4 8 2"
$ns_ at 192.938521364775 "$god_ set-dist 4 37 2"
$ns_ at 192.938521364775 "$god_ set-dist 4 40 1"
$ns_ at 193.080858526795 "$god_ set-dist 1 37 2"
$ns_ at 193.185966153407 "$god_ set-dist 27 47 3"
$ns_ at 193.185966153407 "$god_ set-dist 36 47 3"
$ns_ at 193.185966153407 "$god_ set-dist 42 47 3"
$ns_ at 193.185966153407 "$god_ set-dist 43 47 2"
$ns_ at 193.185966153407 "$god_ set-dist 47 49 3"
$ns_ at 193.246626204369 "$god_ set-dist 2 35 2"
$ns_ at 193.246626204369 "$god_ set-dist 2 47 3"
$ns_ at 193.520565236234 "$god_ set-dist 7 35 2"
$ns_ at 193.520565236234 "$god_ set-dist 7 47 3"
$ns_ at 193.542100418915 "$god_ set-dist 33 36 3"
$ns_ at 193.542100418915 "$god_ set-dist 36 40 2"
$ns_ at 193.551988637946 "$node_(1) setdest 563.129372664473 204.211685225841 0.000000000000"
$ns_ at 193.573712401725 "$god_ set-dist 17 37 2"
$ns_ at 193.573712401725 "$god_ set-dist 37 43 1"
$ns_ at 193.596111330580 "$god_ set-dist 9 24 3"
$ns_ at 193.596111330580 "$god_ set-dist 24 35 2"
$ns_ at 193.596111330580 "$god_ set-dist 24 47 3"
$ns_ at 193.744019646781 "$god_ set-dist 9 29 2"
$ns_ at 193.744019646781 "$god_ set-dist 29 41 3"
$ns_ at 193.759332314066 "$god_ set-dist 9 24 2"
$ns_ at 193.759332314066 "$god_ set-dist 9 37 2"
$ns_ at 193.759332314066 "$god_ set-dist 9 40 1"
$ns_ at 193.759332314066 "$god_ set-dist 9 42 2"
$ns_ at 193.759332314066 "$god_ set-dist 9 45 2"
$ns_ at 193.759332314066 "$god_ set-dist 9 49 2"
$ns_ at 193.779944264666 "$god_ set-dist 1 3 3"
$ns_ at 193.779944264666 "$god_ set-dist 3 16 2"
$ns_ at 193.779944264666 "$god_ set-dist 3 31 2"
$ns_ at 193.779944264666 "$god_ set-dist 3 35 1"
$ns_ at 193.779944264666 "$god_ set-dist 3 39 3"
$ns_ at 193.897230316813 "$god_ set-dist 7 14 2"
$ns_ at 193.897230316813 "$god_ set-dist 14 36 3"
$ns_ at 193.945612006670 "$god_ set-dist 26 34 2"
$ns_ at 193.945612006670 "$god_ set-dist 34 41 3"
$ns_ at 194.165680294383 "$god_ set-dist 3 45 3"
$ns_ at 194.165680294383 "$god_ set-dist 38 45 2"
$ns_ at 194.165680294383 "$god_ set-dist 45 47 3"
$ns_ at 194.256540129188 "$node_(0) setdest 462.740678566056 455.808262112112 0.000000000000"
$ns_ at 194.622160503204 "$god_ set-dist 9 17 2"
$ns_ at 194.622160503204 "$god_ set-dist 17 22 2"
$ns_ at 194.622160503204 "$god_ set-dist 17 29 3"
$ns_ at 194.622160503204 "$god_ set-dist 17 35 1"
$ns_ at 194.812723065492 "$god_ set-dist 18 49 1"
$ns_ at 194.931163492286 "$god_ set-dist 0 38 2"
$ns_ at 195.019723994706 "$god_ set-dist 0 48 2"
$ns_ at 195.019723994706 "$god_ set-dist 11 48 2"
$ns_ at 195.019723994706 "$god_ set-dist 13 48 2"
$ns_ at 195.019723994706 "$god_ set-dist 15 48 2"
$ns_ at 195.019723994706 "$god_ set-dist 19 48 2"
$ns_ at 195.019723994706 "$god_ set-dist 23 48 2"
$ns_ at 195.019723994706 "$god_ set-dist 35 48 1"
$ns_ at 195.046875967815 "$god_ set-dist 26 27 3"
$ns_ at 195.046875967815 "$god_ set-dist 26 36 3"
$ns_ at 195.046875967815 "$god_ set-dist 26 43 2"
$ns_ at 195.046875967815 "$god_ set-dist 27 41 4"
$ns_ at 195.046875967815 "$god_ set-dist 28 43 3"
$ns_ at 195.046875967815 "$god_ set-dist 36 41 4"
$ns_ at 195.046875967815 "$god_ set-dist 41 43 3"
$ns_ at 195.107407899973 "$god_ set-dist 15 29 2"
$ns_ at 195.107407899973 "$god_ set-dist 19 29 2"
$ns_ at 195.107407899973 "$god_ set-dist 23 29 2"
$ns_ at 195.107407899973 "$god_ set-dist 24 29 2"
$ns_ at 195.107407899973 "$god_ set-dist 29 31 1"
$ns_ at 195.107407899973 "$god_ set-dist 29 37 2"
$ns_ at 195.107407899973 "$god_ set-dist 29 42 2"
$ns_ at 195.107407899973 "$god_ set-dist 29 43 2"
$ns_ at 195.107407899973 "$god_ set-dist 29 49 2"
$ns_ at 195.432904042298 "$node_(38) setdest 236.886531643662 574.114838462761 0.000000000000"
$ns_ at 195.509537439026 "$god_ set-dist 1 37 1"
$ns_ at 195.638778118464 "$god_ set-dist 23 46 2"
$ns_ at 195.722472559789 "$god_ set-dist 31 46 2"
$ns_ at 196.311463554841 "$god_ set-dist 29 49 3"
$ns_ at 196.311463554841 "$god_ set-dist 31 49 2"
$ns_ at 196.387906740361 "$god_ set-dist 14 15 3"
$ns_ at 196.387906740361 "$god_ set-dist 15 29 3"
$ns_ at 196.387906740361 "$god_ set-dist 15 31 2"
$ns_ at 196.414251363561 "$node_(29) setdest 340.956474495807 44.558833872023 0.000000000000"
$ns_ at 196.522759531072 "$god_ set-dist 9 37 3"
$ns_ at 196.522759531072 "$god_ set-dist 26 37 3"
$ns_ at 196.522759531072 "$god_ set-dist 33 37 3"
$ns_ at 196.522759531072 "$god_ set-dist 37 40 2"
$ns_ at 196.522759531072 "$god_ set-dist 37 41 4"
$ns_ at 196.583644901008 "$god_ set-dist 10 27 2"
$ns_ at 196.583644901008 "$god_ set-dist 10 42 1"
$ns_ at 196.662347047975 "$god_ set-dist 9 45 3"
$ns_ at 196.662347047975 "$god_ set-dist 26 45 3"
$ns_ at 196.662347047975 "$god_ set-dist 33 45 3"
$ns_ at 196.662347047975 "$god_ set-dist 40 45 2"
$ns_ at 196.662347047975 "$god_ set-dist 41 45 4"
$ns_ at 196.667100037886 "$god_ set-dist 6 10 1"
$ns_ at 196.667100037886 "$god_ set-dist 10 32 2"
$ns_ at 196.667100037886 "$god_ set-dist 10 38 2"
$ns_ at 196.854180787702 "$god_ set-dist 7 17 2"
$ns_ at 196.854180787702 "$god_ set-dist 7 43 1"
$ns_ at 196.960191621972 "$god_ set-dist 9 49 3"
$ns_ at 196.960191621972 "$god_ set-dist 26 49 3"
$ns_ at 196.960191621972 "$god_ set-dist 33 49 3"
$ns_ at 196.960191621972 "$god_ set-dist 40 49 2"
$ns_ at 196.960191621972 "$god_ set-dist 41 49 4"
$ns_ at 197.051951527524 "$god_ set-dist 14 43 3"
$ns_ at 197.051951527524 "$god_ set-dist 29 43 3"
$ns_ at 197.051951527524 "$god_ set-dist 31 43 2"
$ns_ at 197.076287541551 "$god_ set-dist 9 42 3"
$ns_ at 197.076287541551 "$god_ set-dist 26 42 3"
$ns_ at 197.076287541551 "$god_ set-dist 33 42 3"
$ns_ at 197.076287541551 "$god_ set-dist 40 42 2"
$ns_ at 197.076287541551 "$god_ set-dist 41 42 4"
$ns_ at 197.098227486193 "$god_ set-dist 14 23 3"
$ns_ at 197.098227486193 "$god_ set-dist 23 29 3"
$ns_ at 197.098227486193 "$god_ set-dist 23 31 2"
$ns_ at 197.350868906466 "$god_ set-dist 10 37 1"
$ns_ at 197.374498767967 "$god_ set-dist 19 30 1"
$ns_ at 197.458555415260 "$god_ set-dist 15 35 2"
$ns_ at 197.458555415260 "$god_ set-dist 15 48 3"
$ns_ at 197.530121643171 "$god_ set-dist 24 29 3"
$ns_ at 197.530121643171 "$god_ set-dist 24 31 2"
$ns_ at 197.647019716091 "$god_ set-dist 3 31 3"
$ns_ at 197.647019716091 "$god_ set-dist 3 39 4"
$ns_ at 197.647019716091 "$god_ set-dist 17 31 3"
$ns_ at 197.647019716091 "$god_ set-dist 31 35 2"
$ns_ at 197.647019716091 "$god_ set-dist 31 47 3"
$ns_ at 197.647019716091 "$god_ set-dist 35 39 3"
$ns_ at 197.647019716091 "$god_ set-dist 39 47 4"
$ns_ at 197.687772464240 "$god_ set-dist 9 24 3"
$ns_ at 197.687772464240 "$god_ set-dist 24 26 3"
$ns_ at 197.687772464240 "$god_ set-dist 24 33 3"
$ns_ at 197.687772464240 "$god_ set-dist 24 40 2"
$ns_ at 197.687772464240 "$god_ set-dist 24 41 4"
$ns_ at 197.728523140621 "$god_ set-dist 20 28 2"
$ns_ at 197.728523140621 "$god_ set-dist 20 33 1"
$ns_ at 197.728523140621 "$god_ set-dist 20 41 2"
$ns_ at 197.779467328068 "$god_ set-dist 21 24 3"
$ns_ at 197.779467328068 "$god_ set-dist 21 27 3"
$ns_ at 197.779467328068 "$god_ set-dist 21 36 3"
$ns_ at 197.779467328068 "$god_ set-dist 21 37 3"
$ns_ at 197.779467328068 "$god_ set-dist 21 42 3"
$ns_ at 197.779467328068 "$god_ set-dist 21 43 2"
$ns_ at 197.779467328068 "$god_ set-dist 21 45 3"
$ns_ at 197.779467328068 "$god_ set-dist 21 49 3"
$ns_ at 197.826139985089 "$god_ set-dist 0 10 1"
$ns_ at 198.101250484685 "$god_ set-dist 2 47 2"
$ns_ at 198.101250484685 "$god_ set-dist 7 47 2"
$ns_ at 198.101250484685 "$god_ set-dist 8 47 2"
$ns_ at 198.101250484685 "$god_ set-dist 31 47 2"
$ns_ at 198.101250484685 "$god_ set-dist 39 47 3"
$ns_ at 198.101250484685 "$god_ set-dist 40 47 1"
$ns_ at 198.112792350856 "$god_ set-dist 4 8 3"
$ns_ at 198.112792350856 "$god_ set-dist 8 21 3"
$ns_ at 198.112792350856 "$god_ set-dist 8 40 2"
$ns_ at 198.112792350856 "$god_ set-dist 8 47 3"
$ns_ at 198.185123583539 "$god_ set-dist 14 19 3"
$ns_ at 198.185123583539 "$god_ set-dist 19 29 3"
$ns_ at 198.185123583539 "$god_ set-dist 19 31 2"
$ns_ at 198.393196105668 "$god_ set-dist 5 45 2"
$ns_ at 198.393196105668 "$god_ set-dist 7 45 1"
$ns_ at 198.393196105668 "$god_ set-dist 12 45 2"
$ns_ at 198.393196105668 "$god_ set-dist 25 45 2"
$ns_ at 198.393196105668 "$god_ set-dist 39 45 2"
$ns_ at 198.395203109219 "$god_ set-dist 18 20 2"
$ns_ at 198.395203109219 "$god_ set-dist 18 34 1"
$ns_ at 198.395203109219 "$god_ set-dist 18 44 2"
$ns_ at 198.853114635931 "$god_ set-dist 28 38 2"
$ns_ at 198.853114635931 "$god_ set-dist 33 38 1"
$ns_ at 198.853114635931 "$god_ set-dist 38 41 2"
$ns_ at 199.444445108761 "$god_ set-dist 14 15 2"
$ns_ at 199.444445108761 "$god_ set-dist 15 18 1"
$ns_ at 199.469145217973 "$god_ set-dist 18 33 2"
$ns_ at 199.469145217973 "$god_ set-dist 24 33 2"
$ns_ at 199.469145217973 "$god_ set-dist 24 41 3"
$ns_ at 199.469145217973 "$god_ set-dist 27 33 2"
$ns_ at 199.469145217973 "$god_ set-dist 27 41 3"
$ns_ at 199.469145217973 "$god_ set-dist 33 34 1"
$ns_ at 199.469145217973 "$god_ set-dist 33 36 2"
$ns_ at 199.469145217973 "$god_ set-dist 33 37 2"
$ns_ at 199.469145217973 "$god_ set-dist 33 42 2"
$ns_ at 199.469145217973 "$god_ set-dist 33 45 2"
$ns_ at 199.469145217973 "$god_ set-dist 33 49 2"
$ns_ at 199.469145217973 "$god_ set-dist 34 41 2"
$ns_ at 199.469145217973 "$god_ set-dist 36 41 3"
$ns_ at 199.469145217973 "$god_ set-dist 37 41 3"
$ns_ at 199.469145217973 "$god_ set-dist 41 42 3"
$ns_ at 199.469145217973 "$god_ set-dist 41 45 3"
$ns_ at 199.469145217973 "$god_ set-dist 41 49 3"
$ns_ at 199.687935772669 "$god_ set-dist 2 4 3"
$ns_ at 199.687935772669 "$god_ set-dist 2 21 3"
$ns_ at 199.687935772669 "$god_ set-dist 2 40 2"
$ns_ at 199.687935772669 "$god_ set-dist 2 47 3"
$ns_ at 199.704101024341 "$god_ set-dist 3 7 2"
$ns_ at 199.704101024341 "$god_ set-dist 3 31 2"
$ns_ at 199.704101024341 "$god_ set-dist 3 39 3"
$ns_ at 199.704101024341 "$god_ set-dist 3 40 1"
$ns_ at 199.970043884370 "$god_ set-dist 19 32 1"
$ns_ at 199.970043884370 "$god_ set-dist 30 32 2"
#
# Destination Unreachables: 0
#
# Route Changes: 2497
#
# Link Changes: 946
#
# Node | Route Changes | Link Changes
#    0 |            96 |           35
#    1 |           112 |           63
#    2 |            77 |           37
#    3 |           166 |           27
#    4 |           108 |           24
#    5 |            75 |           17
#    6 |            86 |           53
#    7 |            94 |           33
#    8 |            80 |           31
#    9 |           147 |           29
#   10 |            91 |           20
#   11 |           104 |           31
#   12 |            75 |           38
#   13 |            91 |           37
#   14 |           126 |           42
#   15 |            86 |           32
#   16 |            55 |           32
#   17 |           152 |           27
#   18 |            84 |           25
#   19 |           115 |           26
#   20 |           117 |           16
#   21 |           121 |           62
#   22 |            44 |           37
#   23 |            71 |           25
#   24 |            70 |           28
#   25 |            84 |           29
#   26 |            79 |           49
#   27 |            72 |           33
#   28 |           103 |           48
#   29 |           127 |           45
#   30 |           118 |           61
#   31 |            94 |           50
#   32 |            91 |           29
#   33 |           154 |           26
#   34 |            76 |           41
#   35 |            95 |           51
#   36 |            84 |           29
#   37 |           102 |           27
#   38 |            78 |           48
#   39 |           152 |           53
#   40 |            65 |           47
#   41 |           149 |           34
#   42 |           110 |           57
#   43 |            93 |           42
#   44 |            94 |           59
#   45 |           119 |           58
#   46 |            82 |           26
#   47 |           132 |           41
#   48 |            89 |           27
#   49 |           109 |           55
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
    exec nam dsdvpause_150.nam &
    exit 0
}
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns_ at $val(stop) "\$node_($i) reset"
}
$ns_ at $val(stop) "$ns_ nam-end-wireless $val(stop)"
$ns_ at $val(stop) "finish"
$ns_ at $val(stop) "puts \"done\" ; $ns_ halt"
$ns_ run
