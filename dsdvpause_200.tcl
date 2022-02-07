
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
set tracefile [open dsdvpause_200.tr w]
$ns_ trace-all $tracefile
#$ns use-newtrace
#Open the NAM trace file
set namfile [open dsdvpause_200.nam w]
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
# nodes: 50, pause: 200.00, max speed: 20.00, max x: 670.00, max y: 670.00
#
$node_(0) set X_ 207.390292695998
$node_(0) set Y_ 545.846884906327
$node_(0) set Z_ 0.000000000000
$node_(1) set X_ 653.563281640215
$node_(1) set Y_ 495.398948323676
$node_(1) set Z_ 0.000000000000
$node_(2) set X_ 628.145021999759
$node_(2) set Y_ 553.432054057221
$node_(2) set Z_ 0.000000000000
$node_(3) set X_ 493.328610775608
$node_(3) set Y_ 396.737201116359
$node_(3) set Z_ 0.000000000000
$node_(4) set X_ 493.769605970960
$node_(4) set Y_ 1.743000650905
$node_(4) set Z_ 0.000000000000
$node_(5) set X_ 486.165777762067
$node_(5) set Y_ 282.504746590505
$node_(5) set Z_ 0.000000000000
$node_(6) set X_ 181.798822454679
$node_(6) set Y_ 249.819786293087
$node_(6) set Z_ 0.000000000000
$node_(7) set X_ 478.583622308307
$node_(7) set Y_ 508.322708399762
$node_(7) set Z_ 0.000000000000
$node_(8) set X_ 539.064197362250
$node_(8) set Y_ 7.794928336829
$node_(8) set Z_ 0.000000000000
$node_(9) set X_ 575.990207012734
$node_(9) set Y_ 132.759336501812
$node_(9) set Z_ 0.000000000000
$node_(10) set X_ 63.074361015918
$node_(10) set Y_ 532.760704509967
$node_(10) set Z_ 0.000000000000
$node_(11) set X_ 47.075551459965
$node_(11) set Y_ 614.663132827247
$node_(11) set Z_ 0.000000000000
$node_(12) set X_ 664.547266719358
$node_(12) set Y_ 446.345792082121
$node_(12) set Z_ 0.000000000000
$node_(13) set X_ 110.228099657093
$node_(13) set Y_ 315.482867907369
$node_(13) set Z_ 0.000000000000
$node_(14) set X_ 198.031859565672
$node_(14) set Y_ 74.661651165137
$node_(14) set Z_ 0.000000000000
$node_(15) set X_ 550.302828227400
$node_(15) set Y_ 99.948280458162
$node_(15) set Z_ 0.000000000000
$node_(16) set X_ 249.545547809795
$node_(16) set Y_ 443.767725579368
$node_(16) set Z_ 0.000000000000
$node_(17) set X_ 314.013412179144
$node_(17) set Y_ 621.474079144329
$node_(17) set Z_ 0.000000000000
$node_(18) set X_ 102.129906249005
$node_(18) set Y_ 414.663815586845
$node_(18) set Z_ 0.000000000000
$node_(19) set X_ 101.413114008943
$node_(19) set Y_ 202.851794290629
$node_(19) set Z_ 0.000000000000
$node_(20) set X_ 411.228716423636
$node_(20) set Y_ 270.820564183099
$node_(20) set Z_ 0.000000000000
$node_(21) set X_ 212.640991271317
$node_(21) set Y_ 196.577223196640
$node_(21) set Z_ 0.000000000000
$node_(22) set X_ 43.310867333473
$node_(22) set Y_ 273.617095726625
$node_(22) set Z_ 0.000000000000
$node_(23) set X_ 334.169968312456
$node_(23) set Y_ 331.272861120467
$node_(23) set Z_ 0.000000000000
$node_(24) set X_ 261.596630488545
$node_(24) set Y_ 622.285858612847
$node_(24) set Z_ 0.000000000000
$node_(25) set X_ 40.190732045954
$node_(25) set Y_ 413.769678681645
$node_(25) set Z_ 0.000000000000
$node_(26) set X_ 663.407672380283
$node_(26) set Y_ 223.546703371153
$node_(26) set Z_ 0.000000000000
$node_(27) set X_ 240.296238938258
$node_(27) set Y_ 428.665149990085
$node_(27) set Z_ 0.000000000000
$node_(28) set X_ 624.771034012636
$node_(28) set Y_ 346.771186980979
$node_(28) set Z_ 0.000000000000
$node_(29) set X_ 595.301774042372
$node_(29) set Y_ 279.676245896299
$node_(29) set Z_ 0.000000000000
$node_(30) set X_ 330.818547096629
$node_(30) set Y_ 40.930194795011
$node_(30) set Z_ 0.000000000000
$node_(31) set X_ 183.778251615790
$node_(31) set Y_ 334.225118704798
$node_(31) set Z_ 0.000000000000
$node_(32) set X_ 341.430879313877
$node_(32) set Y_ 84.941242453125
$node_(32) set Z_ 0.000000000000
$node_(33) set X_ 398.317849929471
$node_(33) set Y_ 487.364833301838
$node_(33) set Z_ 0.000000000000
$node_(34) set X_ 312.684774526496
$node_(34) set Y_ 437.319193385167
$node_(34) set Z_ 0.000000000000
$node_(35) set X_ 272.256521994564
$node_(35) set Y_ 496.251330883307
$node_(35) set Z_ 0.000000000000
$node_(36) set X_ 330.537020611041
$node_(36) set Y_ 511.386421143165
$node_(36) set Z_ 0.000000000000
$node_(37) set X_ 466.020060424268
$node_(37) set Y_ 515.227299283091
$node_(37) set Z_ 0.000000000000
$node_(38) set X_ 516.369817933282
$node_(38) set Y_ 89.305567135000
$node_(38) set Z_ 0.000000000000
$node_(39) set X_ 488.657426238233
$node_(39) set Y_ 137.653394386150
$node_(39) set Z_ 0.000000000000
$node_(40) set X_ 566.406255926122
$node_(40) set Y_ 437.363380652755
$node_(40) set Z_ 0.000000000000
$node_(41) set X_ 326.364735156266
$node_(41) set Y_ 345.063198817229
$node_(41) set Z_ 0.000000000000
$node_(42) set X_ 493.375570569681
$node_(42) set Y_ 324.627501541404
$node_(42) set Z_ 0.000000000000
$node_(43) set X_ 658.226240636096
$node_(43) set Y_ 72.752796710139
$node_(43) set Z_ 0.000000000000
$node_(44) set X_ 103.759429245713
$node_(44) set Y_ 124.059169142113
$node_(44) set Z_ 0.000000000000
$node_(45) set X_ 662.705584685961
$node_(45) set Y_ 111.658170939167
$node_(45) set Z_ 0.000000000000
$node_(46) set X_ 503.041457902320
$node_(46) set Y_ 145.721601827557
$node_(46) set Z_ 0.000000000000
$node_(47) set X_ 454.444532882064
$node_(47) set Y_ 57.142987455181
$node_(47) set Z_ 0.000000000000
$node_(48) set X_ 226.544238170889
$node_(48) set Y_ 107.837345218325
$node_(48) set Z_ 0.000000000000
$node_(49) set X_ 585.615959867863
$node_(49) set Y_ 651.878392039963
$node_(49) set Z_ 0.000000000000
$god_ set-dist 0 1 3
$god_ set-dist 0 2 2
$god_ set-dist 0 3 2
$god_ set-dist 0 4 3
$god_ set-dist 0 5 2
$god_ set-dist 0 6 2
$god_ set-dist 0 7 2
$god_ set-dist 0 8 3
$god_ set-dist 0 9 3
$god_ set-dist 0 10 1
$god_ set-dist 0 11 1
$god_ set-dist 0 12 3
$god_ set-dist 0 13 2
$god_ set-dist 0 14 3
$god_ set-dist 0 15 3
$god_ set-dist 0 16 1
$god_ set-dist 0 17 1
$god_ set-dist 0 18 1
$god_ set-dist 0 19 2
$god_ set-dist 0 20 2
$god_ set-dist 0 21 2
$god_ set-dist 0 22 2
$god_ set-dist 0 23 1
$god_ set-dist 0 24 1
$god_ set-dist 0 25 1
$god_ set-dist 0 26 3
$god_ set-dist 0 27 1
$god_ set-dist 0 28 3
$god_ set-dist 0 29 3
$god_ set-dist 0 30 3
$god_ set-dist 0 31 1
$god_ set-dist 0 32 2
$god_ set-dist 0 33 1
$god_ set-dist 0 34 1
$god_ set-dist 0 35 1
$god_ set-dist 0 36 1
$god_ set-dist 0 37 2
$god_ set-dist 0 38 3
$god_ set-dist 0 39 2
$god_ set-dist 0 40 2
$god_ set-dist 0 41 1
$god_ set-dist 0 42 2
$god_ set-dist 0 43 3
$god_ set-dist 0 44 2
$god_ set-dist 0 45 3
$god_ set-dist 0 46 3
$god_ set-dist 0 47 3
$god_ set-dist 0 48 2
$god_ set-dist 0 49 2
$god_ set-dist 1 2 1
$god_ set-dist 1 3 1
$god_ set-dist 1 4 3
$god_ set-dist 1 5 2
$god_ set-dist 1 6 3
$god_ set-dist 1 7 1
$god_ set-dist 1 8 3
$god_ set-dist 1 9 2
$god_ set-dist 1 10 3
$god_ set-dist 1 11 3
$god_ set-dist 1 12 1
$god_ set-dist 1 13 3
$god_ set-dist 1 14 4
$god_ set-dist 1 15 2
$god_ set-dist 1 16 2
$god_ set-dist 1 17 2
$god_ set-dist 1 18 3
$god_ set-dist 1 19 4
$god_ set-dist 1 20 2
$god_ set-dist 1 21 3
$god_ set-dist 1 22 4
$god_ set-dist 1 23 2
$god_ set-dist 1 24 2
$god_ set-dist 1 25 3
$god_ set-dist 1 26 2
$god_ set-dist 1 27 2
$god_ set-dist 1 28 1
$god_ set-dist 1 29 1
$god_ set-dist 1 30 3
$god_ set-dist 1 31 3
$god_ set-dist 1 32 3
$god_ set-dist 1 33 2
$god_ set-dist 1 34 2
$god_ set-dist 1 35 2
$god_ set-dist 1 36 2
$god_ set-dist 1 37 1
$god_ set-dist 1 38 2
$god_ set-dist 1 39 2
$god_ set-dist 1 40 1
$god_ set-dist 1 41 2
$god_ set-dist 1 42 1
$god_ set-dist 1 43 2
$god_ set-dist 1 44 4
$god_ set-dist 1 45 2
$god_ set-dist 1 46 2
$god_ set-dist 1 47 3
$god_ set-dist 1 48 3
$god_ set-dist 1 49 1
$god_ set-dist 2 3 1
$god_ set-dist 2 4 3
$god_ set-dist 2 5 2
$god_ set-dist 2 6 3
$god_ set-dist 2 7 1
$god_ set-dist 2 8 3
$god_ set-dist 2 9 2
$god_ set-dist 2 10 3
$god_ set-dist 2 11 3
$god_ set-dist 2 12 1
$god_ set-dist 2 13 3
$god_ set-dist 2 14 4
$god_ set-dist 2 15 3
$god_ set-dist 2 16 2
$god_ set-dist 2 17 2
$god_ set-dist 2 18 3
$god_ set-dist 2 19 4
$god_ set-dist 2 20 2
$god_ set-dist 2 21 3
$god_ set-dist 2 22 4
$god_ set-dist 2 23 2
$god_ set-dist 2 24 2
$god_ set-dist 2 25 3
$god_ set-dist 2 26 2
$god_ set-dist 2 27 2
$god_ set-dist 2 28 1
$god_ set-dist 2 29 2
$god_ set-dist 2 30 3
$god_ set-dist 2 31 3
$god_ set-dist 2 32 3
$god_ set-dist 2 33 1
$god_ set-dist 2 34 2
$god_ set-dist 2 35 2
$god_ set-dist 2 36 2
$god_ set-dist 2 37 1
$god_ set-dist 2 38 3
$god_ set-dist 2 39 2
$god_ set-dist 2 40 1
$god_ set-dist 2 41 2
$god_ set-dist 2 42 2
$god_ set-dist 2 43 3
$god_ set-dist 2 44 4
$god_ set-dist 2 45 2
$god_ set-dist 2 46 2
$god_ set-dist 2 47 3
$god_ set-dist 2 48 3
$god_ set-dist 2 49 1
$god_ set-dist 3 4 3
$god_ set-dist 3 5 1
$god_ set-dist 3 6 2
$god_ set-dist 3 7 1
$god_ set-dist 3 8 2
$god_ set-dist 3 9 2
$god_ set-dist 3 10 2
$god_ set-dist 3 11 3
$god_ set-dist 3 12 1
$god_ set-dist 3 13 2
$god_ set-dist 3 14 3
$god_ set-dist 3 15 2
$god_ set-dist 3 16 1
$god_ set-dist 3 17 2
$god_ set-dist 3 18 2
$god_ set-dist 3 19 3
$god_ set-dist 3 20 1
$god_ set-dist 3 21 2
$god_ set-dist 3 22 3
$god_ set-dist 3 23 1
$god_ set-dist 3 24 2
$god_ set-dist 3 25 2
$god_ set-dist 3 26 1
$god_ set-dist 3 27 2
$god_ set-dist 3 28 1
$god_ set-dist 3 29 1
$god_ set-dist 3 30 2
$god_ set-dist 3 31 2
$god_ set-dist 3 32 2
$god_ set-dist 3 33 1
$god_ set-dist 3 34 1
$god_ set-dist 3 35 1
$god_ set-dist 3 36 1
$god_ set-dist 3 37 1
$god_ set-dist 3 38 2
$god_ set-dist 3 39 2
$god_ set-dist 3 40 1
$god_ set-dist 3 41 1
$god_ set-dist 3 42 1
$god_ set-dist 3 43 2
$god_ set-dist 3 44 3
$god_ set-dist 3 45 2
$god_ set-dist 3 46 2
$god_ set-dist 3 47 2
$god_ set-dist 3 48 2
$god_ set-dist 3 49 2
$god_ set-dist 4 5 2
$god_ set-dist 4 6 2
$god_ set-dist 4 7 3
$god_ set-dist 4 8 1
$god_ set-dist 4 9 1
$god_ set-dist 4 10 4
$god_ set-dist 4 11 4
$god_ set-dist 4 12 3
$god_ set-dist 4 13 3
$god_ set-dist 4 14 2
$god_ set-dist 4 15 1
$god_ set-dist 4 16 3
$god_ set-dist 4 17 4
$god_ set-dist 4 18 3
$god_ set-dist 4 19 3
$god_ set-dist 4 20 2
$god_ set-dist 4 21 2
$god_ set-dist 4 22 3
$god_ set-dist 4 23 2
$god_ set-dist 4 24 4
$god_ set-dist 4 25 3
$god_ set-dist 4 26 2
$god_ set-dist 4 27 3
$god_ set-dist 4 28 2
$god_ set-dist 4 29 2
$god_ set-dist 4 30 1
$god_ set-dist 4 31 3
$god_ set-dist 4 32 1
$god_ set-dist 4 33 3
$god_ set-dist 4 34 3
$god_ set-dist 4 35 3
$god_ set-dist 4 36 3
$god_ set-dist 4 37 3
$god_ set-dist 4 38 1
$god_ set-dist 4 39 1
$god_ set-dist 4 40 3
$god_ set-dist 4 41 3
$god_ set-dist 4 42 2
$god_ set-dist 4 43 1
$god_ set-dist 4 44 2
$god_ set-dist 4 45 1
$god_ set-dist 4 46 1
$god_ set-dist 4 47 1
$god_ set-dist 4 48 2
$god_ set-dist 4 49 4
$god_ set-dist 5 6 2
$god_ set-dist 5 7 1
$god_ set-dist 5 8 2
$god_ set-dist 5 9 1
$god_ set-dist 5 10 3
$god_ set-dist 5 11 3
$god_ set-dist 5 12 1
$god_ set-dist 5 13 2
$god_ set-dist 5 14 2
$god_ set-dist 5 15 1
$god_ set-dist 5 16 2
$god_ set-dist 5 17 2
$god_ set-dist 5 18 2
$god_ set-dist 5 19 3
$god_ set-dist 5 20 1
$god_ set-dist 5 21 2
$god_ set-dist 5 22 3
$god_ set-dist 5 23 1
$god_ set-dist 5 24 2
$god_ set-dist 5 25 3
$god_ set-dist 5 26 1
$god_ set-dist 5 27 2
$god_ set-dist 5 28 1
$god_ set-dist 5 29 1
$god_ set-dist 5 30 2
$god_ set-dist 5 31 2
$god_ set-dist 5 32 1
$god_ set-dist 5 33 1
$god_ set-dist 5 34 1
$god_ set-dist 5 35 2
$god_ set-dist 5 36 2
$god_ set-dist 5 37 1
$god_ set-dist 5 38 1
$god_ set-dist 5 39 1
$god_ set-dist 5 40 1
$god_ set-dist 5 41 1
$god_ set-dist 5 42 1
$god_ set-dist 5 43 2
$god_ set-dist 5 44 2
$god_ set-dist 5 45 1
$god_ set-dist 5 46 1
$god_ set-dist 5 47 1
$god_ set-dist 5 48 2
$god_ set-dist 5 49 2
$god_ set-dist 6 7 2
$god_ set-dist 6 8 2
$god_ set-dist 6 9 2
$god_ set-dist 6 10 2
$god_ set-dist 6 11 2
$god_ set-dist 6 12 3
$god_ set-dist 6 13 1
$god_ set-dist 6 14 1
$god_ set-dist 6 15 2
$god_ set-dist 6 16 1
$god_ set-dist 6 17 2
$god_ set-dist 6 18 1
$god_ set-dist 6 19 1
$god_ set-dist 6 20 1
$god_ set-dist 6 21 1
$god_ set-dist 6 22 1
$god_ set-dist 6 23 1
$god_ set-dist 6 24 2
$god_ set-dist 6 25 1
$god_ set-dist 6 26 3
$god_ set-dist 6 27 1
$god_ set-dist 6 28 2
$god_ set-dist 6 29 2
$god_ set-dist 6 30 2
$god_ set-dist 6 31 1
$god_ set-dist 6 32 1
$god_ set-dist 6 33 2
$god_ set-dist 6 34 1
$god_ set-dist 6 35 2
$god_ set-dist 6 36 2
$god_ set-dist 6 37 2
$god_ set-dist 6 38 2
$god_ set-dist 6 39 2
$god_ set-dist 6 40 2
$god_ set-dist 6 41 1
$god_ set-dist 6 42 2
$god_ set-dist 6 43 3
$god_ set-dist 6 44 1
$god_ set-dist 6 45 3
$god_ set-dist 6 46 2
$god_ set-dist 6 47 2
$god_ set-dist 6 48 1
$god_ set-dist 6 49 3
$god_ set-dist 7 8 3
$god_ set-dist 7 9 2
$god_ set-dist 7 10 2
$god_ set-dist 7 11 2
$god_ set-dist 7 12 1
$god_ set-dist 7 13 2
$god_ set-dist 7 14 3
$god_ set-dist 7 15 2
$god_ set-dist 7 16 1
$god_ set-dist 7 17 1
$god_ set-dist 7 18 2
$god_ set-dist 7 19 3
$god_ set-dist 7 20 1
$god_ set-dist 7 21 2
$god_ set-dist 7 22 3
$god_ set-dist 7 23 1
$god_ set-dist 7 24 1
$god_ set-dist 7 25 2
$god_ set-dist 7 26 2
$god_ set-dist 7 27 2
$god_ set-dist 7 28 1
$god_ set-dist 7 29 2
$god_ set-dist 7 30 2
$god_ set-dist 7 31 2
$god_ set-dist 7 32 2
$god_ set-dist 7 33 1
$god_ set-dist 7 34 1
$god_ set-dist 7 35 1
$god_ set-dist 7 36 1
$god_ set-dist 7 37 1
$god_ set-dist 7 38 2
$god_ set-dist 7 39 2
$god_ set-dist 7 40 1
$god_ set-dist 7 41 1
$god_ set-dist 7 42 1
$god_ set-dist 7 43 3
$god_ set-dist 7 44 3
$god_ set-dist 7 45 2
$god_ set-dist 7 46 2
$god_ set-dist 7 47 2
$god_ set-dist 7 48 2
$god_ set-dist 7 49 1
$god_ set-dist 8 9 1
$god_ set-dist 8 10 4
$god_ set-dist 8 11 4
$god_ set-dist 8 12 2
$god_ set-dist 8 13 3
$god_ set-dist 8 14 2
$god_ set-dist 8 15 1
$god_ set-dist 8 16 3
$god_ set-dist 8 17 4
$god_ set-dist 8 18 3
$god_ set-dist 8 19 3
$god_ set-dist 8 20 2
$god_ set-dist 8 21 2
$god_ set-dist 8 22 3
$god_ set-dist 8 23 2
$god_ set-dist 8 24 4
$god_ set-dist 8 25 3
$god_ set-dist 8 26 1
$god_ set-dist 8 27 3
$god_ set-dist 8 28 2
$god_ set-dist 8 29 2
$god_ set-dist 8 30 1
$god_ set-dist 8 31 3
$god_ set-dist 8 32 1
$god_ set-dist 8 33 3
$god_ set-dist 8 34 3
$god_ set-dist 8 35 3
$god_ set-dist 8 36 3
$god_ set-dist 8 37 3
$god_ set-dist 8 38 1
$god_ set-dist 8 39 1
$god_ set-dist 8 40 2
$god_ set-dist 8 41 3
$god_ set-dist 8 42 2
$god_ set-dist 8 43 1
$god_ set-dist 8 44 2
$god_ set-dist 8 45 1
$god_ set-dist 8 46 1
$god_ set-dist 8 47 1
$god_ set-dist 8 48 2
$god_ set-dist 8 49 3
$god_ set-dist 9 10 3
$god_ set-dist 9 11 4
$god_ set-dist 9 12 2
$god_ set-dist 9 13 3
$god_ set-dist 9 14 2
$god_ set-dist 9 15 1
$god_ set-dist 9 16 2
$god_ set-dist 9 17 3
$god_ set-dist 9 18 3
$god_ set-dist 9 19 3
$god_ set-dist 9 20 1
$god_ set-dist 9 21 2
$god_ set-dist 9 22 3
$god_ set-dist 9 23 2
$god_ set-dist 9 24 3
$god_ set-dist 9 25 3
$god_ set-dist 9 26 1
$god_ set-dist 9 27 2
$god_ set-dist 9 28 1
$god_ set-dist 9 29 1
$god_ set-dist 9 30 2
$god_ set-dist 9 31 2
$god_ set-dist 9 32 1
$god_ set-dist 9 33 2
$god_ set-dist 9 34 2
$god_ set-dist 9 35 3
$god_ set-dist 9 36 2
$god_ set-dist 9 37 2
$god_ set-dist 9 38 1
$god_ set-dist 9 39 1
$god_ set-dist 9 40 2
$god_ set-dist 9 41 2
$god_ set-dist 9 42 1
$god_ set-dist 9 43 1
$god_ set-dist 9 44 2
$god_ set-dist 9 45 1
$god_ set-dist 9 46 1
$god_ set-dist 9 47 1
$god_ set-dist 9 48 2
$god_ set-dist 9 49 3
$god_ set-dist 10 11 1
$god_ set-dist 10 12 3
$god_ set-dist 10 13 1
$god_ set-dist 10 14 3
$god_ set-dist 10 15 3
$god_ set-dist 10 16 1
$god_ set-dist 10 17 2
$god_ set-dist 10 18 1
$god_ set-dist 10 19 2
$god_ set-dist 10 20 2
$god_ set-dist 10 21 2
$god_ set-dist 10 22 2
$god_ set-dist 10 23 2
$god_ set-dist 10 24 1
$god_ set-dist 10 25 1
$god_ set-dist 10 26 3
$god_ set-dist 10 27 1
$god_ set-dist 10 28 3
$god_ set-dist 10 29 3
$god_ set-dist 10 30 3
$god_ set-dist 10 31 1
$god_ set-dist 10 32 3
$god_ set-dist 10 33 2
$god_ set-dist 10 34 2
$god_ set-dist 10 35 1
$god_ set-dist 10 36 2
$god_ set-dist 10 37 2
$god_ set-dist 10 38 3
$god_ set-dist 10 39 3
$god_ set-dist 10 40 3
$god_ set-dist 10 41 2
$god_ set-dist 10 42 3
$god_ set-dist 10 43 4
$god_ set-dist 10 44 2
$god_ set-dist 10 45 4
$god_ set-dist 10 46 3
$god_ set-dist 10 47 3
$god_ set-dist 10 48 2
$god_ set-dist 10 49 3
$god_ set-dist 11 12 3
$god_ set-dist 11 13 2
$god_ set-dist 11 14 3
$god_ set-dist 11 15 4
$god_ set-dist 11 16 2
$god_ set-dist 11 17 2
$god_ set-dist 11 18 1
$god_ set-dist 11 19 2
$god_ set-dist 11 20 3
$god_ set-dist 11 21 2
$god_ set-dist 11 22 2
$god_ set-dist 11 23 2
$god_ set-dist 11 24 1
$god_ set-dist 11 25 1
$god_ set-dist 11 26 4
$god_ set-dist 11 27 2
$god_ set-dist 11 28 3
$god_ set-dist 11 29 4
$god_ set-dist 11 30 3
$god_ set-dist 11 31 2
$god_ set-dist 11 32 3
$god_ set-dist 11 33 2
$god_ set-dist 11 34 2
$god_ set-dist 11 35 2
$god_ set-dist 11 36 2
$god_ set-dist 11 37 2
$god_ set-dist 11 38 4
$god_ set-dist 11 39 3
$god_ set-dist 11 40 3
$god_ set-dist 11 41 2
$god_ set-dist 11 42 3
$god_ set-dist 11 43 4
$god_ set-dist 11 44 3
$god_ set-dist 11 45 4
$god_ set-dist 11 46 4
$god_ set-dist 11 47 4
$god_ set-dist 11 48 3
$god_ set-dist 11 49 3
$god_ set-dist 12 13 3
$god_ set-dist 12 14 3
$god_ set-dist 12 15 2
$god_ set-dist 12 16 2
$god_ set-dist 12 17 2
$god_ set-dist 12 18 3
$god_ set-dist 12 19 4
$god_ set-dist 12 20 2
$god_ set-dist 12 21 3
$god_ set-dist 12 22 4
$god_ set-dist 12 23 2
$god_ set-dist 12 24 2
$god_ set-dist 12 25 3
$god_ set-dist 12 26 1
$god_ set-dist 12 27 2
$god_ set-dist 12 28 1
$god_ set-dist 12 29 1
$god_ set-dist 12 30 3
$god_ set-dist 12 31 3
$god_ set-dist 12 32 2
$god_ set-dist 12 33 2
$god_ set-dist 12 34 2
$god_ set-dist 12 35 2
$god_ set-dist 12 36 2
$god_ set-dist 12 37 1
$god_ set-dist 12 38 2
$god_ set-dist 12 39 2
$god_ set-dist 12 40 1
$god_ set-dist 12 41 2
$god_ set-dist 12 42 1
$god_ set-dist 12 43 2
$god_ set-dist 12 44 3
$god_ set-dist 12 45 2
$god_ set-dist 12 46 2
$god_ set-dist 12 47 2
$god_ set-dist 12 48 3
$god_ set-dist 12 49 1
$god_ set-dist 13 14 2
$god_ set-dist 13 15 3
$god_ set-dist 13 16 1
$god_ set-dist 13 17 2
$god_ set-dist 13 18 1
$god_ set-dist 13 19 1
$god_ set-dist 13 20 2
$god_ set-dist 13 21 1
$god_ set-dist 13 22 1
$god_ set-dist 13 23 1
$god_ set-dist 13 24 2
$god_ set-dist 13 25 1
$god_ set-dist 13 26 3
$god_ set-dist 13 27 1
$god_ set-dist 13 28 3
$god_ set-dist 13 29 3
$god_ set-dist 13 30 2
$god_ set-dist 13 31 1
$god_ set-dist 13 32 2
$god_ set-dist 13 33 2
$god_ set-dist 13 34 1
$god_ set-dist 13 35 1
$god_ set-dist 13 36 2
$god_ set-dist 13 37 2
$god_ set-dist 13 38 3
$god_ set-dist 13 39 2
$god_ set-dist 13 40 3
$god_ set-dist 13 41 1
$god_ set-dist 13 42 2
$god_ set-dist 13 43 3
$god_ set-dist 13 44 1
$god_ set-dist 13 45 3
$god_ set-dist 13 46 3
$god_ set-dist 13 47 2
$god_ set-dist 13 48 1
$god_ set-dist 13 49 3
$god_ set-dist 14 15 2
$god_ set-dist 14 16 2
$god_ set-dist 14 17 3
$god_ set-dist 14 18 2
$god_ set-dist 14 19 1
$god_ set-dist 14 20 2
$god_ set-dist 14 21 1
$god_ set-dist 14 22 2
$god_ set-dist 14 23 2
$god_ set-dist 14 24 3
$god_ set-dist 14 25 2
$god_ set-dist 14 26 3
$god_ set-dist 14 27 2
$god_ set-dist 14 28 3
$god_ set-dist 14 29 3
$god_ set-dist 14 30 1
$god_ set-dist 14 31 2
$god_ set-dist 14 32 1
$god_ set-dist 14 33 3
$god_ set-dist 14 34 2
$god_ set-dist 14 35 3
$god_ set-dist 14 36 3
$god_ set-dist 14 37 3
$god_ set-dist 14 38 2
$god_ set-dist 14 39 2
$god_ set-dist 14 40 3
$god_ set-dist 14 41 2
$god_ set-dist 14 42 3
$god_ set-dist 14 43 3
$god_ set-dist 14 44 1
$god_ set-dist 14 45 3
$god_ set-dist 14 46 2
$god_ set-dist 14 47 2
$god_ set-dist 14 48 1
$god_ set-dist 14 49 4
$god_ set-dist 15 16 2
$god_ set-dist 15 17 3
$god_ set-dist 15 18 3
$god_ set-dist 15 19 3
$god_ set-dist 15 20 1
$god_ set-dist 15 21 2
$god_ set-dist 15 22 3
$god_ set-dist 15 23 2
$god_ set-dist 15 24 3
$god_ set-dist 15 25 3
$god_ set-dist 15 26 1
$god_ set-dist 15 27 2
$god_ set-dist 15 28 2
$god_ set-dist 15 29 1
$god_ set-dist 15 30 1
$god_ set-dist 15 31 2
$god_ set-dist 15 32 1
$god_ set-dist 15 33 2
$god_ set-dist 15 34 2
$god_ set-dist 15 35 3
$god_ set-dist 15 36 2
$god_ set-dist 15 37 2
$god_ set-dist 15 38 1
$god_ set-dist 15 39 1
$god_ set-dist 15 40 2
$god_ set-dist 15 41 2
$god_ set-dist 15 42 1
$god_ set-dist 15 43 1
$god_ set-dist 15 44 2
$god_ set-dist 15 45 1
$god_ set-dist 15 46 1
$god_ set-dist 15 47 1
$god_ set-dist 15 48 2
$god_ set-dist 15 49 3
$god_ set-dist 16 17 1
$god_ set-dist 16 18 1
$god_ set-dist 16 19 2
$god_ set-dist 16 20 1
$god_ set-dist 16 21 1
$god_ set-dist 16 22 2
$god_ set-dist 16 23 1
$god_ set-dist 16 24 1
$god_ set-dist 16 25 1
$god_ set-dist 16 26 2
$god_ set-dist 16 27 1
$god_ set-dist 16 28 2
$god_ set-dist 16 29 2
$god_ set-dist 16 30 2
$god_ set-dist 16 31 1
$god_ set-dist 16 32 2
$god_ set-dist 16 33 1
$god_ set-dist 16 34 1
$god_ set-dist 16 35 1
$god_ set-dist 16 36 1
$god_ set-dist 16 37 1
$god_ set-dist 16 38 2
$god_ set-dist 16 39 2
$god_ set-dist 16 40 2
$god_ set-dist 16 41 1
$god_ set-dist 16 42 2
$god_ set-dist 16 43 3
$god_ set-dist 16 44 2
$god_ set-dist 16 45 3
$god_ set-dist 16 46 2
$god_ set-dist 16 47 2
$god_ set-dist 16 48 2
$god_ set-dist 16 49 2
$god_ set-dist 17 18 2
$god_ set-dist 17 19 3
$god_ set-dist 17 20 2
$god_ set-dist 17 21 2
$god_ set-dist 17 22 3
$god_ set-dist 17 23 2
$god_ set-dist 17 24 1
$god_ set-dist 17 25 2
$god_ set-dist 17 26 3
$god_ set-dist 17 27 1
$god_ set-dist 17 28 2
$god_ set-dist 17 29 3
$god_ set-dist 17 30 3
$god_ set-dist 17 31 2
$god_ set-dist 17 32 3
$god_ set-dist 17 33 1
$god_ set-dist 17 34 1
$god_ set-dist 17 35 1
$god_ set-dist 17 36 1
$god_ set-dist 17 37 1
$god_ set-dist 17 38 3
$god_ set-dist 17 39 3
$god_ set-dist 17 40 2
$god_ set-dist 17 41 2
$god_ set-dist 17 42 2
$god_ set-dist 17 43 4
$god_ set-dist 17 44 3
$god_ set-dist 17 45 3
$god_ set-dist 17 46 3
$god_ set-dist 17 47 3
$god_ set-dist 17 48 3
$god_ set-dist 17 49 2
$god_ set-dist 18 19 1
$god_ set-dist 18 20 2
$god_ set-dist 18 21 1
$god_ set-dist 18 22 1
$god_ set-dist 18 23 1
$god_ set-dist 18 24 2
$god_ set-dist 18 25 1
$god_ set-dist 18 26 3
$god_ set-dist 18 27 1
$god_ set-dist 18 28 3
$god_ set-dist 18 29 3
$god_ set-dist 18 30 2
$god_ set-dist 18 31 1
$god_ set-dist 18 32 2
$god_ set-dist 18 33 2
$god_ set-dist 18 34 1
$god_ set-dist 18 35 1
$god_ set-dist 18 36 1
$god_ set-dist 18 37 2
$god_ set-dist 18 38 3
$god_ set-dist 18 39 2
$god_ set-dist 18 40 2
$god_ set-dist 18 41 1
$god_ set-dist 18 42 2
$god_ set-dist 18 43 3
$god_ set-dist 18 44 2
$god_ set-dist 18 45 3
$god_ set-dist 18 46 3
$god_ set-dist 18 47 3
$god_ set-dist 18 48 2
$god_ set-dist 18 49 3
$god_ set-dist 19 20 2
$god_ set-dist 19 21 1
$god_ set-dist 19 22 1
$god_ set-dist 19 23 2
$god_ set-dist 19 24 3
$god_ set-dist 19 25 1
$god_ set-dist 19 26 4
$god_ set-dist 19 27 2
$god_ set-dist 19 28 3
$god_ set-dist 19 29 3
$god_ set-dist 19 30 2
$god_ set-dist 19 31 1
$god_ set-dist 19 32 2
$god_ set-dist 19 33 3
$god_ set-dist 19 34 2
$god_ set-dist 19 35 2
$god_ set-dist 19 36 2
$god_ set-dist 19 37 3
$god_ set-dist 19 38 3
$god_ set-dist 19 39 3
$god_ set-dist 19 40 3
$god_ set-dist 19 41 2
$god_ set-dist 19 42 3
$god_ set-dist 19 43 3
$god_ set-dist 19 44 1
$god_ set-dist 19 45 3
$god_ set-dist 19 46 3
$god_ set-dist 19 47 2
$god_ set-dist 19 48 1
$god_ set-dist 19 49 4
$god_ set-dist 20 21 1
$god_ set-dist 20 22 2
$god_ set-dist 20 23 1
$god_ set-dist 20 24 2
$god_ set-dist 20 25 2
$god_ set-dist 20 26 2
$god_ set-dist 20 27 1
$god_ set-dist 20 28 1
$god_ set-dist 20 29 1
$god_ set-dist 20 30 1
$god_ set-dist 20 31 1
$god_ set-dist 20 32 1
$god_ set-dist 20 33 1
$god_ set-dist 20 34 1
$god_ set-dist 20 35 2
$god_ set-dist 20 36 2
$god_ set-dist 20 37 2
$god_ set-dist 20 38 1
$god_ set-dist 20 39 1
$god_ set-dist 20 40 1
$god_ set-dist 20 41 1
$god_ set-dist 20 42 1
$god_ set-dist 20 43 2
$god_ set-dist 20 44 2
$god_ set-dist 20 45 2
$god_ set-dist 20 46 1
$god_ set-dist 20 47 1
$god_ set-dist 20 48 1
$god_ set-dist 20 49 2
$god_ set-dist 21 22 1
$god_ set-dist 21 23 1
$god_ set-dist 21 24 2
$god_ set-dist 21 25 2
$god_ set-dist 21 26 3
$god_ set-dist 21 27 1
$god_ set-dist 21 28 2
$god_ set-dist 21 29 2
$god_ set-dist 21 30 1
$god_ set-dist 21 31 1
$god_ set-dist 21 32 1
$god_ set-dist 21 33 2
$god_ set-dist 21 34 2
$god_ set-dist 21 35 2
$god_ set-dist 21 36 2
$god_ set-dist 21 37 2
$god_ set-dist 21 38 2
$god_ set-dist 21 39 2
$god_ set-dist 21 40 2
$god_ set-dist 21 41 1
$god_ set-dist 21 42 2
$god_ set-dist 21 43 3
$god_ set-dist 21 44 1
$god_ set-dist 21 45 3
$god_ set-dist 21 46 2
$god_ set-dist 21 47 2
$god_ set-dist 21 48 1
$god_ set-dist 21 49 3
$god_ set-dist 22 23 2
$god_ set-dist 22 24 3
$god_ set-dist 22 25 1
$god_ set-dist 22 26 4
$god_ set-dist 22 27 2
$god_ set-dist 22 28 3
$god_ set-dist 22 29 3
$god_ set-dist 22 30 2
$god_ set-dist 22 31 1
$god_ set-dist 22 32 2
$god_ set-dist 22 33 3
$god_ set-dist 22 34 2
$god_ set-dist 22 35 2
$god_ set-dist 22 36 2
$god_ set-dist 22 37 3
$god_ set-dist 22 38 3
$god_ set-dist 22 39 3
$god_ set-dist 22 40 3
$god_ set-dist 22 41 2
$god_ set-dist 22 42 3
$god_ set-dist 22 43 3
$god_ set-dist 22 44 1
$god_ set-dist 22 45 3
$god_ set-dist 22 46 3
$god_ set-dist 22 47 2
$god_ set-dist 22 48 1
$god_ set-dist 22 49 4
$god_ set-dist 23 24 2
$god_ set-dist 23 25 2
$god_ set-dist 23 26 2
$god_ set-dist 23 27 1
$god_ set-dist 23 28 2
$god_ set-dist 23 29 2
$god_ set-dist 23 30 2
$god_ set-dist 23 31 1
$god_ set-dist 23 32 1
$god_ set-dist 23 33 1
$god_ set-dist 23 34 1
$god_ set-dist 23 35 1
$god_ set-dist 23 36 1
$god_ set-dist 23 37 1
$god_ set-dist 23 38 2
$god_ set-dist 23 39 1
$god_ set-dist 23 40 2
$god_ set-dist 23 41 1
$god_ set-dist 23 42 1
$god_ set-dist 23 43 2
$god_ set-dist 23 44 2
$god_ set-dist 23 45 2
$god_ set-dist 23 46 2
$god_ set-dist 23 47 2
$god_ set-dist 23 48 1
$god_ set-dist 23 49 2
$god_ set-dist 24 25 2
$god_ set-dist 24 26 3
$god_ set-dist 24 27 1
$god_ set-dist 24 28 2
$god_ set-dist 24 29 3
$god_ set-dist 24 30 3
$god_ set-dist 24 31 2
$god_ set-dist 24 32 3
$god_ set-dist 24 33 1
$god_ set-dist 24 34 1
$god_ set-dist 24 35 1
$god_ set-dist 24 36 1
$god_ set-dist 24 37 1
$god_ set-dist 24 38 3
$god_ set-dist 24 39 3
$god_ set-dist 24 40 2
$god_ set-dist 24 41 2
$god_ set-dist 24 42 2
$god_ set-dist 24 43 4
$god_ set-dist 24 44 3
$god_ set-dist 24 45 3
$god_ set-dist 24 46 3
$god_ set-dist 24 47 3
$god_ set-dist 24 48 3
$god_ set-dist 24 49 2
$god_ set-dist 25 26 3
$god_ set-dist 25 27 1
$god_ set-dist 25 28 3
$god_ set-dist 25 29 3
$god_ set-dist 25 30 3
$god_ set-dist 25 31 1
$god_ set-dist 25 32 2
$god_ set-dist 25 33 2
$god_ set-dist 25 34 2
$god_ set-dist 25 35 1
$god_ set-dist 25 36 2
$god_ set-dist 25 37 2
$god_ set-dist 25 38 3
$god_ set-dist 25 39 3
$god_ set-dist 25 40 3
$god_ set-dist 25 41 2
$god_ set-dist 25 42 3
$god_ set-dist 25 43 4
$god_ set-dist 25 44 2
$god_ set-dist 25 45 4
$god_ set-dist 25 46 3
$god_ set-dist 25 47 3
$god_ set-dist 25 48 2
$god_ set-dist 25 49 3
$god_ set-dist 26 27 3
$god_ set-dist 26 28 1
$god_ set-dist 26 29 1
$god_ set-dist 26 30 2
$god_ set-dist 26 31 3
$god_ set-dist 26 32 2
$god_ set-dist 26 33 2
$god_ set-dist 26 34 2
$god_ set-dist 26 35 2
$god_ set-dist 26 36 2
$god_ set-dist 26 37 2
$god_ set-dist 26 38 1
$god_ set-dist 26 39 1
$god_ set-dist 26 40 1
$god_ set-dist 26 41 2
$god_ set-dist 26 42 1
$god_ set-dist 26 43 1
$god_ set-dist 26 44 3
$god_ set-dist 26 45 1
$god_ set-dist 26 46 1
$god_ set-dist 26 47 2
$god_ set-dist 26 48 3
$god_ set-dist 26 49 2
$god_ set-dist 27 28 2
$god_ set-dist 27 29 2
$god_ set-dist 27 30 2
$god_ set-dist 27 31 1
$god_ set-dist 27 32 2
$god_ set-dist 27 33 1
$god_ set-dist 27 34 1
$god_ set-dist 27 35 1
$god_ set-dist 27 36 1
$god_ set-dist 27 37 1
$god_ set-dist 27 38 2
$god_ set-dist 27 39 2
$god_ set-dist 27 40 2
$god_ set-dist 27 41 1
$god_ set-dist 27 42 2
$god_ set-dist 27 43 3
$god_ set-dist 27 44 2
$god_ set-dist 27 45 3
$god_ set-dist 27 46 2
$god_ set-dist 27 47 2
$god_ set-dist 27 48 2
$god_ set-dist 27 49 2
$god_ set-dist 28 29 1
$god_ set-dist 28 30 2
$god_ set-dist 28 31 2
$god_ set-dist 28 32 2
$god_ set-dist 28 33 2
$god_ set-dist 28 34 2
$god_ set-dist 28 35 2
$god_ set-dist 28 36 2
$god_ set-dist 28 37 1
$god_ set-dist 28 38 2
$god_ set-dist 28 39 1
$god_ set-dist 28 40 1
$god_ set-dist 28 41 2
$god_ set-dist 28 42 1
$god_ set-dist 28 43 2
$god_ set-dist 28 44 3
$god_ set-dist 28 45 1
$god_ set-dist 28 46 1
$god_ set-dist 28 47 2
$god_ set-dist 28 48 2
$god_ set-dist 28 49 2
$god_ set-dist 29 30 2
$god_ set-dist 29 31 2
$god_ set-dist 29 32 2
$god_ set-dist 29 33 2
$god_ set-dist 29 34 2
$god_ set-dist 29 35 2
$god_ set-dist 29 36 2
$god_ set-dist 29 37 2
$god_ set-dist 29 38 1
$god_ set-dist 29 39 1
$god_ set-dist 29 40 1
$god_ set-dist 29 41 2
$god_ set-dist 29 42 1
$god_ set-dist 29 43 1
$god_ set-dist 29 44 3
$god_ set-dist 29 45 1
$god_ set-dist 29 46 1
$god_ set-dist 29 47 2
$god_ set-dist 29 48 2
$god_ set-dist 29 49 2
$god_ set-dist 30 31 2
$god_ set-dist 30 32 1
$god_ set-dist 30 33 2
$god_ set-dist 30 34 2
$god_ set-dist 30 35 3
$god_ set-dist 30 36 3
$god_ set-dist 30 37 3
$god_ set-dist 30 38 1
$god_ set-dist 30 39 1
$god_ set-dist 30 40 2
$god_ set-dist 30 41 2
$god_ set-dist 30 42 2
$god_ set-dist 30 43 2
$god_ set-dist 30 44 1
$god_ set-dist 30 45 2
$god_ set-dist 30 46 1
$god_ set-dist 30 47 1
$god_ set-dist 30 48 1
$god_ set-dist 30 49 3
$god_ set-dist 31 32 2
$god_ set-dist 31 33 2
$god_ set-dist 31 34 1
$god_ set-dist 31 35 1
$god_ set-dist 31 36 1
$god_ set-dist 31 37 2
$god_ set-dist 31 38 2
$god_ set-dist 31 39 2
$god_ set-dist 31 40 2
$god_ set-dist 31 41 1
$god_ set-dist 31 42 2
$god_ set-dist 31 43 3
$god_ set-dist 31 44 1
$god_ set-dist 31 45 3
$god_ set-dist 31 46 2
$god_ set-dist 31 47 2
$god_ set-dist 31 48 1
$god_ set-dist 31 49 3
$god_ set-dist 32 33 2
$god_ set-dist 32 34 2
$god_ set-dist 32 35 2
$god_ set-dist 32 36 2
$god_ set-dist 32 37 2
$god_ set-dist 32 38 1
$god_ set-dist 32 39 1
$god_ set-dist 32 40 2
$god_ set-dist 32 41 2
$god_ set-dist 32 42 2
$god_ set-dist 32 43 2
$god_ set-dist 32 44 1
$god_ set-dist 32 45 2
$god_ set-dist 32 46 1
$god_ set-dist 32 47 1
$god_ set-dist 32 48 1
$god_ set-dist 32 49 3
$god_ set-dist 33 34 1
$god_ set-dist 33 35 1
$god_ set-dist 33 36 1
$god_ set-dist 33 37 1
$god_ set-dist 33 38 2
$god_ set-dist 33 39 2
$god_ set-dist 33 40 1
$god_ set-dist 33 41 1
$god_ set-dist 33 42 1
$god_ set-dist 33 43 3
$god_ set-dist 33 44 3
$god_ set-dist 33 45 2
$god_ set-dist 33 46 2
$god_ set-dist 33 47 2
$god_ set-dist 33 48 2
$god_ set-dist 33 49 1
$god_ set-dist 34 35 1
$god_ set-dist 34 36 1
$god_ set-dist 34 37 1
$god_ set-dist 34 38 2
$god_ set-dist 34 39 2
$god_ set-dist 34 40 2
$god_ set-dist 34 41 1
$god_ set-dist 34 42 1
$god_ set-dist 34 43 3
$god_ set-dist 34 44 2
$god_ set-dist 34 45 2
$god_ set-dist 34 46 2
$god_ set-dist 34 47 2
$god_ set-dist 34 48 2
$god_ set-dist 34 49 2
$god_ set-dist 35 36 1
$god_ set-dist 35 37 1
$god_ set-dist 35 38 3
$god_ set-dist 35 39 2
$god_ set-dist 35 40 2
$god_ set-dist 35 41 1
$god_ set-dist 35 42 2
$god_ set-dist 35 43 3
$god_ set-dist 35 44 2
$god_ set-dist 35 45 3
$god_ set-dist 35 46 3
$god_ set-dist 35 47 3
$god_ set-dist 35 48 2
$god_ set-dist 35 49 2
$god_ set-dist 36 37 1
$god_ set-dist 36 38 2
$god_ set-dist 36 39 2
$god_ set-dist 36 40 1
$god_ set-dist 36 41 1
$god_ set-dist 36 42 1
$god_ set-dist 36 43 3
$god_ set-dist 36 44 2
$god_ set-dist 36 45 3
$god_ set-dist 36 46 2
$god_ set-dist 36 47 3
$god_ set-dist 36 48 2
$god_ set-dist 36 49 2
$god_ set-dist 37 38 2
$god_ set-dist 37 39 2
$god_ set-dist 37 40 1
$god_ set-dist 37 41 1
$god_ set-dist 37 42 1
$god_ set-dist 37 43 3
$god_ set-dist 37 44 3
$god_ set-dist 37 45 2
$god_ set-dist 37 46 2
$god_ set-dist 37 47 2
$god_ set-dist 37 48 2
$god_ set-dist 37 49 1
$god_ set-dist 38 39 1
$god_ set-dist 38 40 2
$god_ set-dist 38 41 2
$god_ set-dist 38 42 1
$god_ set-dist 38 43 1
$god_ set-dist 38 44 2
$god_ set-dist 38 45 1
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
$god_ set-dist 39 46 1
$god_ set-dist 39 47 1
$god_ set-dist 39 48 2
$god_ set-dist 39 49 3
$god_ set-dist 40 41 2
$god_ set-dist 40 42 1
$god_ set-dist 40 43 2
$god_ set-dist 40 44 3
$god_ set-dist 40 45 2
$god_ set-dist 40 46 2
$god_ set-dist 40 47 2
$god_ set-dist 40 48 2
$god_ set-dist 40 49 1
$god_ set-dist 41 42 1
$god_ set-dist 41 43 3
$god_ set-dist 41 44 2
$god_ set-dist 41 45 2
$god_ set-dist 41 46 2
$god_ set-dist 41 47 2
$god_ set-dist 41 48 2
$god_ set-dist 41 49 2
$god_ set-dist 42 43 2
$god_ set-dist 42 44 3
$god_ set-dist 42 45 2
$god_ set-dist 42 46 1
$god_ set-dist 42 47 2
$god_ set-dist 42 48 2
$god_ set-dist 42 49 2
$god_ set-dist 43 44 3
$god_ set-dist 43 45 1
$god_ set-dist 43 46 1
$god_ set-dist 43 47 1
$god_ set-dist 43 48 2
$god_ set-dist 43 49 3
$god_ set-dist 44 45 3
$god_ set-dist 44 46 2
$god_ set-dist 44 47 2
$god_ set-dist 44 48 1
$god_ set-dist 44 49 4
$god_ set-dist 45 46 1
$god_ set-dist 45 47 1
$god_ set-dist 45 48 2
$god_ set-dist 45 49 3
$god_ set-dist 46 47 1
$god_ set-dist 46 48 2
$god_ set-dist 46 49 3
$god_ set-dist 47 48 1
$god_ set-dist 47 49 3
$god_ set-dist 48 49 3
$ns_ at 200.000000000000 "$node_(0) setdest 499.359321216293 440.255634948419 17.494347346673"
$ns_ at 200.000000000000 "$node_(1) setdest 1.528897897343 69.109074795779 12.305348059049"
$ns_ at 200.000000000000 "$node_(2) setdest 459.226017892131 581.427103212764 5.231427468391"
$ns_ at 200.000000000000 "$node_(3) setdest 222.129462804396 557.609182112550 3.765771194194"
$ns_ at 200.000000000000 "$node_(4) setdest 558.170265783420 66.265973605523 17.694935524032"
$ns_ at 200.000000000000 "$node_(5) setdest 634.274810366137 658.009711824362 2.152324576788"
$ns_ at 200.000000000000 "$node_(6) setdest 546.844406801657 130.847285053748 8.291754644524"
$ns_ at 200.000000000000 "$node_(7) setdest 340.598918573133 546.111921153795 12.641402433955"
$ns_ at 200.000000000000 "$node_(8) setdest 341.315810338987 52.529896808839 17.388726476779"
$ns_ at 200.000000000000 "$node_(9) setdest 622.475148868941 445.897987793847 19.041340481629"
$ns_ at 200.000000000000 "$node_(10) setdest 216.149692097478 58.079744174747 17.039575573111"
$ns_ at 200.000000000000 "$node_(11) setdest 659.122439503546 504.313565373240 1.966646627770"
$ns_ at 200.000000000000 "$node_(12) setdest 607.064518334675 620.687467377399 1.899448501665"
$ns_ at 200.000000000000 "$node_(13) setdest 225.877951214233 500.271572439579 8.226788838201"
$ns_ at 200.000000000000 "$node_(14) setdest 306.239850220245 461.564882266218 16.475649580112"
$ns_ at 200.000000000000 "$node_(15) setdest 631.984150482505 466.247067055523 1.929717799970"
$ns_ at 200.000000000000 "$node_(16) setdest 238.960197377885 373.285543041628 18.559801834738"
$ns_ at 200.000000000000 "$node_(17) setdest 590.911193115061 33.817770503018 9.326653019512"
$ns_ at 200.000000000000 "$node_(18) setdest 485.513705366024 215.643731051566 3.598017061219"
$ns_ at 200.000000000000 "$node_(19) setdest 479.595593851033 433.096381899446 9.796607596263"
$ns_ at 200.000000000000 "$node_(20) setdest 290.425243249268 398.080719278844 14.455991780117"
$ns_ at 200.000000000000 "$node_(21) setdest 215.882400296056 498.766820622491 2.390166129254"
$ns_ at 200.000000000000 "$node_(22) setdest 82.940377807617 485.230548404612 7.579732275704"
$ns_ at 200.000000000000 "$node_(23) setdest 491.165511601704 560.652151528198 5.027343785783"
$ns_ at 200.000000000000 "$node_(24) setdest 139.835529505692 261.673604328677 18.270851457570"
$ns_ at 200.000000000000 "$node_(25) setdest 668.936506232431 540.851731281066 3.752497863145"
$ns_ at 200.000000000000 "$node_(26) setdest 0.113595899574 0.405245468554 15.808408192394"
$ns_ at 200.000000000000 "$node_(27) setdest 381.988253924893 298.044284396621 5.569969913586"
$ns_ at 200.000000000000 "$node_(28) setdest 612.814600361846 88.914831684503 1.258503031397"
$ns_ at 200.000000000000 "$node_(29) setdest 108.454486089417 403.841918711345 4.745558674232"
$ns_ at 200.000000000000 "$node_(30) setdest 578.833893658000 540.165706082356 16.159005216573"
$ns_ at 200.000000000000 "$node_(31) setdest 621.761794324604 340.450146702032 5.189339713981"
$ns_ at 200.000000000000 "$node_(32) setdest 220.968184790430 474.141674996696 3.070320482046"
$ns_ at 200.000000000000 "$node_(33) setdest 301.869300340492 177.546125776040 15.748503845113"
$ns_ at 200.000000000000 "$node_(34) setdest 369.914538176317 494.517641977796 6.086983146633"
$ns_ at 200.000000000000 "$node_(35) setdest 230.741992868561 624.901750688340 16.083718404503"
$ns_ at 200.000000000000 "$node_(36) setdest 538.517509831964 227.812736193894 9.936496835852"
$ns_ at 200.000000000000 "$node_(37) setdest 147.046085136380 531.540956653310 8.954971689413"
$ns_ at 200.000000000000 "$node_(38) setdest 172.829439232248 167.926401563150 4.076748827464"
$ns_ at 200.000000000000 "$node_(39) setdest 260.574589213243 360.768948595492 3.890079723004"
$ns_ at 200.000000000000 "$node_(40) setdest 270.428119322529 605.771793425207 15.968782175683"
$ns_ at 200.000000000000 "$node_(41) setdest 489.252191745782 157.774213428385 19.605311327126"
$ns_ at 200.000000000000 "$node_(42) setdest 486.268958708724 369.624216761868 10.422000984609"
$ns_ at 200.000000000000 "$node_(43) setdest 661.842083785020 36.430897851853 8.578683073718"
$ns_ at 200.000000000000 "$node_(44) setdest 141.672592949564 585.994615882374 4.983988873816"
$ns_ at 200.000000000000 "$node_(45) setdest 172.688589489373 477.475458775855 14.120524543586"
$ns_ at 200.000000000000 "$node_(46) setdest 312.699407469825 343.897040607544 14.854022853458"
$ns_ at 200.000000000000 "$node_(47) setdest 654.371023294323 224.827087238439 13.283877028862"
$ns_ at 200.000000000000 "$node_(48) setdest 366.636226922352 25.394113248208 18.992742321103"
$ns_ at 200.000000000000 "$node_(49) setdest 565.829579465220 194.835713560653 1.007262759262"
#
# Destination Unreachables: 0
#
# Route Changes: 0
#
# Link Changes: 0
#
# Node | Route Changes | Link Changes
#    0 |             0 |            0
#    1 |             0 |            0
#    2 |             0 |            0
#    3 |             0 |            0
#    4 |             0 |            0
#    5 |             0 |            0
#    6 |             0 |            0
#    7 |             0 |            0
#    8 |             0 |            0
#    9 |             0 |            0
#   10 |             0 |            0
#   11 |             0 |            0
#   12 |             0 |            0
#   13 |             0 |            0
#   14 |             0 |            0
#   15 |             0 |            0
#   16 |             0 |            0
#   17 |             0 |            0
#   18 |             0 |            0
#   19 |             0 |            0
#   20 |             0 |            0
#   21 |             0 |            0
#   22 |             0 |            0
#   23 |             0 |            0
#   24 |             0 |            0
#   25 |             0 |            0
#   26 |             0 |            0
#   27 |             0 |            0
#   28 |             0 |            0
#   29 |             0 |            0
#   30 |             0 |            0
#   31 |             0 |            0
#   32 |             0 |            0
#   33 |             0 |            0
#   34 |             0 |            0
#   35 |             0 |            0
#   36 |             0 |            0
#   37 |             0 |            0
#   38 |             0 |            0
#   39 |             0 |            0
#   40 |             0 |            0
#   41 |             0 |            0
#   42 |             0 |            0
#   43 |             0 |            0
#   44 |             0 |            0
#   45 |             0 |            0
#   46 |             0 |            0
#   47 |             0 |            0
#   48 |             0 |            0
#   49 |             0 |            0
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
    exec nam dsdvpause_200.nam &
    exit 0
}
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns_ at $val(stop) "\$node_($i) reset"
}
$ns_ at $val(stop) "$ns_ nam-end-wireless $val(stop)"
$ns_ at $val(stop) "finish"
$ns_ at $val(stop) "puts \"done\" ; $ns_ halt"
$ns_ run




