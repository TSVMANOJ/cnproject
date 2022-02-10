
set val(chan)   Channel/WirelessChannel    ;# channel type
set val(prop)   Propagation/TwoRayGround   ;# radio-propagation model
set val(netif)  Phy/WirelessPhy            ;# network interface type
set val(mac)    Mac/802_11                 ;# MAC type
set val(ifq)    Queue/DropTail/PriQueue   ;# interface queue type
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
set tracefile [open aodvms_2.tr w]
$ns_ trace-all $tracefile
#$ns use-newtrace
#Open the NAM trace file
set namfile [open aodvms_2.nam w]
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
    
    $node_($i) color green;
    $node_($i) label "node $i";
    $node_($i) label-color green; 
    $node_($i) label-at up;
    $node_($i) shape circle;
 }




#
# nodes: 50, pause: 1.00, max speed: 2.00, max x: 670.00, max y: 670.00
#
$node_(0) set X_ 439.260802121425
$node_(0) set Y_ 255.456832604255
$node_(0) set Z_ 0.000000000000
$node_(1) set X_ 302.362673245705
$node_(1) set Y_ 612.784854317841
$node_(1) set Z_ 0.000000000000
$node_(2) set X_ 301.296383084182
$node_(2) set Y_ 462.702090482236
$node_(2) set Z_ 0.000000000000
$node_(3) set X_ 24.124901385042
$node_(3) set Y_ 499.526471663617
$node_(3) set Z_ 0.000000000000
$node_(4) set X_ 169.289274216203
$node_(4) set Y_ 658.003724365210
$node_(4) set Z_ 0.000000000000
$node_(5) set X_ 283.174598068073
$node_(5) set Y_ 329.800021515322
$node_(5) set Z_ 0.000000000000
$node_(6) set X_ 642.506186755208
$node_(6) set Y_ 380.383932169028
$node_(6) set Z_ 0.000000000000
$node_(7) set X_ 9.183954121606
$node_(7) set Y_ 354.210295168623
$node_(7) set Z_ 0.000000000000
$node_(8) set X_ 259.148140638790
$node_(8) set Y_ 530.456025217393
$node_(8) set Z_ 0.000000000000
$node_(9) set X_ 594.688899676616
$node_(9) set Y_ 180.429032291108
$node_(9) set Z_ 0.000000000000
$node_(10) set X_ 460.054199616721
$node_(10) set Y_ 314.537903273917
$node_(10) set Z_ 0.000000000000
$node_(11) set X_ 530.592492237510
$node_(11) set Y_ 66.999746380827
$node_(11) set Z_ 0.000000000000
$node_(12) set X_ 498.929682724963
$node_(12) set Y_ 105.942106609223
$node_(12) set Z_ 0.000000000000
$node_(13) set X_ 617.904775222809
$node_(13) set Y_ 253.217052239726
$node_(13) set Z_ 0.000000000000
$node_(14) set X_ 96.675988486643
$node_(14) set Y_ 584.981469217722
$node_(14) set Z_ 0.000000000000
$node_(15) set X_ 159.185755909569
$node_(15) set Y_ 408.365112608286
$node_(15) set Z_ 0.000000000000
$node_(16) set X_ 35.082102638454
$node_(16) set Y_ 536.195271412986
$node_(16) set Z_ 0.000000000000
$node_(17) set X_ 649.524998772237
$node_(17) set Y_ 140.147616181221
$node_(17) set Z_ 0.000000000000
$node_(18) set X_ 318.658304279886
$node_(18) set Y_ 620.597117926041
$node_(18) set Z_ 0.000000000000
$node_(19) set X_ 85.618571000794
$node_(19) set Y_ 131.779068135667
$node_(19) set Z_ 0.000000000000
$node_(20) set X_ 180.081601791776
$node_(20) set Y_ 358.294850509923
$node_(20) set Z_ 0.000000000000
$node_(21) set X_ 239.158355101230
$node_(21) set Y_ 541.265108537195
$node_(21) set Z_ 0.000000000000
$node_(22) set X_ 461.255482475073
$node_(22) set Y_ 221.188340365695
$node_(22) set Z_ 0.000000000000
$node_(23) set X_ 298.808421898203
$node_(23) set Y_ 159.804364396098
$node_(23) set Z_ 0.000000000000
$node_(24) set X_ 48.748589535176
$node_(24) set Y_ 302.403357299021
$node_(24) set Z_ 0.000000000000
$node_(25) set X_ 87.699850926075
$node_(25) set Y_ 562.211319773913
$node_(25) set Z_ 0.000000000000
$node_(26) set X_ 501.322939660207
$node_(26) set Y_ 368.207077904854
$node_(26) set Z_ 0.000000000000
$node_(27) set X_ 187.960548928425
$node_(27) set Y_ 99.871752768132
$node_(27) set Z_ 0.000000000000
$node_(28) set X_ 74.446827083579
$node_(28) set Y_ 562.984077800226
$node_(28) set Z_ 0.000000000000
$node_(29) set X_ 615.962460134223
$node_(29) set Y_ 277.756751697372
$node_(29) set Z_ 0.000000000000
$node_(30) set X_ 346.891625512731
$node_(30) set Y_ 539.761532466020
$node_(30) set Z_ 0.000000000000
$node_(31) set X_ 475.402699069530
$node_(31) set Y_ 368.144222531467
$node_(31) set Z_ 0.000000000000
$node_(32) set X_ 302.490601951267
$node_(32) set Y_ 417.211085252908
$node_(32) set Z_ 0.000000000000
$node_(33) set X_ 5.978204033679
$node_(33) set Y_ 542.681697818403
$node_(33) set Z_ 0.000000000000
$node_(34) set X_ 348.086764291405
$node_(34) set Y_ 525.684353481593
$node_(34) set Z_ 0.000000000000
$node_(35) set X_ 298.843348119272
$node_(35) set Y_ 59.599385705467
$node_(35) set Z_ 0.000000000000
$node_(36) set X_ 172.036591815672
$node_(36) set Y_ 429.288303591769
$node_(36) set Z_ 0.000000000000
$node_(37) set X_ 81.767362302079
$node_(37) set Y_ 153.377270650229
$node_(37) set Z_ 0.000000000000
$node_(38) set X_ 556.537377941370
$node_(38) set Y_ 19.348676734260
$node_(38) set Z_ 0.000000000000
$node_(39) set X_ 252.342018670668
$node_(39) set Y_ 318.867732753160
$node_(39) set Z_ 0.000000000000
$node_(40) set X_ 208.408800805693
$node_(40) set Y_ 288.647415279099
$node_(40) set Z_ 0.000000000000
$node_(41) set X_ 412.530924830686
$node_(41) set Y_ 180.365420802498
$node_(41) set Z_ 0.000000000000
$node_(42) set X_ 462.609080821902
$node_(42) set Y_ 280.046585891324
$node_(42) set Z_ 0.000000000000
$node_(43) set X_ 89.520263143399
$node_(43) set Y_ 305.635296085882
$node_(43) set Z_ 0.000000000000
$node_(44) set X_ 448.369778690607
$node_(44) set Y_ 473.935125751539
$node_(44) set Z_ 0.000000000000
$node_(45) set X_ 172.001790391834
$node_(45) set Y_ 375.837208534158
$node_(45) set Z_ 0.000000000000
$node_(46) set X_ 402.947337216010
$node_(46) set Y_ 563.650112354482
$node_(46) set Z_ 0.000000000000
$node_(47) set X_ 246.912480359384
$node_(47) set Y_ 240.116351529537
$node_(47) set Z_ 0.000000000000
$node_(48) set X_ 129.615893459438
$node_(48) set Y_ 367.881139204669
$node_(48) set Z_ 0.000000000000
$node_(49) set X_ 431.226335015399
$node_(49) set Y_ 31.738856265247
$node_(49) set Z_ 0.000000000000
$god_ set-dist 0 1 2
$god_ set-dist 0 2 1
$god_ set-dist 0 3 3
$god_ set-dist 0 4 2
$god_ set-dist 0 5 1
$god_ set-dist 0 6 1
$god_ set-dist 0 7 2
$god_ set-dist 0 8 2
$god_ set-dist 0 9 1
$god_ set-dist 0 10 1
$god_ set-dist 0 11 1
$god_ set-dist 0 12 1
$god_ set-dist 0 13 1
$god_ set-dist 0 14 2
$god_ set-dist 0 15 2
$god_ set-dist 0 16 3
$god_ set-dist 0 17 1
$god_ set-dist 0 18 2
$god_ set-dist 0 19 2
$god_ set-dist 0 20 2
$god_ set-dist 0 21 2
$god_ set-dist 0 22 1
$god_ set-dist 0 23 1
$god_ set-dist 0 24 2
$god_ set-dist 0 25 2
$god_ set-dist 0 26 1
$god_ set-dist 0 27 2
$god_ set-dist 0 28 2
$god_ set-dist 0 29 1
$god_ set-dist 0 30 2
$god_ set-dist 0 31 1
$god_ set-dist 0 32 1
$god_ set-dist 0 33 3
$god_ set-dist 0 34 2
$god_ set-dist 0 35 1
$god_ set-dist 0 36 2
$god_ set-dist 0 37 2
$god_ set-dist 0 38 2
$god_ set-dist 0 39 1
$god_ set-dist 0 40 1
$god_ set-dist 0 41 1
$god_ set-dist 0 42 1
$god_ set-dist 0 43 2
$god_ set-dist 0 44 1
$god_ set-dist 0 45 2
$god_ set-dist 0 46 2
$god_ set-dist 0 47 1
$god_ set-dist 0 48 2
$god_ set-dist 0 49 1
$god_ set-dist 1 2 1
$god_ set-dist 1 3 2
$god_ set-dist 1 4 1
$god_ set-dist 1 5 2
$god_ set-dist 1 6 2
$god_ set-dist 1 7 2
$god_ set-dist 1 8 1
$god_ set-dist 1 9 3
$god_ set-dist 1 10 2
$god_ set-dist 1 11 3
$god_ set-dist 1 12 3
$god_ set-dist 1 13 3
$god_ set-dist 1 14 1
$god_ set-dist 1 15 1
$god_ set-dist 1 16 2
$god_ set-dist 1 17 3
$god_ set-dist 1 18 1
$god_ set-dist 1 19 3
$god_ set-dist 1 20 2
$god_ set-dist 1 21 1
$god_ set-dist 1 22 3
$god_ set-dist 1 23 3
$god_ set-dist 1 24 2
$god_ set-dist 1 25 1
$god_ set-dist 1 26 2
$god_ set-dist 1 27 3
$god_ set-dist 1 28 1
$god_ set-dist 1 29 3
$god_ set-dist 1 30 1
$god_ set-dist 1 31 2
$god_ set-dist 1 32 1
$god_ set-dist 1 33 2
$god_ set-dist 1 34 1
$god_ set-dist 1 35 3
$god_ set-dist 1 36 1
$god_ set-dist 1 37 3
$god_ set-dist 1 38 4
$god_ set-dist 1 39 2
$god_ set-dist 1 40 2
$god_ set-dist 1 41 3
$god_ set-dist 1 42 2
$god_ set-dist 1 43 2
$god_ set-dist 1 44 1
$god_ set-dist 1 45 2
$god_ set-dist 1 46 1
$god_ set-dist 1 47 2
$god_ set-dist 1 48 2
$god_ set-dist 1 49 3
$god_ set-dist 2 3 2
$god_ set-dist 2 4 1
$god_ set-dist 2 5 1
$god_ set-dist 2 6 2
$god_ set-dist 2 7 2
$god_ set-dist 2 8 1
$god_ set-dist 2 9 2
$god_ set-dist 2 10 1
$god_ set-dist 2 11 2
$god_ set-dist 2 12 2
$god_ set-dist 2 13 2
$god_ set-dist 2 14 1
$god_ set-dist 2 15 1
$god_ set-dist 2 16 2
$god_ set-dist 2 17 2
$god_ set-dist 2 18 1
$god_ set-dist 2 19 2
$god_ set-dist 2 20 1
$god_ set-dist 2 21 1
$god_ set-dist 2 22 2
$god_ set-dist 2 23 2
$god_ set-dist 2 24 2
$god_ set-dist 2 25 1
$god_ set-dist 2 26 1
$god_ set-dist 2 27 2
$god_ set-dist 2 28 1
$god_ set-dist 2 29 2
$god_ set-dist 2 30 1
$god_ set-dist 2 31 1
$god_ set-dist 2 32 1
$god_ set-dist 2 33 2
$god_ set-dist 2 34 1
$god_ set-dist 2 35 2
$god_ set-dist 2 36 1
$god_ set-dist 2 37 2
$god_ set-dist 2 38 3
$god_ set-dist 2 39 1
$god_ set-dist 2 40 1
$god_ set-dist 2 41 2
$god_ set-dist 2 42 1
$god_ set-dist 2 43 2
$god_ set-dist 2 44 1
$god_ set-dist 2 45 1
$god_ set-dist 2 46 1
$god_ set-dist 2 47 1
$god_ set-dist 2 48 1
$god_ set-dist 2 49 2
$god_ set-dist 3 4 1
$god_ set-dist 3 5 2
$god_ set-dist 3 6 3
$god_ set-dist 3 7 1
$god_ set-dist 3 8 1
$god_ set-dist 3 9 4
$god_ set-dist 3 10 3
$god_ set-dist 3 11 3
$god_ set-dist 3 12 3
$god_ set-dist 3 13 4
$god_ set-dist 3 14 1
$god_ set-dist 3 15 1
$god_ set-dist 3 16 1
$god_ set-dist 3 17 4
$god_ set-dist 3 18 2
$god_ set-dist 3 19 2
$god_ set-dist 3 20 1
$god_ set-dist 3 21 1
$god_ set-dist 3 22 3
$god_ set-dist 3 23 2
$god_ set-dist 3 24 1
$god_ set-dist 3 25 1
$god_ set-dist 3 26 3
$god_ set-dist 3 27 2
$god_ set-dist 3 28 1
$god_ set-dist 3 29 4
$god_ set-dist 3 30 2
$god_ set-dist 3 31 3
$god_ set-dist 3 32 2
$god_ set-dist 3 33 1
$god_ set-dist 3 34 2
$god_ set-dist 3 35 3
$god_ set-dist 3 36 1
$god_ set-dist 3 37 2
$god_ set-dist 3 38 4
$god_ set-dist 3 39 2
$god_ set-dist 3 40 2
$god_ set-dist 3 41 3
$god_ set-dist 3 42 3
$god_ set-dist 3 43 1
$god_ set-dist 3 44 2
$god_ set-dist 3 45 1
$god_ set-dist 3 46 2
$god_ set-dist 3 47 2
$god_ set-dist 3 48 1
$god_ set-dist 3 49 3
$god_ set-dist 4 5 2
$god_ set-dist 4 6 3
$god_ set-dist 4 7 2
$god_ set-dist 4 8 1
$god_ set-dist 4 9 3
$god_ set-dist 4 10 2
$god_ set-dist 4 11 3
$god_ set-dist 4 12 3
$god_ set-dist 4 13 3
$god_ set-dist 4 14 1
$god_ set-dist 4 15 1
$god_ set-dist 4 16 1
$god_ set-dist 4 17 3
$god_ set-dist 4 18 1
$god_ set-dist 4 19 3
$god_ set-dist 4 20 2
$god_ set-dist 4 21 1
$god_ set-dist 4 22 3
$god_ set-dist 4 23 3
$god_ set-dist 4 24 2
$god_ set-dist 4 25 1
$god_ set-dist 4 26 2
$god_ set-dist 4 27 3
$god_ set-dist 4 28 1
$god_ set-dist 4 29 3
$god_ set-dist 4 30 1
$god_ set-dist 4 31 2
$god_ set-dist 4 32 2
$god_ set-dist 4 33 1
$god_ set-dist 4 34 1
$god_ set-dist 4 35 3
$god_ set-dist 4 36 1
$god_ set-dist 4 37 3
$god_ set-dist 4 38 4
$god_ set-dist 4 39 2
$god_ set-dist 4 40 2
$god_ set-dist 4 41 3
$god_ set-dist 4 42 2
$god_ set-dist 4 43 2
$god_ set-dist 4 44 2
$god_ set-dist 4 45 2
$god_ set-dist 4 46 2
$god_ set-dist 4 47 2
$god_ set-dist 4 48 2
$god_ set-dist 4 49 3
$god_ set-dist 5 6 2
$god_ set-dist 5 7 2
$god_ set-dist 5 8 1
$god_ set-dist 5 9 2
$god_ set-dist 5 10 1
$god_ set-dist 5 11 2
$god_ set-dist 5 12 2
$god_ set-dist 5 13 2
$god_ set-dist 5 14 2
$god_ set-dist 5 15 1
$god_ set-dist 5 16 2
$god_ set-dist 5 17 2
$god_ set-dist 5 18 2
$god_ set-dist 5 19 2
$god_ set-dist 5 20 1
$god_ set-dist 5 21 1
$god_ set-dist 5 22 1
$god_ set-dist 5 23 1
$god_ set-dist 5 24 1
$god_ set-dist 5 25 2
$god_ set-dist 5 26 1
$god_ set-dist 5 27 1
$god_ set-dist 5 28 2
$god_ set-dist 5 29 2
$god_ set-dist 5 30 1
$god_ set-dist 5 31 1
$god_ set-dist 5 32 1
$god_ set-dist 5 33 2
$god_ set-dist 5 34 1
$god_ set-dist 5 35 2
$god_ set-dist 5 36 1
$god_ set-dist 5 37 2
$god_ set-dist 5 38 2
$god_ set-dist 5 39 1
$god_ set-dist 5 40 1
$god_ set-dist 5 41 1
$god_ set-dist 5 42 1
$god_ set-dist 5 43 1
$god_ set-dist 5 44 1
$god_ set-dist 5 45 1
$god_ set-dist 5 46 2
$god_ set-dist 5 47 1
$god_ set-dist 5 48 1
$god_ set-dist 5 49 2
$god_ set-dist 6 7 3
$god_ set-dist 6 8 2
$god_ set-dist 6 9 1
$god_ set-dist 6 10 1
$god_ set-dist 6 11 2
$god_ set-dist 6 12 2
$god_ set-dist 6 13 1
$god_ set-dist 6 14 3
$god_ set-dist 6 15 3
$god_ set-dist 6 16 3
$god_ set-dist 6 17 1
$god_ set-dist 6 18 2
$god_ set-dist 6 19 3
$god_ set-dist 6 20 3
$god_ set-dist 6 21 2
$god_ set-dist 6 22 1
$god_ set-dist 6 23 2
$god_ set-dist 6 24 3
$god_ set-dist 6 25 3
$god_ set-dist 6 26 1
$god_ set-dist 6 27 3
$god_ set-dist 6 28 3
$god_ set-dist 6 29 1
$god_ set-dist 6 30 2
$god_ set-dist 6 31 1
$god_ set-dist 6 32 2
$god_ set-dist 6 33 3
$god_ set-dist 6 34 2
$god_ set-dist 6 35 2
$god_ set-dist 6 36 3
$god_ set-dist 6 37 3
$god_ set-dist 6 38 2
$god_ set-dist 6 39 2
$god_ set-dist 6 40 2
$god_ set-dist 6 41 2
$god_ set-dist 6 42 1
$god_ set-dist 6 43 3
$god_ set-dist 6 44 1
$god_ set-dist 6 45 3
$god_ set-dist 6 46 2
$god_ set-dist 6 47 2
$god_ set-dist 6 48 3
$god_ set-dist 6 49 2
$god_ set-dist 7 8 2
$god_ set-dist 7 9 3
$god_ set-dist 7 10 2
$god_ set-dist 7 11 3
$god_ set-dist 7 12 3
$god_ set-dist 7 13 3
$god_ set-dist 7 14 1
$god_ set-dist 7 15 1
$god_ set-dist 7 16 1
$god_ set-dist 7 17 3
$god_ set-dist 7 18 2
$god_ set-dist 7 19 1
$god_ set-dist 7 20 1
$god_ set-dist 7 21 2
$god_ set-dist 7 22 2
$god_ set-dist 7 23 2
$god_ set-dist 7 24 1
$god_ set-dist 7 25 1
$god_ set-dist 7 26 3
$god_ set-dist 7 27 2
$god_ set-dist 7 28 1
$god_ set-dist 7 29 3
$god_ set-dist 7 30 2
$god_ set-dist 7 31 2
$god_ set-dist 7 32 2
$god_ set-dist 7 33 1
$god_ set-dist 7 34 2
$god_ set-dist 7 35 2
$god_ set-dist 7 36 1
$god_ set-dist 7 37 1
$god_ set-dist 7 38 3
$god_ set-dist 7 39 1
$god_ set-dist 7 40 1
$god_ set-dist 7 41 2
$god_ set-dist 7 42 2
$god_ set-dist 7 43 1
$god_ set-dist 7 44 2
$god_ set-dist 7 45 1
$god_ set-dist 7 46 3
$god_ set-dist 7 47 2
$god_ set-dist 7 48 1
$god_ set-dist 7 49 3
$god_ set-dist 8 9 3
$god_ set-dist 8 10 2
$god_ set-dist 8 11 3
$god_ set-dist 8 12 3
$god_ set-dist 8 13 3
$god_ set-dist 8 14 1
$god_ set-dist 8 15 1
$god_ set-dist 8 16 1
$god_ set-dist 8 17 3
$god_ set-dist 8 18 1
$god_ set-dist 8 19 2
$god_ set-dist 8 20 1
$god_ set-dist 8 21 1
$god_ set-dist 8 22 2
$god_ set-dist 8 23 2
$god_ set-dist 8 24 2
$god_ set-dist 8 25 1
$god_ set-dist 8 26 2
$god_ set-dist 8 27 2
$god_ set-dist 8 28 1
$god_ set-dist 8 29 3
$god_ set-dist 8 30 1
$god_ set-dist 8 31 2
$god_ set-dist 8 32 1
$god_ set-dist 8 33 2
$god_ set-dist 8 34 1
$god_ set-dist 8 35 2
$god_ set-dist 8 36 1
$god_ set-dist 8 37 2
$god_ set-dist 8 38 3
$god_ set-dist 8 39 1
$god_ set-dist 8 40 1
$god_ set-dist 8 41 2
$god_ set-dist 8 42 2
$god_ set-dist 8 43 2
$god_ set-dist 8 44 1
$god_ set-dist 8 45 1
$god_ set-dist 8 46 1
$god_ set-dist 8 47 2
$god_ set-dist 8 48 1
$god_ set-dist 8 49 3
$god_ set-dist 9 10 1
$god_ set-dist 9 11 1
$god_ set-dist 9 12 1
$god_ set-dist 9 13 1
$god_ set-dist 9 14 3
$god_ set-dist 9 15 3
$god_ set-dist 9 16 4
$god_ set-dist 9 17 1
$god_ set-dist 9 18 3
$god_ set-dist 9 19 3
$god_ set-dist 9 20 3
$god_ set-dist 9 21 3
$god_ set-dist 9 22 1
$god_ set-dist 9 23 2
$god_ set-dist 9 24 3
$god_ set-dist 9 25 3
$god_ set-dist 9 26 1
$god_ set-dist 9 27 2
$god_ set-dist 9 28 3
$god_ set-dist 9 29 1
$god_ set-dist 9 30 2
$god_ set-dist 9 31 1
$god_ set-dist 9 32 2
$god_ set-dist 9 33 4
$god_ set-dist 9 34 2
$god_ set-dist 9 35 2
$god_ set-dist 9 36 3
$god_ set-dist 9 37 3
$god_ set-dist 9 38 1
$god_ set-dist 9 39 2
$god_ set-dist 9 40 2
$god_ set-dist 9 41 1
$god_ set-dist 9 42 1
$god_ set-dist 9 43 3
$god_ set-dist 9 44 2
$god_ set-dist 9 45 3
$god_ set-dist 9 46 2
$god_ set-dist 9 47 2
$god_ set-dist 9 48 3
$god_ set-dist 9 49 1
$god_ set-dist 10 11 2
$god_ set-dist 10 12 1
$god_ set-dist 10 13 1
$god_ set-dist 10 14 2
$god_ set-dist 10 15 2
$god_ set-dist 10 16 3
$god_ set-dist 10 17 2
$god_ set-dist 10 18 2
$god_ set-dist 10 19 2
$god_ set-dist 10 20 2
$god_ set-dist 10 21 2
$god_ set-dist 10 22 1
$god_ set-dist 10 23 1
$god_ set-dist 10 24 2
$god_ set-dist 10 25 2
$god_ set-dist 10 26 1
$god_ set-dist 10 27 2
$god_ set-dist 10 28 2
$god_ set-dist 10 29 1
$god_ set-dist 10 30 2
$god_ set-dist 10 31 1
$god_ set-dist 10 32 1
$god_ set-dist 10 33 3
$god_ set-dist 10 34 1
$god_ set-dist 10 35 2
$god_ set-dist 10 36 2
$god_ set-dist 10 37 2
$god_ set-dist 10 38 2
$god_ set-dist 10 39 1
$god_ set-dist 10 40 2
$god_ set-dist 10 41 1
$god_ set-dist 10 42 1
$god_ set-dist 10 43 2
$god_ set-dist 10 44 1
$god_ set-dist 10 45 2
$god_ set-dist 10 46 2
$god_ set-dist 10 47 1
$god_ set-dist 10 48 2
$god_ set-dist 10 49 2
$god_ set-dist 11 12 1
$god_ set-dist 11 13 1
$god_ set-dist 11 14 3
$god_ set-dist 11 15 3
$god_ set-dist 11 16 3
$god_ set-dist 11 17 1
$god_ set-dist 11 18 3
$god_ set-dist 11 19 2
$god_ set-dist 11 20 2
$god_ set-dist 11 21 3
$god_ set-dist 11 22 1
$god_ set-dist 11 23 1
$god_ set-dist 11 24 3
$god_ set-dist 11 25 3
$god_ set-dist 11 26 2
$god_ set-dist 11 27 2
$god_ set-dist 11 28 3
$god_ set-dist 11 29 1
$god_ set-dist 11 30 3
$god_ set-dist 11 31 2
$god_ set-dist 11 32 2
$god_ set-dist 11 33 4
$god_ set-dist 11 34 3
$god_ set-dist 11 35 1
$god_ set-dist 11 36 3
$god_ set-dist 11 37 2
$god_ set-dist 11 38 1
$god_ set-dist 11 39 2
$god_ set-dist 11 40 2
$god_ set-dist 11 41 1
$god_ set-dist 11 42 1
$god_ set-dist 11 43 3
$god_ set-dist 11 44 2
$god_ set-dist 11 45 3
$god_ set-dist 11 46 3
$god_ set-dist 11 47 2
$god_ set-dist 11 48 3
$god_ set-dist 11 49 1
$god_ set-dist 12 13 1
$god_ set-dist 12 14 3
$god_ set-dist 12 15 3
$god_ set-dist 12 16 3
$god_ set-dist 12 17 1
$god_ set-dist 12 18 3
$god_ set-dist 12 19 2
$god_ set-dist 12 20 2
$god_ set-dist 12 21 3
$god_ set-dist 12 22 1
$god_ set-dist 12 23 1
$god_ set-dist 12 24 3
$god_ set-dist 12 25 3
$god_ set-dist 12 26 2
$god_ set-dist 12 27 2
$god_ set-dist 12 28 3
$god_ set-dist 12 29 1
$god_ set-dist 12 30 3
$god_ set-dist 12 31 2
$god_ set-dist 12 32 2
$god_ set-dist 12 33 4
$god_ set-dist 12 34 2
$god_ set-dist 12 35 1
$god_ set-dist 12 36 3
$god_ set-dist 12 37 2
$god_ set-dist 12 38 1
$god_ set-dist 12 39 2
$god_ set-dist 12 40 2
$god_ set-dist 12 41 1
$god_ set-dist 12 42 1
$god_ set-dist 12 43 3
$god_ set-dist 12 44 2
$god_ set-dist 12 45 3
$god_ set-dist 12 46 3
$god_ set-dist 12 47 2
$god_ set-dist 12 48 3
$god_ set-dist 12 49 1
$god_ set-dist 13 14 3
$god_ set-dist 13 15 3
$god_ set-dist 13 16 4
$god_ set-dist 13 17 1
$god_ set-dist 13 18 3
$god_ set-dist 13 19 3
$god_ set-dist 13 20 3
$god_ set-dist 13 21 3
$god_ set-dist 13 22 1
$god_ set-dist 13 23 2
$god_ set-dist 13 24 3
$god_ set-dist 13 25 3
$god_ set-dist 13 26 1
$god_ set-dist 13 27 2
$god_ set-dist 13 28 3
$god_ set-dist 13 29 1
$god_ set-dist 13 30 2
$god_ set-dist 13 31 1
$god_ set-dist 13 32 2
$god_ set-dist 13 33 4
$god_ set-dist 13 34 2
$god_ set-dist 13 35 2
$god_ set-dist 13 36 3
$god_ set-dist 13 37 3
$god_ set-dist 13 38 1
$god_ set-dist 13 39 2
$god_ set-dist 13 40 2
$god_ set-dist 13 41 1
$god_ set-dist 13 42 1
$god_ set-dist 13 43 3
$god_ set-dist 13 44 2
$god_ set-dist 13 45 3
$god_ set-dist 13 46 2
$god_ set-dist 13 47 2
$god_ set-dist 13 48 3
$god_ set-dist 13 49 2
$god_ set-dist 14 15 1
$god_ set-dist 14 16 1
$god_ set-dist 14 17 3
$god_ set-dist 14 18 1
$god_ set-dist 14 19 2
$god_ set-dist 14 20 1
$god_ set-dist 14 21 1
$god_ set-dist 14 22 3
$god_ set-dist 14 23 2
$god_ set-dist 14 24 2
$god_ set-dist 14 25 1
$god_ set-dist 14 26 2
$god_ set-dist 14 27 3
$god_ set-dist 14 28 1
$god_ set-dist 14 29 3
$god_ set-dist 14 30 2
$god_ set-dist 14 31 2
$god_ set-dist 14 32 2
$god_ set-dist 14 33 1
$god_ set-dist 14 34 2
$god_ set-dist 14 35 3
$god_ set-dist 14 36 1
$god_ set-dist 14 37 2
$god_ set-dist 14 38 4
$god_ set-dist 14 39 2
$god_ set-dist 14 40 2
$god_ set-dist 14 41 3
$god_ set-dist 14 42 2
$god_ set-dist 14 43 2
$god_ set-dist 14 44 2
$god_ set-dist 14 45 1
$god_ set-dist 14 46 2
$god_ set-dist 14 47 2
$god_ set-dist 14 48 1
$god_ set-dist 14 49 3
$god_ set-dist 15 16 1
$god_ set-dist 15 17 3
$god_ set-dist 15 18 2
$god_ set-dist 15 19 2
$god_ set-dist 15 20 1
$god_ set-dist 15 21 1
$god_ set-dist 15 22 2
$god_ set-dist 15 23 2
$god_ set-dist 15 24 1
$god_ set-dist 15 25 1
$god_ set-dist 15 26 2
$god_ set-dist 15 27 2
$god_ set-dist 15 28 1
$god_ set-dist 15 29 3
$god_ set-dist 15 30 1
$god_ set-dist 15 31 2
$god_ set-dist 15 32 1
$god_ set-dist 15 33 1
$god_ set-dist 15 34 1
$god_ set-dist 15 35 2
$god_ set-dist 15 36 1
$god_ set-dist 15 37 2
$god_ set-dist 15 38 3
$god_ set-dist 15 39 1
$god_ set-dist 15 40 1
$god_ set-dist 15 41 2
$god_ set-dist 15 42 2
$god_ set-dist 15 43 1
$god_ set-dist 15 44 2
$god_ set-dist 15 45 1
$god_ set-dist 15 46 2
$god_ set-dist 15 47 1
$god_ set-dist 15 48 1
$god_ set-dist 15 49 3
$god_ set-dist 16 17 4
$god_ set-dist 16 18 2
$god_ set-dist 16 19 2
$god_ set-dist 16 20 1
$god_ set-dist 16 21 1
$god_ set-dist 16 22 3
$god_ set-dist 16 23 2
$god_ set-dist 16 24 1
$god_ set-dist 16 25 1
$god_ set-dist 16 26 3
$god_ set-dist 16 27 2
$god_ set-dist 16 28 1
$god_ set-dist 16 29 4
$god_ set-dist 16 30 2
$god_ set-dist 16 31 3
$god_ set-dist 16 32 2
$god_ set-dist 16 33 1
$god_ set-dist 16 34 2
$god_ set-dist 16 35 3
$god_ set-dist 16 36 1
$god_ set-dist 16 37 2
$god_ set-dist 16 38 4
$god_ set-dist 16 39 2
$god_ set-dist 16 40 2
$god_ set-dist 16 41 3
$god_ set-dist 16 42 3
$god_ set-dist 16 43 1
$god_ set-dist 16 44 2
$god_ set-dist 16 45 1
$god_ set-dist 16 46 2
$god_ set-dist 16 47 2
$god_ set-dist 16 48 1
$god_ set-dist 16 49 3
$god_ set-dist 17 18 3
$god_ set-dist 17 19 3
$god_ set-dist 17 20 3
$god_ set-dist 17 21 3
$god_ set-dist 17 22 1
$god_ set-dist 17 23 2
$god_ set-dist 17 24 3
$god_ set-dist 17 25 3
$god_ set-dist 17 26 2
$god_ set-dist 17 27 2
$god_ set-dist 17 28 3
$god_ set-dist 17 29 1
$god_ set-dist 17 30 3
$god_ set-dist 17 31 2
$god_ set-dist 17 32 2
$god_ set-dist 17 33 4
$god_ set-dist 17 34 3
$god_ set-dist 17 35 2
$god_ set-dist 17 36 3
$god_ set-dist 17 37 3
$god_ set-dist 17 38 1
$god_ set-dist 17 39 2
$god_ set-dist 17 40 2
$god_ set-dist 17 41 1
$god_ set-dist 17 42 1
$god_ set-dist 17 43 3
$god_ set-dist 17 44 2
$god_ set-dist 17 45 3
$god_ set-dist 17 46 3
$god_ set-dist 17 47 2
$god_ set-dist 17 48 3
$god_ set-dist 17 49 1
$god_ set-dist 18 19 3
$god_ set-dist 18 20 2
$god_ set-dist 18 21 1
$god_ set-dist 18 22 3
$god_ set-dist 18 23 3
$god_ set-dist 18 24 2
$god_ set-dist 18 25 1
$god_ set-dist 18 26 2
$god_ set-dist 18 27 3
$god_ set-dist 18 28 2
$god_ set-dist 18 29 3
$god_ set-dist 18 30 1
$god_ set-dist 18 31 2
$god_ set-dist 18 32 1
$god_ set-dist 18 33 2
$god_ set-dist 18 34 1
$god_ set-dist 18 35 3
$god_ set-dist 18 36 1
$god_ set-dist 18 37 3
$god_ set-dist 18 38 4
$god_ set-dist 18 39 2
$god_ set-dist 18 40 2
$god_ set-dist 18 41 3
$god_ set-dist 18 42 2
$god_ set-dist 18 43 2
$god_ set-dist 18 44 1
$god_ set-dist 18 45 2
$god_ set-dist 18 46 1
$god_ set-dist 18 47 2
$god_ set-dist 18 48 2
$god_ set-dist 18 49 3
$god_ set-dist 19 20 1
$god_ set-dist 19 21 2
$god_ set-dist 19 22 2
$god_ set-dist 19 23 1
$god_ set-dist 19 24 1
$god_ set-dist 19 25 2
$god_ set-dist 19 26 3
$god_ set-dist 19 27 1
$god_ set-dist 19 28 2
$god_ set-dist 19 29 3
$god_ set-dist 19 30 2
$god_ set-dist 19 31 3
$god_ set-dist 19 32 2
$god_ set-dist 19 33 2
$god_ set-dist 19 34 2
$god_ set-dist 19 35 1
$god_ set-dist 19 36 2
$god_ set-dist 19 37 1
$god_ set-dist 19 38 3
$god_ set-dist 19 39 2
$god_ set-dist 19 40 1
$god_ set-dist 19 41 2
$god_ set-dist 19 42 2
$god_ set-dist 19 43 1
$god_ set-dist 19 44 3
$god_ set-dist 19 45 2
$god_ set-dist 19 46 3
$god_ set-dist 19 47 1
$god_ set-dist 19 48 1
$god_ set-dist 19 49 2
$god_ set-dist 20 21 1
$god_ set-dist 20 22 2
$god_ set-dist 20 23 1
$god_ set-dist 20 24 1
$god_ set-dist 20 25 1
$god_ set-dist 20 26 2
$god_ set-dist 20 27 2
$god_ set-dist 20 28 1
$god_ set-dist 20 29 3
$god_ set-dist 20 30 1
$god_ set-dist 20 31 2
$god_ set-dist 20 32 1
$god_ set-dist 20 33 2
$god_ set-dist 20 34 1
$god_ set-dist 20 35 2
$god_ set-dist 20 36 1
$god_ set-dist 20 37 1
$god_ set-dist 20 38 3
$god_ set-dist 20 39 1
$god_ set-dist 20 40 1
$god_ set-dist 20 41 2
$god_ set-dist 20 42 2
$god_ set-dist 20 43 1
$god_ set-dist 20 44 2
$god_ set-dist 20 45 1
$god_ set-dist 20 46 2
$god_ set-dist 20 47 1
$god_ set-dist 20 48 1
$god_ set-dist 20 49 2
$god_ set-dist 21 22 2
$god_ set-dist 21 23 2
$god_ set-dist 21 24 2
$god_ set-dist 21 25 1
$god_ set-dist 21 26 2
$god_ set-dist 21 27 2
$god_ set-dist 21 28 1
$god_ set-dist 21 29 3
$god_ set-dist 21 30 1
$god_ set-dist 21 31 2
$god_ set-dist 21 32 1
$god_ set-dist 21 33 1
$god_ set-dist 21 34 1
$god_ set-dist 21 35 3
$god_ set-dist 21 36 1
$god_ set-dist 21 37 2
$god_ set-dist 21 38 3
$god_ set-dist 21 39 1
$god_ set-dist 21 40 2
$god_ set-dist 21 41 2
$god_ set-dist 21 42 2
$god_ set-dist 21 43 2
$god_ set-dist 21 44 1
$god_ set-dist 21 45 1
$god_ set-dist 21 46 1
$god_ set-dist 21 47 2
$god_ set-dist 21 48 1
$god_ set-dist 21 49 3
$god_ set-dist 22 23 1
$god_ set-dist 22 24 2
$god_ set-dist 22 25 3
$god_ set-dist 22 26 1
$god_ set-dist 22 27 2
$god_ set-dist 22 28 3
$god_ set-dist 22 29 1
$god_ set-dist 22 30 2
$god_ set-dist 22 31 1
$god_ set-dist 22 32 2
$god_ set-dist 22 33 3
$god_ set-dist 22 34 2
$god_ set-dist 22 35 1
$god_ set-dist 22 36 2
$god_ set-dist 22 37 2
$god_ set-dist 22 38 1
$god_ set-dist 22 39 1
$god_ set-dist 22 40 2
$god_ set-dist 22 41 1
$god_ set-dist 22 42 1
$god_ set-dist 22 43 2
$god_ set-dist 22 44 2
$god_ set-dist 22 45 2
$god_ set-dist 22 46 2
$god_ set-dist 22 47 1
$god_ set-dist 22 48 2
$god_ set-dist 22 49 1
$god_ set-dist 23 24 2
$god_ set-dist 23 25 2
$god_ set-dist 23 26 2
$god_ set-dist 23 27 1
$god_ set-dist 23 28 2
$god_ set-dist 23 29 2
$god_ set-dist 23 30 2
$god_ set-dist 23 31 2
$god_ set-dist 23 32 2
$god_ set-dist 23 33 3
$god_ set-dist 23 34 2
$god_ set-dist 23 35 1
$god_ set-dist 23 36 2
$god_ set-dist 23 37 1
$god_ set-dist 23 38 2
$god_ set-dist 23 39 1
$god_ set-dist 23 40 1
$god_ set-dist 23 41 1
$god_ set-dist 23 42 1
$god_ set-dist 23 43 2
$god_ set-dist 23 44 2
$god_ set-dist 23 45 2
$god_ set-dist 23 46 3
$god_ set-dist 23 47 1
$god_ set-dist 23 48 2
$god_ set-dist 23 49 1
$god_ set-dist 24 25 2
$god_ set-dist 24 26 2
$god_ set-dist 24 27 1
$god_ set-dist 24 28 2
$god_ set-dist 24 29 3
$god_ set-dist 24 30 2
$god_ set-dist 24 31 2
$god_ set-dist 24 32 2
$god_ set-dist 24 33 1
$god_ set-dist 24 34 2
$god_ set-dist 24 35 2
$god_ set-dist 24 36 1
$god_ set-dist 24 37 1
$god_ set-dist 24 38 3
$god_ set-dist 24 39 1
$god_ set-dist 24 40 1
$god_ set-dist 24 41 2
$god_ set-dist 24 42 2
$god_ set-dist 24 43 1
$god_ set-dist 24 44 2
$god_ set-dist 24 45 1
$god_ set-dist 24 46 3
$god_ set-dist 24 47 1
$god_ set-dist 24 48 1
$god_ set-dist 24 49 3
$god_ set-dist 25 26 2
$god_ set-dist 25 27 3
$god_ set-dist 25 28 1
$god_ set-dist 25 29 3
$god_ set-dist 25 30 2
$god_ set-dist 25 31 2
$god_ set-dist 25 32 2
$god_ set-dist 25 33 1
$god_ set-dist 25 34 2
$god_ set-dist 25 35 3
$god_ set-dist 25 36 1
$god_ set-dist 25 37 2
$god_ set-dist 25 38 4
$god_ set-dist 25 39 2
$god_ set-dist 25 40 2
$god_ set-dist 25 41 3
$god_ set-dist 25 42 2
$god_ set-dist 25 43 2
$god_ set-dist 25 44 2
$god_ set-dist 25 45 1
$god_ set-dist 25 46 2
$god_ set-dist 25 47 2
$god_ set-dist 25 48 1
$god_ set-dist 25 49 3
$god_ set-dist 26 27 2
$god_ set-dist 26 28 2
$god_ set-dist 26 29 1
$god_ set-dist 26 30 1
$god_ set-dist 26 31 1
$god_ set-dist 26 32 1
$god_ set-dist 26 33 3
$god_ set-dist 26 34 1
$god_ set-dist 26 35 2
$god_ set-dist 26 36 2
$god_ set-dist 26 37 3
$god_ set-dist 26 38 2
$god_ set-dist 26 39 2
$god_ set-dist 26 40 2
$god_ set-dist 26 41 1
$god_ set-dist 26 42 1
$god_ set-dist 26 43 2
$god_ set-dist 26 44 1
$god_ set-dist 26 45 2
$god_ set-dist 26 46 1
$god_ set-dist 26 47 2
$god_ set-dist 26 48 2
$god_ set-dist 26 49 2
$god_ set-dist 27 28 3
$god_ set-dist 27 29 2
$god_ set-dist 27 30 2
$god_ set-dist 27 31 2
$god_ set-dist 27 32 2
$god_ set-dist 27 33 2
$god_ set-dist 27 34 2
$god_ set-dist 27 35 1
$god_ set-dist 27 36 2
$god_ set-dist 27 37 1
$god_ set-dist 27 38 2
$god_ set-dist 27 39 1
$god_ set-dist 27 40 1
$god_ set-dist 27 41 1
$god_ set-dist 27 42 2
$god_ set-dist 27 43 1
$god_ set-dist 27 44 2
$god_ set-dist 27 45 2
$god_ set-dist 27 46 3
$god_ set-dist 27 47 1
$god_ set-dist 27 48 2
$god_ set-dist 27 49 2
$god_ set-dist 28 29 3
$god_ set-dist 28 30 2
$god_ set-dist 28 31 2
$god_ set-dist 28 32 2
$god_ set-dist 28 33 1
$god_ set-dist 28 34 2
$god_ set-dist 28 35 3
$god_ set-dist 28 36 1
$god_ set-dist 28 37 2
$god_ set-dist 28 38 4
$god_ set-dist 28 39 2
$god_ set-dist 28 40 2
$god_ set-dist 28 41 3
$god_ set-dist 28 42 2
$god_ set-dist 28 43 2
$god_ set-dist 28 44 2
$god_ set-dist 28 45 1
$god_ set-dist 28 46 2
$god_ set-dist 28 47 2
$god_ set-dist 28 48 1
$god_ set-dist 28 49 3
$god_ set-dist 29 30 2
$god_ set-dist 29 31 1
$god_ set-dist 29 32 2
$god_ set-dist 29 33 4
$god_ set-dist 29 34 2
$god_ set-dist 29 35 2
$god_ set-dist 29 36 3
$god_ set-dist 29 37 3
$god_ set-dist 29 38 2
$god_ set-dist 29 39 2
$god_ set-dist 29 40 2
$god_ set-dist 29 41 1
$god_ set-dist 29 42 1
$god_ set-dist 29 43 3
$god_ set-dist 29 44 2
$god_ set-dist 29 45 3
$god_ set-dist 29 46 2
$god_ set-dist 29 47 2
$god_ set-dist 29 48 3
$god_ set-dist 29 49 2
$god_ set-dist 30 31 1
$god_ set-dist 30 32 1
$god_ set-dist 30 33 2
$god_ set-dist 30 34 1
$god_ set-dist 30 35 3
$god_ set-dist 30 36 1
$god_ set-dist 30 37 2
$god_ set-dist 30 38 3
$god_ set-dist 30 39 1
$god_ set-dist 30 40 2
$god_ set-dist 30 41 2
$god_ set-dist 30 42 2
$god_ set-dist 30 43 2
$god_ set-dist 30 44 1
$god_ set-dist 30 45 1
$god_ set-dist 30 46 1
$god_ set-dist 30 47 2
$god_ set-dist 30 48 2
$god_ set-dist 30 49 3
$god_ set-dist 31 32 1
$god_ set-dist 31 33 3
$god_ set-dist 31 34 1
$god_ set-dist 31 35 2
$god_ set-dist 31 36 2
$god_ set-dist 31 37 2
$god_ set-dist 31 38 2
$god_ set-dist 31 39 1
$god_ set-dist 31 40 2
$god_ set-dist 31 41 1
$god_ set-dist 31 42 1
$god_ set-dist 31 43 2
$god_ set-dist 31 44 1
$god_ set-dist 31 45 2
$god_ set-dist 31 46 1
$god_ set-dist 31 47 2
$god_ set-dist 31 48 2
$god_ set-dist 31 49 2
$god_ set-dist 32 33 2
$god_ set-dist 32 34 1
$god_ set-dist 32 35 2
$god_ set-dist 32 36 1
$god_ set-dist 32 37 2
$god_ set-dist 32 38 3
$god_ set-dist 32 39 1
$god_ set-dist 32 40 1
$god_ set-dist 32 41 2
$god_ set-dist 32 42 1
$god_ set-dist 32 43 1
$god_ set-dist 32 44 1
$god_ set-dist 32 45 1
$god_ set-dist 32 46 1
$god_ set-dist 32 47 1
$god_ set-dist 32 48 1
$god_ set-dist 32 49 2
$god_ set-dist 33 34 2
$god_ set-dist 33 35 3
$god_ set-dist 33 36 1
$god_ set-dist 33 37 2
$god_ set-dist 33 38 4
$god_ set-dist 33 39 2
$god_ set-dist 33 40 2
$god_ set-dist 33 41 3
$god_ set-dist 33 42 3
$god_ set-dist 33 43 2
$god_ set-dist 33 44 2
$god_ set-dist 33 45 1
$god_ set-dist 33 46 2
$god_ set-dist 33 47 2
$god_ set-dist 33 48 1
$god_ set-dist 33 49 4
$god_ set-dist 34 35 3
$god_ set-dist 34 36 1
$god_ set-dist 34 37 2
$god_ set-dist 34 38 3
$god_ set-dist 34 39 1
$god_ set-dist 34 40 2
$god_ set-dist 34 41 2
$god_ set-dist 34 42 2
$god_ set-dist 34 43 2
$god_ set-dist 34 44 1
$god_ set-dist 34 45 1
$god_ set-dist 34 46 1
$god_ set-dist 34 47 2
$god_ set-dist 34 48 2
$god_ set-dist 34 49 3
$god_ set-dist 35 36 2
$god_ set-dist 35 37 1
$god_ set-dist 35 38 2
$god_ set-dist 35 39 2
$god_ set-dist 35 40 1
$god_ set-dist 35 41 1
$god_ set-dist 35 42 2
$god_ set-dist 35 43 2
$god_ set-dist 35 44 2
$god_ set-dist 35 45 2
$god_ set-dist 35 46 3
$god_ set-dist 35 47 1
$god_ set-dist 35 48 2
$god_ set-dist 35 49 1
$god_ set-dist 36 37 2
$god_ set-dist 36 38 3
$god_ set-dist 36 39 1
$god_ set-dist 36 40 1
$god_ set-dist 36 41 2
$god_ set-dist 36 42 2
$god_ set-dist 36 43 1
$god_ set-dist 36 44 2
$god_ set-dist 36 45 1
$god_ set-dist 36 46 2
$god_ set-dist 36 47 1
$god_ set-dist 36 48 1
$god_ set-dist 36 49 3
$god_ set-dist 37 38 3
$god_ set-dist 37 39 1
$god_ set-dist 37 40 1
$god_ set-dist 37 41 2
$god_ set-dist 37 42 2
$god_ set-dist 37 43 1
$god_ set-dist 37 44 2
$god_ set-dist 37 45 1
$god_ set-dist 37 46 3
$god_ set-dist 37 47 1
$god_ set-dist 37 48 1
$god_ set-dist 37 49 2
$god_ set-dist 38 39 2
$god_ set-dist 38 40 2
$god_ set-dist 38 41 1
$god_ set-dist 38 42 2
$god_ set-dist 38 43 3
$god_ set-dist 38 44 3
$god_ set-dist 38 45 3
$god_ set-dist 38 46 3
$god_ set-dist 38 47 2
$god_ set-dist 38 48 3
$god_ set-dist 38 49 1
$god_ set-dist 39 40 1
$god_ set-dist 39 41 1
$god_ set-dist 39 42 1
$god_ set-dist 39 43 1
$god_ set-dist 39 44 1
$god_ set-dist 39 45 1
$god_ set-dist 39 46 2
$god_ set-dist 39 47 1
$god_ set-dist 39 48 1
$god_ set-dist 39 49 2
$god_ set-dist 40 41 1
$god_ set-dist 40 42 2
$god_ set-dist 40 43 1
$god_ set-dist 40 44 2
$god_ set-dist 40 45 1
$god_ set-dist 40 46 2
$god_ set-dist 40 47 1
$god_ set-dist 40 48 1
$god_ set-dist 40 49 2
$god_ set-dist 41 42 1
$god_ set-dist 41 43 2
$god_ set-dist 41 44 2
$god_ set-dist 41 45 2
$god_ set-dist 41 46 2
$god_ set-dist 41 47 1
$god_ set-dist 41 48 2
$god_ set-dist 41 49 1
$god_ set-dist 42 43 2
$god_ set-dist 42 44 1
$god_ set-dist 42 45 2
$god_ set-dist 42 46 2
$god_ set-dist 42 47 1
$god_ set-dist 42 48 2
$god_ set-dist 42 49 2
$god_ set-dist 43 44 2
$god_ set-dist 43 45 1
$god_ set-dist 43 46 2
$god_ set-dist 43 47 1
$god_ set-dist 43 48 1
$god_ set-dist 43 49 3
$god_ set-dist 44 45 2
$god_ set-dist 44 46 1
$god_ set-dist 44 47 2
$god_ set-dist 44 48 2
$god_ set-dist 44 49 2
$god_ set-dist 45 46 2
$god_ set-dist 45 47 1
$god_ set-dist 45 48 1
$god_ set-dist 45 49 3
$god_ set-dist 46 47 2
$god_ set-dist 46 48 2
$god_ set-dist 46 49 3
$god_ set-dist 47 48 1
$god_ set-dist 47 49 2
$god_ set-dist 48 49 3
$ns_ at 1.000000000000 "$node_(0) setdest 368.994740620466 272.239411826198 1.799476852708"
$ns_ at 1.000000000000 "$node_(1) setdest 465.038378573484 543.620215894888 1.062695935145"
$ns_ at 1.000000000000 "$node_(2) setdest 517.600066852945 52.706076335829 1.755843802173"
$ns_ at 1.000000000000 "$node_(3) setdest 563.162915040247 231.953942770236 0.836406596930"
$ns_ at 1.000000000000 "$node_(4) setdest 129.896928087939 618.826564698463 0.836796343805"
$ns_ at 1.000000000000 "$node_(5) setdest 150.441630285200 147.706773689252 0.406826068792"
$ns_ at 1.000000000000 "$node_(6) setdest 166.013323033874 407.030238526009 1.611586202683"
$ns_ at 1.000000000000 "$node_(7) setdest 356.580274456343 18.506745006750 1.986645245743"
$ns_ at 1.000000000000 "$node_(8) setdest 70.342036495251 344.162131141807 0.305023691488"
$ns_ at 1.000000000000 "$node_(9) setdest 567.288761417396 349.157012397111 1.578389011394"
$ns_ at 1.000000000000 "$node_(10) setdest 142.792677113525 396.498086033762 0.863750412515"
$ns_ at 1.000000000000 "$node_(11) setdest 588.494031738201 667.317567912874 1.535052717033"
$ns_ at 1.000000000000 "$node_(12) setdest 320.146750870749 313.383210965830 1.857456306543"
$ns_ at 1.000000000000 "$node_(13) setdest 573.018502431886 426.963978563088 1.017455559604"
$ns_ at 1.000000000000 "$node_(14) setdest 653.943555026841 20.633758593309 0.310595326732"
$ns_ at 1.000000000000 "$node_(15) setdest 387.898637839341 61.900478169625 0.422088290051"
$ns_ at 1.000000000000 "$node_(16) setdest 15.033172729169 4.700452607985 0.593856007681"
$ns_ at 1.000000000000 "$node_(17) setdest 35.905745955742 80.160352101865 0.157855343268"
$ns_ at 1.000000000000 "$node_(18) setdest 504.891754532579 352.062534666389 1.805076844398"
$ns_ at 1.000000000000 "$node_(19) setdest 6.467646294104 261.426768665381 1.453303415395"
$ns_ at 1.000000000000 "$node_(20) setdest 547.106056052274 576.997350618581 1.712368025485"
$ns_ at 1.000000000000 "$node_(21) setdest 496.006704286997 625.649443346794 1.069920233577"
$ns_ at 1.000000000000 "$node_(22) setdest 329.138446122128 55.698900352086 0.983211229674"
$ns_ at 1.000000000000 "$node_(23) setdest 323.919847578585 362.722887298176 0.377562867602"
$ns_ at 1.000000000000 "$node_(24) setdest 69.315805776903 86.047435749291 0.928963581385"
$ns_ at 1.000000000000 "$node_(25) setdest 428.596167696641 586.452109427666 0.848514331153"
$ns_ at 1.000000000000 "$node_(26) setdest 457.657607475478 330.727035939047 0.914528487302"
$ns_ at 1.000000000000 "$node_(27) setdest 353.811772838898 210.515864930884 1.174041754147"
$ns_ at 1.000000000000 "$node_(28) setdest 653.258391397015 486.066088485938 0.010100481590"
$ns_ at 1.000000000000 "$node_(29) setdest 464.800358898583 131.062510826393 0.053669968425"
$ns_ at 1.000000000000 "$node_(30) setdest 213.241866851297 596.401827626764 1.901500022857"
$ns_ at 1.000000000000 "$node_(31) setdest 254.310705754121 472.473105598336 1.568910835854"
$ns_ at 1.000000000000 "$node_(32) setdest 52.236050652596 637.764564944671 1.522162978679"
$ns_ at 1.000000000000 "$node_(33) setdest 170.704563734250 557.401566787047 1.661649146495"
$ns_ at 1.000000000000 "$node_(34) setdest 296.777121859985 299.301947992017 0.618442601672"
$ns_ at 1.000000000000 "$node_(35) setdest 375.257953918459 3.586304268323 1.527840863399"
$ns_ at 1.000000000000 "$node_(36) setdest 644.847325714828 622.423986528113 0.466706328344"
$ns_ at 1.000000000000 "$node_(37) setdest 253.511503350547 469.942681530509 1.579322620411"
$ns_ at 1.000000000000 "$node_(38) setdest 74.099378800641 569.694407597752 1.560546928224"
$ns_ at 1.000000000000 "$node_(39) setdest 531.342138908609 436.479728274928 0.851875669134"
$ns_ at 1.000000000000 "$node_(40) setdest 91.303395463877 54.374600027203 1.457568218274"
$ns_ at 1.000000000000 "$node_(41) setdest 302.248378481637 241.866386688363 1.018280851143"
$ns_ at 1.000000000000 "$node_(42) setdest 96.664917412284 354.327665872442 0.430010576603"
$ns_ at 1.000000000000 "$node_(43) setdest 555.278200243568 433.430802131446 1.220814303013"
$ns_ at 1.000000000000 "$node_(44) setdest 192.714047691441 176.499681494183 1.147178333395"
$ns_ at 1.000000000000 "$node_(45) setdest 512.974205705951 642.257202395587 0.636823872677"
$ns_ at 1.000000000000 "$node_(46) setdest 138.660667781117 466.730129525500 1.356134433317"
$ns_ at 1.000000000000 "$node_(47) setdest 194.325009283983 633.035605529185 1.549353548387"
$ns_ at 1.000000000000 "$node_(48) setdest 656.686929345802 177.133742529857 1.324900243799"
$ns_ at 1.000000000000 "$node_(49) setdest 551.678318192505 484.917475206972 0.944432062665"
$ns_ at 1.313199234365 "$god_ set-dist 42 49 1"
$ns_ at 2.131984101656 "$god_ set-dist 1 15 2"
$ns_ at 2.439394202086 "$god_ set-dist 0 28 3"
$ns_ at 2.439394202086 "$god_ set-dist 2 28 2"
$ns_ at 2.439394202086 "$god_ set-dist 9 28 4"
$ns_ at 2.439394202086 "$god_ set-dist 10 28 3"
$ns_ at 2.439394202086 "$god_ set-dist 13 28 4"
$ns_ at 2.439394202086 "$god_ set-dist 17 28 4"
$ns_ at 2.439394202086 "$god_ set-dist 26 28 3"
$ns_ at 2.439394202086 "$god_ set-dist 28 29 4"
$ns_ at 2.439394202086 "$god_ set-dist 28 31 3"
$ns_ at 2.439394202086 "$god_ set-dist 28 42 3"
$ns_ at 2.871161315301 "$god_ set-dist 8 33 1"
$ns_ at 3.025679994887 "$god_ set-dist 14 30 1"
$ns_ at 3.326392566680 "$god_ set-dist 11 33 3"
$ns_ at 3.326392566680 "$god_ set-dist 11 45 2"
$ns_ at 3.326392566680 "$god_ set-dist 12 33 3"
$ns_ at 3.326392566680 "$god_ set-dist 12 45 2"
$ns_ at 3.326392566680 "$god_ set-dist 23 33 2"
$ns_ at 3.326392566680 "$god_ set-dist 23 45 1"
$ns_ at 3.326392566680 "$god_ set-dist 33 49 3"
$ns_ at 3.326392566680 "$god_ set-dist 45 49 2"
$ns_ at 3.346521075131 "$god_ set-dist 7 26 2"
$ns_ at 3.346521075131 "$god_ set-dist 26 37 2"
$ns_ at 3.346521075131 "$god_ set-dist 26 39 1"
$ns_ at 3.531117910153 "$god_ set-dist 8 35 3"
$ns_ at 3.531117910153 "$god_ set-dist 8 40 2"
$ns_ at 3.941106443305 "$god_ set-dist 4 46 1"
$ns_ at 4.379587126020 "$god_ set-dist 24 49 2"
$ns_ at 4.379587126020 "$god_ set-dist 27 49 1"
$ns_ at 4.379587126020 "$god_ set-dist 43 49 2"
$ns_ at 4.842481122922 "$god_ set-dist 25 30 1"
$ns_ at 5.143043763550 "$god_ set-dist 33 43 1"
$ns_ at 5.205234224649 "$god_ set-dist 25 32 1"
$ns_ at 5.276900613187 "$god_ set-dist 19 38 2"
$ns_ at 5.276900613187 "$god_ set-dist 35 38 1"
$ns_ at 5.276900613187 "$god_ set-dist 37 38 2"
$ns_ at 5.722609054350 "$god_ set-dist 7 14 2"
$ns_ at 6.074932659124 "$god_ set-dist 7 47 1"
$ns_ at 6.332428004653 "$god_ set-dist 11 43 2"
$ns_ at 6.332428004653 "$god_ set-dist 12 43 2"
$ns_ at 6.332428004653 "$god_ set-dist 23 43 1"
$ns_ at 6.491514826965 "$god_ set-dist 20 33 1"
$ns_ at 7.155512265574 "$god_ set-dist 12 26 1"
$ns_ at 7.155512265574 "$god_ set-dist 12 30 2"
$ns_ at 7.155512265574 "$god_ set-dist 12 46 2"
$ns_ at 7.342432705077 "$god_ set-dist 0 17 2"
$ns_ at 8.208597517172 "$god_ set-dist 24 33 2"
$ns_ at 8.652312797903 "$god_ set-dist 10 11 1"
$ns_ at 8.652312797903 "$god_ set-dist 11 34 2"
$ns_ at 8.678528190579 "$god_ set-dist 19 20 2"
$ns_ at 8.678528190579 "$god_ set-dist 19 30 3"
$ns_ at 8.678528190579 "$god_ set-dist 19 34 3"
$ns_ at 9.042057509402 "$god_ set-dist 19 31 2"
$ns_ at 9.042057509402 "$god_ set-dist 31 47 1"
$ns_ at 9.488187787730 "$god_ set-dist 14 32 1"
$ns_ at 9.941475490294 "$god_ set-dist 0 4 3"
$ns_ at 9.941475490294 "$god_ set-dist 2 4 2"
$ns_ at 9.941475490294 "$god_ set-dist 4 17 4"
$ns_ at 9.941475490294 "$god_ set-dist 4 42 3"
$ns_ at 9.941475490294 "$god_ set-dist 4 49 4"
$ns_ at 10.072649727747 "$god_ set-dist 4 37 2"
$ns_ at 10.072649727747 "$god_ set-dist 15 37 1"
$ns_ at 10.489864118300 "$god_ set-dist 5 37 1"
$ns_ at 10.540412695002 "$god_ set-dist 19 35 2"
$ns_ at 10.540412695002 "$god_ set-dist 19 38 3"
$ns_ at 10.540662646577 "$god_ set-dist 35 37 2"
$ns_ at 10.540662646577 "$god_ set-dist 37 38 3"
$ns_ at 10.554175716362 "$god_ set-dist 7 46 2"
$ns_ at 10.554175716362 "$god_ set-dist 24 46 2"
$ns_ at 10.554175716362 "$god_ set-dist 36 46 1"
$ns_ at 10.588336226190 "$god_ set-dist 2 14 2"
$ns_ at 10.629843286727 "$god_ set-dist 35 40 2"
$ns_ at 10.928424449728 "$god_ set-dist 10 46 1"
$ns_ at 10.928424449728 "$god_ set-dist 11 46 2"
$ns_ at 10.928424449728 "$god_ set-dist 23 46 2"
$ns_ at 10.961714656874 "$god_ set-dist 2 43 1"
$ns_ at 11.407217591218 "$god_ set-dist 0 3 2"
$ns_ at 11.407217591218 "$god_ set-dist 0 16 2"
$ns_ at 11.407217591218 "$god_ set-dist 0 20 1"
$ns_ at 11.407217591218 "$god_ set-dist 0 28 2"
$ns_ at 11.407217591218 "$god_ set-dist 0 33 2"
$ns_ at 11.407217591218 "$god_ set-dist 3 9 3"
$ns_ at 11.407217591218 "$god_ set-dist 3 13 3"
$ns_ at 11.407217591218 "$god_ set-dist 3 29 3"
$ns_ at 11.407217591218 "$god_ set-dist 6 20 2"
$ns_ at 11.407217591218 "$god_ set-dist 9 16 3"
$ns_ at 11.407217591218 "$god_ set-dist 9 20 2"
$ns_ at 11.407217591218 "$god_ set-dist 9 28 3"
$ns_ at 11.407217591218 "$god_ set-dist 9 33 3"
$ns_ at 11.407217591218 "$god_ set-dist 13 16 3"
$ns_ at 11.407217591218 "$god_ set-dist 13 20 2"
$ns_ at 11.407217591218 "$god_ set-dist 13 28 3"
$ns_ at 11.407217591218 "$god_ set-dist 13 33 3"
$ns_ at 11.407217591218 "$god_ set-dist 16 29 3"
$ns_ at 11.407217591218 "$god_ set-dist 20 29 2"
$ns_ at 11.407217591218 "$god_ set-dist 28 29 3"
$ns_ at 11.407217591218 "$god_ set-dist 29 33 3"
$ns_ at 12.269902121842 "$god_ set-dist 12 30 3"
$ns_ at 12.269902121842 "$god_ set-dist 26 30 2"
$ns_ at 12.860303314930 "$god_ set-dist 17 40 3"
$ns_ at 12.860303314930 "$god_ set-dist 17 41 2"
$ns_ at 13.957065573469 "$god_ set-dist 28 30 1"
$ns_ at 13.957065573469 "$god_ set-dist 28 31 2"
$ns_ at 14.054219762788 "$god_ set-dist 11 48 2"
$ns_ at 14.054219762788 "$god_ set-dist 12 48 2"
$ns_ at 14.054219762788 "$god_ set-dist 23 48 1"
$ns_ at 14.054219762788 "$god_ set-dist 48 49 2"
$ns_ at 14.660587549117 "$god_ set-dist 10 28 2"
$ns_ at 14.660587549117 "$god_ set-dist 17 28 3"
$ns_ at 14.660587549117 "$god_ set-dist 26 28 2"
$ns_ at 14.660587549117 "$god_ set-dist 28 32 1"
$ns_ at 14.660587549117 "$god_ set-dist 28 42 2"
$ns_ at 14.669909098907 "$god_ set-dist 3 31 2"
$ns_ at 14.669909098907 "$god_ set-dist 8 9 2"
$ns_ at 14.669909098907 "$god_ set-dist 8 13 2"
$ns_ at 14.669909098907 "$god_ set-dist 8 29 2"
$ns_ at 14.669909098907 "$god_ set-dist 8 31 1"
$ns_ at 14.669909098907 "$god_ set-dist 16 31 2"
$ns_ at 14.669909098907 "$god_ set-dist 31 33 2"
$ns_ at 15.481795529353 "$god_ set-dist 5 7 1"
$ns_ at 15.998724374844 "$god_ set-dist 25 34 1"
$ns_ at 16.168472696374 "$god_ set-dist 0 4 2"
$ns_ at 16.168472696374 "$god_ set-dist 4 17 3"
$ns_ at 16.168472696374 "$god_ set-dist 4 32 1"
$ns_ at 16.168472696374 "$god_ set-dist 4 42 2"
$ns_ at 16.168472696374 "$god_ set-dist 4 49 3"
$ns_ at 16.246704860075 "$god_ set-dist 9 18 2"
$ns_ at 16.246704860075 "$god_ set-dist 13 18 2"
$ns_ at 16.246704860075 "$god_ set-dist 18 22 2"
$ns_ at 16.246704860075 "$god_ set-dist 18 29 2"
$ns_ at 16.246704860075 "$god_ set-dist 18 31 1"
$ns_ at 16.246704860075 "$god_ set-dist 18 38 3"
$ns_ at 16.246704860075 "$god_ set-dist 18 41 2"
$ns_ at 16.538853092979 "$god_ set-dist 20 44 1"
$ns_ at 16.550829487224 "$god_ set-dist 3 10 2"
$ns_ at 16.550829487224 "$god_ set-dist 10 16 2"
$ns_ at 16.550829487224 "$god_ set-dist 10 20 1"
$ns_ at 16.550829487224 "$god_ set-dist 10 33 2"
$ns_ at 16.712794473438 "$god_ set-dist 20 31 1"
$ns_ at 17.326166145641 "$god_ set-dist 19 34 2"
$ns_ at 17.326166145641 "$god_ set-dist 34 48 1"
$ns_ at 17.706811158249 "$god_ set-dist 29 38 1"
$ns_ at 19.289185325468 "$god_ set-dist 20 46 1"
$ns_ at 19.289185325468 "$god_ set-dist 37 46 2"
$ns_ at 19.464446530370 "$god_ set-dist 3 17 3"
$ns_ at 19.464446530370 "$god_ set-dist 3 26 2"
$ns_ at 19.464446530370 "$god_ set-dist 3 32 1"
$ns_ at 19.464446530370 "$god_ set-dist 3 42 2"
$ns_ at 19.582014307623 "$god_ set-dist 8 12 2"
$ns_ at 19.582014307623 "$god_ set-dist 12 18 2"
$ns_ at 19.582014307623 "$god_ set-dist 12 30 2"
$ns_ at 19.582014307623 "$god_ set-dist 12 31 1"
$ns_ at 20.122407833109 "$god_ set-dist 0 27 1"
$ns_ at 20.122407833109 "$god_ set-dist 6 27 2"
$ns_ at 20.169688081145 "$god_ set-dist 1 28 2"
$ns_ at 20.377502454389 "$god_ set-dist 2 25 2"
$ns_ at 21.354165756473 "$god_ set-dist 9 21 2"
$ns_ at 21.354165756473 "$god_ set-dist 12 21 2"
$ns_ at 21.354165756473 "$god_ set-dist 13 21 2"
$ns_ at 21.354165756473 "$god_ set-dist 21 29 2"
$ns_ at 21.354165756473 "$god_ set-dist 21 31 1"
$ns_ at 21.532768606807 "$god_ set-dist 18 20 1"
$ns_ at 21.532768606807 "$god_ set-dist 18 23 2"
$ns_ at 21.532768606807 "$god_ set-dist 18 37 2"
$ns_ at 22.230718963566 "$god_ set-dist 19 30 2"
$ns_ at 22.230718963566 "$god_ set-dist 30 48 1"
$ns_ at 22.246591242396 "$god_ set-dist 0 45 1"
$ns_ at 22.246591242396 "$god_ set-dist 6 45 2"
$ns_ at 22.246591242396 "$god_ set-dist 9 45 2"
$ns_ at 22.246591242396 "$god_ set-dist 13 45 2"
$ns_ at 22.246591242396 "$god_ set-dist 29 45 2"
$ns_ at 22.361741031395 "$god_ set-dist 1 38 3"
$ns_ at 22.361741031395 "$god_ set-dist 1 41 2"
$ns_ at 22.361741031395 "$god_ set-dist 2 38 2"
$ns_ at 22.361741031395 "$god_ set-dist 2 41 1"
$ns_ at 22.408977331050 "$god_ set-dist 14 27 2"
$ns_ at 22.408977331050 "$god_ set-dist 25 27 2"
$ns_ at 22.408977331050 "$god_ set-dist 27 28 2"
$ns_ at 22.408977331050 "$god_ set-dist 27 48 1"
$ns_ at 23.078162706407 "$god_ set-dist 3 38 3"
$ns_ at 23.078162706407 "$god_ set-dist 4 38 3"
$ns_ at 23.078162706407 "$god_ set-dist 14 38 3"
$ns_ at 23.078162706407 "$god_ set-dist 25 38 3"
$ns_ at 23.078162706407 "$god_ set-dist 28 38 3"
$ns_ at 23.078162706407 "$god_ set-dist 32 38 2"
$ns_ at 23.078162706407 "$god_ set-dist 38 42 1"
$ns_ at 23.078162706407 "$god_ set-dist 38 44 2"
$ns_ at 23.285519819030 "$god_ set-dist 27 46 2"
$ns_ at 23.285519819030 "$god_ set-dist 39 46 1"
$ns_ at 23.490712878614 "$god_ set-dist 7 35 3"
$ns_ at 23.490712878614 "$god_ set-dist 15 35 3"
$ns_ at 23.490712878614 "$god_ set-dist 35 36 3"
$ns_ at 23.490712878614 "$god_ set-dist 35 47 2"
$ns_ at 23.676066146409 "$god_ set-dist 1 9 2"
$ns_ at 23.676066146409 "$god_ set-dist 1 12 2"
$ns_ at 23.676066146409 "$god_ set-dist 1 13 2"
$ns_ at 23.676066146409 "$god_ set-dist 1 22 2"
$ns_ at 23.676066146409 "$god_ set-dist 1 29 2"
$ns_ at 23.676066146409 "$god_ set-dist 1 31 1"
$ns_ at 23.717356444857 "$god_ set-dist 5 46 1"
$ns_ at 24.036044377825 "$god_ set-dist 6 36 2"
$ns_ at 24.036044377825 "$god_ set-dist 36 44 1"
$ns_ at 24.180153514316 "$god_ set-dist 7 25 2"
$ns_ at 24.216372145401 "$god_ set-dist 8 47 1"
$ns_ at 24.475303461910 "$god_ set-dist 1 20 1"
$ns_ at 24.475303461910 "$god_ set-dist 1 23 2"
$ns_ at 24.475303461910 "$god_ set-dist 1 37 2"
$ns_ at 25.400526260170 "$god_ set-dist 22 27 1"
$ns_ at 25.764637025095 "$god_ set-dist 17 33 3"
$ns_ at 25.764637025095 "$god_ set-dist 26 33 2"
$ns_ at 25.764637025095 "$god_ set-dist 32 33 1"
$ns_ at 25.764637025095 "$god_ set-dist 33 38 3"
$ns_ at 25.764637025095 "$god_ set-dist 33 42 2"
$ns_ at 25.941824198563 "$god_ set-dist 0 34 1"
$ns_ at 25.941824198563 "$god_ set-dist 34 35 2"
$ns_ at 25.941824198563 "$god_ set-dist 34 49 2"
$ns_ at 25.975270520068 "$god_ set-dist 45 46 1"
$ns_ at 26.533108017395 "$god_ set-dist 0 48 1"
$ns_ at 26.533108017395 "$god_ set-dist 6 48 2"
$ns_ at 26.533108017395 "$god_ set-dist 9 48 2"
$ns_ at 26.533108017395 "$god_ set-dist 13 48 2"
$ns_ at 26.533108017395 "$god_ set-dist 29 48 2"
$ns_ at 26.577630662121 "$god_ set-dist 8 43 1"
$ns_ at 26.837327245010 "$god_ set-dist 25 43 1"
$ns_ at 27.353278952497 "$god_ set-dist 16 17 3"
$ns_ at 27.353278952497 "$god_ set-dist 16 26 2"
$ns_ at 27.353278952497 "$god_ set-dist 16 32 1"
$ns_ at 27.353278952497 "$god_ set-dist 16 38 3"
$ns_ at 27.353278952497 "$god_ set-dist 16 42 2"
$ns_ at 27.657885018796 "$god_ set-dist 11 26 1"
$ns_ at 27.792797933232 "$god_ set-dist 30 33 1"
$ns_ at 28.018521070170 "$god_ set-dist 34 47 1"
$ns_ at 28.111039903105 "$god_ set-dist 13 36 2"
$ns_ at 28.111039903105 "$god_ set-dist 13 44 1"
$ns_ at 28.610723005014 "$god_ set-dist 44 45 1"
$ns_ at 28.803119804174 "$god_ set-dist 31 45 1"
$ns_ at 28.907774698682 "$god_ set-dist 19 44 2"
$ns_ at 28.907774698682 "$god_ set-dist 44 47 1"
$ns_ at 29.048611816414 "$god_ set-dist 2 23 1"
$ns_ at 29.090595215653 "$god_ set-dist 2 22 1"
$ns_ at 29.240021915543 "$god_ set-dist 17 34 2"
$ns_ at 29.240021915543 "$god_ set-dist 34 38 2"
$ns_ at 29.240021915543 "$god_ set-dist 34 42 1"
$ns_ at 29.254377760671 "$god_ set-dist 19 26 2"
$ns_ at 29.254377760671 "$god_ set-dist 26 47 1"
$ns_ at 29.378099032657 "$god_ set-dist 17 20 2"
$ns_ at 29.378099032657 "$god_ set-dist 20 38 2"
$ns_ at 29.378099032657 "$god_ set-dist 20 42 1"
$ns_ at 29.548855726073 "$god_ set-dist 12 24 2"
$ns_ at 29.548855726073 "$god_ set-dist 12 27 1"
$ns_ at 29.936640272623 "$god_ set-dist 18 45 1"
$ns_ at 30.050757296527 "$god_ set-dist 7 28 2"
$ns_ at 30.165373895027 "$god_ set-dist 3 41 2"
$ns_ at 30.165373895027 "$god_ set-dist 14 41 2"
$ns_ at 30.165373895027 "$god_ set-dist 16 41 2"
$ns_ at 30.165373895027 "$god_ set-dist 20 41 1"
$ns_ at 30.165373895027 "$god_ set-dist 25 41 2"
$ns_ at 30.165373895027 "$god_ set-dist 28 41 2"
$ns_ at 30.165373895027 "$god_ set-dist 33 41 2"
$ns_ at 30.991311985083 "$god_ set-dist 15 46 1"
$ns_ at 31.988951881527 "$god_ set-dist 4 19 2"
$ns_ at 31.988951881527 "$god_ set-dist 15 19 1"
$ns_ at 31.988951881527 "$god_ set-dist 19 46 2"
$ns_ at 31.992574211996 "$god_ set-dist 25 46 1"
$ns_ at 32.118204792581 "$god_ set-dist 9 36 2"
$ns_ at 32.118204792581 "$god_ set-dist 12 36 2"
$ns_ at 32.118204792581 "$god_ set-dist 29 36 2"
$ns_ at 32.118204792581 "$god_ set-dist 31 36 1"
$ns_ at 32.908618523679 "$god_ set-dist 5 12 1"
$ns_ at 32.908618523679 "$god_ set-dist 7 12 2"
$ns_ at 32.908618523679 "$god_ set-dist 12 15 2"
$ns_ at 33.212459366534 "$god_ set-dist 36 37 1"
$ns_ at 33.369081198686 "$god_ set-dist 7 27 1"
$ns_ at 33.369081198686 "$god_ set-dist 7 35 2"
$ns_ at 33.369081198686 "$god_ set-dist 7 49 2"
$ns_ at 33.833120034011 "$god_ set-dist 0 15 1"
$ns_ at 33.833120034011 "$god_ set-dist 6 15 2"
$ns_ at 33.833120034011 "$god_ set-dist 9 15 2"
$ns_ at 33.833120034011 "$god_ set-dist 11 15 2"
$ns_ at 33.833120034011 "$god_ set-dist 13 15 2"
$ns_ at 33.833120034011 "$god_ set-dist 15 29 2"
$ns_ at 33.833120034011 "$god_ set-dist 15 35 2"
$ns_ at 33.833120034011 "$god_ set-dist 15 49 2"
$ns_ at 33.869246212835 "$god_ set-dist 19 38 2"
$ns_ at 33.869246212835 "$god_ set-dist 23 38 1"
$ns_ at 33.869246212835 "$god_ set-dist 37 38 2"
$ns_ at 33.869246212835 "$god_ set-dist 38 43 2"
$ns_ at 33.869246212835 "$god_ set-dist 38 45 2"
$ns_ at 33.869246212835 "$god_ set-dist 38 48 2"
$ns_ at 33.943687013477 "$god_ set-dist 22 44 1"
$ns_ at 34.408423854121 "$god_ set-dist 6 17 2"
$ns_ at 34.535678017691 "$god_ set-dist 23 26 1"
$ns_ at 35.056924179886 "$god_ set-dist 17 32 3"
$ns_ at 35.056924179886 "$god_ set-dist 32 38 3"
$ns_ at 35.056924179886 "$god_ set-dist 32 42 2"
$ns_ at 35.094773424220 "$god_ set-dist 14 34 1"
$ns_ at 35.132549585454 "$god_ set-dist 3 30 1"
$ns_ at 35.339221920056 "$god_ set-dist 41 44 1"
$ns_ at 35.419278817259 "$god_ set-dist 14 18 2"
$ns_ at 35.455754477221 "$god_ set-dist 20 26 1"
$ns_ at 35.474603241521 "$god_ set-dist 12 39 1"
$ns_ at 35.827147553982 "$god_ set-dist 18 27 2"
$ns_ at 35.827147553982 "$god_ set-dist 18 39 1"
$ns_ at 36.382360801013 "$god_ set-dist 10 45 1"
$ns_ at 36.579174327573 "$god_ set-dist 0 43 1"
$ns_ at 36.579174327573 "$god_ set-dist 6 43 2"
$ns_ at 36.579174327573 "$god_ set-dist 9 43 2"
$ns_ at 36.579174327573 "$god_ set-dist 13 43 2"
$ns_ at 36.579174327573 "$god_ set-dist 29 43 2"
$ns_ at 36.961196379132 "$god_ set-dist 7 32 1"
$ns_ at 37.402729877645 "$god_ set-dist 0 36 1"
$ns_ at 37.402729877645 "$god_ set-dist 11 36 2"
$ns_ at 37.402729877645 "$god_ set-dist 35 36 2"
$ns_ at 37.402729877645 "$god_ set-dist 36 49 2"
$ns_ at 37.485130666085 "$god_ set-dist 4 23 2"
$ns_ at 37.485130666085 "$god_ set-dist 4 45 1"
$ns_ at 37.806194780542 "$god_ set-dist 11 18 2"
$ns_ at 37.806194780542 "$god_ set-dist 18 26 1"
$ns_ at 38.282224536037 "$god_ set-dist 31 48 1"
$ns_ at 38.292531012973 "$god_ set-dist 5 30 2"
$ns_ at 38.891984496305 "$god_ set-dist 2 6 1"
$ns_ at 39.731118146114 "$god_ set-dist 10 18 1"
$ns_ at 40.016702232929 "$god_ set-dist 14 46 1"
$ns_ at 40.030621503019 "$god_ set-dist 41 48 1"
$ns_ at 40.340746806289 "$god_ set-dist 10 48 1"
$ns_ at 40.442765117467 "$god_ set-dist 23 31 1"
$ns_ at 40.474436130365 "$god_ set-dist 16 30 1"
$ns_ at 41.097905315693 "$god_ set-dist 15 31 1"
$ns_ at 41.146373179085 "$node_(0) setdest 368.994740620466 272.239411826199 0.000000000000"
$ns_ at 41.210859888529 "$god_ set-dist 7 33 2"
$ns_ at 41.446511405312 "$god_ set-dist 0 35 2"
$ns_ at 41.446511405312 "$god_ set-dist 15 35 3"
$ns_ at 41.446511405312 "$god_ set-dist 32 35 3"
$ns_ at 41.446511405312 "$god_ set-dist 34 35 3"
$ns_ at 41.446511405312 "$god_ set-dist 35 36 3"
$ns_ at 41.657491125673 "$god_ set-dist 16 21 2"
$ns_ at 42.005630983467 "$god_ set-dist 29 41 2"
$ns_ at 42.146373179085 "$node_(0) setdest 497.498085952737 591.439095698142 1.327237474747"
$ns_ at 42.833796922650 "$god_ set-dist 13 41 2"
$ns_ at 43.229052351166 "$god_ set-dist 0 38 1"
$ns_ at 43.229052351166 "$god_ set-dist 15 38 2"
$ns_ at 43.229052351166 "$god_ set-dist 32 38 2"
$ns_ at 43.229052351166 "$god_ set-dist 36 38 2"
$ns_ at 43.554415881156 "$god_ set-dist 44 48 1"
$ns_ at 44.756821965459 "$god_ set-dist 15 44 1"
$ns_ at 45.295439016186 "$god_ set-dist 2 12 1"
$ns_ at 45.416154401331 "$god_ set-dist 6 12 1"
$ns_ at 45.510919391044 "$god_ set-dist 12 47 1"
$ns_ at 45.790042883349 "$god_ set-dist 26 32 2"
$ns_ at 45.818711697814 "$god_ set-dist 9 44 1"
$ns_ at 45.964122333707 "$god_ set-dist 3 12 2"
$ns_ at 45.964122333707 "$god_ set-dist 3 22 2"
$ns_ at 45.964122333707 "$god_ set-dist 3 47 1"
$ns_ at 46.482958533103 "$god_ set-dist 11 19 3"
$ns_ at 46.482958533103 "$god_ set-dist 19 23 2"
$ns_ at 46.482958533103 "$god_ set-dist 19 38 3"
$ns_ at 46.507188315976 "$god_ set-dist 6 11 1"
$ns_ at 47.412962479799 "$god_ set-dist 46 48 1"
$ns_ at 47.637873402205 "$god_ set-dist 21 47 1"
$ns_ at 47.771704282625 "$god_ set-dist 16 24 2"
$ns_ at 48.490105521998 "$god_ set-dist 7 11 2"
$ns_ at 48.490105521998 "$god_ set-dist 7 23 1"
$ns_ at 48.490105521998 "$god_ set-dist 7 38 2"
$ns_ at 49.138771404436 "$god_ set-dist 4 6 2"
$ns_ at 49.138771404436 "$god_ set-dist 6 14 2"
$ns_ at 49.138771404436 "$god_ set-dist 6 25 2"
$ns_ at 49.138771404436 "$god_ set-dist 6 34 1"
$ns_ at 49.172301681650 "$god_ set-dist 46 47 1"
$ns_ at 49.178363762370 "$god_ set-dist 32 40 2"
$ns_ at 49.647480969717 "$god_ set-dist 15 23 1"
$ns_ at 49.647480969717 "$god_ set-dist 15 35 2"
$ns_ at 49.695346258040 "$god_ set-dist 10 49 1"
$ns_ at 49.695346258040 "$god_ set-dist 18 49 2"
$ns_ at 49.695346258040 "$god_ set-dist 46 49 2"
$ns_ at 49.795138447239 "$god_ set-dist 24 39 2"
$ns_ at 50.326934230439 "$god_ set-dist 41 43 1"
$ns_ at 50.423213100487 "$god_ set-dist 1 45 1"
$ns_ at 50.533175930049 "$god_ set-dist 9 37 2"
$ns_ at 50.533175930049 "$god_ set-dist 37 41 1"
$ns_ at 51.257061725007 "$god_ set-dist 33 46 1"
$ns_ at 51.294532987645 "$god_ set-dist 6 18 1"
$ns_ at 51.922163109040 "$god_ set-dist 20 24 2"
$ns_ at 52.149299880263 "$god_ set-dist 10 36 1"
$ns_ at 53.424041687104 "$god_ set-dist 12 44 1"
$ns_ at 53.929409758926 "$god_ set-dist 4 18 2"
$ns_ at 54.019889850416 "$god_ set-dist 27 28 3"
$ns_ at 54.019889850416 "$god_ set-dist 28 48 2"
$ns_ at 54.374722549221 "$god_ set-dist 27 42 1"
$ns_ at 54.618540310099 "$god_ set-dist 1 29 3"
$ns_ at 54.618540310099 "$god_ set-dist 8 29 3"
$ns_ at 54.618540310099 "$god_ set-dist 21 29 3"
$ns_ at 54.618540310099 "$god_ set-dist 29 30 3"
$ns_ at 54.618540310099 "$god_ set-dist 29 31 2"
$ns_ at 54.995541172055 "$god_ set-dist 17 48 2"
$ns_ at 54.995541172055 "$god_ set-dist 42 48 1"
$ns_ at 55.897407150372 "$god_ set-dist 0 18 1"
$ns_ at 55.897407150372 "$god_ set-dist 18 38 2"
$ns_ at 56.032468413460 "$god_ set-dist 10 15 1"
$ns_ at 56.282875546888 "$god_ set-dist 6 33 2"
$ns_ at 56.282875546888 "$god_ set-dist 33 34 1"
$ns_ at 56.829313225015 "$god_ set-dist 4 41 2"
$ns_ at 56.829313225015 "$god_ set-dist 41 45 1"
$ns_ at 56.941702821736 "$god_ set-dist 5 18 1"
$ns_ at 57.005067253187 "$god_ set-dist 34 43 1"
$ns_ at 57.042140895498 "$god_ set-dist 5 21 2"
$ns_ at 57.733189073959 "$god_ set-dist 0 46 1"
$ns_ at 57.733189073959 "$god_ set-dist 38 46 2"
$ns_ at 58.353291181367 "$god_ set-dist 26 38 1"
$ns_ at 58.602329047551 "$god_ set-dist 1 14 2"
$ns_ at 58.668333637121 "$god_ set-dist 26 49 1"
$ns_ at 58.668763714332 "$god_ set-dist 30 39 2"
$ns_ at 58.735868085748 "$god_ set-dist 31 43 1"
$ns_ at 59.255043492348 "$god_ set-dist 18 19 2"
$ns_ at 59.255043492348 "$god_ set-dist 18 47 1"
$ns_ at 59.486168426472 "$god_ set-dist 3 37 1"
$ns_ at 59.642623008750 "$god_ set-dist 16 20 2"
$ns_ at 59.642623008750 "$god_ set-dist 16 26 3"
$ns_ at 60.185392194233 "$god_ set-dist 2 9 1"
$ns_ at 60.627884225173 "$god_ set-dist 10 27 1"
$ns_ at 60.866221427840 "$god_ set-dist 10 43 1"
$ns_ at 61.405886979230 "$god_ set-dist 6 7 2"
$ns_ at 61.405886979230 "$god_ set-dist 6 37 2"
$ns_ at 61.405886979230 "$god_ set-dist 6 39 1"
$ns_ at 61.586931670927 "$god_ set-dist 4 17 4"
$ns_ at 61.586931670927 "$god_ set-dist 14 17 4"
$ns_ at 61.586931670927 "$god_ set-dist 16 17 4"
$ns_ at 61.586931670927 "$god_ set-dist 17 20 3"
$ns_ at 61.586931670927 "$god_ set-dist 17 25 4"
$ns_ at 61.586931670927 "$god_ set-dist 17 28 4"
$ns_ at 61.586931670927 "$god_ set-dist 17 33 4"
$ns_ at 61.586931670927 "$god_ set-dist 17 34 3"
$ns_ at 61.586931670927 "$god_ set-dist 17 42 2"
$ns_ at 61.586931670927 "$god_ set-dist 17 48 3"
$ns_ at 61.798309798502 "$god_ set-dist 14 27 3"
$ns_ at 61.798309798502 "$god_ set-dist 14 48 2"
$ns_ at 62.242826124223 "$god_ set-dist 8 10 1"
$ns_ at 62.242826124223 "$god_ set-dist 8 11 2"
$ns_ at 62.242826124223 "$god_ set-dist 8 29 2"
$ns_ at 62.242826124223 "$god_ set-dist 8 49 2"
$ns_ at 62.392489706597 "$god_ set-dist 1 27 2"
$ns_ at 62.392489706597 "$god_ set-dist 2 27 1"
$ns_ at 62.452827286204 "$god_ set-dist 12 25 2"
$ns_ at 62.452827286204 "$god_ set-dist 17 25 3"
$ns_ at 62.452827286204 "$god_ set-dist 22 25 2"
$ns_ at 62.452827286204 "$god_ set-dist 25 47 1"
$ns_ at 62.491631154796 "$god_ set-dist 19 38 2"
$ns_ at 62.491631154796 "$god_ set-dist 24 38 2"
$ns_ at 62.491631154796 "$god_ set-dist 27 38 1"
$ns_ at 62.574592311903 "$god_ set-dist 18 42 1"
$ns_ at 63.012494375596 "$node_(35) setdest 375.257953918459 3.586304268323 0.000000000000"
$ns_ at 63.139904507688 "$god_ set-dist 7 32 2"
$ns_ at 63.142796115172 "$god_ set-dist 12 33 2"
$ns_ at 63.142796115172 "$god_ set-dist 17 33 3"
$ns_ at 63.142796115172 "$god_ set-dist 22 33 2"
$ns_ at 63.142796115172 "$god_ set-dist 33 47 1"
$ns_ at 63.435511775747 "$god_ set-dist 28 46 1"
$ns_ at 63.545832112679 "$god_ set-dist 8 38 2"
$ns_ at 63.545832112679 "$god_ set-dist 10 38 1"
$ns_ at 63.576844532017 "$god_ set-dist 30 47 1"
$ns_ at 63.822220553366 "$god_ set-dist 16 26 2"
$ns_ at 63.822220553366 "$god_ set-dist 26 48 1"
$ns_ at 63.904078208370 "$god_ set-dist 2 30 2"
$ns_ at 63.923019248486 "$node_(26) setdest 457.657607475478 330.727035939047 0.000000000000"
$ns_ at 63.983147552797 "$god_ set-dist 3 22 3"
$ns_ at 63.983147552797 "$god_ set-dist 22 25 3"
$ns_ at 63.983147552797 "$god_ set-dist 22 33 3"
$ns_ at 63.983147552797 "$god_ set-dist 22 47 2"
$ns_ at 64.012494375596 "$node_(35) setdest 350.096191430932 77.867850523096 1.187245993164"
$ns_ at 64.119165756532 "$god_ set-dist 29 49 1"
$ns_ at 64.923019248486 "$node_(26) setdest 403.892417910887 471.912981462176 1.293414726162"
$ns_ at 65.530494070764 "$god_ set-dist 30 48 2"
$ns_ at 65.907130035481 "$god_ set-dist 15 41 1"
$ns_ at 66.324113107596 "$god_ set-dist 43 44 1"
$ns_ at 66.461125953492 "$god_ set-dist 14 27 2"
$ns_ at 66.461125953492 "$god_ set-dist 14 43 1"
$ns_ at 66.527639752546 "$god_ set-dist 2 13 1"
$ns_ at 66.858155046806 "$god_ set-dist 12 16 2"
$ns_ at 66.858155046806 "$god_ set-dist 12 48 1"
$ns_ at 66.858155046806 "$god_ set-dist 16 17 3"
$ns_ at 66.858155046806 "$god_ set-dist 17 48 2"
$ns_ at 67.392783765115 "$node_(4) setdest 129.896928087939 618.826564698464 0.000000000000"
$ns_ at 67.407572565689 "$god_ set-dist 20 28 2"
$ns_ at 67.407572565689 "$god_ set-dist 28 42 3"
$ns_ at 68.032657440117 "$god_ set-dist 23 44 1"
$ns_ at 68.041334524192 "$god_ set-dist 3 46 1"
$ns_ at 68.392783765115 "$node_(4) setdest 104.429745904959 394.678906189094 1.852465370976"
$ns_ at 68.420231214522 "$god_ set-dist 2 37 1"
$ns_ at 68.420231214522 "$god_ set-dist 13 37 2"
$ns_ at 68.997778355423 "$god_ set-dist 6 41 1"
$ns_ at 69.015333853486 "$god_ set-dist 7 9 2"
$ns_ at 69.015333853486 "$god_ set-dist 7 41 1"
$ns_ at 69.044549488753 "$god_ set-dist 4 20 1"
$ns_ at 69.199408573470 "$god_ set-dist 16 47 1"
$ns_ at 69.243405603833 "$god_ set-dist 3 21 2"
$ns_ at 69.314546895967 "$god_ set-dist 5 19 1"
$ns_ at 69.495007028712 "$god_ set-dist 24 36 2"
$ns_ at 69.757418562403 "$god_ set-dist 43 46 1"
$ns_ at 70.071132688079 "$god_ set-dist 20 40 2"
$ns_ at 70.219997054790 "$god_ set-dist 2 40 2"
$ns_ at 70.235930991182 "$god_ set-dist 22 31 2"
$ns_ at 70.664776179947 "$god_ set-dist 3 6 2"
$ns_ at 70.664776179947 "$god_ set-dist 6 20 1"
$ns_ at 70.790639003466 "$god_ set-dist 1 39 1"
$ns_ at 71.136711817030 "$god_ set-dist 0 8 1"
$ns_ at 71.630856311634 "$god_ set-dist 18 48 1"
$ns_ at 71.951257748197 "$god_ set-dist 7 16 2"
$ns_ at 72.060152288588 "$god_ set-dist 4 12 2"
$ns_ at 72.060152288588 "$god_ set-dist 4 17 3"
$ns_ at 72.060152288588 "$god_ set-dist 12 14 2"
$ns_ at 72.060152288588 "$god_ set-dist 12 20 1"
$ns_ at 72.060152288588 "$god_ set-dist 14 17 3"
$ns_ at 72.060152288588 "$god_ set-dist 17 20 2"
$ns_ at 72.171657138316 "$god_ set-dist 1 33 1"
$ns_ at 72.192875921351 "$god_ set-dist 22 30 3"
$ns_ at 72.192875921351 "$god_ set-dist 30 44 2"
$ns_ at 72.455795375544 "$god_ set-dist 14 47 1"
$ns_ at 72.570683687160 "$god_ set-dist 36 40 2"
$ns_ at 72.570758252594 "$god_ set-dist 0 40 2"
$ns_ at 72.570758252594 "$god_ set-dist 13 40 3"
$ns_ at 72.570758252594 "$god_ set-dist 29 40 3"
$ns_ at 72.586667696434 "$god_ set-dist 1 6 1"
$ns_ at 72.586667696434 "$god_ set-dist 1 11 2"
$ns_ at 72.586667696434 "$god_ set-dist 1 29 2"
$ns_ at 73.230918746023 "$god_ set-dist 4 27 2"
$ns_ at 73.230918746023 "$god_ set-dist 15 27 1"
$ns_ at 73.230918746023 "$god_ set-dist 27 28 2"
$ns_ at 73.353509550991 "$god_ set-dist 2 11 1"
$ns_ at 73.353509550991 "$god_ set-dist 11 21 2"
$ns_ at 73.556821783287 "$god_ set-dist 18 25 2"
$ns_ at 73.932053416013 "$god_ set-dist 32 37 1"
$ns_ at 74.088238011578 "$god_ set-dist 12 40 1"
$ns_ at 74.088238011578 "$god_ set-dist 13 40 2"
$ns_ at 74.088238011578 "$god_ set-dist 17 40 2"
$ns_ at 74.088238011578 "$god_ set-dist 29 40 2"
$ns_ at 74.435333171600 "$god_ set-dist 3 5 1"
$ns_ at 74.435333171600 "$god_ set-dist 3 22 2"
$ns_ at 74.838133363727 "$god_ set-dist 10 21 1"
$ns_ at 74.838133363727 "$god_ set-dist 21 29 2"
$ns_ at 74.838133363727 "$god_ set-dist 21 38 2"
$ns_ at 74.838133363727 "$god_ set-dist 21 49 2"
$ns_ at 75.512660928540 "$god_ set-dist 13 38 2"
$ns_ at 75.802758543525 "$god_ set-dist 1 26 1"
$ns_ at 75.802758543525 "$god_ set-dist 1 38 2"
$ns_ at 75.802758543525 "$god_ set-dist 1 49 2"
$ns_ at 76.110089805748 "$god_ set-dist 21 48 2"
$ns_ at 76.436756004505 "$god_ set-dist 26 45 1"
$ns_ at 77.337838654764 "$node_(30) setdest 213.241866851297 596.401827626764 0.000000000000"
$ns_ at 77.428547049193 "$god_ set-dist 1 4 2"
$ns_ at 77.697987311832 "$god_ set-dist 3 19 1"
$ns_ at 77.830669547773 "$god_ set-dist 28 42 2"
$ns_ at 77.830669547773 "$god_ set-dist 42 45 1"
$ns_ at 78.319369568760 "$god_ set-dist 1 10 1"
$ns_ at 78.337838654764 "$node_(30) setdest 246.108776051697 128.147757305934 1.811820672559"
$ns_ at 78.641259064208 "$god_ set-dist 7 20 2"
$ns_ at 78.802227732339 "$god_ set-dist 13 30 3"
$ns_ at 78.802227732339 "$god_ set-dist 13 31 2"
$ns_ at 78.878473897224 "$god_ set-dist 13 22 2"
$ns_ at 78.992123422530 "$god_ set-dist 19 27 2"
$ns_ at 78.992123422530 "$god_ set-dist 19 35 3"
$ns_ at 78.992123422530 "$god_ set-dist 19 38 3"
$ns_ at 78.992123422530 "$god_ set-dist 19 49 3"
$ns_ at 79.369055802386 "$god_ set-dist 12 43 1"
$ns_ at 79.369055802386 "$god_ set-dist 17 43 2"
$ns_ at 79.817492800000 "$god_ set-dist 16 48 2"
$ns_ at 79.955418127195 "$god_ set-dist 11 24 2"
$ns_ at 79.955418127195 "$god_ set-dist 23 24 1"
$ns_ at 80.135413376863 "$god_ set-dist 0 32 2"
$ns_ at 80.313879050460 "$god_ set-dist 2 49 1"
$ns_ at 80.483247679723 "$god_ set-dist 16 37 1"
$ns_ at 80.485551614499 "$god_ set-dist 42 43 1"
$ns_ at 80.856263007642 "$god_ set-dist 2 38 1"
$ns_ at 82.002104664148 "$god_ set-dist 22 25 2"
$ns_ at 82.002104664148 "$god_ set-dist 22 33 2"
$ns_ at 82.002104664148 "$god_ set-dist 22 48 1"
$ns_ at 82.132326991863 "$god_ set-dist 9 25 2"
$ns_ at 82.132326991863 "$god_ set-dist 25 31 1"
$ns_ at 82.271666501019 "$god_ set-dist 4 17 4"
$ns_ at 82.271666501019 "$god_ set-dist 12 17 2"
$ns_ at 82.271666501019 "$god_ set-dist 14 17 4"
$ns_ at 82.271666501019 "$god_ set-dist 16 17 4"
$ns_ at 82.271666501019 "$god_ set-dist 17 20 3"
$ns_ at 82.271666501019 "$god_ set-dist 17 40 3"
$ns_ at 82.271666501019 "$god_ set-dist 17 43 3"
$ns_ at 82.271666501019 "$god_ set-dist 17 47 3"
$ns_ at 82.335481228236 "$god_ set-dist 6 22 2"
$ns_ at 82.467170939653 "$god_ set-dist 4 47 1"
$ns_ at 82.981175160659 "$god_ set-dist 7 9 3"
$ns_ at 82.981175160659 "$god_ set-dist 9 41 2"
$ns_ at 83.304166069832 "$god_ set-dist 12 28 2"
$ns_ at 83.304166069832 "$god_ set-dist 28 47 1"
$ns_ at 83.362226469935 "$god_ set-dist 21 26 1"
$ns_ at 84.443996403508 "$god_ set-dist 9 33 2"
$ns_ at 84.443996403508 "$god_ set-dist 31 33 1"
$ns_ at 84.461471548706 "$god_ set-dist 2 29 1"
$ns_ at 84.461471548706 "$god_ set-dist 29 37 2"
$ns_ at 84.594286044391 "$god_ set-dist 3 34 1"
$ns_ at 84.819146846345 "$god_ set-dist 13 18 1"
$ns_ at 84.819146846345 "$god_ set-dist 13 30 2"
$ns_ at 84.819146846345 "$god_ set-dist 17 18 2"
$ns_ at 84.976266496568 "$god_ set-dist 9 18 1"
$ns_ at 85.346595447588 "$god_ set-dist 16 19 1"
$ns_ at 85.393787879190 "$god_ set-dist 5 19 2"
$ns_ at 85.653138881799 "$god_ set-dist 21 28 2"
$ns_ at 85.895128499533 "$god_ set-dist 10 32 2"
$ns_ at 85.895662470017 "$god_ set-dist 22 30 2"
$ns_ at 85.895662470017 "$god_ set-dist 30 44 1"
$ns_ at 86.302690079065 "$god_ set-dist 30 43 1"
$ns_ at 86.464569401789 "$god_ set-dist 10 37 1"
$ns_ at 86.689515679881 "$god_ set-dist 22 25 3"
$ns_ at 86.689515679881 "$god_ set-dist 25 48 2"
$ns_ at 86.762951264671 "$god_ set-dist 0 1 1"
$ns_ at 87.719001320312 "$god_ set-dist 6 28 2"
$ns_ at 87.719001320312 "$god_ set-dist 6 46 1"
$ns_ at 87.725775777431 "$god_ set-dist 34 35 2"
$ns_ at 87.725775777431 "$god_ set-dist 34 41 1"
$ns_ at 87.989724469658 "$god_ set-dist 0 21 1"
$ns_ at 88.189118555177 "$god_ set-dist 12 37 1"
$ns_ at 88.471806131655 "$god_ set-dist 1 2 2"
$ns_ at 88.662951851553 "$god_ set-dist 12 34 1"
$ns_ at 89.116377379444 "$god_ set-dist 30 48 1"
$ns_ at 89.511798255331 "$god_ set-dist 2 32 2"
$ns_ at 89.511798255331 "$god_ set-dist 11 32 3"
$ns_ at 89.511798255331 "$god_ set-dist 29 32 3"
$ns_ at 89.511798255331 "$god_ set-dist 32 38 3"
$ns_ at 89.511798255331 "$god_ set-dist 32 49 3"
$ns_ at 89.540581585039 "$god_ set-dist 6 21 1"
$ns_ at 89.560311379784 "$god_ set-dist 0 37 1"
$ns_ at 89.725750648033 "$god_ set-dist 2 21 2"
$ns_ at 90.114877176422 "$god_ set-dist 26 36 1"
$ns_ at 90.145446881703 "$god_ set-dist 12 45 1"
$ns_ at 90.344590158693 "$god_ set-dist 31 37 1"
$ns_ at 90.355603044947 "$god_ set-dist 19 47 2"
$ns_ at 90.707547968219 "$god_ set-dist 30 39 1"
$ns_ at 90.820599866460 "$god_ set-dist 8 37 1"
$ns_ at 90.831466786688 "$god_ set-dist 1 24 3"
$ns_ at 90.831466786688 "$god_ set-dist 24 45 2"
$ns_ at 91.426852408116 "$god_ set-dist 7 9 2"
$ns_ at 91.426852408116 "$god_ set-dist 9 39 1"
$ns_ at 91.457634498906 "$god_ set-dist 40 45 2"
$ns_ at 91.787761532551 "$god_ set-dist 7 12 1"
$ns_ at 91.787761532551 "$god_ set-dist 7 13 2"
$ns_ at 91.787761532551 "$god_ set-dist 7 29 2"
$ns_ at 91.849792307353 "$god_ set-dist 11 30 2"
$ns_ at 91.849792307353 "$god_ set-dist 11 32 2"
$ns_ at 91.849792307353 "$god_ set-dist 11 44 1"
$ns_ at 91.961219355745 "$god_ set-dist 1 40 3"
$ns_ at 91.961219355745 "$god_ set-dist 39 40 2"
$ns_ at 92.033146172944 "$god_ set-dist 3 24 2"
$ns_ at 92.104525867828 "$god_ set-dist 26 43 1"
$ns_ at 92.483440149084 "$god_ set-dist 4 43 1"
$ns_ at 92.643400739052 "$god_ set-dist 35 36 2"
$ns_ at 92.643400739052 "$god_ set-dist 36 41 1"
$ns_ at 92.804414244845 "$god_ set-dist 5 6 1"
$ns_ at 92.804414244845 "$god_ set-dist 6 24 2"
$ns_ at 92.839212129732 "$god_ set-dist 9 25 3"
$ns_ at 92.839212129732 "$god_ set-dist 9 31 2"
$ns_ at 92.839212129732 "$god_ set-dist 9 33 3"
$ns_ at 92.839212129732 "$god_ set-dist 17 25 4"
$ns_ at 92.839212129732 "$god_ set-dist 17 31 3"
$ns_ at 93.019789989724 "$god_ set-dist 12 15 1"
$ns_ at 93.036418672080 "$god_ set-dist 12 18 1"
$ns_ at 93.036418672080 "$god_ set-dist 18 35 2"
$ns_ at 94.843407106419 "$god_ set-dist 15 21 2"
$ns_ at 94.843407106419 "$god_ set-dist 19 21 3"
$ns_ at 94.884611092490 "$god_ set-dist 3 31 1"
$ns_ at 95.073204877132 "$god_ set-dist 37 44 1"
$ns_ at 95.142182127184 "$god_ set-dist 8 26 1"
$ns_ at 95.274045452349 "$god_ set-dist 11 35 2"
$ns_ at 95.524228504311 "$god_ set-dist 27 44 1"
$ns_ at 95.754114211180 "$god_ set-dist 26 49 2"
$ns_ at 95.990757878591 "$god_ set-dist 6 19 2"
$ns_ at 95.990757878591 "$god_ set-dist 6 48 1"
$ns_ at 96.182469429080 "$god_ set-dist 19 35 2"
$ns_ at 96.182469429080 "$god_ set-dist 35 40 1"
$ns_ at 97.765101441266 "$god_ set-dist 6 16 2"
$ns_ at 97.765101441266 "$god_ set-dist 16 46 1"
$ns_ at 97.955262705365 "$god_ set-dist 9 22 2"
$ns_ at 98.360167944965 "$god_ set-dist 1 24 2"
$ns_ at 98.360167944965 "$god_ set-dist 1 40 2"
$ns_ at 98.360167944965 "$god_ set-dist 1 47 1"
$ns_ at 98.467882541055 "$god_ set-dist 4 31 1"
$ns_ at 98.680537378506 "$god_ set-dist 2 7 1"
$ns_ at 98.730221380562 "$god_ set-dist 6 19 3"
$ns_ at 98.730221380562 "$god_ set-dist 17 19 4"
$ns_ at 98.730221380562 "$god_ set-dist 18 19 3"
$ns_ at 98.730221380562 "$god_ set-dist 19 22 3"
$ns_ at 98.730221380562 "$god_ set-dist 19 48 2"
$ns_ at 99.386542431594 "$god_ set-dist 3 7 2"
$ns_ at 99.676992922853 "$god_ set-dist 30 38 2"
$ns_ at 99.676992922853 "$god_ set-dist 32 38 2"
$ns_ at 99.676992922853 "$god_ set-dist 38 39 1"
$ns_ at 99.708906282863 "$god_ set-dist 9 40 3"
$ns_ at 99.708906282863 "$god_ set-dist 12 40 2"
$ns_ at 99.708906282863 "$god_ set-dist 13 40 3"
$ns_ at 99.708906282863 "$god_ set-dist 29 40 3"
$ns_ at 99.948323187659 "$god_ set-dist 34 37 1"
$ns_ at 100.529273425312 "$node_(33) setdest 170.704563734250 557.401566787045 0.000000000000"
$ns_ at 101.064826006539 "$god_ set-dist 14 31 1"
$ns_ at 101.122238141372 "$god_ set-dist 1 40 3"
$ns_ at 101.122238141372 "$god_ set-dist 21 40 3"
$ns_ at 101.122238141372 "$god_ set-dist 40 47 2"
$ns_ at 101.288408258491 "$god_ set-dist 1 24 3"
$ns_ at 101.288408258491 "$god_ set-dist 21 24 3"
$ns_ at 101.288408258491 "$god_ set-dist 24 47 2"
$ns_ at 101.306653242843 "$god_ set-dist 20 23 2"
$ns_ at 101.529273425312 "$node_(33) setdest 231.084590127132 263.397148467276 1.622406239030"
$ns_ at 101.530903287881 "$god_ set-dist 35 42 1"
$ns_ at 101.700355212413 "$god_ set-dist 2 8 2"
$ns_ at 102.256622304142 "$god_ set-dist 3 38 2"
$ns_ at 102.256622304142 "$god_ set-dist 5 38 1"
$ns_ at 102.512723316244 "$god_ set-dist 22 29 2"
$ns_ at 102.590312721237 "$god_ set-dist 37 46 1"
$ns_ at 102.657657182850 "$god_ set-dist 11 39 1"
$ns_ at 103.701232677832 "$god_ set-dist 18 19 2"
$ns_ at 103.701232677832 "$god_ set-dist 18 43 1"
$ns_ at 104.402947303219 "$god_ set-dist 15 42 1"
$ns_ at 104.707106682951 "$god_ set-dist 6 38 1"
$ns_ at 104.708132950006 "$god_ set-dist 7 10 1"
$ns_ at 104.780872338129 "$god_ set-dist 7 17 2"
$ns_ at 104.780872338129 "$god_ set-dist 7 22 1"
$ns_ at 104.780872338129 "$god_ set-dist 17 19 3"
$ns_ at 104.780872338129 "$god_ set-dist 19 22 2"
$ns_ at 104.872699005885 "$god_ set-dist 6 47 1"
$ns_ at 104.957967388768 "$god_ set-dist 12 36 1"
$ns_ at 105.520013597824 "$node_(19) setdest 6.467646294104 261.426768665381 0.000000000000"
$ns_ at 105.668789240349 "$god_ set-dist 18 32 2"
$ns_ at 106.164900271512 "$god_ set-dist 2 35 1"
$ns_ at 106.164900271512 "$god_ set-dist 35 46 2"
$ns_ at 106.165232178650 "$god_ set-dist 6 45 1"
$ns_ at 106.472510925721 "$god_ set-dist 33 37 1"
$ns_ at 106.520013597824 "$node_(19) setdest 383.111201405323 626.271789978382 0.424797688694"
$ns_ at 107.078405511072 "$god_ set-dist 30 37 1"
$ns_ at 107.138134608615 "$god_ set-dist 4 37 1"
$ns_ at 107.274547035281 "$god_ set-dist 38 44 1"
$ns_ at 107.757840062604 "$god_ set-dist 7 35 1"
$ns_ at 108.404300960432 "$god_ set-dist 2 46 2"
$ns_ at 108.404300960432 "$god_ set-dist 35 46 3"
$ns_ at 108.492206642007 "$god_ set-dist 10 29 2"
$ns_ at 108.958704395802 "$god_ set-dist 5 30 1"
$ns_ at 109.233978908184 "$god_ set-dist 33 38 2"
$ns_ at 109.233978908184 "$god_ set-dist 38 48 1"
$ns_ at 109.291102409015 "$god_ set-dist 22 26 2"
$ns_ at 109.299214169641 "$node_(9) setdest 567.288761417395 349.157012397111 0.000000000000"
$ns_ at 109.442364828392 "$god_ set-dist 7 36 2"
$ns_ at 109.848913866244 "$god_ set-dist 3 9 2"
$ns_ at 109.848913866244 "$god_ set-dist 4 9 2"
$ns_ at 109.848913866244 "$god_ set-dist 4 17 3"
$ns_ at 109.848913866244 "$god_ set-dist 9 14 2"
$ns_ at 109.848913866244 "$god_ set-dist 9 20 1"
$ns_ at 109.848913866244 "$god_ set-dist 9 25 2"
$ns_ at 109.848913866244 "$god_ set-dist 9 33 2"
$ns_ at 109.848913866244 "$god_ set-dist 14 17 3"
$ns_ at 109.848913866244 "$god_ set-dist 17 20 2"
$ns_ at 109.848913866244 "$god_ set-dist 17 25 3"
$ns_ at 110.122333367716 "$god_ set-dist 6 23 1"
$ns_ at 110.299214169641 "$node_(9) setdest 374.887048591978 81.529899846813 0.892773552262"
$ns_ at 110.455622174298 "$god_ set-dist 11 33 2"
$ns_ at 110.455622174298 "$god_ set-dist 33 39 1"
$ns_ at 110.845630584644 "$god_ set-dist 10 30 1"
$ns_ at 110.845630584644 "$god_ set-dist 30 49 2"
$ns_ at 111.108472584605 "$god_ set-dist 11 18 1"
$ns_ at 111.478824417175 "$god_ set-dist 6 19 2"
$ns_ at 111.478824417175 "$god_ set-dist 6 43 1"
$ns_ at 112.272234156737 "$god_ set-dist 13 33 2"
$ns_ at 112.272234156737 "$god_ set-dist 13 39 1"
$ns_ at 112.419416828821 "$god_ set-dist 6 36 1"
$ns_ at 112.440301810070 "$god_ set-dist 5 19 1"
$ns_ at 112.440301810070 "$god_ set-dist 19 38 2"
$ns_ at 112.578635928183 "$god_ set-dist 5 32 2"
$ns_ at 112.739961812167 "$god_ set-dist 18 41 1"
$ns_ at 112.760437277734 "$god_ set-dist 27 47 2"
$ns_ at 113.031318787215 "$god_ set-dist 37 42 1"
$ns_ at 113.198916880686 "$god_ set-dist 33 44 1"
$ns_ at 114.128367935910 "$god_ set-dist 12 29 2"
$ns_ at 114.880094374382 "$god_ set-dist 32 49 2"
$ns_ at 114.880094374382 "$god_ set-dist 33 49 2"
$ns_ at 114.880094374382 "$god_ set-dist 39 49 1"
$ns_ at 114.958049146853 "$god_ set-dist 15 26 1"
$ns_ at 115.042051265780 "$god_ set-dist 18 29 1"
$ns_ at 115.042051265780 "$god_ set-dist 29 30 2"
$ns_ at 115.960415690815 "$god_ set-dist 0 30 1"
$ns_ at 116.103967151731 "$god_ set-dist 36 42 1"
$ns_ at 116.494450040608 "$god_ set-dist 3 35 2"
$ns_ at 116.494450040608 "$god_ set-dist 5 35 1"
$ns_ at 116.494450040608 "$god_ set-dist 8 35 2"
$ns_ at 116.494450040608 "$god_ set-dist 30 35 2"
$ns_ at 116.494450040608 "$god_ set-dist 35 46 2"
$ns_ at 116.616455456946 "$god_ set-dist 14 37 1"
$ns_ at 116.652472680782 "$god_ set-dist 12 13 2"
$ns_ at 116.849030867351 "$god_ set-dist 32 44 2"
$ns_ at 116.870897903686 "$god_ set-dist 6 8 1"
$ns_ at 117.864916577800 "$god_ set-dist 9 14 3"
$ns_ at 117.864916577800 "$god_ set-dist 14 17 4"
$ns_ at 117.864916577800 "$god_ set-dist 14 20 2"
$ns_ at 118.198426325922 "$god_ set-dist 1 32 2"
$ns_ at 118.332859022569 "$god_ set-dist 11 32 3"
$ns_ at 118.332859022569 "$god_ set-dist 13 32 3"
$ns_ at 118.332859022569 "$god_ set-dist 32 39 2"
$ns_ at 118.332859022569 "$god_ set-dist 32 49 3"
$ns_ at 118.545063561364 "$god_ set-dist 26 30 1"
$ns_ at 119.733977090217 "$god_ set-dist 24 48 2"
$ns_ at 119.878148978382 "$god_ set-dist 5 33 1"
$ns_ at 119.878148978382 "$god_ set-dist 33 35 2"
$ns_ at 120.053188038274 "$god_ set-dist 3 13 2"
$ns_ at 120.053188038274 "$god_ set-dist 4 13 2"
$ns_ at 120.053188038274 "$god_ set-dist 13 20 1"
$ns_ at 120.053188038274 "$god_ set-dist 13 25 2"
$ns_ at 120.053188038274 "$god_ set-dist 13 32 2"
$ns_ at 120.423851253962 "$god_ set-dist 22 32 3"
$ns_ at 120.423851253962 "$god_ set-dist 32 38 3"
$ns_ at 120.423851253962 "$god_ set-dist 32 48 2"
$ns_ at 120.919267399451 "$god_ set-dist 44 49 1"
$ns_ at 121.034243404574 "$god_ set-dist 23 34 1"
$ns_ at 121.046040338258 "$god_ set-dist 25 37 1"
$ns_ at 121.121712434105 "$god_ set-dist 3 49 2"
$ns_ at 121.121712434105 "$god_ set-dist 48 49 1"
$ns_ at 121.206129534607 "$god_ set-dist 6 49 1"
$ns_ at 121.349659116260 "$god_ set-dist 4 21 2"
$ns_ at 122.499732345698 "$god_ set-dist 7 38 1"
$ns_ at 122.748335529767 "$god_ set-dist 2 36 2"
$ns_ at 122.818033437700 "$god_ set-dist 24 41 1"
$ns_ at 123.402217192435 "$god_ set-dist 1 13 1"
$ns_ at 123.402217192435 "$god_ set-dist 1 17 2"
$ns_ at 123.598762416450 "$god_ set-dist 7 42 1"
$ns_ at 123.792080750777 "$god_ set-dist 12 46 1"
$ns_ at 124.400679039268 "$god_ set-dist 7 44 1"
$ns_ at 124.614010901739 "$god_ set-dist 35 48 1"
$ns_ at 124.895331942226 "$god_ set-dist 6 27 1"
$ns_ at 125.004311952574 "$god_ set-dist 7 47 2"
$ns_ at 125.005045982583 "$node_(41) setdest 302.248378481637 241.866386688363 0.000000000000"
$ns_ at 125.052017402884 "$god_ set-dist 28 31 1"
$ns_ at 125.198580552642 "$god_ set-dist 0 22 2"
$ns_ at 125.571837500962 "$god_ set-dist 24 27 2"
$ns_ at 125.848595136245 "$god_ set-dist 4 9 3"
$ns_ at 125.848595136245 "$god_ set-dist 4 13 3"
$ns_ at 125.848595136245 "$god_ set-dist 4 17 4"
$ns_ at 125.848595136245 "$god_ set-dist 4 20 2"
$ns_ at 126.005045982583 "$node_(41) setdest 451.544095319969 92.808050719107 0.286121994609"
$ns_ at 126.026618340255 "$god_ set-dist 8 12 1"
$ns_ at 126.081115319312 "$god_ set-dist 10 33 1"
$ns_ at 126.559312473293 "$god_ set-dist 1 33 2"
$ns_ at 126.734627004307 "$god_ set-dist 6 30 1"
$ns_ at 126.751525660839 "$god_ set-dist 11 23 2"
$ns_ at 127.467499662021 "$god_ set-dist 7 45 2"
$ns_ at 127.692229436360 "$god_ set-dist 40 43 2"
$ns_ at 127.759434347659 "$god_ set-dist 2 47 2"
$ns_ at 127.879987954815 "$god_ set-dist 11 27 1"
$ns_ at 128.298992191759 "$god_ set-dist 3 11 2"
$ns_ at 128.298992191759 "$god_ set-dist 3 39 1"
$ns_ at 128.345989219996 "$god_ set-dist 3 44 1"
$ns_ at 128.574897194503 "$god_ set-dist 6 15 1"
$ns_ at 129.082624937066 "$god_ set-dist 40 48 2"
$ns_ at 129.143382740846 "$god_ set-dist 15 40 2"
$ns_ at 129.143382740846 "$god_ set-dist 28 40 3"
$ns_ at 129.437905788213 "$god_ set-dist 12 30 1"
$ns_ at 130.070779231565 "$node_(35) setdest 350.096191430932 77.867850523096 0.000000000000"
$ns_ at 130.171675044913 "$god_ set-dist 3 20 2"
$ns_ at 130.771757695069 "$god_ set-dist 11 24 3"
$ns_ at 130.771757695069 "$god_ set-dist 24 41 2"
$ns_ at 131.070779231565 "$node_(35) setdest 669.882887938442 190.529515217091 1.411738642874"
$ns_ at 131.794010529033 "$god_ set-dist 4 17 3"
$ns_ at 131.794010529033 "$god_ set-dist 4 38 2"
$ns_ at 131.794010529033 "$god_ set-dist 14 17 3"
$ns_ at 131.794010529033 "$god_ set-dist 14 38 2"
$ns_ at 131.794010529033 "$god_ set-dist 16 17 3"
$ns_ at 131.794010529033 "$god_ set-dist 16 38 2"
$ns_ at 131.794010529033 "$god_ set-dist 17 43 2"
$ns_ at 131.794010529033 "$god_ set-dist 25 38 2"
$ns_ at 131.794010529033 "$god_ set-dist 32 38 2"
$ns_ at 131.794010529033 "$god_ set-dist 38 43 1"
$ns_ at 132.521585045919 "$god_ set-dist 28 37 1"
$ns_ at 132.521585045919 "$god_ set-dist 28 40 2"
$ns_ at 132.890124236123 "$god_ set-dist 2 17 1"
$ns_ at 132.890124236123 "$god_ set-dist 15 17 2"
$ns_ at 132.890124236123 "$god_ set-dist 17 28 3"
$ns_ at 132.890124236123 "$god_ set-dist 17 31 2"
$ns_ at 132.890124236123 "$god_ set-dist 17 34 2"
$ns_ at 132.890124236123 "$god_ set-dist 17 37 2"
$ns_ at 132.890124236123 "$god_ set-dist 17 45 2"
$ns_ at 133.277478820191 "$god_ set-dist 24 43 2"
$ns_ at 133.462130162564 "$god_ set-dist 14 21 2"
$ns_ at 133.473277656532 "$god_ set-dist 3 10 1"
$ns_ at 133.864689725472 "$god_ set-dist 1 17 3"
$ns_ at 133.864689725472 "$god_ set-dist 13 17 2"
$ns_ at 133.988756452190 "$god_ set-dist 4 19 1"
$ns_ at 134.193770380859 "$god_ set-dist 23 47 2"
$ns_ at 134.198076097384 "$god_ set-dist 18 38 1"
$ns_ at 134.598251236438 "$god_ set-dist 17 22 2"
$ns_ at 134.961176283243 "$god_ set-dist 6 37 1"
$ns_ at 135.082283920643 "$god_ set-dist 4 5 1"
$ns_ at 135.082283920643 "$god_ set-dist 4 22 2"
$ns_ at 135.082283920643 "$god_ set-dist 4 35 2"
$ns_ at 135.532385844878 "$god_ set-dist 7 39 2"
$ns_ at 135.615785064544 "$god_ set-dist 4 49 2"
$ns_ at 135.615785064544 "$god_ set-dist 5 49 1"
$ns_ at 135.615785064544 "$god_ set-dist 19 49 2"
$ns_ at 137.278876725697 "$god_ set-dist 20 41 2"
$ns_ at 137.309327256395 "$god_ set-dist 16 31 1"
$ns_ at 138.212566759024 "$god_ set-dist 12 33 1"
$ns_ at 138.226949026786 "$god_ set-dist 23 31 2"
$ns_ at 138.473481053640 "$god_ set-dist 2 45 2"
$ns_ at 138.473481053640 "$god_ set-dist 17 45 3"
$ns_ at 138.566811313722 "$god_ set-dist 2 31 2"
$ns_ at 138.566811313722 "$god_ set-dist 17 31 3"
$ns_ at 138.588519292036 "$god_ set-dist 26 37 1"
$ns_ at 138.893390351973 "$god_ set-dist 9 32 3"
$ns_ at 138.893390351973 "$god_ set-dist 13 32 3"
$ns_ at 138.893390351973 "$god_ set-dist 20 32 2"
$ns_ at 139.085992194559 "$god_ set-dist 18 30 2"
$ns_ at 139.109615668299 "$god_ set-dist 22 39 2"
$ns_ at 139.625244130382 "$god_ set-dist 2 15 2"
$ns_ at 139.625244130382 "$god_ set-dist 15 17 3"
$ns_ at 139.716158235550 "$god_ set-dist 11 48 1"
$ns_ at 139.816325555188 "$god_ set-dist 3 12 1"
$ns_ at 139.877510969646 "$god_ set-dist 18 46 2"
$ns_ at 140.017875015907 "$god_ set-dist 9 48 1"
$ns_ at 140.457891520357 "$god_ set-dist 2 28 3"
$ns_ at 140.457891520357 "$god_ set-dist 2 37 2"
$ns_ at 140.457891520357 "$god_ set-dist 17 28 4"
$ns_ at 140.457891520357 "$god_ set-dist 17 37 3"
$ns_ at 140.479831437266 "$god_ set-dist 14 40 3"
$ns_ at 140.479831437266 "$god_ set-dist 25 40 3"
$ns_ at 140.479831437266 "$god_ set-dist 28 40 3"
$ns_ at 140.479831437266 "$god_ set-dist 32 40 3"
$ns_ at 140.479831437266 "$god_ set-dist 37 40 2"
$ns_ at 140.721733582959 "$god_ set-dist 19 43 2"
$ns_ at 140.780196582798 "$god_ set-dist 26 33 1"
$ns_ at 140.780196582798 "$god_ set-dist 29 33 2"
$ns_ at 141.067247131879 "$god_ set-dist 4 9 2"
$ns_ at 141.067247131879 "$god_ set-dist 9 14 2"
$ns_ at 141.067247131879 "$god_ set-dist 9 32 2"
$ns_ at 141.067247131879 "$god_ set-dist 9 34 1"
$ns_ at 141.148324026464 "$god_ set-dist 8 18 2"
$ns_ at 141.150065266867 "$god_ set-dist 27 34 1"
$ns_ at 142.062778953179 "$god_ set-dist 18 47 2"
$ns_ at 142.427034263910 "$god_ set-dist 18 49 1"
$ns_ at 142.499832740376 "$god_ set-dist 35 40 2"
$ns_ at 142.727148932502 "$god_ set-dist 5 18 2"
$ns_ at 142.727148932502 "$god_ set-dist 18 19 3"
$ns_ at 142.727148932502 "$god_ set-dist 18 24 3"
$ns_ at 142.951650245715 "$god_ set-dist 11 41 2"
$ns_ at 142.973259538237 "$god_ set-dist 6 33 1"
$ns_ at 144.398205776530 "$god_ set-dist 11 22 2"
$ns_ at 144.747877181954 "$god_ set-dist 42 47 2"
$ns_ at 145.495058967809 "$god_ set-dist 21 32 2"
$ns_ at 146.175405209626 "$god_ set-dist 5 20 2"
$ns_ at 146.175405209626 "$god_ set-dist 20 40 3"
$ns_ at 146.250825746500 "$god_ set-dist 7 49 1"
$ns_ at 146.294721178790 "$god_ set-dist 2 20 2"
$ns_ at 146.627332625415 "$god_ set-dist 30 41 1"
$ns_ at 146.862409527353 "$god_ set-dist 0 33 1"
$ns_ at 147.200395514233 "$god_ set-dist 18 23 1"
$ns_ at 147.200395514233 "$god_ set-dist 18 24 2"
$ns_ at 147.368240206128 "$god_ set-dist 18 27 1"
$ns_ at 148.056759818345 "$god_ set-dist 11 25 2"
$ns_ at 148.056759818345 "$god_ set-dist 25 26 1"
$ns_ at 148.056759818345 "$god_ set-dist 25 29 2"
$ns_ at 148.076156077853 "$god_ set-dist 11 20 1"
$ns_ at 148.126438651368 "$god_ set-dist 9 27 1"
$ns_ at 148.126438651368 "$god_ set-dist 9 40 2"
$ns_ at 148.131414362464 "$god_ set-dist 2 16 3"
$ns_ at 148.131414362464 "$god_ set-dist 16 17 4"
$ns_ at 148.131414362464 "$god_ set-dist 16 38 3"
$ns_ at 148.131414362464 "$god_ set-dist 16 43 2"
$ns_ at 148.392597361242 "$god_ set-dist 21 44 2"
$ns_ at 148.434111939200 "$node_(12) setdest 320.146750870749 313.383210965829 0.000000000000"
$ns_ at 149.138489826803 "$god_ set-dist 7 21 3"
$ns_ at 149.138489826803 "$god_ set-dist 10 21 2"
$ns_ at 149.138489826803 "$god_ set-dist 21 22 3"
$ns_ at 149.186018037534 "$god_ set-dist 23 36 1"
$ns_ at 149.192417946031 "$god_ set-dist 30 42 1"
$ns_ at 149.309466577797 "$god_ set-dist 32 38 3"
$ns_ at 149.309466577797 "$god_ set-dist 32 43 2"
$ns_ at 149.434111939200 "$node_(12) setdest 347.570967351729 9.597743988580 1.088434306065"
$ns_ at 149.465005697560 "$god_ set-dist 25 29 3"
$ns_ at 149.465005697560 "$god_ set-dist 26 29 2"
$ns_ at 149.626402345350 "$god_ set-dist 10 13 2"
$ns_ at 150.530530103586 "$god_ set-dist 41 47 2"
$ns_ at 150.742780548437 "$god_ set-dist 13 44 2"
$ns_ at 151.606255871415 "$god_ set-dist 32 38 2"
$ns_ at 151.606255871415 "$god_ set-dist 34 38 1"
$ns_ at 152.122069563789 "$god_ set-dist 1 9 1"
$ns_ at 152.122069563789 "$god_ set-dist 1 17 2"
$ns_ at 152.296983808911 "$god_ set-dist 9 40 3"
$ns_ at 152.296983808911 "$god_ set-dist 11 40 3"
$ns_ at 152.296983808911 "$god_ set-dist 27 40 2"
$ns_ at 152.489733638082 "$god_ set-dist 4 10 1"
$ns_ at 152.489733638082 "$god_ set-dist 4 11 2"
$ns_ at 153.081744270362 "$god_ set-dist 15 20 2"
$ns_ at 153.578740714717 "$god_ set-dist 18 24 3"
$ns_ at 153.578740714717 "$god_ set-dist 23 24 2"
$ns_ at 153.813552146348 "$god_ set-dist 1 46 2"
$ns_ at 153.838946820435 "$god_ set-dist 17 35 1"
$ns_ at 154.195946877603 "$god_ set-dist 9 40 2"
$ns_ at 154.195946877603 "$god_ set-dist 9 41 1"
$ns_ at 155.142266267467 "$god_ set-dist 6 25 1"
$ns_ at 155.142266267467 "$god_ set-dist 25 29 2"
$ns_ at 155.142266267467 "$god_ set-dist 25 49 2"
$ns_ at 155.776060307699 "$god_ set-dist 10 25 1"
$ns_ at 155.776060307699 "$god_ set-dist 22 25 2"
$ns_ at 155.786019215169 "$god_ set-dist 9 40 3"
$ns_ at 155.786019215169 "$god_ set-dist 40 41 2"
$ns_ at 156.074004457657 "$god_ set-dist 20 24 3"
$ns_ at 156.074004457657 "$god_ set-dist 24 37 2"
$ns_ at 156.376923770819 "$god_ set-dist 7 19 2"
$ns_ at 156.677349540582 "$god_ set-dist 6 29 2"
$ns_ at 156.677349540582 "$god_ set-dist 25 29 3"
$ns_ at 156.708424592697 "$god_ set-dist 4 44 1"
$ns_ at 156.822262588855 "$node_(31) setdest 254.310705754120 472.473105598336 0.000000000000"
$ns_ at 157.040222830815 "$god_ set-dist 23 30 1"
$ns_ at 157.053183294226 "$god_ set-dist 1 30 2"
$ns_ at 157.471113986665 "$god_ set-dist 10 22 2"
$ns_ at 157.471113986665 "$god_ set-dist 22 25 3"
$ns_ at 157.560641772494 "$god_ set-dist 15 17 2"
$ns_ at 157.560641772494 "$god_ set-dist 15 38 1"
$ns_ at 157.560641772494 "$god_ set-dist 16 17 3"
$ns_ at 157.560641772494 "$god_ set-dist 16 38 2"
$ns_ at 157.560641772494 "$god_ set-dist 17 28 3"
$ns_ at 157.560641772494 "$god_ set-dist 28 38 2"
$ns_ at 157.676250943381 "$god_ set-dist 1 47 2"
$ns_ at 157.822262588855 "$node_(31) setdest 516.841881711295 275.729367796264 1.214684984799"
$ns_ at 157.923535188012 "$god_ set-dist 18 36 2"
$ns_ at 158.362724464934 "$god_ set-dist 2 32 3"
$ns_ at 158.362724464934 "$god_ set-dist 9 32 3"
$ns_ at 158.362724464934 "$god_ set-dist 32 34 2"
$ns_ at 158.880966366280 "$god_ set-dist 23 26 2"
$ns_ at 159.031350450031 "$god_ set-dist 3 6 1"
$ns_ at 160.646837999640 "$god_ set-dist 19 21 2"
$ns_ at 160.646837999640 "$god_ set-dist 19 33 1"
$ns_ at 161.398087228412 "$god_ set-dist 19 21 3"
$ns_ at 161.398087228412 "$god_ set-dist 21 33 2"
$ns_ at 161.548588392765 "$god_ set-dist 1 35 2"
$ns_ at 161.548588392765 "$god_ set-dist 35 44 1"
$ns_ at 162.288364259751 "$god_ set-dist 1 22 3"
$ns_ at 162.288364259751 "$god_ set-dist 1 35 3"
$ns_ at 162.288364259751 "$god_ set-dist 1 44 2"
$ns_ at 162.608678788282 "$god_ set-dist 1 11 1"
$ns_ at 162.850857682502 "$god_ set-dist 7 37 2"
$ns_ at 163.442710934623 "$god_ set-dist 9 23 1"
$ns_ at 163.442710934623 "$god_ set-dist 9 40 2"
$ns_ at 163.813792983735 "$god_ set-dist 9 40 3"
$ns_ at 163.813792983735 "$god_ set-dist 18 40 3"
$ns_ at 163.813792983735 "$god_ set-dist 23 40 2"
$ns_ at 164.044550163650 "$god_ set-dist 13 21 1"
$ns_ at 164.081641540915 "$god_ set-dist 17 37 2"
$ns_ at 164.081641540915 "$god_ set-dist 37 38 1"
$ns_ at 165.011426459956 "$god_ set-dist 2 13 2"
$ns_ at 165.074595403211 "$god_ set-dist 23 31 1"
$ns_ at 165.156458515012 "$god_ set-dist 3 29 2"
$ns_ at 165.156458515012 "$god_ set-dist 29 39 1"
$ns_ at 166.745427665994 "$god_ set-dist 33 41 1"
$ns_ at 166.784410194439 "$god_ set-dist 2 26 2"
$ns_ at 166.930448844553 "$god_ set-dist 0 25 1"
$ns_ at 166.930448844553 "$god_ set-dist 25 29 2"
$ns_ at 167.255021461301 "$god_ set-dist 15 17 3"
$ns_ at 167.255021461301 "$god_ set-dist 16 17 4"
$ns_ at 167.255021461301 "$god_ set-dist 17 28 4"
$ns_ at 167.255021461301 "$god_ set-dist 17 32 4"
$ns_ at 167.255021461301 "$god_ set-dist 17 37 3"
$ns_ at 167.255021461301 "$god_ set-dist 17 38 2"
$ns_ at 167.339757420890 "$node_(1) setdest 465.038378573484 543.620215894890 0.000000000000"
$ns_ at 167.413707552965 "$god_ set-dist 7 32 3"
$ns_ at 167.413707552965 "$god_ set-dist 15 32 2"
$ns_ at 167.413707552965 "$god_ set-dist 24 32 3"
$ns_ at 168.339757420890 "$node_(1) setdest 28.914026169599 97.497445200446 0.194450320314"
$ns_ at 168.537109114499 "$god_ set-dist 0 40 3"
$ns_ at 168.537109114499 "$god_ set-dist 5 40 2"
$ns_ at 168.537109114499 "$god_ set-dist 6 40 3"
$ns_ at 168.537109114499 "$god_ set-dist 8 40 3"
$ns_ at 168.537109114499 "$god_ set-dist 21 40 4"
$ns_ at 168.537109114499 "$god_ set-dist 26 40 3"
$ns_ at 168.537109114499 "$god_ set-dist 30 40 3"
$ns_ at 168.537109114499 "$god_ set-dist 31 40 3"
$ns_ at 168.537109114499 "$god_ set-dist 34 40 3"
$ns_ at 168.537109114499 "$god_ set-dist 36 40 3"
$ns_ at 168.537109114499 "$god_ set-dist 39 40 3"
$ns_ at 168.537109114499 "$god_ set-dist 40 45 3"
$ns_ at 168.537109114499 "$god_ set-dist 40 46 3"
$ns_ at 168.537109114499 "$god_ set-dist 40 47 3"
$ns_ at 169.023717537146 "$god_ set-dist 2 34 2"
$ns_ at 169.465921757976 "$god_ set-dist 0 46 2"
$ns_ at 169.517632143406 "$god_ set-dist 1 35 2"
$ns_ at 169.517632143406 "$god_ set-dist 9 35 1"
$ns_ at 169.612903531033 "$god_ set-dist 4 13 2"
$ns_ at 169.612903531033 "$god_ set-dist 13 14 2"
$ns_ at 169.612903531033 "$god_ set-dist 13 34 1"
$ns_ at 169.685620944346 "$god_ set-dist 19 21 2"
$ns_ at 169.685620944346 "$god_ set-dist 19 30 1"
$ns_ at 169.685620944346 "$god_ set-dist 21 40 3"
$ns_ at 169.685620944346 "$god_ set-dist 30 40 2"
$ns_ at 169.946479732322 "$god_ set-dist 21 46 2"
$ns_ at 169.999072787029 "$god_ set-dist 19 21 3"
$ns_ at 169.999072787029 "$god_ set-dist 21 30 2"
$ns_ at 169.999072787029 "$god_ set-dist 21 40 4"
$ns_ at 170.714621665371 "$god_ set-dist 33 42 1"
$ns_ at 170.815834820088 "$node_(27) setdest 353.811772838898 210.515864930884 0.000000000000"
$ns_ at 171.174714531535 "$god_ set-dist 20 37 2"
$ns_ at 171.216639034256 "$god_ set-dist 11 14 2"
$ns_ at 171.216639034256 "$god_ set-dist 11 34 1"
$ns_ at 171.306788170091 "$god_ set-dist 23 33 1"
$ns_ at 171.815834820088 "$node_(27) setdest 582.312213534243 498.742236971945 1.002014056411"
$ns_ at 172.153990402171 "$god_ set-dist 5 26 2"
$ns_ at 172.371080571376 "$god_ set-dist 47 48 2"
$ns_ at 172.515950222688 "$god_ set-dist 9 43 1"
$ns_ at 172.580695831043 "$god_ set-dist 46 48 2"
$ns_ at 172.707924714151 "$god_ set-dist 25 39 1"
$ns_ at 172.837498979684 "$god_ set-dist 20 46 2"
$ns_ at 172.955950190832 "$god_ set-dist 27 30 1"
$ns_ at 172.968528954612 "$god_ set-dist 14 49 2"
$ns_ at 172.968528954612 "$god_ set-dist 43 49 1"
$ns_ at 173.058167150182 "$god_ set-dist 0 5 2"
$ns_ at 173.267916193293 "$god_ set-dist 18 45 2"
$ns_ at 173.270337764874 "$god_ set-dist 0 15 2"
$ns_ at 173.270337764874 "$god_ set-dist 0 24 3"
$ns_ at 173.419889290697 "$god_ set-dist 1 43 1"
$ns_ at 174.119441776111 "$god_ set-dist 12 20 2"
$ns_ at 174.243146847909 "$god_ set-dist 20 33 2"
$ns_ at 174.420725150025 "$god_ set-dist 1 9 2"
$ns_ at 174.420725150025 "$god_ set-dist 1 35 3"
$ns_ at 174.561713642835 "$god_ set-dist 26 41 2"
$ns_ at 174.677054997574 "$god_ set-dist 7 43 2"
$ns_ at 174.677054997574 "$god_ set-dist 40 43 3"
$ns_ at 174.689104710939 "$god_ set-dist 18 21 2"
$ns_ at 174.924105436662 "$god_ set-dist 30 38 1"
$ns_ at 175.153846577243 "$god_ set-dist 38 45 1"
$ns_ at 175.760316053356 "$god_ set-dist 12 47 2"
$ns_ at 176.198451261459 "$god_ set-dist 27 45 1"
$ns_ at 176.940708246399 "$god_ set-dist 19 46 1"
$ns_ at 176.940708246399 "$god_ set-dist 40 46 2"
$ns_ at 177.328893602326 "$god_ set-dist 0 2 2"
$ns_ at 177.372624989855 "$node_(13) setdest 573.018502431886 426.963978563088 0.000000000000"
$ns_ at 177.674188875569 "$god_ set-dist 16 25 2"
$ns_ at 178.372624989855 "$node_(13) setdest 12.386068086210 167.588362991433 0.771283816646"
$ns_ at 178.513687023924 "$god_ set-dist 0 23 2"
$ns_ at 178.576569172070 "$god_ set-dist 7 28 3"
$ns_ at 178.576569172070 "$god_ set-dist 15 28 2"
$ns_ at 178.576569172070 "$god_ set-dist 24 28 3"
$ns_ at 178.657045719122 "$god_ set-dist 31 38 1"
$ns_ at 178.872993197632 "$god_ set-dist 16 17 3"
$ns_ at 178.872993197632 "$god_ set-dist 17 18 1"
$ns_ at 178.872993197632 "$god_ set-dist 17 28 3"
$ns_ at 178.872993197632 "$god_ set-dist 17 31 2"
$ns_ at 178.872993197632 "$god_ set-dist 17 32 3"
$ns_ at 179.023494664668 "$god_ set-dist 4 6 1"
$ns_ at 179.173854479736 "$god_ set-dist 3 26 1"
$ns_ at 179.761860100690 "$god_ set-dist 1 7 3"
$ns_ at 179.761860100690 "$god_ set-dist 1 40 4"
$ns_ at 179.761860100690 "$god_ set-dist 7 10 2"
$ns_ at 179.761860100690 "$god_ set-dist 10 40 3"
$ns_ at 180.611368176873 "$god_ set-dist 13 49 1"
$ns_ at 180.690462259731 "$node_(40) setdest 91.303395463877 54.374600027203 0.000000000000"
$ns_ at 180.974481485330 "$god_ set-dist 12 46 2"
$ns_ at 181.250728503098 "$god_ set-dist 0 49 2"
$ns_ at 181.671455059467 "$god_ set-dist 14 24 3"
$ns_ at 181.671455059467 "$god_ set-dist 15 24 2"
$ns_ at 181.671455059467 "$god_ set-dist 24 25 3"
$ns_ at 181.671455059467 "$god_ set-dist 24 26 3"
$ns_ at 181.690462259731 "$node_(40) setdest 600.270997454964 582.235484764674 0.153047541118"
$ns_ at 181.727543582597 "$node_(26) setdest 403.892417910887 471.912981462176 0.000000000000"
$ns_ at 182.041093074532 "$node_(18) setdest 504.891754532579 352.062534666389 0.000000000000"
$ns_ at 182.181691150565 "$god_ set-dist 27 31 1"
$ns_ at 182.218819027157 "$god_ set-dist 5 47 2"
$ns_ at 182.218819027157 "$god_ set-dist 24 47 3"
$ns_ at 182.533904381860 "$god_ set-dist 7 14 3"
$ns_ at 182.533904381860 "$god_ set-dist 7 15 2"
$ns_ at 182.533904381860 "$god_ set-dist 7 16 3"
$ns_ at 182.533904381860 "$god_ set-dist 7 25 3"
$ns_ at 182.727543582597 "$node_(26) setdest 381.067846422575 129.901486306803 0.696331507256"
$ns_ at 183.041093074532 "$node_(18) setdest 595.957437010749 633.442404411272 0.177797931941"
$ns_ at 183.298388580126 "$god_ set-dist 10 11 2"
$ns_ at 183.473973593671 "$god_ set-dist 20 48 2"
$ns_ at 183.735158758734 "$god_ set-dist 0 41 2"
$ns_ at 183.891801040202 "$god_ set-dist 16 17 4"
$ns_ at 183.891801040202 "$god_ set-dist 16 18 3"
$ns_ at 183.891801040202 "$god_ set-dist 16 31 2"
$ns_ at 184.087139465038 "$god_ set-dist 19 20 3"
$ns_ at 184.087139465038 "$god_ set-dist 20 30 2"
$ns_ at 184.165218766534 "$god_ set-dist 3 23 1"
$ns_ at 185.323174303307 "$god_ set-dist 29 48 1"
$ns_ at 185.438170469153 "$god_ set-dist 20 44 2"
$ns_ at 185.574038099421 "$god_ set-dist 11 44 2"
$ns_ at 185.861482762742 "$god_ set-dist 29 35 1"
$ns_ at 186.011898028039 "$god_ set-dist 8 48 2"
$ns_ at 186.101951727506 "$god_ set-dist 29 46 3"
$ns_ at 186.101951727506 "$god_ set-dist 39 46 2"
$ns_ at 186.256976984546 "$god_ set-dist 13 48 1"
$ns_ at 186.384342511140 "$god_ set-dist 33 38 1"
$ns_ at 186.872304954406 "$god_ set-dist 26 27 1"
$ns_ at 186.934232396076 "$god_ set-dist 11 43 1"
$ns_ at 187.313609911555 "$god_ set-dist 27 29 1"
$ns_ at 187.350735490573 "$god_ set-dist 2 6 2"
$ns_ at 187.803777324071 "$god_ set-dist 36 38 1"
$ns_ at 188.303392340655 "$god_ set-dist 30 32 2"
$ns_ at 188.432921153280 "$god_ set-dist 17 32 4"
$ns_ at 188.432921153280 "$god_ set-dist 18 32 3"
$ns_ at 188.432921153280 "$god_ set-dist 31 32 2"
$ns_ at 188.733459072413 "$god_ set-dist 6 14 1"
$ns_ at 189.420587010774 "$god_ set-dist 10 14 1"
$ns_ at 189.550718062485 "$god_ set-dist 5 35 2"
$ns_ at 189.550718062485 "$god_ set-dist 19 35 3"
$ns_ at 189.871380271670 "$god_ set-dist 3 41 1"
$ns_ at 189.930915044187 "$god_ set-dist 20 47 2"
$ns_ at 190.170921435841 "$node_(4) setdest 104.429745904959 394.678906189095 0.000000000000"
$ns_ at 190.270481048440 "$god_ set-dist 11 12 2"
$ns_ at 191.170921435841 "$node_(4) setdest 357.076678842294 234.257011866537 1.883721541570"
$ns_ at 191.969406523997 "$god_ set-dist 29 38 2"
$ns_ at 192.214138736244 "$god_ set-dist 27 33 1"
$ns_ at 193.426009022921 "$god_ set-dist 2 10 2"
$ns_ at 193.748481513463 "$god_ set-dist 0 29 2"
$ns_ at 193.827693924726 "$god_ set-dist 3 42 1"
$ns_ at 194.012977141026 "$god_ set-dist 7 47 3"
$ns_ at 194.012977141026 "$god_ set-dist 22 47 3"
$ns_ at 194.012977141026 "$god_ set-dist 35 47 3"
$ns_ at 194.012977141026 "$god_ set-dist 44 47 2"
$ns_ at 194.063943579187 "$god_ set-dist 4 12 1"
$ns_ at 194.159398987145 "$god_ set-dist 8 20 2"
$ns_ at 194.173427902312 "$god_ set-dist 2 14 3"
$ns_ at 194.173427902312 "$god_ set-dist 2 43 2"
$ns_ at 194.269880495673 "$god_ set-dist 2 47 3"
$ns_ at 194.269880495673 "$god_ set-dist 29 47 3"
$ns_ at 194.269880495673 "$god_ set-dist 39 47 2"
$ns_ at 194.606295647832 "$god_ set-dist 13 43 1"
$ns_ at 194.870493464432 "$god_ set-dist 23 26 1"
$ns_ at 194.916269241164 "$god_ set-dist 0 47 2"
$ns_ at 195.081845025053 "$god_ set-dist 22 40 1"
$ns_ at 195.721228924917 "$god_ set-dist 3 48 2"
$ns_ at 195.748298743357 "$god_ set-dist 8 12 2"
$ns_ at 195.997846855670 "$god_ set-dist 8 21 2"
$ns_ at 196.365184956802 "$god_ set-dist 0 33 2"
$ns_ at 196.426279906208 "$god_ set-dist 4 23 1"
$ns_ at 196.493114816180 "$god_ set-dist 32 45 2"
$ns_ at 196.830060087651 "$god_ set-dist 14 43 2"
$ns_ at 196.937411234227 "$god_ set-dist 26 41 1"
$ns_ at 196.967711416486 "$god_ set-dist 26 46 2"
$ns_ at 197.151291360974 "$god_ set-dist 2 5 2"
$ns_ at 197.151291360974 "$god_ set-dist 2 19 3"
$ns_ at 197.320718409687 "$god_ set-dist 9 20 2"
$ns_ at 197.376588051252 "$god_ set-dist 7 20 3"
$ns_ at 197.376588051252 "$god_ set-dist 20 22 3"
$ns_ at 197.376588051252 "$god_ set-dist 20 35 3"
$ns_ at 197.376588051252 "$god_ set-dist 20 40 4"
$ns_ at 197.376588051252 "$god_ set-dist 20 42 2"
$ns_ at 198.616205745272 "$god_ set-dist 1 8 2"
$ns_ at 199.211782841654 "$god_ set-dist 34 49 1"
$ns_ at 199.326216339058 "$god_ set-dist 3 38 1"
$ns_ at 199.537988769685 "$god_ set-dist 32 33 2"
$ns_ at 199.716358123860 "$god_ set-dist 10 20 2"
$ns_ at 199.937157458531 "$god_ set-dist 17 28 4"
$ns_ at 199.937157458531 "$god_ set-dist 18 28 3"
$ns_ at 199.937157458531 "$god_ set-dist 28 31 2"
#
# Destination Unreachables: 0
#
# Route Changes: 1213
#
# Link Changes: 659
#
# Node | Route Changes | Link Changes
#    0 |            42 |           33
#    1 |            58 |           27
#    2 |            50 |           43
#    3 |            47 |           24
#    4 |            53 |           20
#    5 |            27 |           27
#    6 |            55 |           34
#    7 |            56 |           32
#    8 |            30 |           18
#    9 |            60 |           18
#   10 |            38 |           32
#   11 |            46 |           20
#   12 |            58 |           35
#   13 |            52 |           20
#   14 |            42 |           18
#   15 |            41 |           25
#   16 |            45 |           15
#   17 |            95 |           11
#   18 |            62 |           36
#   19 |            58 |           18
#   20 |            61 |           44
#   21 |            45 |           24
#   22 |            42 |           18
#   23 |            36 |           31
#   24 |            39 |           17
#   25 |            48 |           18
#   26 |            47 |           35
#   27 |            39 |           27
#   28 |            56 |           14
#   29 |            55 |           17
#   30 |            53 |           36
#   31 |            44 |           33
#   32 |            64 |           31
#   33 |            63 |           32
#   34 |            34 |           22
#   35 |            52 |           19
#   36 |            31 |           18
#   37 |            48 |           32
#   38 |            83 |           29
#   39 |            25 |           24
#   40 |            73 |           23
#   41 |            39 |           30
#   42 |            30 |           21
#   43 |            46 |           34
#   44 |            34 |           32
#   45 |            33 |           22
#   46 |            48 |           32
#   47 |            48 |           40
#   48 |            50 |           39
#   49 |            45 |           18
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
    exec nam aodvms_2.nam &
    exit 0
}
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns_ at $val(stop) "\$node_($i) reset"
}
$ns_ at $val(stop) "$ns_ nam-end-wireless $val(stop)"
$ns_ at $val(stop) "finish"
$ns_ at $val(stop) "puts \"done\" ; $ns_ halt"
$ns_ run
