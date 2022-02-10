
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
set tracefile [open dsdvms_10.tr w]
$ns_ trace-all $tracefile
#$ns use-newtrace
#Open the NAM trace file
set namfile [open dsdvms_10.nam w]
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
# nodes: 50, pause: 1.00, max speed: 10.00, max x: 670.00, max y: 670.00
#
$node_(0) set X_ 206.932444726571
$node_(0) set Y_ 653.952592998310
$node_(0) set Z_ 0.000000000000
$node_(1) set X_ 637.725814312457
$node_(1) set Y_ 263.798660782660
$node_(1) set Z_ 0.000000000000
$node_(2) set X_ 295.957265670670
$node_(2) set Y_ 351.434037559265
$node_(2) set Z_ 0.000000000000
$node_(3) set X_ 498.329902084689
$node_(3) set Y_ 561.688800943380
$node_(3) set Z_ 0.000000000000
$node_(4) set X_ 54.854430092899
$node_(4) set Y_ 576.231457687948
$node_(4) set Z_ 0.000000000000
$node_(5) set X_ 331.278374038148
$node_(5) set Y_ 315.622953735193
$node_(5) set Z_ 0.000000000000
$node_(6) set X_ 534.175989660110
$node_(6) set Y_ 581.331855626084
$node_(6) set Z_ 0.000000000000
$node_(7) set X_ 663.910816596693
$node_(7) set Y_ 380.146998386033
$node_(7) set Z_ 0.000000000000
$node_(8) set X_ 77.199588962252
$node_(8) set Y_ 71.304015515194
$node_(8) set Z_ 0.000000000000
$node_(9) set X_ 536.818330168774
$node_(9) set Y_ 309.115917379062
$node_(9) set Z_ 0.000000000000
$node_(10) set X_ 133.759864918434
$node_(10) set Y_ 536.551311205298
$node_(10) set Z_ 0.000000000000
$node_(11) set X_ 427.521490381209
$node_(11) set Y_ 259.907399348621
$node_(11) set Z_ 0.000000000000
$node_(12) set X_ 455.816090330423
$node_(12) set Y_ 280.661765573930
$node_(12) set Z_ 0.000000000000
$node_(13) set X_ 342.377350093911
$node_(13) set Y_ 333.214904463082
$node_(13) set Z_ 0.000000000000
$node_(14) set X_ 174.804317194339
$node_(14) set Y_ 33.536769101780
$node_(14) set Z_ 0.000000000000
$node_(15) set X_ 443.169904099624
$node_(15) set Y_ 75.719593795872
$node_(15) set Z_ 0.000000000000
$node_(16) set X_ 539.731331380111
$node_(16) set Y_ 419.640716837083
$node_(16) set Z_ 0.000000000000
$node_(17) set X_ 642.587640503941
$node_(17) set Y_ 228.314659893385
$node_(17) set Z_ 0.000000000000
$node_(18) set X_ 232.711513909510
$node_(18) set Y_ 478.733227044929
$node_(18) set Z_ 0.000000000000
$node_(19) set X_ 488.889365012056
$node_(19) set Y_ 568.967861986094
$node_(19) set Z_ 0.000000000000
$node_(20) set X_ 516.171322009441
$node_(20) set Y_ 625.408112177366
$node_(20) set Z_ 0.000000000000
$node_(21) set X_ 606.540120993821
$node_(21) set Y_ 215.908481825368
$node_(21) set Z_ 0.000000000000
$node_(22) set X_ 582.553247686260
$node_(22) set Y_ 95.844391997818
$node_(22) set Z_ 0.000000000000
$node_(23) set X_ 291.718144122831
$node_(23) set Y_ 66.627785737761
$node_(23) set Z_ 0.000000000000
$node_(24) set X_ 625.642999129776
$node_(24) set Y_ 398.225728669425
$node_(24) set Z_ 0.000000000000
$node_(25) set X_ 545.772724463774
$node_(25) set Y_ 105.557730045637
$node_(25) set Z_ 0.000000000000
$node_(26) set X_ 384.364597871396
$node_(26) set Y_ 622.219498465223
$node_(26) set Z_ 0.000000000000
$node_(27) set X_ 511.685805644525
$node_(27) set Y_ 281.533382974785
$node_(27) set Z_ 0.000000000000
$node_(28) set X_ 265.357994072713
$node_(28) set Y_ 12.269309668806
$node_(28) set Z_ 0.000000000000
$node_(29) set X_ 630.309134683176
$node_(29) set Y_ 478.262818858183
$node_(29) set Z_ 0.000000000000
$node_(30) set X_ 262.668242939979
$node_(30) set Y_ 438.711951075142
$node_(30) set Z_ 0.000000000000
$node_(31) set X_ 505.661941735932
$node_(31) set Y_ 644.713030946513
$node_(31) set Z_ 0.000000000000
$node_(32) set X_ 240.089411863265
$node_(32) set Y_ 399.664821387335
$node_(32) set Z_ 0.000000000000
$node_(33) set X_ 307.103608047485
$node_(33) set Y_ 502.858663186106
$node_(33) set Z_ 0.000000000000
$node_(34) set X_ 492.275132921810
$node_(34) set Y_ 290.149966609011
$node_(34) set Z_ 0.000000000000
$node_(35) set X_ 141.853825984429
$node_(35) set Y_ 554.907732331382
$node_(35) set Z_ 0.000000000000
$node_(36) set X_ 601.206693866056
$node_(36) set Y_ 313.634227180369
$node_(36) set Z_ 0.000000000000
$node_(37) set X_ 651.432144441150
$node_(37) set Y_ 212.097996803090
$node_(37) set Z_ 0.000000000000
$node_(38) set X_ 199.303382517561
$node_(38) set Y_ 35.104199392179
$node_(38) set Z_ 0.000000000000
$node_(39) set X_ 372.682535768945
$node_(39) set Y_ 221.610549209871
$node_(39) set Z_ 0.000000000000
$node_(40) set X_ 490.277217546865
$node_(40) set Y_ 265.836171199084
$node_(40) set Z_ 0.000000000000
$node_(41) set X_ 19.357695050165
$node_(41) set Y_ 259.510224516999
$node_(41) set Z_ 0.000000000000
$node_(42) set X_ 208.828661745964
$node_(42) set Y_ 380.266207041073
$node_(42) set Z_ 0.000000000000
$node_(43) set X_ 436.824370180133
$node_(43) set Y_ 416.440943600544
$node_(43) set Z_ 0.000000000000
$node_(44) set X_ 579.502319171206
$node_(44) set Y_ 422.541140047497
$node_(44) set Z_ 0.000000000000
$node_(45) set X_ 126.117434274039
$node_(45) set Y_ 586.086892202979
$node_(45) set Z_ 0.000000000000
$node_(46) set X_ 57.313805849122
$node_(46) set Y_ 46.897410588493
$node_(46) set Z_ 0.000000000000
$node_(47) set X_ 307.651905774045
$node_(47) set Y_ 564.303059579115
$node_(47) set Z_ 0.000000000000
$node_(48) set X_ 592.755802735502
$node_(48) set Y_ 40.563563929689
$node_(48) set Z_ 0.000000000000
$node_(49) set X_ 631.255380516201
$node_(49) set Y_ 295.373170014382
$node_(49) set Z_ 0.000000000000
$god_ set-dist 0 1 3
$god_ set-dist 0 2 2
$god_ set-dist 0 3 2
$god_ set-dist 0 4 1
$god_ set-dist 0 5 2
$god_ set-dist 0 6 2
$god_ set-dist 0 7 3
$god_ set-dist 0 8 4
$god_ set-dist 0 9 3
$god_ set-dist 0 10 1
$god_ set-dist 0 11 2
$god_ set-dist 0 12 2
$god_ set-dist 0 13 2
$god_ set-dist 0 14 4
$god_ set-dist 0 15 3
$god_ set-dist 0 16 2
$god_ set-dist 0 17 3
$god_ set-dist 0 18 1
$god_ set-dist 0 19 2
$god_ set-dist 0 20 2
$god_ set-dist 0 21 3
$god_ set-dist 0 22 3
$god_ set-dist 0 23 3
$god_ set-dist 0 24 3
$god_ set-dist 0 25 3
$god_ set-dist 0 26 1
$god_ set-dist 0 27 3
$god_ set-dist 0 28 3
$god_ set-dist 0 29 3
$god_ set-dist 0 30 1
$god_ set-dist 0 31 2
$god_ set-dist 0 32 2
$god_ set-dist 0 33 1
$god_ set-dist 0 34 3
$god_ set-dist 0 35 1
$god_ set-dist 0 36 3
$god_ set-dist 0 37 3
$god_ set-dist 0 38 4
$god_ set-dist 0 39 2
$god_ set-dist 0 40 3
$god_ set-dist 0 41 3
$god_ set-dist 0 42 2
$god_ set-dist 0 43 2
$god_ set-dist 0 44 3
$god_ set-dist 0 45 1
$god_ set-dist 0 46 4
$god_ set-dist 0 47 1
$god_ set-dist 0 48 4
$god_ set-dist 0 49 3
$god_ set-dist 1 2 2
$god_ set-dist 1 3 2
$god_ set-dist 1 4 3
$god_ set-dist 1 5 2
$god_ set-dist 1 6 2
$god_ set-dist 1 7 1
$god_ set-dist 1 8 3
$god_ set-dist 1 9 1
$god_ set-dist 1 10 3
$god_ set-dist 1 11 1
$god_ set-dist 1 12 1
$god_ set-dist 1 13 2
$god_ set-dist 1 14 3
$god_ set-dist 1 15 2
$god_ set-dist 1 16 1
$god_ set-dist 1 17 1
$god_ set-dist 1 18 3
$god_ set-dist 1 19 2
$god_ set-dist 1 20 2
$god_ set-dist 1 21 1
$god_ set-dist 1 22 1
$god_ set-dist 1 23 2
$god_ set-dist 1 24 1
$god_ set-dist 1 25 1
$god_ set-dist 1 26 3
$god_ set-dist 1 27 1
$god_ set-dist 1 28 3
$god_ set-dist 1 29 1
$god_ set-dist 1 30 2
$god_ set-dist 1 31 2
$god_ set-dist 1 32 2
$god_ set-dist 1 33 2
$god_ set-dist 1 34 1
$god_ set-dist 1 35 3
$god_ set-dist 1 36 1
$god_ set-dist 1 37 1
$god_ set-dist 1 38 3
$god_ set-dist 1 39 2
$god_ set-dist 1 40 1
$god_ set-dist 1 41 3
$god_ set-dist 1 42 2
$god_ set-dist 1 43 2
$god_ set-dist 1 44 1
$god_ set-dist 1 45 3
$god_ set-dist 1 46 3
$god_ set-dist 1 47 3
$god_ set-dist 1 48 1
$god_ set-dist 1 49 1
$god_ set-dist 2 3 2
$god_ set-dist 2 4 2
$god_ set-dist 2 5 1
$god_ set-dist 2 6 2
$god_ set-dist 2 7 2
$god_ set-dist 2 8 3
$god_ set-dist 2 9 1
$god_ set-dist 2 10 1
$god_ set-dist 2 11 1
$god_ set-dist 2 12 1
$god_ set-dist 2 13 1
$god_ set-dist 2 14 3
$god_ set-dist 2 15 2
$god_ set-dist 2 16 2
$god_ set-dist 2 17 2
$god_ set-dist 2 18 1
$god_ set-dist 2 19 2
$god_ set-dist 2 20 2
$god_ set-dist 2 21 2
$god_ set-dist 2 22 2
$god_ set-dist 2 23 2
$god_ set-dist 2 24 2
$god_ set-dist 2 25 2
$god_ set-dist 2 26 2
$god_ set-dist 2 27 1
$god_ set-dist 2 28 2
$god_ set-dist 2 29 2
$god_ set-dist 2 30 1
$god_ set-dist 2 31 2
$god_ set-dist 2 32 1
$god_ set-dist 2 33 1
$god_ set-dist 2 34 1
$god_ set-dist 2 35 2
$god_ set-dist 2 36 2
$god_ set-dist 2 37 2
$god_ set-dist 2 38 3
$god_ set-dist 2 39 1
$god_ set-dist 2 40 1
$god_ set-dist 2 41 2
$god_ set-dist 2 42 1
$god_ set-dist 2 43 1
$god_ set-dist 2 44 2
$god_ set-dist 2 45 2
$god_ set-dist 2 46 3
$god_ set-dist 2 47 1
$god_ set-dist 2 48 2
$god_ set-dist 2 49 2
$god_ set-dist 3 4 3
$god_ set-dist 3 5 2
$god_ set-dist 3 6 1
$god_ set-dist 3 7 1
$god_ set-dist 3 8 4
$god_ set-dist 3 9 2
$god_ set-dist 3 10 2
$god_ set-dist 3 11 2
$god_ set-dist 3 12 2
$god_ set-dist 3 13 2
$god_ set-dist 3 14 4
$god_ set-dist 3 15 3
$god_ set-dist 3 16 1
$god_ set-dist 3 17 2
$god_ set-dist 3 18 2
$god_ set-dist 3 19 1
$god_ set-dist 3 20 1
$god_ set-dist 3 21 2
$god_ set-dist 3 22 3
$god_ set-dist 3 23 3
$god_ set-dist 3 24 1
$god_ set-dist 3 25 3
$god_ set-dist 3 26 1
$god_ set-dist 3 27 2
$god_ set-dist 3 28 3
$god_ set-dist 3 29 1
$god_ set-dist 3 30 2
$god_ set-dist 3 31 1
$god_ set-dist 3 32 2
$god_ set-dist 3 33 1
$god_ set-dist 3 34 2
$god_ set-dist 3 35 2
$god_ set-dist 3 36 2
$god_ set-dist 3 37 2
$god_ set-dist 3 38 4
$god_ set-dist 3 39 2
$god_ set-dist 3 40 2
$god_ set-dist 3 41 3
$god_ set-dist 3 42 2
$god_ set-dist 3 43 1
$god_ set-dist 3 44 1
$god_ set-dist 3 45 2
$god_ set-dist 3 46 4
$god_ set-dist 3 47 1
$god_ set-dist 3 48 3
$god_ set-dist 3 49 2
$god_ set-dist 4 5 2
$god_ set-dist 4 6 3
$god_ set-dist 4 7 3
$god_ set-dist 4 8 3
$god_ set-dist 4 9 3
$god_ set-dist 4 10 1
$god_ set-dist 4 11 2
$god_ set-dist 4 12 2
$god_ set-dist 4 13 2
$god_ set-dist 4 14 4
$god_ set-dist 4 15 3
$god_ set-dist 4 16 3
$god_ set-dist 4 17 3
$god_ set-dist 4 18 1
$god_ set-dist 4 19 3
$god_ set-dist 4 20 3
$god_ set-dist 4 21 3
$god_ set-dist 4 22 3
$god_ set-dist 4 23 3
$god_ set-dist 4 24 3
$god_ set-dist 4 25 3
$god_ set-dist 4 26 2
$god_ set-dist 4 27 3
$god_ set-dist 4 28 3
$god_ set-dist 4 29 3
$god_ set-dist 4 30 1
$god_ set-dist 4 31 3
$god_ set-dist 4 32 2
$god_ set-dist 4 33 2
$god_ set-dist 4 34 3
$god_ set-dist 4 35 1
$god_ set-dist 4 36 3
$god_ set-dist 4 37 3
$god_ set-dist 4 38 4
$god_ set-dist 4 39 2
$god_ set-dist 4 40 3
$god_ set-dist 4 41 2
$god_ set-dist 4 42 1
$god_ set-dist 4 43 2
$god_ set-dist 4 44 3
$god_ set-dist 4 45 1
$god_ set-dist 4 46 3
$god_ set-dist 4 47 2
$god_ set-dist 4 48 4
$god_ set-dist 4 49 3
$god_ set-dist 5 6 2
$god_ set-dist 5 7 2
$god_ set-dist 5 8 3
$god_ set-dist 5 9 1
$god_ set-dist 5 10 2
$god_ set-dist 5 11 1
$god_ set-dist 5 12 1
$god_ set-dist 5 13 1
$god_ set-dist 5 14 3
$god_ set-dist 5 15 2
$god_ set-dist 5 16 1
$god_ set-dist 5 17 2
$god_ set-dist 5 18 1
$god_ set-dist 5 19 2
$god_ set-dist 5 20 2
$god_ set-dist 5 21 2
$god_ set-dist 5 22 2
$god_ set-dist 5 23 2
$god_ set-dist 5 24 2
$god_ set-dist 5 25 2
$god_ set-dist 5 26 2
$god_ set-dist 5 27 1
$god_ set-dist 5 28 2
$god_ set-dist 5 29 2
$god_ set-dist 5 30 1
$god_ set-dist 5 31 2
$god_ set-dist 5 32 1
$god_ set-dist 5 33 1
$god_ set-dist 5 34 1
$god_ set-dist 5 35 2
$god_ set-dist 5 36 2
$god_ set-dist 5 37 2
$god_ set-dist 5 38 3
$god_ set-dist 5 39 1
$god_ set-dist 5 40 1
$god_ set-dist 5 41 2
$god_ set-dist 5 42 1
$god_ set-dist 5 43 1
$god_ set-dist 5 44 2
$god_ set-dist 5 45 2
$god_ set-dist 5 46 3
$god_ set-dist 5 47 1
$god_ set-dist 5 48 2
$god_ set-dist 5 49 2
$god_ set-dist 6 7 1
$god_ set-dist 6 8 4
$god_ set-dist 6 9 2
$god_ set-dist 6 10 2
$god_ set-dist 6 11 2
$god_ set-dist 6 12 2
$god_ set-dist 6 13 2
$god_ set-dist 6 14 4
$god_ set-dist 6 15 3
$god_ set-dist 6 16 1
$god_ set-dist 6 17 2
$god_ set-dist 6 18 2
$god_ set-dist 6 19 1
$god_ set-dist 6 20 1
$god_ set-dist 6 21 2
$god_ set-dist 6 22 3
$god_ set-dist 6 23 3
$god_ set-dist 6 24 1
$god_ set-dist 6 25 3
$god_ set-dist 6 26 1
$god_ set-dist 6 27 2
$god_ set-dist 6 28 3
$god_ set-dist 6 29 1
$god_ set-dist 6 30 2
$god_ set-dist 6 31 1
$god_ set-dist 6 32 2
$god_ set-dist 6 33 1
$god_ set-dist 6 34 2
$god_ set-dist 6 35 2
$god_ set-dist 6 36 2
$god_ set-dist 6 37 2
$god_ set-dist 6 38 4
$god_ set-dist 6 39 2
$god_ set-dist 6 40 2
$god_ set-dist 6 41 3
$god_ set-dist 6 42 2
$god_ set-dist 6 43 1
$god_ set-dist 6 44 1
$god_ set-dist 6 45 2
$god_ set-dist 6 46 4
$god_ set-dist 6 47 1
$god_ set-dist 6 48 3
$god_ set-dist 6 49 2
$god_ set-dist 7 8 4
$god_ set-dist 7 9 1
$god_ set-dist 7 10 3
$god_ set-dist 7 11 2
$god_ set-dist 7 12 1
$god_ set-dist 7 13 2
$god_ set-dist 7 14 4
$god_ set-dist 7 15 2
$god_ set-dist 7 16 1
$god_ set-dist 7 17 1
$god_ set-dist 7 18 2
$god_ set-dist 7 19 2
$god_ set-dist 7 20 2
$god_ set-dist 7 21 1
$god_ set-dist 7 22 2
$god_ set-dist 7 23 3
$god_ set-dist 7 24 1
$god_ set-dist 7 25 2
$god_ set-dist 7 26 2
$god_ set-dist 7 27 1
$god_ set-dist 7 28 3
$god_ set-dist 7 29 1
$god_ set-dist 7 30 2
$god_ set-dist 7 31 2
$god_ set-dist 7 32 2
$god_ set-dist 7 33 2
$god_ set-dist 7 34 1
$god_ set-dist 7 35 3
$god_ set-dist 7 36 1
$god_ set-dist 7 37 1
$god_ set-dist 7 38 3
$god_ set-dist 7 39 2
$god_ set-dist 7 40 1
$god_ set-dist 7 41 3
$god_ set-dist 7 42 2
$god_ set-dist 7 43 1
$god_ set-dist 7 44 1
$god_ set-dist 7 45 3
$god_ set-dist 7 46 4
$god_ set-dist 7 47 2
$god_ set-dist 7 48 2
$god_ set-dist 7 49 1
$god_ set-dist 8 9 3
$god_ set-dist 8 10 3
$god_ set-dist 8 11 2
$god_ set-dist 8 12 3
$god_ set-dist 8 13 3
$god_ set-dist 8 14 1
$god_ set-dist 8 15 2
$god_ set-dist 8 16 3
$god_ set-dist 8 17 3
$god_ set-dist 8 18 3
$god_ set-dist 8 19 4
$god_ set-dist 8 20 4
$god_ set-dist 8 21 3
$god_ set-dist 8 22 3
$god_ set-dist 8 23 1
$god_ set-dist 8 24 3
$god_ set-dist 8 25 3
$god_ set-dist 8 26 4
$god_ set-dist 8 27 3
$god_ set-dist 8 28 1
$god_ set-dist 8 29 4
$god_ set-dist 8 30 3
$god_ set-dist 8 31 4
$god_ set-dist 8 32 3
$god_ set-dist 8 33 3
$god_ set-dist 8 34 3
$god_ set-dist 8 35 3
$god_ set-dist 8 36 3
$god_ set-dist 8 37 3
$god_ set-dist 8 38 1
$god_ set-dist 8 39 2
$god_ set-dist 8 40 3
$god_ set-dist 8 41 1
$god_ set-dist 8 42 2
$god_ set-dist 8 43 3
$god_ set-dist 8 44 3
$god_ set-dist 8 45 3
$god_ set-dist 8 46 1
$god_ set-dist 8 47 3
$god_ set-dist 8 48 3
$god_ set-dist 8 49 3
$god_ set-dist 9 10 2
$god_ set-dist 9 11 1
$god_ set-dist 9 12 1
$god_ set-dist 9 13 1
$god_ set-dist 9 14 3
$god_ set-dist 9 15 2
$god_ set-dist 9 16 1
$god_ set-dist 9 17 1
$god_ set-dist 9 18 2
$god_ set-dist 9 19 2
$god_ set-dist 9 20 2
$god_ set-dist 9 21 1
$god_ set-dist 9 22 1
$god_ set-dist 9 23 2
$god_ set-dist 9 24 1
$god_ set-dist 9 25 1
$god_ set-dist 9 26 2
$god_ set-dist 9 27 1
$god_ set-dist 9 28 2
$god_ set-dist 9 29 1
$god_ set-dist 9 30 2
$god_ set-dist 9 31 2
$god_ set-dist 9 32 2
$god_ set-dist 9 33 2
$god_ set-dist 9 34 1
$god_ set-dist 9 35 3
$god_ set-dist 9 36 1
$god_ set-dist 9 37 1
$god_ set-dist 9 38 3
$god_ set-dist 9 39 1
$god_ set-dist 9 40 1
$god_ set-dist 9 41 3
$god_ set-dist 9 42 2
$god_ set-dist 9 43 1
$god_ set-dist 9 44 1
$god_ set-dist 9 45 3
$god_ set-dist 9 46 3
$god_ set-dist 9 47 2
$god_ set-dist 9 48 2
$god_ set-dist 9 49 1
$god_ set-dist 10 11 2
$god_ set-dist 10 12 2
$god_ set-dist 10 13 2
$god_ set-dist 10 14 4
$god_ set-dist 10 15 3
$god_ set-dist 10 16 2
$god_ set-dist 10 17 3
$god_ set-dist 10 18 1
$god_ set-dist 10 19 2
$god_ set-dist 10 20 2
$god_ set-dist 10 21 3
$god_ set-dist 10 22 3
$god_ set-dist 10 23 3
$god_ set-dist 10 24 3
$god_ set-dist 10 25 3
$god_ set-dist 10 26 2
$god_ set-dist 10 27 2
$god_ set-dist 10 28 3
$god_ set-dist 10 29 3
$god_ set-dist 10 30 1
$god_ set-dist 10 31 2
$god_ set-dist 10 32 1
$god_ set-dist 10 33 1
$god_ set-dist 10 34 2
$god_ set-dist 10 35 1
$god_ set-dist 10 36 3
$god_ set-dist 10 37 3
$god_ set-dist 10 38 4
$god_ set-dist 10 39 2
$god_ set-dist 10 40 2
$god_ set-dist 10 41 2
$god_ set-dist 10 42 1
$god_ set-dist 10 43 2
$god_ set-dist 10 44 3
$god_ set-dist 10 45 1
$god_ set-dist 10 46 3
$god_ set-dist 10 47 1
$god_ set-dist 10 48 3
$god_ set-dist 10 49 3
$god_ set-dist 11 12 1
$god_ set-dist 11 13 1
$god_ set-dist 11 14 2
$god_ set-dist 11 15 1
$god_ set-dist 11 16 1
$god_ set-dist 11 17 1
$god_ set-dist 11 18 2
$god_ set-dist 11 19 2
$god_ set-dist 11 20 2
$god_ set-dist 11 21 1
$god_ set-dist 11 22 1
$god_ set-dist 11 23 1
$god_ set-dist 11 24 1
$god_ set-dist 11 25 1
$god_ set-dist 11 26 2
$god_ set-dist 11 27 1
$god_ set-dist 11 28 2
$god_ set-dist 11 29 2
$god_ set-dist 11 30 1
$god_ set-dist 11 31 2
$god_ set-dist 11 32 1
$god_ set-dist 11 33 2
$god_ set-dist 11 34 1
$god_ set-dist 11 35 2
$god_ set-dist 11 36 1
$god_ set-dist 11 37 1
$god_ set-dist 11 38 2
$god_ set-dist 11 39 1
$god_ set-dist 11 40 1
$god_ set-dist 11 41 2
$god_ set-dist 11 42 1
$god_ set-dist 11 43 1
$god_ set-dist 11 44 1
$god_ set-dist 11 45 2
$god_ set-dist 11 46 2
$god_ set-dist 11 47 2
$god_ set-dist 11 48 2
$god_ set-dist 11 49 1
$god_ set-dist 12 13 1
$god_ set-dist 12 14 3
$god_ set-dist 12 15 1
$god_ set-dist 12 16 1
$god_ set-dist 12 17 1
$god_ set-dist 12 18 2
$god_ set-dist 12 19 2
$god_ set-dist 12 20 2
$god_ set-dist 12 21 1
$god_ set-dist 12 22 1
$god_ set-dist 12 23 2
$god_ set-dist 12 24 1
$god_ set-dist 12 25 1
$god_ set-dist 12 26 2
$god_ set-dist 12 27 1
$god_ set-dist 12 28 2
$god_ set-dist 12 29 2
$god_ set-dist 12 30 1
$god_ set-dist 12 31 2
$god_ set-dist 12 32 1
$god_ set-dist 12 33 2
$god_ set-dist 12 34 1
$god_ set-dist 12 35 2
$god_ set-dist 12 36 1
$god_ set-dist 12 37 1
$god_ set-dist 12 38 2
$god_ set-dist 12 39 1
$god_ set-dist 12 40 1
$god_ set-dist 12 41 3
$god_ set-dist 12 42 2
$god_ set-dist 12 43 1
$god_ set-dist 12 44 1
$god_ set-dist 12 45 2
$god_ set-dist 12 46 3
$god_ set-dist 12 47 2
$god_ set-dist 12 48 2
$god_ set-dist 12 49 1
$god_ set-dist 13 14 3
$god_ set-dist 13 15 2
$god_ set-dist 13 16 1
$god_ set-dist 13 17 2
$god_ set-dist 13 18 1
$god_ set-dist 13 19 2
$god_ set-dist 13 20 2
$god_ set-dist 13 21 2
$god_ set-dist 13 22 2
$god_ set-dist 13 23 2
$god_ set-dist 13 24 2
$god_ set-dist 13 25 2
$god_ set-dist 13 26 2
$god_ set-dist 13 27 1
$god_ set-dist 13 28 2
$god_ set-dist 13 29 2
$god_ set-dist 13 30 1
$god_ set-dist 13 31 2
$god_ set-dist 13 32 1
$god_ set-dist 13 33 1
$god_ set-dist 13 34 1
$god_ set-dist 13 35 2
$god_ set-dist 13 36 2
$god_ set-dist 13 37 2
$god_ set-dist 13 38 3
$god_ set-dist 13 39 1
$god_ set-dist 13 40 1
$god_ set-dist 13 41 2
$god_ set-dist 13 42 1
$god_ set-dist 13 43 1
$god_ set-dist 13 44 2
$god_ set-dist 13 45 2
$god_ set-dist 13 46 3
$god_ set-dist 13 47 1
$god_ set-dist 13 48 2
$god_ set-dist 13 49 2
$god_ set-dist 14 15 2
$god_ set-dist 14 16 3
$god_ set-dist 14 17 3
$god_ set-dist 14 18 4
$god_ set-dist 14 19 4
$god_ set-dist 14 20 4
$god_ set-dist 14 21 3
$god_ set-dist 14 22 3
$god_ set-dist 14 23 1
$god_ set-dist 14 24 3
$god_ set-dist 14 25 3
$god_ set-dist 14 26 4
$god_ set-dist 14 27 3
$god_ set-dist 14 28 1
$god_ set-dist 14 29 4
$god_ set-dist 14 30 3
$god_ set-dist 14 31 4
$god_ set-dist 14 32 3
$god_ set-dist 14 33 4
$god_ set-dist 14 34 3
$god_ set-dist 14 35 4
$god_ set-dist 14 36 3
$god_ set-dist 14 37 3
$god_ set-dist 14 38 1
$god_ set-dist 14 39 2
$god_ set-dist 14 40 3
$god_ set-dist 14 41 2
$god_ set-dist 14 42 3
$god_ set-dist 14 43 3
$god_ set-dist 14 44 3
$god_ set-dist 14 45 4
$god_ set-dist 14 46 1
$god_ set-dist 14 47 4
$god_ set-dist 14 48 3
$god_ set-dist 14 49 3
$god_ set-dist 15 16 2
$god_ set-dist 15 17 2
$god_ set-dist 15 18 3
$god_ set-dist 15 19 3
$god_ set-dist 15 20 3
$god_ set-dist 15 21 1
$god_ set-dist 15 22 1
$god_ set-dist 15 23 1
$god_ set-dist 15 24 2
$god_ set-dist 15 25 1
$god_ set-dist 15 26 3
$god_ set-dist 15 27 1
$god_ set-dist 15 28 1
$god_ set-dist 15 29 2
$god_ set-dist 15 30 2
$god_ set-dist 15 31 3
$god_ set-dist 15 32 2
$god_ set-dist 15 33 3
$god_ set-dist 15 34 1
$god_ set-dist 15 35 3
$god_ set-dist 15 36 2
$god_ set-dist 15 37 1
$god_ set-dist 15 38 1
$god_ set-dist 15 39 1
$god_ set-dist 15 40 1
$god_ set-dist 15 41 3
$god_ set-dist 15 42 2
$god_ set-dist 15 43 2
$god_ set-dist 15 44 2
$god_ set-dist 15 45 3
$god_ set-dist 15 46 2
$god_ set-dist 15 47 3
$god_ set-dist 15 48 1
$god_ set-dist 15 49 2
$god_ set-dist 16 17 1
$god_ set-dist 16 18 2
$god_ set-dist 16 19 1
$god_ set-dist 16 20 1
$god_ set-dist 16 21 1
$god_ set-dist 16 22 2
$god_ set-dist 16 23 2
$god_ set-dist 16 24 1
$god_ set-dist 16 25 2
$god_ set-dist 16 26 2
$god_ set-dist 16 27 1
$god_ set-dist 16 28 3
$god_ set-dist 16 29 1
$god_ set-dist 16 30 2
$god_ set-dist 16 31 1
$god_ set-dist 16 32 2
$god_ set-dist 16 33 1
$god_ set-dist 16 34 1
$god_ set-dist 16 35 2
$god_ set-dist 16 36 1
$god_ set-dist 16 37 1
$god_ set-dist 16 38 3
$god_ set-dist 16 39 2
$god_ set-dist 16 40 1
$god_ set-dist 16 41 3
$god_ set-dist 16 42 2
$god_ set-dist 16 43 1
$god_ set-dist 16 44 1
$god_ set-dist 16 45 2
$god_ set-dist 16 46 3
$god_ set-dist 16 47 2
$god_ set-dist 16 48 2
$god_ set-dist 16 49 1
$god_ set-dist 17 18 3
$god_ set-dist 17 19 2
$god_ set-dist 17 20 2
$god_ set-dist 17 21 1
$god_ set-dist 17 22 1
$god_ set-dist 17 23 2
$god_ set-dist 17 24 1
$god_ set-dist 17 25 1
$god_ set-dist 17 26 3
$god_ set-dist 17 27 1
$god_ set-dist 17 28 3
$god_ set-dist 17 29 2
$god_ set-dist 17 30 2
$god_ set-dist 17 31 2
$god_ set-dist 17 32 2
$god_ set-dist 17 33 2
$god_ set-dist 17 34 1
$god_ set-dist 17 35 3
$god_ set-dist 17 36 1
$god_ set-dist 17 37 1
$god_ set-dist 17 38 3
$god_ set-dist 17 39 2
$god_ set-dist 17 40 1
$god_ set-dist 17 41 3
$god_ set-dist 17 42 2
$god_ set-dist 17 43 2
$god_ set-dist 17 44 1
$god_ set-dist 17 45 3
$god_ set-dist 17 46 3
$god_ set-dist 17 47 3
$god_ set-dist 17 48 1
$god_ set-dist 17 49 1
$god_ set-dist 18 19 2
$god_ set-dist 18 20 2
$god_ set-dist 18 21 3
$god_ set-dist 18 22 3
$god_ set-dist 18 23 3
$god_ set-dist 18 24 2
$god_ set-dist 18 25 3
$god_ set-dist 18 26 1
$god_ set-dist 18 27 2
$god_ set-dist 18 28 3
$god_ set-dist 18 29 2
$god_ set-dist 18 30 1
$god_ set-dist 18 31 2
$god_ set-dist 18 32 1
$god_ set-dist 18 33 1
$god_ set-dist 18 34 2
$god_ set-dist 18 35 1
$god_ set-dist 18 36 2
$god_ set-dist 18 37 3
$god_ set-dist 18 38 4
$god_ set-dist 18 39 2
$god_ set-dist 18 40 2
$god_ set-dist 18 41 2
$god_ set-dist 18 42 1
$god_ set-dist 18 43 1
$god_ set-dist 18 44 2
$god_ set-dist 18 45 1
$god_ set-dist 18 46 3
$god_ set-dist 18 47 1
$god_ set-dist 18 48 3
$god_ set-dist 18 49 2
$god_ set-dist 19 20 1
$god_ set-dist 19 21 2
$god_ set-dist 19 22 3
$god_ set-dist 19 23 3
$god_ set-dist 19 24 1
$god_ set-dist 19 25 3
$god_ set-dist 19 26 1
$god_ set-dist 19 27 2
$god_ set-dist 19 28 3
$god_ set-dist 19 29 1
$god_ set-dist 19 30 2
$god_ set-dist 19 31 1
$god_ set-dist 19 32 2
$god_ set-dist 19 33 1
$god_ set-dist 19 34 2
$god_ set-dist 19 35 2
$god_ set-dist 19 36 2
$god_ set-dist 19 37 2
$god_ set-dist 19 38 4
$god_ set-dist 19 39 2
$god_ set-dist 19 40 2
$god_ set-dist 19 41 3
$god_ set-dist 19 42 2
$god_ set-dist 19 43 1
$god_ set-dist 19 44 1
$god_ set-dist 19 45 2
$god_ set-dist 19 46 4
$god_ set-dist 19 47 1
$god_ set-dist 19 48 3
$god_ set-dist 19 49 2
$god_ set-dist 20 21 2
$god_ set-dist 20 22 3
$god_ set-dist 20 23 3
$god_ set-dist 20 24 2
$god_ set-dist 20 25 3
$god_ set-dist 20 26 1
$god_ set-dist 20 27 2
$god_ set-dist 20 28 3
$god_ set-dist 20 29 1
$god_ set-dist 20 30 2
$god_ set-dist 20 31 1
$god_ set-dist 20 32 2
$god_ set-dist 20 33 1
$god_ set-dist 20 34 2
$god_ set-dist 20 35 2
$god_ set-dist 20 36 2
$god_ set-dist 20 37 2
$god_ set-dist 20 38 4
$god_ set-dist 20 39 2
$god_ set-dist 20 40 2
$god_ set-dist 20 41 3
$god_ set-dist 20 42 2
$god_ set-dist 20 43 1
$god_ set-dist 20 44 1
$god_ set-dist 20 45 2
$god_ set-dist 20 46 4
$god_ set-dist 20 47 1
$god_ set-dist 20 48 3
$god_ set-dist 20 49 2
$god_ set-dist 21 22 1
$god_ set-dist 21 23 2
$god_ set-dist 21 24 1
$god_ set-dist 21 25 1
$god_ set-dist 21 26 3
$god_ set-dist 21 27 1
$god_ set-dist 21 28 2
$god_ set-dist 21 29 2
$god_ set-dist 21 30 2
$god_ set-dist 21 31 2
$god_ set-dist 21 32 2
$god_ set-dist 21 33 2
$god_ set-dist 21 34 1
$god_ set-dist 21 35 3
$god_ set-dist 21 36 1
$god_ set-dist 21 37 1
$god_ set-dist 21 38 2
$god_ set-dist 21 39 1
$god_ set-dist 21 40 1
$god_ set-dist 21 41 3
$god_ set-dist 21 42 2
$god_ set-dist 21 43 2
$god_ set-dist 21 44 1
$god_ set-dist 21 45 3
$god_ set-dist 21 46 3
$god_ set-dist 21 47 3
$god_ set-dist 21 48 1
$god_ set-dist 21 49 1
$god_ set-dist 22 23 2
$god_ set-dist 22 24 2
$god_ set-dist 22 25 1
$god_ set-dist 22 26 3
$god_ set-dist 22 27 1
$god_ set-dist 22 28 2
$god_ set-dist 22 29 2
$god_ set-dist 22 30 2
$god_ set-dist 22 31 3
$god_ set-dist 22 32 2
$god_ set-dist 22 33 3
$god_ set-dist 22 34 1
$god_ set-dist 22 35 3
$god_ set-dist 22 36 1
$god_ set-dist 22 37 1
$god_ set-dist 22 38 2
$god_ set-dist 22 39 1
$god_ set-dist 22 40 1
$god_ set-dist 22 41 3
$god_ set-dist 22 42 2
$god_ set-dist 22 43 2
$god_ set-dist 22 44 2
$god_ set-dist 22 45 3
$god_ set-dist 22 46 3
$god_ set-dist 22 47 3
$god_ set-dist 22 48 1
$god_ set-dist 22 49 1
$god_ set-dist 23 24 2
$god_ set-dist 23 25 2
$god_ set-dist 23 26 3
$god_ set-dist 23 27 2
$god_ set-dist 23 28 1
$god_ set-dist 23 29 3
$god_ set-dist 23 30 2
$god_ set-dist 23 31 3
$god_ set-dist 23 32 2
$god_ set-dist 23 33 3
$god_ set-dist 23 34 2
$god_ set-dist 23 35 3
$god_ set-dist 23 36 2
$god_ set-dist 23 37 2
$god_ set-dist 23 38 1
$god_ set-dist 23 39 1
$god_ set-dist 23 40 2
$god_ set-dist 23 41 2
$god_ set-dist 23 42 2
$god_ set-dist 23 43 2
$god_ set-dist 23 44 2
$god_ set-dist 23 45 3
$god_ set-dist 23 46 1
$god_ set-dist 23 47 3
$god_ set-dist 23 48 2
$god_ set-dist 23 49 2
$god_ set-dist 24 25 2
$god_ set-dist 24 26 2
$god_ set-dist 24 27 1
$god_ set-dist 24 28 3
$god_ set-dist 24 29 1
$god_ set-dist 24 30 2
$god_ set-dist 24 31 2
$god_ set-dist 24 32 2
$god_ set-dist 24 33 2
$god_ set-dist 24 34 1
$god_ set-dist 24 35 3
$god_ set-dist 24 36 1
$god_ set-dist 24 37 1
$god_ set-dist 24 38 3
$god_ set-dist 24 39 2
$god_ set-dist 24 40 1
$god_ set-dist 24 41 3
$god_ set-dist 24 42 2
$god_ set-dist 24 43 1
$god_ set-dist 24 44 1
$god_ set-dist 24 45 3
$god_ set-dist 24 46 3
$god_ set-dist 24 47 2
$god_ set-dist 24 48 2
$god_ set-dist 24 49 1
$god_ set-dist 25 26 3
$god_ set-dist 25 27 1
$god_ set-dist 25 28 2
$god_ set-dist 25 29 2
$god_ set-dist 25 30 2
$god_ set-dist 25 31 3
$god_ set-dist 25 32 2
$god_ set-dist 25 33 3
$god_ set-dist 25 34 1
$god_ set-dist 25 35 3
$god_ set-dist 25 36 1
$god_ set-dist 25 37 1
$god_ set-dist 25 38 2
$god_ set-dist 25 39 1
$god_ set-dist 25 40 1
$god_ set-dist 25 41 3
$god_ set-dist 25 42 2
$god_ set-dist 25 43 2
$god_ set-dist 25 44 2
$god_ set-dist 25 45 3
$god_ set-dist 25 46 3
$god_ set-dist 25 47 3
$god_ set-dist 25 48 1
$god_ set-dist 25 49 1
$god_ set-dist 26 27 2
$god_ set-dist 26 28 3
$god_ set-dist 26 29 2
$god_ set-dist 26 30 1
$god_ set-dist 26 31 1
$god_ set-dist 26 32 2
$god_ set-dist 26 33 1
$god_ set-dist 26 34 2
$god_ set-dist 26 35 2
$god_ set-dist 26 36 2
$god_ set-dist 26 37 3
$god_ set-dist 26 38 4
$god_ set-dist 26 39 2
$god_ set-dist 26 40 2
$god_ set-dist 26 41 3
$god_ set-dist 26 42 2
$god_ set-dist 26 43 1
$god_ set-dist 26 44 2
$god_ set-dist 26 45 2
$god_ set-dist 26 46 4
$god_ set-dist 26 47 1
$god_ set-dist 26 48 3
$god_ set-dist 26 49 2
$god_ set-dist 27 28 2
$god_ set-dist 27 29 1
$god_ set-dist 27 30 2
$god_ set-dist 27 31 2
$god_ set-dist 27 32 2
$god_ set-dist 27 33 2
$god_ set-dist 27 34 1
$god_ set-dist 27 35 3
$god_ set-dist 27 36 1
$god_ set-dist 27 37 1
$god_ set-dist 27 38 2
$god_ set-dist 27 39 1
$god_ set-dist 27 40 1
$god_ set-dist 27 41 3
$god_ set-dist 27 42 2
$god_ set-dist 27 43 1
$god_ set-dist 27 44 1
$god_ set-dist 27 45 3
$god_ set-dist 27 46 3
$god_ set-dist 27 47 2
$god_ set-dist 27 48 2
$god_ set-dist 27 49 1
$god_ set-dist 28 29 3
$god_ set-dist 28 30 2
$god_ set-dist 28 31 3
$god_ set-dist 28 32 2
$god_ set-dist 28 33 3
$god_ set-dist 28 34 2
$god_ set-dist 28 35 3
$god_ set-dist 28 36 2
$god_ set-dist 28 37 2
$god_ set-dist 28 38 1
$god_ set-dist 28 39 1
$god_ set-dist 28 40 2
$god_ set-dist 28 41 2
$god_ set-dist 28 42 2
$god_ set-dist 28 43 2
$god_ set-dist 28 44 3
$god_ set-dist 28 45 3
$god_ set-dist 28 46 1
$god_ set-dist 28 47 3
$god_ set-dist 28 48 2
$god_ set-dist 28 49 3
$god_ set-dist 29 30 2
$god_ set-dist 29 31 1
$god_ set-dist 29 32 2
$god_ set-dist 29 33 2
$god_ set-dist 29 34 1
$god_ set-dist 29 35 3
$god_ set-dist 29 36 1
$god_ set-dist 29 37 2
$god_ set-dist 29 38 3
$god_ set-dist 29 39 2
$god_ set-dist 29 40 2
$god_ set-dist 29 41 3
$god_ set-dist 29 42 2
$god_ set-dist 29 43 1
$god_ set-dist 29 44 1
$god_ set-dist 29 45 3
$god_ set-dist 29 46 4
$god_ set-dist 29 47 2
$god_ set-dist 29 48 2
$god_ set-dist 29 49 1
$god_ set-dist 30 31 2
$god_ set-dist 30 32 1
$god_ set-dist 30 33 1
$god_ set-dist 30 34 2
$god_ set-dist 30 35 1
$god_ set-dist 30 36 2
$god_ set-dist 30 37 2
$god_ set-dist 30 38 3
$god_ set-dist 30 39 1
$god_ set-dist 30 40 2
$god_ set-dist 30 41 2
$god_ set-dist 30 42 1
$god_ set-dist 30 43 1
$god_ set-dist 30 44 2
$god_ set-dist 30 45 1
$god_ set-dist 30 46 3
$god_ set-dist 30 47 1
$god_ set-dist 30 48 3
$god_ set-dist 30 49 2
$god_ set-dist 31 32 2
$god_ set-dist 31 33 1
$god_ set-dist 31 34 2
$god_ set-dist 31 35 2
$god_ set-dist 31 36 2
$god_ set-dist 31 37 2
$god_ set-dist 31 38 4
$god_ set-dist 31 39 2
$god_ set-dist 31 40 2
$god_ set-dist 31 41 3
$god_ set-dist 31 42 2
$god_ set-dist 31 43 1
$god_ set-dist 31 44 1
$god_ set-dist 31 45 2
$god_ set-dist 31 46 4
$god_ set-dist 31 47 1
$god_ set-dist 31 48 3
$god_ set-dist 31 49 2
$god_ set-dist 32 33 1
$god_ set-dist 32 34 2
$god_ set-dist 32 35 1
$god_ set-dist 32 36 2
$god_ set-dist 32 37 2
$god_ set-dist 32 38 3
$god_ set-dist 32 39 1
$god_ set-dist 32 40 2
$god_ set-dist 32 41 2
$god_ set-dist 32 42 1
$god_ set-dist 32 43 1
$god_ set-dist 32 44 2
$god_ set-dist 32 45 1
$god_ set-dist 32 46 3
$god_ set-dist 32 47 1
$god_ set-dist 32 48 3
$god_ set-dist 32 49 2
$god_ set-dist 33 34 2
$god_ set-dist 33 35 1
$god_ set-dist 33 36 2
$god_ set-dist 33 37 2
$god_ set-dist 33 38 4
$god_ set-dist 33 39 2
$god_ set-dist 33 40 2
$god_ set-dist 33 41 2
$god_ set-dist 33 42 1
$god_ set-dist 33 43 1
$god_ set-dist 33 44 2
$god_ set-dist 33 45 1
$god_ set-dist 33 46 3
$god_ set-dist 33 47 1
$god_ set-dist 33 48 3
$god_ set-dist 33 49 2
$god_ set-dist 34 35 3
$god_ set-dist 34 36 1
$god_ set-dist 34 37 1
$god_ set-dist 34 38 2
$god_ set-dist 34 39 1
$god_ set-dist 34 40 1
$god_ set-dist 34 41 3
$god_ set-dist 34 42 2
$god_ set-dist 34 43 1
$god_ set-dist 34 44 1
$god_ set-dist 34 45 3
$god_ set-dist 34 46 3
$god_ set-dist 34 47 2
$god_ set-dist 34 48 2
$god_ set-dist 34 49 1
$god_ set-dist 35 36 3
$god_ set-dist 35 37 3
$god_ set-dist 35 38 4
$god_ set-dist 35 39 2
$god_ set-dist 35 40 3
$god_ set-dist 35 41 2
$god_ set-dist 35 42 1
$god_ set-dist 35 43 2
$god_ set-dist 35 44 3
$god_ set-dist 35 45 1
$god_ set-dist 35 46 3
$god_ set-dist 35 47 1
$god_ set-dist 35 48 4
$god_ set-dist 35 49 3
$god_ set-dist 36 37 1
$god_ set-dist 36 38 3
$god_ set-dist 36 39 1
$god_ set-dist 36 40 1
$god_ set-dist 36 41 3
$god_ set-dist 36 42 2
$god_ set-dist 36 43 1
$god_ set-dist 36 44 1
$god_ set-dist 36 45 3
$god_ set-dist 36 46 3
$god_ set-dist 36 47 2
$god_ set-dist 36 48 2
$god_ set-dist 36 49 1
$god_ set-dist 37 38 2
$god_ set-dist 37 39 2
$god_ set-dist 37 40 1
$god_ set-dist 37 41 3
$god_ set-dist 37 42 2
$god_ set-dist 37 43 2
$god_ set-dist 37 44 1
$god_ set-dist 37 45 3
$god_ set-dist 37 46 3
$god_ set-dist 37 47 3
$god_ set-dist 37 48 1
$god_ set-dist 37 49 1
$god_ set-dist 38 39 2
$god_ set-dist 38 40 2
$god_ set-dist 38 41 2
$god_ set-dist 38 42 3
$god_ set-dist 38 43 3
$god_ set-dist 38 44 3
$god_ set-dist 38 45 4
$god_ set-dist 38 46 1
$god_ set-dist 38 47 4
$god_ set-dist 38 48 2
$god_ set-dist 38 49 3
$god_ set-dist 39 40 1
$god_ set-dist 39 41 2
$god_ set-dist 39 42 1
$god_ set-dist 39 43 1
$god_ set-dist 39 44 2
$god_ set-dist 39 45 2
$god_ set-dist 39 46 2
$god_ set-dist 39 47 2
$god_ set-dist 39 48 2
$god_ set-dist 39 49 2
$god_ set-dist 40 41 3
$god_ set-dist 40 42 2
$god_ set-dist 40 43 1
$god_ set-dist 40 44 1
$god_ set-dist 40 45 3
$god_ set-dist 40 46 3
$god_ set-dist 40 47 2
$god_ set-dist 40 48 1
$god_ set-dist 40 49 1
$god_ set-dist 41 42 1
$god_ set-dist 41 43 2
$god_ set-dist 41 44 3
$god_ set-dist 41 45 2
$god_ set-dist 41 46 1
$god_ set-dist 41 47 2
$god_ set-dist 41 48 4
$god_ set-dist 41 49 3
$god_ set-dist 42 43 1
$god_ set-dist 42 44 2
$god_ set-dist 42 45 1
$god_ set-dist 42 46 2
$god_ set-dist 42 47 1
$god_ set-dist 42 48 3
$god_ set-dist 42 49 2
$god_ set-dist 43 44 1
$god_ set-dist 43 45 2
$god_ set-dist 43 46 3
$god_ set-dist 43 47 1
$god_ set-dist 43 48 2
$god_ set-dist 43 49 1
$god_ set-dist 44 45 3
$god_ set-dist 44 46 3
$god_ set-dist 44 47 2
$god_ set-dist 44 48 2
$god_ set-dist 44 49 1
$god_ set-dist 45 46 3
$god_ set-dist 45 47 1
$god_ set-dist 45 48 4
$god_ set-dist 45 49 3
$god_ set-dist 46 47 3
$god_ set-dist 46 48 3
$god_ set-dist 46 49 3
$god_ set-dist 47 48 3
$god_ set-dist 47 49 2
$god_ set-dist 48 49 2
$ns_ at 1.000000000000 "$node_(0) setdest 590.506753524627 148.853483810445 9.238248977707"
$ns_ at 1.000000000000 "$node_(1) setdest 488.096070665396 440.662117625522 8.874292049057"
$ns_ at 1.000000000000 "$node_(2) setdest 244.682220775611 240.647355167812 0.668803038800"
$ns_ at 1.000000000000 "$node_(3) setdest 460.173168817074 240.797504644348 8.048857535273"
$ns_ at 1.000000000000 "$node_(4) setdest 402.820280843093 115.126936963388 0.002559395631"
$ns_ at 1.000000000000 "$node_(5) setdest 525.017402915661 595.572021354218 5.344499443112"
$ns_ at 1.000000000000 "$node_(6) setdest 227.199210386592 155.459981687757 1.031009525631"
$ns_ at 1.000000000000 "$node_(7) setdest 598.871400720731 641.487782227215 4.902158961550"
$ns_ at 1.000000000000 "$node_(8) setdest 182.871020205126 557.407920370076 6.210384567212"
$ns_ at 1.000000000000 "$node_(9) setdest 545.039651332946 225.685109852930 4.770029136484"
$ns_ at 1.000000000000 "$node_(10) setdest 213.162433257742 564.606897781658 4.641092965693"
$ns_ at 1.000000000000 "$node_(11) setdest 669.331625341665 168.922999958970 7.029482769345"
$ns_ at 1.000000000000 "$node_(12) setdest 593.424133870802 411.471086686008 3.373707447138"
$ns_ at 1.000000000000 "$node_(13) setdest 415.922456968546 153.627765212342 8.648491075469"
$ns_ at 1.000000000000 "$node_(14) setdest 287.503053529802 192.634994261451 8.311242055785"
$ns_ at 1.000000000000 "$node_(15) setdest 136.069321293016 625.786774431739 5.981614832807"
$ns_ at 1.000000000000 "$node_(16) setdest 598.167131258818 527.143107379267 5.721596349052"
$ns_ at 1.000000000000 "$node_(17) setdest 505.983674613434 234.725061385616 9.394697906472"
$ns_ at 1.000000000000 "$node_(18) setdest 432.716742170761 13.633867708464 2.749698693384"
$ns_ at 1.000000000000 "$node_(19) setdest 389.509519249662 314.540725407300 9.958289224031"
$ns_ at 1.000000000000 "$node_(20) setdest 654.238906549684 627.083257765816 4.195129634483"
$ns_ at 1.000000000000 "$node_(21) setdest 210.282649637384 73.879562205856 9.539600420798"
$ns_ at 1.000000000000 "$node_(22) setdest 298.689401842979 154.073251548045 7.144896671208"
$ns_ at 1.000000000000 "$node_(23) setdest 365.286351744915 304.591321697225 6.576331029152"
$ns_ at 1.000000000000 "$node_(24) setdest 562.162357140279 652.624671213779 9.998679712816"
$ns_ at 1.000000000000 "$node_(25) setdest 322.879565783998 182.689641313498 4.030386039130"
$ns_ at 1.000000000000 "$node_(26) setdest 421.736595386456 140.021385029994 6.317078539625"
$ns_ at 1.000000000000 "$node_(27) setdest 578.234079478469 202.048509301639 0.870135862145"
$ns_ at 1.000000000000 "$node_(28) setdest 435.090412180593 211.583647355297 7.884435146107"
$ns_ at 1.000000000000 "$node_(29) setdest 515.135038562140 116.565796154478 4.334032673267"
$ns_ at 1.000000000000 "$node_(30) setdest 393.572410571636 31.533276070590 6.099132618080"
$ns_ at 1.000000000000 "$node_(31) setdest 230.751440486940 669.869533230752 7.829753940131"
$ns_ at 1.000000000000 "$node_(32) setdest 299.678524884659 429.258251482555 3.137259381486"
$ns_ at 1.000000000000 "$node_(33) setdest 591.207170184025 299.209983196500 0.638472978678"
$ns_ at 1.000000000000 "$node_(34) setdest 499.426799391111 74.195098588844 0.543370906501"
$ns_ at 1.000000000000 "$node_(35) setdest 378.008553373110 252.741269972218 1.953327911043"
$ns_ at 1.000000000000 "$node_(36) setdest 556.121823441549 198.797066111534 6.156575144401"
$ns_ at 1.000000000000 "$node_(37) setdest 170.402116240850 186.123598582043 4.786611470770"
$ns_ at 1.000000000000 "$node_(38) setdest 71.077175644239 458.293525025959 9.777439626331"
$ns_ at 1.000000000000 "$node_(39) setdest 189.607708581817 207.293579677833 5.017388119273"
$ns_ at 1.000000000000 "$node_(40) setdest 393.830516360874 520.407522054101 3.702644296025"
$ns_ at 1.000000000000 "$node_(41) setdest 268.588912330217 414.021438843678 5.406430376353"
$ns_ at 1.000000000000 "$node_(42) setdest 317.485400311873 341.155849460144 5.330626859509"
$ns_ at 1.000000000000 "$node_(43) setdest 317.949574720932 287.462817186552 5.625905725218"
$ns_ at 1.000000000000 "$node_(44) setdest 26.597312992029 102.035576233966 3.481158901491"
$ns_ at 1.000000000000 "$node_(45) setdest 636.397776310504 425.127842362642 9.059160229355"
$ns_ at 1.000000000000 "$node_(46) setdest 556.749597348719 157.554730666192 1.768902651484"
$ns_ at 1.000000000000 "$node_(47) setdest 382.758969332526 240.145026501307 4.317843112655"
$ns_ at 1.000000000000 "$node_(48) setdest 480.396841057237 338.520961062135 8.817033223795"
$ns_ at 1.000000000000 "$node_(49) setdest 520.358720252899 87.777219593446 4.312119730031"
$ns_ at 1.050372719267 "$god_ set-dist 17 29 1"
$ns_ at 1.137125012309 "$god_ set-dist 15 17 1"
$ns_ at 1.137125012309 "$god_ set-dist 17 28 2"
$ns_ at 1.137125012309 "$god_ set-dist 17 38 2"
$ns_ at 1.168971961609 "$god_ set-dist 4 12 3"
$ns_ at 1.168971961609 "$god_ set-dist 4 30 2"
$ns_ at 1.172695332818 "$god_ set-dist 1 4 4"
$ns_ at 1.172695332818 "$god_ set-dist 4 8 4"
$ns_ at 1.172695332818 "$god_ set-dist 4 11 3"
$ns_ at 1.172695332818 "$god_ set-dist 4 14 5"
$ns_ at 1.172695332818 "$god_ set-dist 4 15 4"
$ns_ at 1.172695332818 "$god_ set-dist 4 17 4"
$ns_ at 1.172695332818 "$god_ set-dist 4 21 4"
$ns_ at 1.172695332818 "$god_ set-dist 4 22 4"
$ns_ at 1.172695332818 "$god_ set-dist 4 23 4"
$ns_ at 1.172695332818 "$god_ set-dist 4 25 4"
$ns_ at 1.172695332818 "$god_ set-dist 4 28 4"
$ns_ at 1.172695332818 "$god_ set-dist 4 37 4"
$ns_ at 1.172695332818 "$god_ set-dist 4 38 5"
$ns_ at 1.172695332818 "$god_ set-dist 4 39 3"
$ns_ at 1.172695332818 "$god_ set-dist 4 41 3"
$ns_ at 1.172695332818 "$god_ set-dist 4 42 2"
$ns_ at 1.172695332818 "$god_ set-dist 4 46 4"
$ns_ at 1.185992172625 "$god_ set-dist 9 15 1"
$ns_ at 1.185992172625 "$god_ set-dist 9 38 2"
$ns_ at 1.188705671912 "$god_ set-dist 20 24 1"
$ns_ at 1.221323014132 "$god_ set-dist 1 41 4"
$ns_ at 1.221323014132 "$god_ set-dist 1 42 3"
$ns_ at 1.221323014132 "$god_ set-dist 11 41 3"
$ns_ at 1.221323014132 "$god_ set-dist 11 42 2"
$ns_ at 1.221323014132 "$god_ set-dist 17 41 4"
$ns_ at 1.221323014132 "$god_ set-dist 17 42 3"
$ns_ at 1.221323014132 "$god_ set-dist 37 41 4"
$ns_ at 1.221323014132 "$god_ set-dist 37 42 3"
$ns_ at 1.285467772543 "$god_ set-dist 1 4 3"
$ns_ at 1.285467772543 "$god_ set-dist 1 18 2"
$ns_ at 1.285467772543 "$god_ set-dist 1 26 2"
$ns_ at 1.285467772543 "$god_ set-dist 1 41 3"
$ns_ at 1.285467772543 "$god_ set-dist 1 42 2"
$ns_ at 1.285467772543 "$god_ set-dist 1 43 1"
$ns_ at 1.285467772543 "$god_ set-dist 1 47 2"
$ns_ at 1.440851875013 "$god_ set-dist 27 48 1"
$ns_ at 1.541092924501 "$god_ set-dist 0 38 3"
$ns_ at 1.541092924501 "$god_ set-dist 2 38 2"
$ns_ at 1.541092924501 "$god_ set-dist 3 38 3"
$ns_ at 1.541092924501 "$god_ set-dist 4 38 4"
$ns_ at 1.541092924501 "$god_ set-dist 5 38 2"
$ns_ at 1.541092924501 "$god_ set-dist 6 38 3"
$ns_ at 1.541092924501 "$god_ set-dist 10 38 3"
$ns_ at 1.541092924501 "$god_ set-dist 13 38 2"
$ns_ at 1.541092924501 "$god_ set-dist 18 38 3"
$ns_ at 1.541092924501 "$god_ set-dist 19 38 3"
$ns_ at 1.541092924501 "$god_ set-dist 20 38 3"
$ns_ at 1.541092924501 "$god_ set-dist 26 38 3"
$ns_ at 1.541092924501 "$god_ set-dist 30 38 2"
$ns_ at 1.541092924501 "$god_ set-dist 31 38 3"
$ns_ at 1.541092924501 "$god_ set-dist 32 38 2"
$ns_ at 1.541092924501 "$god_ set-dist 33 38 3"
$ns_ at 1.541092924501 "$god_ set-dist 35 38 3"
$ns_ at 1.541092924501 "$god_ set-dist 36 38 2"
$ns_ at 1.541092924501 "$god_ set-dist 38 39 1"
$ns_ at 1.541092924501 "$god_ set-dist 38 42 2"
$ns_ at 1.541092924501 "$god_ set-dist 38 43 2"
$ns_ at 1.541092924501 "$god_ set-dist 38 45 3"
$ns_ at 1.541092924501 "$god_ set-dist 38 47 3"
$ns_ at 1.655679128490 "$god_ set-dist 48 49 1"
$ns_ at 1.701186231289 "$god_ set-dist 29 40 1"
$ns_ at 1.705012263410 "$god_ set-dist 16 26 1"
$ns_ at 1.705012263410 "$god_ set-dist 17 26 2"
$ns_ at 1.705012263410 "$god_ set-dist 21 26 2"
$ns_ at 1.705012263410 "$god_ set-dist 26 37 2"
$ns_ at 1.712857362121 "$god_ set-dist 0 32 1"
$ns_ at 1.870945871723 "$god_ set-dist 26 35 1"
$ns_ at 1.887549285043 "$god_ set-dist 7 19 1"
$ns_ at 1.954040061899 "$god_ set-dist 13 44 1"
$ns_ at 2.096680453471 "$god_ set-dist 8 25 2"
$ns_ at 2.096680453471 "$god_ set-dist 14 25 2"
$ns_ at 2.096680453471 "$god_ set-dist 23 25 1"
$ns_ at 2.096680453471 "$god_ set-dist 25 46 2"
$ns_ at 2.255199366222 "$god_ set-dist 4 14 4"
$ns_ at 2.255199366222 "$god_ set-dist 4 23 3"
$ns_ at 2.255199366222 "$god_ set-dist 5 8 2"
$ns_ at 2.255199366222 "$god_ set-dist 5 14 2"
$ns_ at 2.255199366222 "$god_ set-dist 5 23 1"
$ns_ at 2.255199366222 "$god_ set-dist 5 46 2"
$ns_ at 2.255199366222 "$god_ set-dist 14 18 3"
$ns_ at 2.255199366222 "$god_ set-dist 14 33 3"
$ns_ at 2.255199366222 "$god_ set-dist 14 47 3"
$ns_ at 2.255199366222 "$god_ set-dist 18 23 2"
$ns_ at 2.255199366222 "$god_ set-dist 23 33 2"
$ns_ at 2.255199366222 "$god_ set-dist 23 47 2"
$ns_ at 2.258309648568 "$god_ set-dist 26 45 1"
$ns_ at 2.554803760432 "$god_ set-dist 8 13 2"
$ns_ at 2.554803760432 "$god_ set-dist 13 14 2"
$ns_ at 2.554803760432 "$god_ set-dist 13 23 1"
$ns_ at 2.554803760432 "$god_ set-dist 13 46 2"
$ns_ at 2.664161618679 "$god_ set-dist 36 48 1"
$ns_ at 2.687168092643 "$god_ set-dist 13 36 1"
$ns_ at 2.701687265795 "$god_ set-dist 19 30 1"
$ns_ at 2.710464182207 "$god_ set-dist 0 48 3"
$ns_ at 2.710464182207 "$god_ set-dist 11 48 1"
$ns_ at 2.710464182207 "$god_ set-dist 30 48 2"
$ns_ at 2.710464182207 "$god_ set-dist 32 48 2"
$ns_ at 2.710464182207 "$god_ set-dist 35 48 3"
$ns_ at 2.710464182207 "$god_ set-dist 45 48 3"
$ns_ at 2.807755265098 "$god_ set-dist 9 48 1"
$ns_ at 2.820075558983 "$god_ set-dist 4 15 3"
$ns_ at 2.820075558983 "$god_ set-dist 13 15 1"
$ns_ at 2.820075558983 "$god_ set-dist 15 18 2"
$ns_ at 2.820075558983 "$god_ set-dist 15 33 2"
$ns_ at 2.820075558983 "$god_ set-dist 15 47 2"
$ns_ at 2.840777247441 "$god_ set-dist 3 9 1"
$ns_ at 2.840777247441 "$god_ set-dist 3 15 2"
$ns_ at 2.840777247441 "$god_ set-dist 3 22 2"
$ns_ at 2.840777247441 "$god_ set-dist 3 25 2"
$ns_ at 2.840777247441 "$god_ set-dist 3 48 2"
$ns_ at 2.860531571038 "$god_ set-dist 12 29 1"
$ns_ at 2.909995398308 "$god_ set-dist 0 14 3"
$ns_ at 2.909995398308 "$god_ set-dist 2 14 2"
$ns_ at 2.909995398308 "$god_ set-dist 3 14 3"
$ns_ at 2.909995398308 "$god_ set-dist 6 14 3"
$ns_ at 2.909995398308 "$god_ set-dist 7 14 3"
$ns_ at 2.909995398308 "$god_ set-dist 9 14 2"
$ns_ at 2.909995398308 "$god_ set-dist 10 14 3"
$ns_ at 2.909995398308 "$god_ set-dist 12 14 2"
$ns_ at 2.909995398308 "$god_ set-dist 14 19 3"
$ns_ at 2.909995398308 "$god_ set-dist 14 20 3"
$ns_ at 2.909995398308 "$god_ set-dist 14 21 2"
$ns_ at 2.909995398308 "$god_ set-dist 14 22 2"
$ns_ at 2.909995398308 "$god_ set-dist 14 26 3"
$ns_ at 2.909995398308 "$god_ set-dist 14 27 2"
$ns_ at 2.909995398308 "$god_ set-dist 14 29 3"
$ns_ at 2.909995398308 "$god_ set-dist 14 30 2"
$ns_ at 2.909995398308 "$god_ set-dist 14 31 3"
$ns_ at 2.909995398308 "$god_ set-dist 14 32 2"
$ns_ at 2.909995398308 "$god_ set-dist 14 34 2"
$ns_ at 2.909995398308 "$god_ set-dist 14 35 3"
$ns_ at 2.909995398308 "$god_ set-dist 14 36 2"
$ns_ at 2.909995398308 "$god_ set-dist 14 39 1"
$ns_ at 2.909995398308 "$god_ set-dist 14 40 2"
$ns_ at 2.909995398308 "$god_ set-dist 14 42 2"
$ns_ at 2.909995398308 "$god_ set-dist 14 43 2"
$ns_ at 2.909995398308 "$god_ set-dist 14 45 3"
$ns_ at 2.977948905021 "$god_ set-dist 26 32 1"
$ns_ at 3.043309936018 "$god_ set-dist 34 48 1"
$ns_ at 3.256763574615 "$god_ set-dist 20 33 2"
$ns_ at 3.461960069085 "$god_ set-dist 10 26 1"
$ns_ at 3.554780655681 "$god_ set-dist 5 44 1"
$ns_ at 3.753045073303 "$god_ set-dist 14 15 1"
$ns_ at 3.753045073303 "$god_ set-dist 14 17 2"
$ns_ at 3.753045073303 "$god_ set-dist 14 37 2"
$ns_ at 3.753045073303 "$god_ set-dist 14 48 2"
$ns_ at 3.894160821189 "$god_ set-dist 3 34 1"
$ns_ at 3.970328141927 "$god_ set-dist 4 21 3"
$ns_ at 3.970328141927 "$god_ set-dist 13 21 1"
$ns_ at 3.970328141927 "$god_ set-dist 18 21 2"
$ns_ at 3.970328141927 "$god_ set-dist 21 47 2"
$ns_ at 4.033479433350 "$god_ set-dist 11 32 2"
$ns_ at 4.033479433350 "$god_ set-dist 32 48 3"
$ns_ at 4.157767392917 "$god_ set-dist 14 31 4"
$ns_ at 4.157767392917 "$god_ set-dist 28 31 4"
$ns_ at 4.157767392917 "$god_ set-dist 31 38 4"
$ns_ at 4.157767392917 "$god_ set-dist 31 39 3"
$ns_ at 4.157767392917 "$god_ set-dist 31 43 2"
$ns_ at 4.200702423417 "$god_ set-dist 5 19 1"
$ns_ at 4.200702423417 "$god_ set-dist 8 19 3"
$ns_ at 4.200702423417 "$god_ set-dist 19 23 2"
$ns_ at 4.200702423417 "$god_ set-dist 19 46 3"
$ns_ at 4.202237635699 "$god_ set-dist 3 12 1"
$ns_ at 4.203969829530 "$god_ set-dist 21 43 1"
$ns_ at 4.204501445175 "$god_ set-dist 2 35 1"
$ns_ at 4.204501445175 "$god_ set-dist 9 35 2"
$ns_ at 4.204501445175 "$god_ set-dist 27 35 2"
$ns_ at 4.204501445175 "$god_ set-dist 34 35 2"
$ns_ at 4.204501445175 "$god_ set-dist 35 40 2"
$ns_ at 4.307755416716 "$god_ set-dist 4 19 2"
$ns_ at 4.307755416716 "$god_ set-dist 18 19 1"
$ns_ at 4.330731722698 "$god_ set-dist 12 19 1"
$ns_ at 4.330731722698 "$god_ set-dist 15 19 2"
$ns_ at 4.330731722698 "$god_ set-dist 19 22 2"
$ns_ at 4.330731722698 "$god_ set-dist 19 25 2"
$ns_ at 4.352582427412 "$god_ set-dist 12 48 1"
$ns_ at 4.352582427412 "$god_ set-dist 19 48 2"
$ns_ at 4.352582427412 "$god_ set-dist 32 48 2"
$ns_ at 4.355814360120 "$god_ set-dist 19 34 1"
$ns_ at 4.487511186480 "$god_ set-dist 2 9 2"
$ns_ at 4.487511186480 "$god_ set-dist 9 10 3"
$ns_ at 4.487511186480 "$god_ set-dist 9 35 3"
$ns_ at 4.704684688925 "$god_ set-dist 0 29 2"
$ns_ at 4.704684688925 "$god_ set-dist 0 31 1"
$ns_ at 4.704684688925 "$god_ set-dist 0 44 2"
$ns_ at 4.704684688925 "$god_ set-dist 4 31 2"
$ns_ at 4.766469667318 "$god_ set-dist 14 20 4"
$ns_ at 4.766469667318 "$god_ set-dist 20 28 4"
$ns_ at 4.766469667318 "$god_ set-dist 20 38 4"
$ns_ at 4.766469667318 "$god_ set-dist 20 39 3"
$ns_ at 4.766469667318 "$god_ set-dist 20 43 2"
$ns_ at 4.827219378848 "$god_ set-dist 3 5 1"
$ns_ at 4.827219378848 "$god_ set-dist 3 8 3"
$ns_ at 4.827219378848 "$god_ set-dist 3 23 2"
$ns_ at 4.827219378848 "$god_ set-dist 3 46 3"
$ns_ at 4.879548127163 "$god_ set-dist 15 41 2"
$ns_ at 4.879548127163 "$god_ set-dist 17 41 3"
$ns_ at 4.879548127163 "$god_ set-dist 37 41 3"
$ns_ at 4.879548127163 "$god_ set-dist 38 41 1"
$ns_ at 4.879548127163 "$god_ set-dist 41 48 3"
$ns_ at 4.960252189547 "$god_ set-dist 13 47 2"
$ns_ at 4.960252189547 "$god_ set-dist 15 47 3"
$ns_ at 5.000482278115 "$god_ set-dist 4 17 3"
$ns_ at 5.000482278115 "$god_ set-dist 17 18 2"
$ns_ at 5.000482278115 "$god_ set-dist 17 42 2"
$ns_ at 5.000482278115 "$god_ set-dist 17 43 1"
$ns_ at 5.000482278115 "$god_ set-dist 17 47 2"
$ns_ at 5.012818929001 "$god_ set-dist 0 44 3"
$ns_ at 5.012818929001 "$god_ set-dist 31 44 2"
$ns_ at 5.018616902301 "$god_ set-dist 3 40 1"
$ns_ at 5.042291549675 "$god_ set-dist 9 19 1"
$ns_ at 5.190288178131 "$god_ set-dist 19 40 1"
$ns_ at 5.197567767675 "$god_ set-dist 29 37 1"
$ns_ at 5.222995152153 "$god_ set-dist 3 27 1"
$ns_ at 5.227758375473 "$god_ set-dist 14 36 3"
$ns_ at 5.227758375473 "$god_ set-dist 28 36 3"
$ns_ at 5.227758375473 "$god_ set-dist 36 38 3"
$ns_ at 5.227758375473 "$god_ set-dist 36 39 2"
$ns_ at 5.228091549141 "$god_ set-dist 12 41 2"
$ns_ at 5.228091549141 "$god_ set-dist 12 42 1"
$ns_ at 5.228091549141 "$god_ set-dist 37 42 2"
$ns_ at 5.228091549141 "$god_ set-dist 42 48 2"
$ns_ at 5.249427884133 "$god_ set-dist 14 36 2"
$ns_ at 5.249427884133 "$god_ set-dist 15 36 1"
$ns_ at 5.249427884133 "$god_ set-dist 28 36 2"
$ns_ at 5.249427884133 "$god_ set-dist 36 38 2"
$ns_ at 5.266449422079 "$god_ set-dist 0 8 3"
$ns_ at 5.266449422079 "$god_ set-dist 0 41 2"
$ns_ at 5.266449422079 "$god_ set-dist 0 42 1"
$ns_ at 5.266449422079 "$god_ set-dist 0 46 3"
$ns_ at 5.512962003408 "$god_ set-dist 3 30 1"
$ns_ at 5.553863957832 "$god_ set-dist 0 40 2"
$ns_ at 5.553863957832 "$god_ set-dist 30 40 1"
$ns_ at 5.553863957832 "$god_ set-dist 40 45 2"
$ns_ at 5.577927422250 "$god_ set-dist 8 22 2"
$ns_ at 5.577927422250 "$god_ set-dist 22 23 1"
$ns_ at 5.577927422250 "$god_ set-dist 22 46 2"
$ns_ at 5.589708578231 "$god_ set-dist 1 28 2"
$ns_ at 5.589708578231 "$god_ set-dist 25 28 1"
$ns_ at 5.589708578231 "$god_ set-dist 28 49 2"
$ns_ at 5.592768167513 "$god_ set-dist 17 39 1"
$ns_ at 5.600742216261 "$god_ set-dist 19 32 1"
$ns_ at 5.656852008220 "$god_ set-dist 13 17 1"
$ns_ at 5.689867942118 "$god_ set-dist 8 24 4"
$ns_ at 5.689867942118 "$god_ set-dist 11 24 2"
$ns_ at 5.689867942118 "$god_ set-dist 23 24 3"
$ns_ at 5.689867942118 "$god_ set-dist 24 46 4"
$ns_ at 5.707638496846 "$god_ set-dist 5 36 1"
$ns_ at 5.738384103400 "$god_ set-dist 2 19 1"
$ns_ at 5.739437889112 "$god_ set-dist 4 25 3"
$ns_ at 5.739437889112 "$god_ set-dist 13 25 1"
$ns_ at 5.739437889112 "$god_ set-dist 18 25 2"
$ns_ at 5.739437889112 "$god_ set-dist 25 33 2"
$ns_ at 5.776652252132 "$god_ set-dist 19 27 1"
$ns_ at 5.834682811143 "$god_ set-dist 21 24 2"
$ns_ at 5.849860501644 "$god_ set-dist 0 24 2"
$ns_ at 5.849860501644 "$god_ set-dist 24 31 1"
$ns_ at 5.872953247470 "$god_ set-dist 5 15 1"
$ns_ at 5.872953247470 "$god_ set-dist 15 47 2"
$ns_ at 5.896065146455 "$god_ set-dist 16 33 2"
$ns_ at 5.896065146455 "$god_ set-dist 33 37 3"
$ns_ at 6.018326976793 "$god_ set-dist 8 26 3"
$ns_ at 6.018326976793 "$god_ set-dist 8 32 2"
$ns_ at 6.018326976793 "$god_ set-dist 19 41 2"
$ns_ at 6.018326976793 "$god_ set-dist 26 41 2"
$ns_ at 6.018326976793 "$god_ set-dist 26 46 3"
$ns_ at 6.018326976793 "$god_ set-dist 32 41 1"
$ns_ at 6.018326976793 "$god_ set-dist 32 46 2"
$ns_ at 6.039182235263 "$god_ set-dist 1 13 1"
$ns_ at 6.066124343484 "$god_ set-dist 2 8 2"
$ns_ at 6.066124343484 "$god_ set-dist 2 23 1"
$ns_ at 6.066124343484 "$god_ set-dist 2 46 2"
$ns_ at 6.066124343484 "$god_ set-dist 10 23 2"
$ns_ at 6.066124343484 "$god_ set-dist 23 35 2"
$ns_ at 6.124509528240 "$god_ set-dist 0 44 2"
$ns_ at 6.124509528240 "$god_ set-dist 10 44 2"
$ns_ at 6.124509528240 "$god_ set-dist 26 44 1"
$ns_ at 6.124509528240 "$god_ set-dist 35 44 2"
$ns_ at 6.124509528240 "$god_ set-dist 44 45 2"
$ns_ at 6.134899418223 "$god_ set-dist 1 3 1"
$ns_ at 6.376536076153 "$god_ set-dist 7 20 1"
$ns_ at 6.378507271386 "$god_ set-dist 0 29 3"
$ns_ at 6.378507271386 "$god_ set-dist 29 31 2"
$ns_ at 6.431330176613 "$god_ set-dist 13 16 2"
$ns_ at 6.481067891847 "$god_ set-dist 0 34 2"
$ns_ at 6.481067891847 "$god_ set-dist 30 34 1"
$ns_ at 6.481067891847 "$god_ set-dist 34 45 2"
$ns_ at 6.532671382468 "$god_ set-dist 0 7 2"
$ns_ at 6.532671382468 "$god_ set-dist 0 9 2"
$ns_ at 6.532671382468 "$god_ set-dist 0 19 1"
$ns_ at 6.532671382468 "$god_ set-dist 0 27 2"
$ns_ at 6.532671382468 "$god_ set-dist 0 29 2"
$ns_ at 6.576881672359 "$god_ set-dist 5 26 1"
$ns_ at 6.576881672359 "$god_ set-dist 15 26 2"
$ns_ at 6.576881672359 "$god_ set-dist 23 26 2"
$ns_ at 6.610878849885 "$god_ set-dist 16 21 2"
$ns_ at 6.610878849885 "$god_ set-dist 21 31 3"
$ns_ at 6.709299464783 "$god_ set-dist 4 28 3"
$ns_ at 6.709299464783 "$god_ set-dist 13 28 1"
$ns_ at 6.709299464783 "$god_ set-dist 18 28 2"
$ns_ at 6.709299464783 "$god_ set-dist 20 28 3"
$ns_ at 6.709299464783 "$god_ set-dist 28 31 3"
$ns_ at 6.709299464783 "$god_ set-dist 28 33 2"
$ns_ at 6.709299464783 "$god_ set-dist 28 44 2"
$ns_ at 6.954842933490 "$god_ set-dist 0 1 2"
$ns_ at 6.954842933490 "$god_ set-dist 1 19 1"
$ns_ at 6.963596224350 "$god_ set-dist 5 21 1"
$ns_ at 6.971279003882 "$god_ set-dist 0 11 3"
$ns_ at 6.971279003882 "$god_ set-dist 11 30 2"
$ns_ at 6.971279003882 "$god_ set-dist 11 45 3"
$ns_ at 7.070032946689 "$god_ set-dist 22 28 1"
$ns_ at 7.095941140625 "$god_ set-dist 2 45 1"
$ns_ at 7.095941140625 "$god_ set-dist 11 45 2"
$ns_ at 7.095941140625 "$god_ set-dist 23 45 2"
$ns_ at 7.095941140625 "$god_ set-dist 27 45 2"
$ns_ at 7.289443279501 "$god_ set-dist 4 22 3"
$ns_ at 7.289443279501 "$god_ set-dist 13 22 1"
$ns_ at 7.289443279501 "$god_ set-dist 18 22 2"
$ns_ at 7.289443279501 "$god_ set-dist 22 33 2"
$ns_ at 7.290378413219 "$god_ set-dist 13 19 1"
$ns_ at 7.290378413219 "$god_ set-dist 19 28 2"
$ns_ at 7.390260927146 "$god_ set-dist 24 37 2"
$ns_ at 7.520941787070 "$god_ set-dist 16 37 2"
$ns_ at 7.520941787070 "$god_ set-dist 31 37 3"
$ns_ at 7.593568274346 "$god_ set-dist 7 8 3"
$ns_ at 7.593568274346 "$god_ set-dist 7 11 1"
$ns_ at 7.593568274346 "$god_ set-dist 7 23 2"
$ns_ at 7.593568274346 "$god_ set-dist 7 46 3"
$ns_ at 7.727985991647 "$god_ set-dist 1 5 1"
$ns_ at 7.766265040074 "$god_ set-dist 10 24 2"
$ns_ at 7.766265040074 "$god_ set-dist 24 26 1"
$ns_ at 7.766265040074 "$god_ set-dist 24 35 2"
$ns_ at 7.766265040074 "$god_ set-dist 24 45 2"
$ns_ at 7.852608013331 "$god_ set-dist 2 26 1"
$ns_ at 7.889665023717 "$god_ set-dist 14 49 2"
$ns_ at 7.889665023717 "$god_ set-dist 15 49 1"
$ns_ at 7.889665023717 "$god_ set-dist 38 49 2"
$ns_ at 7.936729430744 "$god_ set-dist 40 41 2"
$ns_ at 7.936729430744 "$god_ set-dist 40 42 1"
$ns_ at 8.095867421219 "$god_ set-dist 1 14 2"
$ns_ at 8.095867421219 "$god_ set-dist 4 14 3"
$ns_ at 8.095867421219 "$god_ set-dist 13 14 1"
$ns_ at 8.095867421219 "$god_ set-dist 14 18 2"
$ns_ at 8.095867421219 "$god_ set-dist 14 19 2"
$ns_ at 8.095867421219 "$god_ set-dist 14 20 3"
$ns_ at 8.095867421219 "$god_ set-dist 14 31 3"
$ns_ at 8.095867421219 "$god_ set-dist 14 33 2"
$ns_ at 8.095867421219 "$god_ set-dist 14 44 2"
$ns_ at 8.158832840536 "$god_ set-dist 3 32 1"
$ns_ at 8.158832840536 "$god_ set-dist 3 41 2"
$ns_ at 8.171512290632 "$god_ set-dist 3 36 1"
$ns_ at 8.173200951841 "$god_ set-dist 8 21 2"
$ns_ at 8.173200951841 "$god_ set-dist 21 23 1"
$ns_ at 8.173200951841 "$god_ set-dist 21 46 2"
$ns_ at 8.226044818249 "$god_ set-dist 5 17 1"
$ns_ at 8.239786186077 "$god_ set-dist 8 12 2"
$ns_ at 8.239786186077 "$god_ set-dist 8 24 3"
$ns_ at 8.239786186077 "$god_ set-dist 8 29 3"
$ns_ at 8.239786186077 "$god_ set-dist 12 23 1"
$ns_ at 8.239786186077 "$god_ set-dist 12 46 2"
$ns_ at 8.239786186077 "$god_ set-dist 23 24 2"
$ns_ at 8.239786186077 "$god_ set-dist 23 29 2"
$ns_ at 8.239786186077 "$god_ set-dist 24 46 3"
$ns_ at 8.239786186077 "$god_ set-dist 29 46 3"
$ns_ at 8.281829324094 "$god_ set-dist 8 40 2"
$ns_ at 8.281829324094 "$god_ set-dist 23 40 1"
$ns_ at 8.281829324094 "$god_ set-dist 40 46 2"
$ns_ at 8.290616466983 "$god_ set-dist 7 21 2"
$ns_ at 8.311397196579 "$god_ set-dist 2 41 1"
$ns_ at 8.311397196579 "$god_ set-dist 11 41 2"
$ns_ at 8.311397196579 "$god_ set-dist 27 41 2"
$ns_ at 8.311397196579 "$god_ set-dist 34 41 2"
$ns_ at 8.318647272138 "$god_ set-dist 32 40 1"
$ns_ at 8.341073189295 "$god_ set-dist 13 49 1"
$ns_ at 8.372656387977 "$god_ set-dist 20 42 3"
$ns_ at 8.372656387977 "$god_ set-dist 20 47 2"
$ns_ at 8.569958345049 "$god_ set-dist 8 30 2"
$ns_ at 8.569958345049 "$god_ set-dist 30 41 1"
$ns_ at 8.569958345049 "$god_ set-dist 30 46 2"
$ns_ at 8.669176540101 "$god_ set-dist 2 3 1"
$ns_ at 8.680651193218 "$god_ set-dist 11 29 1"
$ns_ at 8.754637327891 "$god_ set-dist 19 42 1"
$ns_ at 8.754637327891 "$god_ set-dist 20 42 2"
$ns_ at 8.791516779924 "$god_ set-dist 26 42 1"
$ns_ at 8.854911730036 "$god_ set-dist 7 43 2"
$ns_ at 8.908994929909 "$god_ set-dist 1 38 2"
$ns_ at 8.908994929909 "$god_ set-dist 4 38 3"
$ns_ at 8.908994929909 "$god_ set-dist 13 38 1"
$ns_ at 8.908994929909 "$god_ set-dist 18 38 2"
$ns_ at 8.908994929909 "$god_ set-dist 19 38 2"
$ns_ at 8.908994929909 "$god_ set-dist 20 38 3"
$ns_ at 8.908994929909 "$god_ set-dist 31 38 3"
$ns_ at 8.908994929909 "$god_ set-dist 33 38 2"
$ns_ at 8.908994929909 "$god_ set-dist 38 44 2"
$ns_ at 9.013160965191 "$god_ set-dist 14 41 1"
$ns_ at 9.029266575470 "$god_ set-dist 7 28 2"
$ns_ at 9.029266575470 "$god_ set-dist 11 28 1"
$ns_ at 9.029266575470 "$god_ set-dist 16 28 2"
$ns_ at 9.029266575470 "$god_ set-dist 28 29 2"
$ns_ at 9.105132477527 "$god_ set-dist 8 34 2"
$ns_ at 9.105132477527 "$god_ set-dist 23 34 1"
$ns_ at 9.105132477527 "$god_ set-dist 34 46 2"
$ns_ at 9.170990742577 "$god_ set-dist 4 37 3"
$ns_ at 9.170990742577 "$god_ set-dist 13 37 1"
$ns_ at 9.170990742577 "$god_ set-dist 18 37 2"
$ns_ at 9.170990742577 "$god_ set-dist 33 37 2"
$ns_ at 9.269375050287 "$god_ set-dist 0 2 1"
$ns_ at 9.269375050287 "$god_ set-dist 0 11 2"
$ns_ at 9.269375050287 "$god_ set-dist 0 23 2"
$ns_ at 9.286886476198 "$god_ set-dist 17 24 2"
$ns_ at 9.475478797238 "$god_ set-dist 4 48 3"
$ns_ at 9.475478797238 "$god_ set-dist 13 48 1"
$ns_ at 9.475478797238 "$god_ set-dist 18 48 2"
$ns_ at 9.475478797238 "$god_ set-dist 33 48 2"
$ns_ at 9.661167254648 "$god_ set-dist 23 42 1"
$ns_ at 9.760380135628 "$god_ set-dist 21 28 1"
$ns_ at 9.848832560313 "$god_ set-dist 3 4 2"
$ns_ at 9.848832560313 "$god_ set-dist 3 18 1"
$ns_ at 9.881761574011 "$god_ set-dist 31 45 1"
$ns_ at 9.913962791855 "$god_ set-dist 4 8 3"
$ns_ at 9.913962791855 "$god_ set-dist 4 41 2"
$ns_ at 9.913962791855 "$god_ set-dist 4 46 3"
$ns_ at 9.913962791855 "$god_ set-dist 8 18 2"
$ns_ at 9.913962791855 "$god_ set-dist 18 41 1"
$ns_ at 9.913962791855 "$god_ set-dist 18 46 2"
$ns_ at 9.949552949519 "$god_ set-dist 11 19 1"
$ns_ at 10.220997929640 "$god_ set-dist 34 42 1"
$ns_ at 10.315625476734 "$god_ set-dist 0 5 1"
$ns_ at 10.315625476734 "$god_ set-dist 0 15 2"
$ns_ at 10.315625476734 "$god_ set-dist 0 17 2"
$ns_ at 10.315625476734 "$god_ set-dist 0 21 2"
$ns_ at 10.315625476734 "$god_ set-dist 0 36 2"
$ns_ at 10.385716268001 "$god_ set-dist 3 11 1"
$ns_ at 10.385716268001 "$god_ set-dist 3 28 2"
$ns_ at 10.408625349305 "$god_ set-dist 0 3 1"
$ns_ at 10.520445919292 "$god_ set-dist 0 43 1"
$ns_ at 10.520445919292 "$god_ set-dist 0 49 2"
$ns_ at 10.521636848530 "$god_ set-dist 13 33 2"
$ns_ at 10.521636848530 "$god_ set-dist 14 33 3"
$ns_ at 10.521636848530 "$god_ set-dist 22 33 3"
$ns_ at 10.521636848530 "$god_ set-dist 25 33 3"
$ns_ at 10.521636848530 "$god_ set-dist 28 33 3"
$ns_ at 10.521636848530 "$god_ set-dist 33 37 3"
$ns_ at 10.521636848530 "$god_ set-dist 33 38 3"
$ns_ at 10.521636848530 "$god_ set-dist 33 48 3"
$ns_ at 10.649756620357 "$god_ set-dist 1 6 1"
$ns_ at 10.649756620357 "$god_ set-dist 6 22 2"
$ns_ at 10.649756620357 "$god_ set-dist 6 25 2"
$ns_ at 10.649756620357 "$god_ set-dist 6 48 2"
$ns_ at 10.669372442821 "$god_ set-dist 4 39 2"
$ns_ at 10.669372442821 "$god_ set-dist 18 39 1"
$ns_ at 10.703792191171 "$god_ set-dist 6 8 3"
$ns_ at 10.703792191171 "$god_ set-dist 8 9 2"
$ns_ at 10.703792191171 "$god_ set-dist 8 17 2"
$ns_ at 10.703792191171 "$god_ set-dist 8 27 2"
$ns_ at 10.703792191171 "$god_ set-dist 8 39 1"
$ns_ at 10.703792191171 "$god_ set-dist 8 43 2"
$ns_ at 10.741496022913 "$god_ set-dist 6 15 2"
$ns_ at 10.741496022913 "$god_ set-dist 15 43 1"
$ns_ at 10.804430289943 "$god_ set-dist 2 15 1"
$ns_ at 10.804430289943 "$god_ set-dist 10 15 2"
$ns_ at 10.804430289943 "$god_ set-dist 15 35 2"
$ns_ at 10.804430289943 "$god_ set-dist 15 45 2"
$ns_ at 10.834434370343 "$god_ set-dist 0 38 2"
$ns_ at 10.834434370343 "$god_ set-dist 2 38 1"
$ns_ at 10.834434370343 "$god_ set-dist 3 38 2"
$ns_ at 10.834434370343 "$god_ set-dist 10 38 2"
$ns_ at 10.834434370343 "$god_ set-dist 26 38 2"
$ns_ at 10.834434370343 "$god_ set-dist 33 38 2"
$ns_ at 10.834434370343 "$god_ set-dist 35 38 2"
$ns_ at 10.834434370343 "$god_ set-dist 38 45 2"
$ns_ at 10.834434370343 "$god_ set-dist 38 47 2"
$ns_ at 10.880659485097 "$god_ set-dist 1 45 2"
$ns_ at 10.880659485097 "$god_ set-dist 5 45 1"
$ns_ at 10.880659485097 "$god_ set-dist 9 45 2"
$ns_ at 10.880659485097 "$god_ set-dist 17 45 2"
$ns_ at 10.880659485097 "$god_ set-dist 21 45 2"
$ns_ at 10.880659485097 "$god_ set-dist 36 45 2"
$ns_ at 10.945010165620 "$god_ set-dist 38 42 1"
$ns_ at 11.048682229897 "$god_ set-dist 8 48 2"
$ns_ at 11.048682229897 "$god_ set-dist 28 48 1"
$ns_ at 11.048682229897 "$god_ set-dist 46 48 2"
$ns_ at 11.114637942164 "$god_ set-dist 23 48 1"
$ns_ at 11.246164070839 "$god_ set-dist 23 30 1"
$ns_ at 11.327385329987 "$god_ set-dist 5 46 3"
$ns_ at 11.327385329987 "$god_ set-dist 12 46 3"
$ns_ at 11.327385329987 "$god_ set-dist 23 46 2"
$ns_ at 11.327385329987 "$god_ set-dist 24 46 4"
$ns_ at 11.327385329987 "$god_ set-dist 34 46 3"
$ns_ at 11.327385329987 "$god_ set-dist 40 46 3"
$ns_ at 11.422501678687 "$god_ set-dist 7 45 2"
$ns_ at 11.422501678687 "$god_ set-dist 19 45 1"
$ns_ at 11.422501678687 "$god_ set-dist 29 45 2"
$ns_ at 11.440480459429 "$god_ set-dist 23 27 1"
$ns_ at 11.462623528112 "$god_ set-dist 0 14 2"
$ns_ at 11.462623528112 "$god_ set-dist 2 14 1"
$ns_ at 11.462623528112 "$god_ set-dist 3 14 2"
$ns_ at 11.462623528112 "$god_ set-dist 10 14 2"
$ns_ at 11.462623528112 "$god_ set-dist 14 26 2"
$ns_ at 11.462623528112 "$god_ set-dist 14 33 2"
$ns_ at 11.462623528112 "$god_ set-dist 14 35 2"
$ns_ at 11.462623528112 "$god_ set-dist 14 45 2"
$ns_ at 11.462623528112 "$god_ set-dist 14 47 2"
$ns_ at 11.558785865388 "$god_ set-dist 7 11 2"
$ns_ at 11.558785865388 "$god_ set-dist 7 28 3"
$ns_ at 11.558785865388 "$god_ set-dist 7 46 4"
$ns_ at 11.607552169683 "$god_ set-dist 3 17 1"
$ns_ at 11.649960405475 "$god_ set-dist 11 16 2"
$ns_ at 11.649960405475 "$god_ set-dist 16 28 3"
$ns_ at 11.649960405475 "$god_ set-dist 16 46 4"
$ns_ at 11.652143030812 "$god_ set-dist 24 36 2"
$ns_ at 11.663122282367 "$god_ set-dist 9 24 2"
$ns_ at 11.713311294215 "$god_ set-dist 17 23 1"
$ns_ at 11.881687553358 "$god_ set-dist 24 49 2"
$ns_ at 11.915983508079 "$god_ set-dist 6 23 2"
$ns_ at 11.915983508079 "$god_ set-dist 23 43 1"
$ns_ at 12.055494780550 "$god_ set-dist 17 19 1"
$ns_ at 12.115948514763 "$god_ set-dist 3 42 1"
$ns_ at 12.310291137170 "$god_ set-dist 3 49 1"
$ns_ at 12.457727322952 "$god_ set-dist 19 36 1"
$ns_ at 12.530011963361 "$god_ set-dist 43 45 1"
$ns_ at 12.530011963361 "$god_ set-dist 45 49 2"
$ns_ at 12.575538696000 "$god_ set-dist 14 42 1"
$ns_ at 12.592896305053 "$god_ set-dist 24 34 2"
$ns_ at 12.609784150491 "$god_ set-dist 24 27 2"
$ns_ at 12.652624337922 "$god_ set-dist 24 43 2"
$ns_ at 12.673198573673 "$god_ set-dist 10 31 1"
$ns_ at 12.789668676497 "$god_ set-dist 4 13 3"
$ns_ at 12.789668676497 "$god_ set-dist 4 37 4"
$ns_ at 12.789668676497 "$god_ set-dist 4 48 4"
$ns_ at 12.789668676497 "$god_ set-dist 13 18 2"
$ns_ at 12.789668676497 "$god_ set-dist 18 37 3"
$ns_ at 12.789668676497 "$god_ set-dist 18 48 3"
$ns_ at 12.799568961662 "$god_ set-dist 11 46 3"
$ns_ at 12.799568961662 "$god_ set-dist 21 46 3"
$ns_ at 12.799568961662 "$god_ set-dist 22 46 3"
$ns_ at 12.799568961662 "$god_ set-dist 25 46 3"
$ns_ at 12.799568961662 "$god_ set-dist 28 46 2"
$ns_ at 12.799568961662 "$god_ set-dist 29 46 4"
$ns_ at 12.799568961662 "$god_ set-dist 46 48 3"
$ns_ at 12.842081396526 "$god_ set-dist 33 37 2"
$ns_ at 12.842081396526 "$god_ set-dist 33 44 1"
$ns_ at 12.986135806448 "$god_ set-dist 22 33 2"
$ns_ at 12.986135806448 "$god_ set-dist 25 33 2"
$ns_ at 12.986135806448 "$god_ set-dist 33 40 1"
$ns_ at 12.986135806448 "$god_ set-dist 33 48 2"
$ns_ at 12.998260262372 "$god_ set-dist 16 17 2"
$ns_ at 13.028149612700 "$god_ set-dist 9 41 2"
$ns_ at 13.028149612700 "$god_ set-dist 17 41 2"
$ns_ at 13.028149612700 "$god_ set-dist 21 41 2"
$ns_ at 13.028149612700 "$god_ set-dist 22 41 2"
$ns_ at 13.028149612700 "$god_ set-dist 25 41 2"
$ns_ at 13.028149612700 "$god_ set-dist 39 41 1"
$ns_ at 13.119459918124 "$god_ set-dist 37 47 2"
$ns_ at 13.119459918124 "$god_ set-dist 44 47 1"
$ns_ at 13.147657553400 "$god_ set-dist 7 28 2"
$ns_ at 13.147657553400 "$god_ set-dist 17 28 1"
$ns_ at 13.175590082343 "$god_ set-dist 30 38 1"
$ns_ at 13.375085401615 "$god_ set-dist 22 26 2"
$ns_ at 13.375085401615 "$god_ set-dist 25 26 2"
$ns_ at 13.375085401615 "$god_ set-dist 26 40 1"
$ns_ at 13.375085401615 "$god_ set-dist 26 48 2"
$ns_ at 13.440351518602 "$god_ set-dist 9 23 1"
$ns_ at 13.504465389932 "$god_ set-dist 0 6 1"
$ns_ at 13.504465389932 "$god_ set-dist 4 6 2"
$ns_ at 13.650580170175 "$god_ set-dist 5 29 1"
$ns_ at 13.673716066487 "$god_ set-dist 27 30 1"
$ns_ at 13.735351169406 "$god_ set-dist 14 30 1"
$ns_ at 13.872374184132 "$god_ set-dist 12 26 1"
$ns_ at 13.955062722588 "$god_ set-dist 15 30 1"
$ns_ at 13.956971046606 "$god_ set-dist 3 13 1"
$ns_ at 13.989854921628 "$god_ set-dist 6 8 4"
$ns_ at 13.989854921628 "$god_ set-dist 6 15 3"
$ns_ at 13.989854921628 "$god_ set-dist 6 23 3"
$ns_ at 13.989854921628 "$god_ set-dist 6 39 3"
$ns_ at 13.989854921628 "$god_ set-dist 6 43 2"
$ns_ at 14.033109979312 "$god_ set-dist 15 42 1"
$ns_ at 14.103189190050 "$god_ set-dist 2 11 2"
$ns_ at 14.103189190050 "$god_ set-dist 10 11 3"
$ns_ at 14.103189190050 "$god_ set-dist 11 35 3"
$ns_ at 14.103985505049 "$god_ set-dist 22 47 2"
$ns_ at 14.103985505049 "$god_ set-dist 25 47 2"
$ns_ at 14.103985505049 "$god_ set-dist 40 47 1"
$ns_ at 14.103985505049 "$god_ set-dist 47 48 2"
$ns_ at 14.117846224547 "$god_ set-dist 16 28 2"
$ns_ at 14.117846224547 "$god_ set-dist 28 34 1"
$ns_ at 14.175718880528 "$god_ set-dist 8 35 2"
$ns_ at 14.175718880528 "$god_ set-dist 35 41 1"
$ns_ at 14.175718880528 "$god_ set-dist 35 46 2"
$ns_ at 14.231879020539 "$god_ set-dist 20 48 2"
$ns_ at 14.231879020539 "$god_ set-dist 44 48 1"
$ns_ at 14.242553815205 "$god_ set-dist 5 6 1"
$ns_ at 14.242553815205 "$god_ set-dist 6 8 3"
$ns_ at 14.242553815205 "$god_ set-dist 6 15 2"
$ns_ at 14.242553815205 "$god_ set-dist 6 23 2"
$ns_ at 14.242553815205 "$god_ set-dist 6 39 2"
$ns_ at 14.314724654570 "$god_ set-dist 10 29 2"
$ns_ at 14.314724654570 "$god_ set-dist 26 29 1"
$ns_ at 14.314724654570 "$god_ set-dist 29 35 2"
$ns_ at 14.368646776007 "$god_ set-dist 2 17 1"
$ns_ at 14.368646776007 "$god_ set-dist 10 17 2"
$ns_ at 14.368646776007 "$god_ set-dist 17 35 2"
$ns_ at 14.375651246980 "$god_ set-dist 1 22 2"
$ns_ at 14.375651246980 "$god_ set-dist 6 22 3"
$ns_ at 14.379211737481 "$god_ set-dist 14 22 1"
$ns_ at 14.379211737481 "$god_ set-dist 22 46 2"
$ns_ at 14.380182347367 "$god_ set-dist 16 36 2"
$ns_ at 14.397415925977 "$god_ set-dist 1 10 2"
$ns_ at 14.397415925977 "$god_ set-dist 1 26 1"
$ns_ at 14.397415925977 "$god_ set-dist 1 35 2"
$ns_ at 14.511085123972 "$god_ set-dist 14 21 1"
$ns_ at 14.511085123972 "$god_ set-dist 21 46 2"
$ns_ at 14.730792326717 "$god_ set-dist 7 17 2"
$ns_ at 14.941890500539 "$god_ set-dist 24 40 2"
$ns_ at 15.022900522192 "$god_ set-dist 9 16 2"
$ns_ at 15.050197409218 "$god_ set-dist 14 25 1"
$ns_ at 15.050197409218 "$god_ set-dist 25 46 2"
$ns_ at 15.104270418644 "$god_ set-dist 16 49 2"
$ns_ at 15.123465618829 "$god_ set-dist 0 28 2"
$ns_ at 15.123465618829 "$god_ set-dist 2 28 1"
$ns_ at 15.123465618829 "$god_ set-dist 10 28 2"
$ns_ at 15.123465618829 "$god_ set-dist 26 28 2"
$ns_ at 15.123465618829 "$god_ set-dist 28 33 2"
$ns_ at 15.123465618829 "$god_ set-dist 28 35 2"
$ns_ at 15.123465618829 "$god_ set-dist 28 45 2"
$ns_ at 15.123465618829 "$god_ set-dist 28 47 2"
$ns_ at 15.285469329569 "$god_ set-dist 0 37 2"
$ns_ at 15.285469329569 "$god_ set-dist 4 37 3"
$ns_ at 15.285469329569 "$god_ set-dist 18 37 2"
$ns_ at 15.285469329569 "$god_ set-dist 37 43 1"
$ns_ at 15.285469329569 "$god_ set-dist 37 45 2"
$ns_ at 15.306041770437 "$god_ set-dist 9 28 1"
$ns_ at 15.320352155651 "$god_ set-dist 17 30 1"
$ns_ at 15.380359656833 "$god_ set-dist 8 28 2"
$ns_ at 15.445156535877 "$god_ set-dist 27 28 1"
$ns_ at 15.445283413923 "$god_ set-dist 30 44 1"
$ns_ at 15.445283413923 "$god_ set-dist 41 44 2"
$ns_ at 15.493901548439 "$god_ set-dist 2 44 1"
$ns_ at 15.556539730375 "$node_(17) setdest 505.983674613434 234.725061385616 0.000000000000"
$ns_ at 15.623104167579 "$god_ set-dist 7 37 2"
$ns_ at 15.941181766894 "$god_ set-dist 27 42 1"
$ns_ at 15.966660266664 "$god_ set-dist 16 31 2"
$ns_ at 16.104705823586 "$god_ set-dist 3 45 1"
$ns_ at 16.136586443092 "$god_ set-dist 4 46 4"
$ns_ at 16.136586443092 "$god_ set-dist 18 46 3"
$ns_ at 16.136586443092 "$god_ set-dist 32 46 3"
$ns_ at 16.136586443092 "$god_ set-dist 35 46 3"
$ns_ at 16.136586443092 "$god_ set-dist 41 46 2"
$ns_ at 16.165391208007 "$god_ set-dist 28 40 1"
$ns_ at 16.172857602780 "$god_ set-dist 43 49 2"
$ns_ at 16.206303141060 "$god_ set-dist 2 21 1"
$ns_ at 16.206303141060 "$god_ set-dist 10 21 2"
$ns_ at 16.206303141060 "$god_ set-dist 21 35 2"
$ns_ at 16.279356867243 "$god_ set-dist 3 37 1"
$ns_ at 16.279356867243 "$god_ set-dist 31 37 2"
$ns_ at 16.295562141018 "$god_ set-dist 17 42 1"
$ns_ at 16.301873856425 "$god_ set-dist 0 48 2"
$ns_ at 16.301873856425 "$god_ set-dist 4 48 3"
$ns_ at 16.301873856425 "$god_ set-dist 18 48 2"
$ns_ at 16.301873856425 "$god_ set-dist 43 48 1"
$ns_ at 16.301873856425 "$god_ set-dist 45 48 2"
$ns_ at 16.364735986880 "$god_ set-dist 1 25 2"
$ns_ at 16.364735986880 "$god_ set-dist 6 25 3"
$ns_ at 16.417175474692 "$god_ set-dist 28 30 1"
$ns_ at 16.423145300460 "$god_ set-dist 8 24 4"
$ns_ at 16.423145300460 "$god_ set-dist 12 24 2"
$ns_ at 16.423145300460 "$god_ set-dist 15 24 3"
$ns_ at 16.423145300460 "$god_ set-dist 22 24 3"
$ns_ at 16.423145300460 "$god_ set-dist 23 24 3"
$ns_ at 16.423145300460 "$god_ set-dist 24 25 3"
$ns_ at 16.423145300460 "$god_ set-dist 24 39 3"
$ns_ at 16.430635335409 "$god_ set-dist 28 43 1"
$ns_ at 16.433033473515 "$god_ set-dist 16 43 2"
$ns_ at 16.449513852564 "$god_ set-dist 14 29 2"
$ns_ at 16.449513852564 "$god_ set-dist 14 43 1"
$ns_ at 16.449513852564 "$god_ set-dist 29 46 3"
$ns_ at 16.449513852564 "$god_ set-dist 43 46 2"
$ns_ at 16.500806045428 "$god_ set-dist 12 47 1"
$ns_ at 16.501263125322 "$god_ set-dist 42 44 1"
$ns_ at 16.509374262134 "$god_ set-dist 19 20 2"
$ns_ at 16.513085017307 "$god_ set-dist 5 10 1"
$ns_ at 16.513085017307 "$god_ set-dist 9 10 2"
$ns_ at 16.513085017307 "$god_ set-dist 10 11 2"
$ns_ at 16.513085017307 "$god_ set-dist 10 36 2"
$ns_ at 16.554745396400 "$god_ set-dist 9 39 2"
$ns_ at 16.554745396400 "$god_ set-dist 9 41 3"
$ns_ at 16.556539730375 "$node_(17) setdest 88.536073336262 388.467553472438 5.314709610646"
$ns_ at 16.593712203249 "$god_ set-dist 32 44 1"
$ns_ at 16.613844866646 "$god_ set-dist 8 19 2"
$ns_ at 16.613844866646 "$god_ set-dist 8 24 3"
$ns_ at 16.613844866646 "$god_ set-dist 8 31 3"
$ns_ at 16.613844866646 "$god_ set-dist 19 39 1"
$ns_ at 16.613844866646 "$god_ set-dist 24 39 2"
$ns_ at 16.613844866646 "$god_ set-dist 31 39 2"
$ns_ at 16.657080116697 "$god_ set-dist 28 36 1"
$ns_ at 16.697961520849 "$god_ set-dist 4 40 2"
$ns_ at 16.697961520849 "$god_ set-dist 18 40 1"
$ns_ at 16.747788703181 "$god_ set-dist 0 25 2"
$ns_ at 16.747788703181 "$god_ set-dist 25 43 1"
$ns_ at 16.747788703181 "$god_ set-dist 25 45 2"
$ns_ at 16.782862340028 "$god_ set-dist 8 36 2"
$ns_ at 16.782862340028 "$god_ set-dist 23 36 1"
$ns_ at 16.874256217356 "$god_ set-dist 21 30 1"
$ns_ at 16.879987687588 "$god_ set-dist 29 48 1"
$ns_ at 16.883644192576 "$god_ set-dist 28 37 1"
$ns_ at 16.987754107983 "$god_ set-dist 28 42 1"
$ns_ at 17.012347644083 "$god_ set-dist 0 22 2"
$ns_ at 17.012347644083 "$god_ set-dist 22 43 1"
$ns_ at 17.012347644083 "$god_ set-dist 22 45 2"
$ns_ at 17.184512644911 "$god_ set-dist 19 49 1"
$ns_ at 17.241317784264 "$god_ set-dist 7 36 2"
$ns_ at 17.478430786838 "$god_ set-dist 1 47 1"
$ns_ at 17.492399320728 "$god_ set-dist 3 31 2"
$ns_ at 17.492399320728 "$god_ set-dist 31 37 3"
$ns_ at 17.493812235356 "$god_ set-dist 31 35 1"
$ns_ at 17.493812235356 "$god_ set-dist 31 41 2"
$ns_ at 17.513039863148 "$god_ set-dist 32 34 1"
$ns_ at 17.527885632273 "$god_ set-dist 6 12 1"
$ns_ at 17.527885632273 "$god_ set-dist 6 22 2"
$ns_ at 17.527885632273 "$god_ set-dist 6 25 2"
$ns_ at 17.631113619978 "$god_ set-dist 21 42 1"
$ns_ at 17.653640689813 "$god_ set-dist 7 9 2"
$ns_ at 17.662630127388 "$god_ set-dist 31 32 1"
$ns_ at 17.699365078646 "$god_ set-dist 6 28 2"
$ns_ at 17.699365078646 "$god_ set-dist 6 40 1"
$ns_ at 17.712435098641 "$god_ set-dist 8 37 2"
$ns_ at 17.712435098641 "$god_ set-dist 23 37 1"
$ns_ at 17.777621416291 "$god_ set-dist 0 4 2"
$ns_ at 17.777621416291 "$god_ set-dist 4 6 3"
$ns_ at 17.787630612824 "$god_ set-dist 1 41 2"
$ns_ at 17.787630612824 "$god_ set-dist 1 42 1"
$ns_ at 17.808110168867 "$god_ set-dist 13 32 2"
$ns_ at 17.813156405055 "$god_ set-dist 1 30 1"
$ns_ at 17.839518311036 "$god_ set-dist 19 37 1"
$ns_ at 17.839518311036 "$god_ set-dist 31 37 2"
$ns_ at 17.849668472644 "$god_ set-dist 11 39 2"
$ns_ at 17.849668472644 "$god_ set-dist 11 41 3"
$ns_ at 17.861965405893 "$god_ set-dist 9 31 3"
$ns_ at 17.861965405893 "$god_ set-dist 11 31 3"
$ns_ at 17.861965405893 "$god_ set-dist 13 31 3"
$ns_ at 17.861965405893 "$god_ set-dist 17 31 3"
$ns_ at 17.861965405893 "$god_ set-dist 19 31 2"
$ns_ at 17.861965405893 "$god_ set-dist 27 31 3"
$ns_ at 17.861965405893 "$god_ set-dist 31 36 3"
$ns_ at 17.861965405893 "$god_ set-dist 31 37 3"
$ns_ at 17.861965405893 "$god_ set-dist 31 49 3"
$ns_ at 17.869043919415 "$god_ set-dist 5 36 2"
$ns_ at 17.869043919415 "$god_ set-dist 10 36 3"
$ns_ at 17.935159977075 "$god_ set-dist 15 19 1"
$ns_ at 17.935159977075 "$god_ set-dist 15 24 2"
$ns_ at 18.104531767523 "$god_ set-dist 3 48 1"
$ns_ at 18.227677508367 "$god_ set-dist 19 21 1"
$ns_ at 18.269972134141 "$god_ set-dist 4 6 2"
$ns_ at 18.269972134141 "$god_ set-dist 6 45 1"
$ns_ at 18.372582364476 "$god_ set-dist 1 33 1"
$ns_ at 18.379136207156 "$god_ set-dist 1 20 1"
$ns_ at 18.412168741096 "$god_ set-dist 12 28 1"
$ns_ at 18.419649021607 "$god_ set-dist 19 48 1"
$ns_ at 18.465711856596 "$god_ set-dist 1 2 1"
$ns_ at 18.482522110068 "$god_ set-dist 13 38 2"
$ns_ at 18.535336118374 "$god_ set-dist 23 31 2"
$ns_ at 18.535336118374 "$god_ set-dist 23 32 1"
$ns_ at 18.546456698791 "$god_ set-dist 19 23 1"
$ns_ at 18.546456698791 "$god_ set-dist 23 24 2"
$ns_ at 18.575342513621 "$node_(9) setdest 545.039651332947 225.685109852930 0.000000000000"
$ns_ at 18.676370180952 "$god_ set-dist 1 32 1"
$ns_ at 18.700166552635 "$god_ set-dist 0 8 2"
$ns_ at 18.700166552635 "$god_ set-dist 1 8 2"
$ns_ at 18.700166552635 "$god_ set-dist 2 8 1"
$ns_ at 18.700166552635 "$god_ set-dist 3 8 2"
$ns_ at 18.700166552635 "$god_ set-dist 8 10 2"
$ns_ at 18.700166552635 "$god_ set-dist 8 20 3"
$ns_ at 18.700166552635 "$god_ set-dist 8 26 2"
$ns_ at 18.700166552635 "$god_ set-dist 8 33 2"
$ns_ at 18.700166552635 "$god_ set-dist 8 44 2"
$ns_ at 18.700166552635 "$god_ set-dist 8 45 2"
$ns_ at 18.700166552635 "$god_ set-dist 8 47 2"
$ns_ at 18.732746913763 "$god_ set-dist 14 17 1"
$ns_ at 18.732746913763 "$god_ set-dist 17 46 2"
$ns_ at 18.786902873944 "$god_ set-dist 8 30 1"
$ns_ at 18.850388948318 "$god_ set-dist 26 34 1"
$ns_ at 19.032453923589 "$god_ set-dist 16 27 2"
$ns_ at 19.034788561481 "$god_ set-dist 0 40 1"
$ns_ at 19.141675667677 "$god_ set-dist 16 34 2"
$ns_ at 19.145148950640 "$node_(10) setdest 213.162433257742 564.606897781658 0.000000000000"
$ns_ at 19.236641778247 "$god_ set-dist 4 38 2"
$ns_ at 19.236641778247 "$god_ set-dist 4 46 3"
$ns_ at 19.236641778247 "$god_ set-dist 18 38 1"
$ns_ at 19.236641778247 "$god_ set-dist 18 46 2"
$ns_ at 19.374945834171 "$god_ set-dist 0 44 1"
$ns_ at 19.380387724728 "$god_ set-dist 5 46 2"
$ns_ at 19.380387724728 "$god_ set-dist 6 46 3"
$ns_ at 19.380387724728 "$god_ set-dist 7 46 3"
$ns_ at 19.380387724728 "$god_ set-dist 12 46 2"
$ns_ at 19.380387724728 "$god_ set-dist 16 46 3"
$ns_ at 19.380387724728 "$god_ set-dist 19 46 2"
$ns_ at 19.380387724728 "$god_ set-dist 24 46 3"
$ns_ at 19.380387724728 "$god_ set-dist 27 46 2"
$ns_ at 19.380387724728 "$god_ set-dist 31 46 3"
$ns_ at 19.380387724728 "$god_ set-dist 32 46 2"
$ns_ at 19.380387724728 "$god_ set-dist 34 46 2"
$ns_ at 19.380387724728 "$god_ set-dist 39 46 1"
$ns_ at 19.380387724728 "$god_ set-dist 40 46 2"
$ns_ at 19.496967665128 "$god_ set-dist 1 21 2"
$ns_ at 19.575342513621 "$node_(9) setdest 218.966548118052 642.312110369308 5.234036079766"
$ns_ at 19.740586770144 "$god_ set-dist 5 48 1"
$ns_ at 19.740586770144 "$god_ set-dist 10 48 2"
$ns_ at 19.745008941681 "$god_ set-dist 7 49 2"
$ns_ at 19.830020441134 "$god_ set-dist 10 30 2"
$ns_ at 19.861149741484 "$god_ set-dist 0 1 1"
$ns_ at 19.870979928501 "$god_ set-dist 27 39 2"
$ns_ at 19.870979928501 "$god_ set-dist 27 46 3"
$ns_ at 19.947766529134 "$god_ set-dist 7 10 2"
$ns_ at 19.947766529134 "$god_ set-dist 7 26 1"
$ns_ at 19.947766529134 "$god_ set-dist 7 35 2"
$ns_ at 19.948600309633 "$god_ set-dist 12 39 2"
$ns_ at 19.948600309633 "$god_ set-dist 12 46 3"
$ns_ at 19.970124392646 "$god_ set-dist 28 49 1"
$ns_ at 19.997656502755 "$god_ set-dist 20 21 3"
$ns_ at 19.997656502755 "$god_ set-dist 21 44 2"
$ns_ at 20.130467834393 "$god_ set-dist 15 24 3"
$ns_ at 20.130467834393 "$god_ set-dist 19 24 2"
$ns_ at 20.130467834393 "$god_ set-dist 21 24 3"
$ns_ at 20.130467834393 "$god_ set-dist 23 24 3"
$ns_ at 20.130467834393 "$god_ set-dist 24 39 3"
$ns_ at 20.130467834393 "$god_ set-dist 24 46 4"
$ns_ at 20.145148950640 "$node_(10) setdest 390.545286036427 143.479861210522 9.379624666404"
$ns_ at 20.210895687829 "$god_ set-dist 3 15 1"
$ns_ at 20.210895687829 "$god_ set-dist 15 20 2"
$ns_ at 20.210895687829 "$god_ set-dist 15 24 2"
$ns_ at 20.222775283602 "$god_ set-dist 5 21 2"
$ns_ at 20.280120576793 "$god_ set-dist 29 38 2"
$ns_ at 20.280120576793 "$god_ set-dist 38 43 1"
$ns_ at 20.292337184121 "$god_ set-dist 5 11 2"
$ns_ at 20.292337184121 "$god_ set-dist 10 11 3"
$ns_ at 20.349824127578 "$god_ set-dist 18 31 1"
$ns_ at 20.349824127578 "$god_ set-dist 31 38 2"
$ns_ at 20.458405865778 "$god_ set-dist 22 30 1"
$ns_ at 20.458405865778 "$god_ set-dist 22 35 2"
$ns_ at 20.470886619174 "$god_ set-dist 20 44 2"
$ns_ at 20.475972353729 "$god_ set-dist 3 20 2"
$ns_ at 20.475972353729 "$god_ set-dist 15 20 3"
$ns_ at 20.503474884581 "$god_ set-dist 29 38 3"
$ns_ at 20.503474884581 "$god_ set-dist 29 43 2"
$ns_ at 20.524710004673 "$god_ set-dist 15 44 1"
$ns_ at 20.574636012520 "$god_ set-dist 1 13 2"
$ns_ at 20.574636012520 "$god_ set-dist 13 20 3"
$ns_ at 20.679826606018 "$god_ set-dist 7 14 2"
$ns_ at 20.679826606018 "$god_ set-dist 14 34 1"
$ns_ at 20.732565268495 "$god_ set-dist 10 22 2"
$ns_ at 20.732565268495 "$god_ set-dist 10 30 1"
$ns_ at 20.742204118850 "$god_ set-dist 4 23 2"
$ns_ at 20.742204118850 "$god_ set-dist 18 23 1"
$ns_ at 20.794821457405 "$god_ set-dist 20 31 2"
$ns_ at 20.989187841644 "$god_ set-dist 9 41 2"
$ns_ at 20.989187841644 "$god_ set-dist 11 41 2"
$ns_ at 20.989187841644 "$god_ set-dist 36 41 2"
$ns_ at 20.989187841644 "$god_ set-dist 37 41 2"
$ns_ at 20.989187841644 "$god_ set-dist 41 43 1"
$ns_ at 20.989187841644 "$god_ set-dist 41 48 2"
$ns_ at 21.038779549946 "$node_(36) setdest 556.121823441550 198.797066111534 0.000000000000"
$ns_ at 21.215114394954 "$god_ set-dist 4 6 3"
$ns_ at 21.215114394954 "$god_ set-dist 4 45 2"
$ns_ at 21.350354568100 "$god_ set-dist 19 28 1"
$ns_ at 21.501065146198 "$god_ set-dist 6 14 2"
$ns_ at 21.501065146198 "$god_ set-dist 14 16 2"
$ns_ at 21.501065146198 "$god_ set-dist 14 19 1"
$ns_ at 21.508777828972 "$god_ set-dist 23 41 1"
$ns_ at 21.525865748435 "$god_ set-dist 3 23 1"
$ns_ at 21.525865748435 "$god_ set-dist 23 24 2"
$ns_ at 21.569227499707 "$god_ set-dist 10 25 2"
$ns_ at 21.569227499707 "$god_ set-dist 25 30 1"
$ns_ at 21.569227499707 "$god_ set-dist 25 35 2"
$ns_ at 21.598813662913 "$god_ set-dist 1 45 1"
$ns_ at 21.599736940743 "$god_ set-dist 40 45 1"
$ns_ at 21.659682769648 "$god_ set-dist 3 4 3"
$ns_ at 21.659682769648 "$god_ set-dist 4 11 4"
$ns_ at 21.659682769648 "$god_ set-dist 4 18 2"
$ns_ at 21.659682769648 "$god_ set-dist 4 19 3"
$ns_ at 21.659682769648 "$god_ set-dist 4 23 3"
$ns_ at 21.659682769648 "$god_ set-dist 4 36 4"
$ns_ at 21.659682769648 "$god_ set-dist 4 37 4"
$ns_ at 21.659682769648 "$god_ set-dist 4 38 3"
$ns_ at 21.659682769648 "$god_ set-dist 4 39 3"
$ns_ at 21.659682769648 "$god_ set-dist 4 40 3"
$ns_ at 21.659682769648 "$god_ set-dist 4 43 3"
$ns_ at 21.659682769648 "$god_ set-dist 4 46 4"
$ns_ at 21.659682769648 "$god_ set-dist 4 49 4"
$ns_ at 21.680109077196 "$god_ set-dist 14 40 1"
$ns_ at 21.682088732869 "$god_ set-dist 19 25 1"
$ns_ at 21.725535744479 "$god_ set-dist 9 35 2"
$ns_ at 21.725535744479 "$god_ set-dist 9 42 1"
$ns_ at 21.782440436087 "$god_ set-dist 22 42 1"
$ns_ at 21.802589142316 "$god_ set-dist 30 48 1"
$ns_ at 21.802589142316 "$god_ set-dist 35 48 2"
$ns_ at 21.867252199038 "$god_ set-dist 9 30 1"
$ns_ at 21.892551568483 "$god_ set-dist 28 38 2"
$ns_ at 21.918561448378 "$god_ set-dist 42 48 1"
$ns_ at 21.929258561889 "$god_ set-dist 19 22 1"
$ns_ at 21.965230344902 "$god_ set-dist 0 12 1"
$ns_ at 21.972764805175 "$god_ set-dist 4 20 4"
$ns_ at 21.972764805175 "$god_ set-dist 10 20 3"
$ns_ at 21.972764805175 "$god_ set-dist 18 20 3"
$ns_ at 21.972764805175 "$god_ set-dist 20 26 2"
$ns_ at 21.972764805175 "$god_ set-dist 20 35 3"
$ns_ at 22.025607656167 "$god_ set-dist 7 19 2"
$ns_ at 22.038779549946 "$node_(36) setdest 249.769361035905 238.779792996635 1.222314705197"
$ns_ at 22.060024885664 "$god_ set-dist 14 18 1"
$ns_ at 22.060024885664 "$god_ set-dist 14 31 2"
$ns_ at 22.161604972412 "$god_ set-dist 10 41 1"
$ns_ at 22.207347674806 "$node_(32) setdest 299.678524884659 429.258251482556 0.000000000000"
$ns_ at 22.294336759317 "$god_ set-dist 44 45 1"
$ns_ at 22.305126448512 "$god_ set-dist 7 34 2"
$ns_ at 22.385309429136 "$node_(16) setdest 598.167131258819 527.143107379267 0.000000000000"
$ns_ at 22.540984008684 "$god_ set-dist 5 13 2"
$ns_ at 22.600253517549 "$god_ set-dist 14 48 1"
$ns_ at 22.600253517549 "$god_ set-dist 46 48 2"
$ns_ at 22.616783632298 "$god_ set-dist 14 32 1"
$ns_ at 22.663718027888 "$node_(42) setdest 317.485400311873 341.155849460144 0.000000000000"
$ns_ at 22.787160571089 "$god_ set-dist 32 38 1"
$ns_ at 22.982383049971 "$god_ set-dist 17 26 1"
$ns_ at 22.982383049971 "$god_ set-dist 17 31 2"
$ns_ at 23.000587263917 "$god_ set-dist 11 43 2"
$ns_ at 23.014462127766 "$god_ set-dist 25 35 3"
$ns_ at 23.014462127766 "$god_ set-dist 30 35 2"
$ns_ at 23.064944606506 "$god_ set-dist 4 36 3"
$ns_ at 23.064944606506 "$god_ set-dist 4 37 3"
$ns_ at 23.064944606506 "$god_ set-dist 4 43 2"
$ns_ at 23.064944606506 "$god_ set-dist 10 36 2"
$ns_ at 23.064944606506 "$god_ set-dist 10 37 2"
$ns_ at 23.064944606506 "$god_ set-dist 10 43 1"
$ns_ at 23.101712680977 "$god_ set-dist 5 7 1"
$ns_ at 23.105069316074 "$god_ set-dist 16 19 2"
$ns_ at 23.124823676570 "$god_ set-dist 3 21 1"
$ns_ at 23.124823676570 "$god_ set-dist 21 24 2"
$ns_ at 23.194487066708 "$god_ set-dist 3 25 1"
$ns_ at 23.194487066708 "$god_ set-dist 24 25 2"
$ns_ at 23.207347674806 "$node_(32) setdest 64.525461099412 665.653508842441 3.230394139402"
$ns_ at 23.295619776405 "$god_ set-dist 15 31 2"
$ns_ at 23.295619776405 "$god_ set-dist 15 32 1"
$ns_ at 23.319533230173 "$god_ set-dist 3 24 2"
$ns_ at 23.319533230173 "$god_ set-dist 21 24 3"
$ns_ at 23.319533230173 "$god_ set-dist 23 24 3"
$ns_ at 23.319533230173 "$god_ set-dist 24 25 3"
$ns_ at 23.327773433499 "$god_ set-dist 8 42 1"
$ns_ at 23.348206695531 "$god_ set-dist 23 24 2"
$ns_ at 23.348206695531 "$god_ set-dist 23 44 1"
$ns_ at 23.385309429136 "$node_(16) setdest 117.460901486191 277.723067208752 9.362214397951"
$ns_ at 23.420599919763 "$god_ set-dist 2 22 1"
$ns_ at 23.438935858662 "$node_(13) setdest 415.922456968546 153.627765212342 0.000000000000"
$ns_ at 23.461476277124 "$god_ set-dist 26 27 1"
$ns_ at 23.461476277124 "$god_ set-dist 27 31 2"
$ns_ at 23.530763891775 "$god_ set-dist 8 49 2"
$ns_ at 23.530763891775 "$god_ set-dist 23 49 1"
$ns_ at 23.530763891775 "$god_ set-dist 41 49 2"
$ns_ at 23.650108201668 "$god_ set-dist 25 35 2"
$ns_ at 23.650108201668 "$god_ set-dist 25 42 1"
$ns_ at 23.663718027888 "$node_(42) setdest 668.196084260658 445.851005068284 7.556096604482"
$ns_ at 23.738007769613 "$god_ set-dist 3 28 1"
$ns_ at 23.739464369046 "$god_ set-dist 1 18 1"
$ns_ at 23.739464369046 "$god_ set-dist 18 20 2"
$ns_ at 23.861047027582 "$god_ set-dist 18 31 2"
$ns_ at 23.956702138645 "$god_ set-dist 6 41 2"
$ns_ at 23.956702138645 "$god_ set-dist 41 47 1"
$ns_ at 24.003573554009 "$god_ set-dist 34 47 1"
$ns_ at 24.013878970992 "$god_ set-dist 7 27 2"
$ns_ at 24.053428199698 "$god_ set-dist 5 39 2"
$ns_ at 24.053428199698 "$god_ set-dist 5 46 3"
$ns_ at 24.071269456899 "$god_ set-dist 4 11 3"
$ns_ at 24.071269456899 "$god_ set-dist 4 19 2"
$ns_ at 24.071269456899 "$god_ set-dist 4 49 3"
$ns_ at 24.071269456899 "$god_ set-dist 10 11 2"
$ns_ at 24.071269456899 "$god_ set-dist 10 19 1"
$ns_ at 24.071269456899 "$god_ set-dist 10 49 2"
$ns_ at 24.142081884075 "$god_ set-dist 17 32 1"
$ns_ at 24.156425701251 "$god_ set-dist 8 42 2"
$ns_ at 24.168916376504 "$god_ set-dist 9 14 1"
$ns_ at 24.168916376504 "$god_ set-dist 9 46 2"
$ns_ at 24.193032790561 "$god_ set-dist 14 27 1"
$ns_ at 24.193032790561 "$god_ set-dist 27 46 2"
$ns_ at 24.327147407806 "$god_ set-dist 13 24 3"
$ns_ at 24.327147407806 "$god_ set-dist 15 24 3"
$ns_ at 24.327147407806 "$god_ set-dist 23 24 3"
$ns_ at 24.327147407806 "$god_ set-dist 24 44 2"
$ns_ at 24.438935858662 "$node_(13) setdest 616.367307967600 374.806244568829 6.045794833341"
$ns_ at 24.458572044581 "$node_(14) setdest 287.503053529801 192.634994261451 0.000000000000"
$ns_ at 24.466713252143 "$god_ set-dist 15 18 1"
$ns_ at 24.570521017278 "$god_ set-dist 32 34 2"
$ns_ at 24.621252515960 "$god_ set-dist 23 47 1"
$ns_ at 24.635688787346 "$god_ set-dist 3 22 1"
$ns_ at 24.689782633093 "$god_ set-dist 25 44 1"
$ns_ at 24.705252210891 "$god_ set-dist 30 37 1"
$ns_ at 24.723660775478 "$god_ set-dist 24 29 2"
$ns_ at 24.782893010652 "$god_ set-dist 24 31 2"
$ns_ at 24.806797575213 "$god_ set-dist 0 16 1"
$ns_ at 24.851772447460 "$god_ set-dist 2 48 1"
$ns_ at 24.910272410003 "$god_ set-dist 14 37 1"
$ns_ at 24.910272410003 "$god_ set-dist 37 46 2"
$ns_ at 25.075698100506 "$god_ set-dist 16 45 1"
$ns_ at 25.114454809734 "$god_ set-dist 35 37 2"
$ns_ at 25.114454809734 "$god_ set-dist 37 42 1"
$ns_ at 25.125128046636 "$god_ set-dist 8 18 1"
$ns_ at 25.135530591581 "$god_ set-dist 17 47 1"
$ns_ at 25.139010238807 "$god_ set-dist 0 34 1"
$ns_ at 25.272262044212 "$god_ set-dist 34 39 2"
$ns_ at 25.299420432359 "$god_ set-dist 18 44 1"
$ns_ at 25.375830496901 "$god_ set-dist 28 44 1"
$ns_ at 25.404754633523 "$god_ set-dist 20 29 2"
$ns_ at 25.438466053130 "$god_ set-dist 33 41 1"
$ns_ at 25.441762214658 "$god_ set-dist 8 11 3"
$ns_ at 25.441762214658 "$god_ set-dist 11 23 2"
$ns_ at 25.441762214658 "$god_ set-dist 11 41 3"
$ns_ at 25.458572044581 "$node_(14) setdest 149.742788722855 74.768094623406 9.082988276906"
$ns_ at 25.504495700430 "$god_ set-dist 7 39 3"
$ns_ at 25.504495700430 "$god_ set-dist 16 39 3"
$ns_ at 25.504495700430 "$god_ set-dist 39 40 2"
$ns_ at 25.557338753892 "$god_ set-dist 6 19 2"
$ns_ at 25.557338753892 "$god_ set-dist 6 39 3"
$ns_ at 25.611719437058 "$god_ set-dist 14 27 2"
$ns_ at 25.611719437058 "$god_ set-dist 27 46 3"
$ns_ at 25.629509205164 "$god_ set-dist 0 17 1"
$ns_ at 25.652715436844 "$god_ set-dist 1 11 2"
$ns_ at 25.652715436844 "$god_ set-dist 11 20 3"
$ns_ at 25.652715436844 "$god_ set-dist 11 24 3"
$ns_ at 25.734447016383 "$god_ set-dist 0 23 1"
$ns_ at 25.790236067021 "$god_ set-dist 8 43 1"
$ns_ at 25.805172190523 "$god_ set-dist 23 24 2"
$ns_ at 25.805172190523 "$god_ set-dist 23 26 1"
$ns_ at 25.818100762718 "$god_ set-dist 9 26 1"
$ns_ at 25.818100762718 "$god_ set-dist 9 31 2"
$ns_ at 25.865006054590 "$god_ set-dist 26 48 1"
$ns_ at 25.865006054590 "$god_ set-dist 31 48 2"
$ns_ at 25.988818992523 "$god_ set-dist 2 9 1"
$ns_ at 26.044427081852 "$god_ set-dist 12 45 1"
$ns_ at 26.101179224077 "$god_ set-dist 16 41 2"
$ns_ at 26.101179224077 "$god_ set-dist 16 47 1"
$ns_ at 26.118684705015 "$god_ set-dist 4 38 2"
$ns_ at 26.118684705015 "$god_ set-dist 4 46 3"
$ns_ at 26.118684705015 "$god_ set-dist 35 38 1"
$ns_ at 26.118684705015 "$god_ set-dist 35 46 2"
$ns_ at 26.146024460419 "$god_ set-dist 11 38 3"
$ns_ at 26.146024460419 "$god_ set-dist 15 38 2"
$ns_ at 26.154615750807 "$god_ set-dist 1 49 2"
$ns_ at 26.154615750807 "$god_ set-dist 20 49 3"
$ns_ at 26.154615750807 "$god_ set-dist 24 49 3"
$ns_ at 26.229909735673 "$god_ set-dist 9 14 2"
$ns_ at 26.229909735673 "$god_ set-dist 9 46 3"
$ns_ at 26.429220207556 "$god_ set-dist 14 31 3"
$ns_ at 26.429220207556 "$god_ set-dist 14 32 2"
$ns_ at 26.515267219422 "$god_ set-dist 14 37 2"
$ns_ at 26.515267219422 "$god_ set-dist 37 46 3"
$ns_ at 26.544770529874 "$god_ set-dist 12 21 2"
$ns_ at 26.561868477621 "$god_ set-dist 16 34 1"
$ns_ at 26.579019729166 "$god_ set-dist 15 47 1"
$ns_ at 26.646216278443 "$god_ set-dist 4 24 4"
$ns_ at 26.646216278443 "$god_ set-dist 10 24 3"
$ns_ at 26.646216278443 "$god_ set-dist 23 24 3"
$ns_ at 26.646216278443 "$god_ set-dist 24 26 2"
$ns_ at 26.646216278443 "$god_ set-dist 24 35 3"
$ns_ at 26.803684285271 "$god_ set-dist 16 33 1"
$ns_ at 26.860726478784 "$god_ set-dist 0 41 1"
$ns_ at 26.885290746430 "$god_ set-dist 15 26 1"
$ns_ at 27.015095890332 "$god_ set-dist 17 18 1"
$ns_ at 27.105441288052 "$node_(1) setdest 488.096070665397 440.662117625522 0.000000000000"
$ns_ at 27.123255646177 "$god_ set-dist 0 15 1"
$ns_ at 27.124344511318 "$god_ set-dist 6 14 3"
$ns_ at 27.124344511318 "$god_ set-dist 6 46 4"
$ns_ at 27.124344511318 "$god_ set-dist 7 14 3"
$ns_ at 27.124344511318 "$god_ set-dist 7 46 4"
$ns_ at 27.124344511318 "$god_ set-dist 14 40 2"
$ns_ at 27.124344511318 "$god_ set-dist 40 46 3"
$ns_ at 27.177549300034 "$god_ set-dist 16 27 1"
$ns_ at 27.223419123689 "$node_(24) setdest 562.162357140279 652.624671213780 0.000000000000"
$ns_ at 27.252826584368 "$god_ set-dist 10 38 1"
$ns_ at 27.252826584368 "$god_ set-dist 10 46 2"
$ns_ at 27.373697501200 "$god_ set-dist 4 24 3"
$ns_ at 27.373697501200 "$god_ set-dist 10 24 2"
$ns_ at 27.373697501200 "$god_ set-dist 24 35 2"
$ns_ at 27.373697501200 "$god_ set-dist 24 45 1"
$ns_ at 27.451302040751 "$god_ set-dist 12 32 2"
$ns_ at 27.451608607162 "$god_ set-dist 2 25 1"
$ns_ at 27.549509733544 "$god_ set-dist 14 48 2"
$ns_ at 27.549509733544 "$god_ set-dist 46 48 3"
$ns_ at 27.605344446466 "$god_ set-dist 29 38 2"
$ns_ at 27.605344446466 "$god_ set-dist 29 41 2"
$ns_ at 27.605344446466 "$god_ set-dist 29 42 1"
$ns_ at 27.673844956197 "$god_ set-dist 0 48 1"
$ns_ at 27.768417954315 "$god_ set-dist 11 41 2"
$ns_ at 27.768417954315 "$god_ set-dist 19 41 1"
$ns_ at 27.941622216716 "$god_ set-dist 16 48 1"
$ns_ at 27.946970720567 "$god_ set-dist 30 36 1"
$ns_ at 27.998110417823 "$god_ set-dist 1 23 1"
$ns_ at 27.998110417823 "$god_ set-dist 20 23 2"
$ns_ at 27.998110417823 "$god_ set-dist 23 24 2"
$ns_ at 28.036026356863 "$god_ set-dist 11 21 2"
$ns_ at 28.041044048878 "$god_ set-dist 9 16 1"
$ns_ at 28.087744405797 "$god_ set-dist 35 36 2"
$ns_ at 28.087744405797 "$god_ set-dist 36 42 1"
$ns_ at 28.105441288052 "$node_(1) setdest 257.652869979338 139.244623976499 1.908738305098"
$ns_ at 28.152783106813 "$god_ set-dist 0 9 1"
$ns_ at 28.173996542717 "$god_ set-dist 15 41 1"
$ns_ at 28.223419123689 "$node_(24) setdest 25.958305930097 148.173109742349 2.523687175691"
$ns_ at 28.269202702668 "$god_ set-dist 21 40 2"
$ns_ at 28.331769022087 "$god_ set-dist 4 40 2"
$ns_ at 28.331769022087 "$god_ set-dist 10 40 1"
$ns_ at 28.340908340428 "$god_ set-dist 11 19 2"
$ns_ at 28.397435049046 "$god_ set-dist 0 29 1"
$ns_ at 28.429152683634 "$node_(19) setdest 389.509519249662 314.540725407299 0.000000000000"
$ns_ at 28.435735135721 "$god_ set-dist 1 4 2"
$ns_ at 28.435735135721 "$god_ set-dist 1 10 1"
$ns_ at 28.435735135721 "$god_ set-dist 4 20 3"
$ns_ at 28.435735135721 "$god_ set-dist 10 20 2"
$ns_ at 28.507183178425 "$god_ set-dist 6 31 2"
$ns_ at 28.507183178425 "$god_ set-dist 20 31 3"
$ns_ at 28.529012797064 "$god_ set-dist 47 48 1"
$ns_ at 28.551935599389 "$god_ set-dist 8 11 2"
$ns_ at 28.551935599389 "$god_ set-dist 8 15 1"
$ns_ at 28.670432928700 "$god_ set-dist 13 29 1"
$ns_ at 28.672600287410 "$god_ set-dist 0 27 1"
$ns_ at 28.783364062047 "$god_ set-dist 16 38 2"
$ns_ at 28.783364062047 "$god_ set-dist 16 39 2"
$ns_ at 28.783364062047 "$god_ set-dist 16 42 1"
$ns_ at 28.783451761024 "$god_ set-dist 14 34 2"
$ns_ at 28.783451761024 "$god_ set-dist 34 46 3"
$ns_ at 28.790506085201 "$god_ set-dist 8 11 3"
$ns_ at 28.790506085201 "$god_ set-dist 11 15 2"
$ns_ at 28.790506085201 "$god_ set-dist 11 41 3"
$ns_ at 28.819135159257 "$god_ set-dist 4 31 1"
$ns_ at 28.823511443345 "$god_ set-dist 16 19 1"
$ns_ at 28.852444543713 "$god_ set-dist 12 22 2"
$ns_ at 29.168000164931 "$god_ set-dist 23 33 1"
$ns_ at 29.201234814243 "$god_ set-dist 1 15 1"
$ns_ at 29.201234814243 "$god_ set-dist 15 20 2"
$ns_ at 29.201234814243 "$god_ set-dist 15 24 2"
$ns_ at 29.346318445007 "$god_ set-dist 2 27 2"
$ns_ at 29.429152683634 "$node_(19) setdest 658.881360580521 442.110442218597 2.753656150950"
$ns_ at 29.476872818608 "$god_ set-dist 7 31 3"
$ns_ at 29.476872818608 "$god_ set-dist 26 31 2"
$ns_ at 29.649290627912 "$god_ set-dist 9 47 1"
$ns_ at 29.760220520999 "$god_ set-dist 3 46 2"
$ns_ at 29.760220520999 "$god_ set-dist 6 46 3"
$ns_ at 29.760220520999 "$god_ set-dist 7 46 3"
$ns_ at 29.760220520999 "$god_ set-dist 9 46 2"
$ns_ at 29.760220520999 "$god_ set-dist 21 46 1"
$ns_ at 29.760220520999 "$god_ set-dist 27 46 2"
$ns_ at 29.760220520999 "$god_ set-dist 34 46 2"
$ns_ at 29.760220520999 "$god_ set-dist 36 46 2"
$ns_ at 29.760220520999 "$god_ set-dist 37 46 2"
$ns_ at 29.760220520999 "$god_ set-dist 46 48 2"
$ns_ at 29.760220520999 "$god_ set-dist 46 49 2"
$ns_ at 29.831963625128 "$god_ set-dist 28 29 1"
$ns_ at 29.883314367701 "$god_ set-dist 16 38 3"
$ns_ at 29.883314367701 "$god_ set-dist 29 38 3"
$ns_ at 29.883314367701 "$god_ set-dist 38 42 2"
$ns_ at 29.890260775061 "$god_ set-dist 5 24 1"
$ns_ at 30.065592167516 "$god_ set-dist 4 23 2"
$ns_ at 30.065592167516 "$god_ set-dist 10 23 1"
$ns_ at 30.152183188873 "$god_ set-dist 4 46 4"
$ns_ at 30.152183188873 "$god_ set-dist 10 46 3"
$ns_ at 30.152183188873 "$god_ set-dist 35 46 3"
$ns_ at 30.152183188873 "$god_ set-dist 38 46 2"
$ns_ at 30.306246630383 "$god_ set-dist 26 28 1"
$ns_ at 30.334027034537 "$god_ set-dist 7 31 2"
$ns_ at 30.334027034537 "$god_ set-dist 7 45 1"
$ns_ at 30.388788885545 "$god_ set-dist 3 7 2"
$ns_ at 30.388788885545 "$god_ set-dist 7 21 3"
$ns_ at 30.388788885545 "$god_ set-dist 7 46 4"
$ns_ at 30.475426607678 "$god_ set-dist 11 22 2"
$ns_ at 30.532222632952 "$god_ set-dist 6 14 2"
$ns_ at 30.532222632952 "$god_ set-dist 6 39 2"
$ns_ at 30.532222632952 "$god_ set-dist 6 42 1"
$ns_ at 30.614354308876 "$god_ set-dist 0 28 1"
$ns_ at 30.614354308876 "$god_ set-dist 28 31 2"
$ns_ at 30.640526952585 "$god_ set-dist 45 48 1"
$ns_ at 30.641559793036 "$god_ set-dist 0 31 2"
$ns_ at 30.641559793036 "$god_ set-dist 27 31 3"
$ns_ at 30.641559793036 "$god_ set-dist 28 31 3"
$ns_ at 30.641559793036 "$god_ set-dist 29 31 3"
$ns_ at 30.663626591267 "$god_ set-dist 4 11 4"
$ns_ at 30.663626591267 "$god_ set-dist 10 11 3"
$ns_ at 30.663626591267 "$god_ set-dist 11 40 2"
$ns_ at 30.709438492305 "$god_ set-dist 17 45 1"
$ns_ at 31.214389523801 "$god_ set-dist 23 45 1"
$ns_ at 31.229784023289 "$god_ set-dist 30 45 2"
$ns_ at 31.303712395343 "$god_ set-dist 1 28 1"
$ns_ at 31.303712395343 "$god_ set-dist 20 28 2"
$ns_ at 31.303712395343 "$god_ set-dist 24 28 2"
$ns_ at 31.402168503287 "$god_ set-dist 13 26 1"
$ns_ at 31.461347952084 "$god_ set-dist 26 37 1"
$ns_ at 31.570893157347 "$god_ set-dist 16 17 1"
$ns_ at 31.574473343011 "$god_ set-dist 4 8 2"
$ns_ at 31.574473343011 "$god_ set-dist 4 46 3"
$ns_ at 31.574473343011 "$god_ set-dist 8 10 1"
$ns_ at 31.574473343011 "$god_ set-dist 8 31 2"
$ns_ at 31.574473343011 "$god_ set-dist 10 46 2"
$ns_ at 31.613856941835 "$god_ set-dist 1 20 2"
$ns_ at 31.613856941835 "$god_ set-dist 2 20 3"
$ns_ at 31.613856941835 "$god_ set-dist 4 20 4"
$ns_ at 31.613856941835 "$god_ set-dist 8 20 4"
$ns_ at 31.613856941835 "$god_ set-dist 10 20 3"
$ns_ at 31.613856941835 "$god_ set-dist 15 20 3"
$ns_ at 31.613856941835 "$god_ set-dist 18 20 3"
$ns_ at 31.613856941835 "$god_ set-dist 20 23 3"
$ns_ at 31.613856941835 "$god_ set-dist 20 28 3"
$ns_ at 31.613856941835 "$god_ set-dist 20 30 3"
$ns_ at 31.613856941835 "$god_ set-dist 20 32 3"
$ns_ at 31.613856941835 "$god_ set-dist 20 36 3"
$ns_ at 31.613856941835 "$god_ set-dist 20 37 3"
$ns_ at 31.613856941835 "$god_ set-dist 20 38 4"
$ns_ at 31.613856941835 "$god_ set-dist 20 43 3"
$ns_ at 31.620995000224 "$god_ set-dist 29 31 2"
$ns_ at 31.620995000224 "$god_ set-dist 29 45 1"
$ns_ at 31.631327745024 "$god_ set-dist 4 15 2"
$ns_ at 31.631327745024 "$god_ set-dist 10 15 1"
$ns_ at 31.777856870862 "$god_ set-dist 34 45 1"
$ns_ at 31.786325483613 "$god_ set-dist 0 13 1"
$ns_ at 31.793080334317 "$god_ set-dist 4 11 3"
$ns_ at 31.793080334317 "$god_ set-dist 4 44 2"
$ns_ at 31.793080334317 "$god_ set-dist 10 11 2"
$ns_ at 31.793080334317 "$god_ set-dist 10 44 1"
$ns_ at 31.878869920038 "$god_ set-dist 8 32 1"
$ns_ at 32.000579450661 "$god_ set-dist 1 13 1"
$ns_ at 32.000579450661 "$god_ set-dist 13 24 2"
$ns_ at 32.035077850501 "$god_ set-dist 8 16 2"
$ns_ at 32.035077850501 "$god_ set-dist 8 20 3"
$ns_ at 32.035077850501 "$god_ set-dist 16 32 1"
$ns_ at 32.035077850501 "$god_ set-dist 16 38 2"
$ns_ at 32.035077850501 "$god_ set-dist 20 32 2"
$ns_ at 32.035077850501 "$god_ set-dist 20 38 3"
$ns_ at 32.055932025586 "$god_ set-dist 9 45 1"
$ns_ at 32.077653509925 "$god_ set-dist 7 41 2"
$ns_ at 32.077653509925 "$god_ set-dist 26 41 1"
$ns_ at 32.091144138513 "$god_ set-dist 28 31 2"
$ns_ at 32.091144138513 "$god_ set-dist 28 47 1"
$ns_ at 32.177918642888 "$node_(43) setdest 317.949574720931 287.462817186552 0.000000000000"
$ns_ at 32.215206056109 "$god_ set-dist 23 38 2"
$ns_ at 32.215206056109 "$god_ set-dist 38 49 3"
$ns_ at 32.223547583198 "$god_ set-dist 21 42 2"
$ns_ at 32.264450816663 "$god_ set-dist 21 27 2"
$ns_ at 32.264450816663 "$god_ set-dist 27 46 3"
$ns_ at 32.284093686750 "$god_ set-dist 6 14 3"
$ns_ at 32.284093686750 "$god_ set-dist 14 42 2"
$ns_ at 32.285354537433 "$god_ set-dist 21 48 2"
$ns_ at 32.285354537433 "$god_ set-dist 46 48 3"
$ns_ at 32.291827175945 "$god_ set-dist 18 48 1"
$ns_ at 32.326967957532 "$god_ set-dist 0 37 1"
$ns_ at 32.329769884825 "$god_ set-dist 21 49 2"
$ns_ at 32.329769884825 "$god_ set-dist 46 49 3"
$ns_ at 32.335477137154 "$god_ set-dist 2 37 1"
$ns_ at 32.343765562422 "$god_ set-dist 7 26 2"
$ns_ at 32.343765562422 "$god_ set-dist 7 41 3"
$ns_ at 32.361023231922 "$god_ set-dist 17 33 1"
$ns_ at 32.539578607559 "$god_ set-dist 6 38 2"
$ns_ at 32.539578607559 "$god_ set-dist 38 47 1"
$ns_ at 32.555803211271 "$god_ set-dist 8 29 2"
$ns_ at 32.555803211271 "$god_ set-dist 23 29 1"
$ns_ at 32.571892396787 "$god_ set-dist 3 6 2"
$ns_ at 32.571892396787 "$god_ set-dist 6 21 3"
$ns_ at 32.573913777333 "$god_ set-dist 14 18 2"
$ns_ at 32.641192965111 "$god_ set-dist 7 22 3"
$ns_ at 32.641192965111 "$god_ set-dist 22 40 2"
$ns_ at 32.669820098798 "$god_ set-dist 31 39 3"
$ns_ at 32.669820098798 "$god_ set-dist 32 39 2"
$ns_ at 32.698261514668 "$god_ set-dist 8 35 1"
$ns_ at 32.698261514668 "$god_ set-dist 35 46 2"
$ns_ at 32.745328761886 "$god_ set-dist 4 14 2"
$ns_ at 32.745328761886 "$god_ set-dist 4 38 1"
$ns_ at 32.745328761886 "$god_ set-dist 4 39 2"
$ns_ at 32.758798862599 "$god_ set-dist 28 31 3"
$ns_ at 32.758798862599 "$god_ set-dist 31 47 2"
$ns_ at 32.822899603783 "$god_ set-dist 35 36 3"
$ns_ at 32.822899603783 "$god_ set-dist 35 42 2"
$ns_ at 32.836758148691 "$god_ set-dist 10 39 1"
$ns_ at 32.836758148691 "$god_ set-dist 31 39 2"
$ns_ at 32.912493055293 "$god_ set-dist 15 33 1"
$ns_ at 32.993251375204 "$god_ set-dist 4 17 2"
$ns_ at 32.993251375204 "$god_ set-dist 10 17 1"
$ns_ at 33.106925319450 "$god_ set-dist 6 48 1"
$ns_ at 33.177918642888 "$node_(43) setdest 110.050528016991 560.174732233012 5.998347871391"
$ns_ at 33.198749283994 "$god_ set-dist 9 21 2"
$ns_ at 33.198749283994 "$god_ set-dist 9 46 3"
$ns_ at 33.219347776892 "$god_ set-dist 33 48 1"
$ns_ at 33.526727067938 "$god_ set-dist 18 28 1"
$ns_ at 33.589482729029 "$god_ set-dist 8 21 1"
$ns_ at 33.612412840288 "$god_ set-dist 2 12 2"
$ns_ at 33.913821096170 "$node_(20) setdest 654.238906549683 627.083257765817 0.000000000000"
$ns_ at 33.914510003562 "$god_ set-dist 4 16 2"
$ns_ at 33.914510003562 "$god_ set-dist 4 20 3"
$ns_ at 33.914510003562 "$god_ set-dist 10 16 1"
$ns_ at 33.914510003562 "$god_ set-dist 10 20 2"
$ns_ at 34.139900481842 "$god_ set-dist 35 36 2"
$ns_ at 34.139900481842 "$god_ set-dist 35 43 1"
$ns_ at 34.156152482492 "$god_ set-dist 21 36 2"
$ns_ at 34.156152482492 "$god_ set-dist 36 46 3"
$ns_ at 34.166021693439 "$god_ set-dist 11 44 2"
$ns_ at 34.189027463602 "$god_ set-dist 5 28 1"
$ns_ at 34.203706826688 "$node_(28) setdest 435.090412180593 211.583647355297 0.000000000000"
$ns_ at 34.203898572731 "$god_ set-dist 9 46 2"
$ns_ at 34.203898572731 "$god_ set-dist 22 46 1"
$ns_ at 34.203898572731 "$god_ set-dist 27 46 2"
$ns_ at 34.203898572731 "$god_ set-dist 36 46 2"
$ns_ at 34.203898572731 "$god_ set-dist 46 48 2"
$ns_ at 34.203898572731 "$god_ set-dist 46 49 2"
$ns_ at 34.209041874421 "$god_ set-dist 5 28 2"
$ns_ at 34.209916683730 "$god_ set-dist 14 19 2"
$ns_ at 34.212971354155 "$god_ set-dist 3 4 2"
$ns_ at 34.212971354155 "$god_ set-dist 3 10 1"
$ns_ at 34.291215655718 "$god_ set-dist 13 39 2"
$ns_ at 34.355198703428 "$god_ set-dist 3 32 2"
$ns_ at 34.443683798430 "$god_ set-dist 1 4 3"
$ns_ at 34.443683798430 "$god_ set-dist 3 4 3"
$ns_ at 34.443683798430 "$god_ set-dist 4 5 3"
$ns_ at 34.443683798430 "$god_ set-dist 4 10 2"
$ns_ at 34.443683798430 "$god_ set-dist 4 11 4"
$ns_ at 34.443683798430 "$god_ set-dist 4 15 3"
$ns_ at 34.443683798430 "$god_ set-dist 4 16 3"
$ns_ at 34.443683798430 "$god_ set-dist 4 17 3"
$ns_ at 34.443683798430 "$god_ set-dist 4 19 3"
$ns_ at 34.443683798430 "$god_ set-dist 4 20 4"
$ns_ at 34.443683798430 "$god_ set-dist 4 23 3"
$ns_ at 34.443683798430 "$god_ set-dist 4 40 3"
$ns_ at 34.443683798430 "$god_ set-dist 4 42 3"
$ns_ at 34.443683798430 "$god_ set-dist 4 44 3"
$ns_ at 34.443683798430 "$god_ set-dist 4 49 4"
$ns_ at 34.477004323650 "$god_ set-dist 4 49 3"
$ns_ at 34.477004323650 "$god_ set-dist 30 49 1"
$ns_ at 34.477004323650 "$god_ set-dist 38 49 2"
$ns_ at 34.575716633749 "$god_ set-dist 16 23 1"
$ns_ at 34.575716633749 "$god_ set-dist 20 23 2"
$ns_ at 34.585029126403 "$god_ set-dist 1 4 2"
$ns_ at 34.585029126403 "$god_ set-dist 4 5 2"
$ns_ at 34.585029126403 "$god_ set-dist 4 11 3"
$ns_ at 34.585029126403 "$god_ set-dist 4 15 2"
$ns_ at 34.585029126403 "$god_ set-dist 4 16 2"
$ns_ at 34.585029126403 "$god_ set-dist 4 17 2"
$ns_ at 34.585029126403 "$god_ set-dist 4 19 2"
$ns_ at 34.585029126403 "$god_ set-dist 4 20 3"
$ns_ at 34.585029126403 "$god_ set-dist 4 23 2"
$ns_ at 34.585029126403 "$god_ set-dist 4 32 1"
$ns_ at 34.585029126403 "$god_ set-dist 4 40 2"
$ns_ at 34.585029126403 "$god_ set-dist 4 42 2"
$ns_ at 34.585029126403 "$god_ set-dist 4 44 2"
$ns_ at 34.615965939237 "$god_ set-dist 4 11 4"
$ns_ at 34.615965939237 "$god_ set-dist 11 17 2"
$ns_ at 34.615965939237 "$god_ set-dist 11 32 3"
$ns_ at 34.643409118085 "$god_ set-dist 21 34 2"
$ns_ at 34.662637550931 "$god_ set-dist 16 18 1"
$ns_ at 34.662637550931 "$god_ set-dist 18 20 2"
$ns_ at 34.743108435031 "$god_ set-dist 9 18 1"
$ns_ at 34.812546329743 "$god_ set-dist 6 39 3"
$ns_ at 34.812546329743 "$god_ set-dist 39 42 2"
$ns_ at 34.858363150927 "$god_ set-dist 0 36 1"
$ns_ at 34.860798047630 "$god_ set-dist 10 48 1"
$ns_ at 34.913821096170 "$node_(20) setdest 170.778723084828 563.404237785861 5.292264963684"
$ns_ at 34.934372386412 "$god_ set-dist 7 31 3"
$ns_ at 34.934372386412 "$god_ set-dist 9 31 3"
$ns_ at 34.934372386412 "$god_ set-dist 12 31 3"
$ns_ at 34.934372386412 "$god_ set-dist 24 31 3"
$ns_ at 34.934372386412 "$god_ set-dist 29 31 3"
$ns_ at 34.934372386412 "$god_ set-dist 31 34 3"
$ns_ at 34.934372386412 "$god_ set-dist 31 45 2"
$ns_ at 34.956467905762 "$god_ set-dist 27 47 1"
$ns_ at 34.965877242811 "$god_ set-dist 26 36 1"
$ns_ at 34.993083359890 "$god_ set-dist 13 47 1"
$ns_ at 35.024028663407 "$god_ set-dist 30 38 2"
$ns_ at 35.024028663407 "$god_ set-dist 38 49 3"
$ns_ at 35.135009099599 "$god_ set-dist 5 30 2"
$ns_ at 35.197955681807 "$god_ set-dist 30 33 2"
$ns_ at 35.203706826688 "$node_(28) setdest 347.465048977810 217.132918002002 1.329513703598"
$ns_ at 35.232251446103 "$god_ set-dist 4 14 3"
$ns_ at 35.232251446103 "$god_ set-dist 14 38 2"
$ns_ at 35.314817492659 "$god_ set-dist 13 14 2"
$ns_ at 35.449023432463 "$god_ set-dist 0 25 1"
$ns_ at 35.464035081643 "$god_ set-dist 15 45 1"
$ns_ at 35.466770034695 "$god_ set-dist 36 38 3"
$ns_ at 35.466770034695 "$god_ set-dist 36 43 2"
$ns_ at 35.469972398850 "$god_ set-dist 17 41 1"
$ns_ at 35.536085800289 "$god_ set-dist 40 49 2"
$ns_ at 35.850780015051 "$god_ set-dist 4 11 3"
$ns_ at 35.850780015051 "$god_ set-dist 4 48 2"
$ns_ at 35.850780015051 "$god_ set-dist 11 32 2"
$ns_ at 35.850780015051 "$god_ set-dist 32 48 1"
$ns_ at 35.904619254998 "$god_ set-dist 3 33 2"
$ns_ at 36.043189168472 "$god_ set-dist 25 26 1"
$ns_ at 36.140841754084 "$god_ set-dist 25 29 1"
$ns_ at 36.173870116822 "$god_ set-dist 2 16 1"
$ns_ at 36.173870116822 "$god_ set-dist 2 20 2"
$ns_ at 36.257699550375 "$node_(31) setdest 230.751440486940 669.869533230751 0.000000000000"
$ns_ at 36.308851122372 "$god_ set-dist 16 43 1"
$ns_ at 36.308851122372 "$god_ set-dist 20 43 2"
$ns_ at 36.351832011613 "$god_ set-dist 19 21 2"
$ns_ at 36.371397737239 "$god_ set-dist 11 25 2"
$ns_ at 36.408655955085 "$god_ set-dist 12 30 2"
$ns_ at 36.480357980676 "$god_ set-dist 3 31 3"
$ns_ at 36.480357980676 "$god_ set-dist 10 31 2"
$ns_ at 36.480357980676 "$god_ set-dist 31 39 3"
$ns_ at 36.543687277646 "$god_ set-dist 18 22 1"
$ns_ at 36.619729736024 "$god_ set-dist 3 21 2"
$ns_ at 36.699255780108 "$god_ set-dist 9 10 1"
$ns_ at 36.699501406532 "$god_ set-dist 7 35 3"
$ns_ at 36.699501406532 "$god_ set-dist 24 35 3"
$ns_ at 36.699501406532 "$god_ set-dist 35 45 2"
$ns_ at 36.792471896386 "$god_ set-dist 12 25 2"
$ns_ at 36.798142055278 "$god_ set-dist 15 20 2"
$ns_ at 36.798142055278 "$god_ set-dist 20 45 1"
$ns_ at 36.828677492166 "$god_ set-dist 27 45 1"
$ns_ at 37.059422771453 "$god_ set-dist 8 22 1"
$ns_ at 37.073749432534 "$god_ set-dist 6 8 2"
$ns_ at 37.073749432534 "$god_ set-dist 8 47 1"
$ns_ at 37.073749432534 "$god_ set-dist 46 47 2"
$ns_ at 37.091216517703 "$god_ set-dist 37 47 1"
$ns_ at 37.116298925344 "$node_(48) setdest 480.396841057236 338.520961062135 0.000000000000"
$ns_ at 37.130993307043 "$god_ set-dist 18 34 1"
$ns_ at 37.138041698447 "$god_ set-dist 6 19 1"
$ns_ at 37.138041698447 "$god_ set-dist 6 39 2"
$ns_ at 37.159345732208 "$god_ set-dist 4 11 4"
$ns_ at 37.159345732208 "$god_ set-dist 11 31 4"
$ns_ at 37.159345732208 "$god_ set-dist 11 32 3"
$ns_ at 37.159345732208 "$god_ set-dist 11 33 3"
$ns_ at 37.159345732208 "$god_ set-dist 11 48 2"
$ns_ at 37.175626368480 "$god_ set-dist 15 16 1"
$ns_ at 37.190536436714 "$god_ set-dist 0 35 2"
$ns_ at 37.257699550375 "$node_(31) setdest 313.982351084316 427.314478450318 3.567435427575"
$ns_ at 37.317900538567 "$god_ set-dist 9 31 2"
$ns_ at 37.317900538567 "$god_ set-dist 9 33 1"
$ns_ at 37.317900538567 "$god_ set-dist 11 31 3"
$ns_ at 37.317900538567 "$god_ set-dist 11 33 2"
$ns_ at 37.320673324207 "$god_ set-dist 5 20 1"
$ns_ at 37.587506300109 "$god_ set-dist 12 43 2"
$ns_ at 37.599478310883 "$node_(39) setdest 189.607708581817 207.293579677834 0.000000000000"
$ns_ at 37.626184826995 "$god_ set-dist 6 38 3"
$ns_ at 37.626184826995 "$god_ set-dist 12 38 3"
$ns_ at 37.626184826995 "$god_ set-dist 38 47 2"
$ns_ at 37.704106852929 "$god_ set-dist 14 17 2"
$ns_ at 37.753884627310 "$node_(11) setdest 669.331625341665 168.922999958970 0.000000000000"
$ns_ at 37.844338687454 "$god_ set-dist 6 39 3"
$ns_ at 37.844338687454 "$god_ set-dist 19 39 2"
$ns_ at 37.888616345700 "$god_ set-dist 0 22 1"
$ns_ at 37.888616345700 "$god_ set-dist 0 46 2"
$ns_ at 37.979486914413 "$god_ set-dist 13 16 1"
$ns_ at 37.979486914413 "$god_ set-dist 13 20 2"
$ns_ at 38.030492918132 "$god_ set-dist 6 9 1"
$ns_ at 38.030573795483 "$god_ set-dist 7 44 2"
$ns_ at 38.071267238612 "$god_ set-dist 10 28 1"
$ns_ at 38.116298925344 "$node_(48) setdest 306.913920624204 437.104311428894 0.554025309448"
$ns_ at 38.191111206788 "$god_ set-dist 11 14 3"
$ns_ at 38.191111206788 "$god_ set-dist 14 28 2"
$ns_ at 38.209320990168 "$god_ set-dist 4 30 3"
$ns_ at 38.209320990168 "$god_ set-dist 30 31 3"
$ns_ at 38.209320990168 "$god_ set-dist 30 32 2"
$ns_ at 38.274785109887 "$god_ set-dist 15 49 2"
$ns_ at 38.407984205847 "$god_ set-dist 14 41 2"
$ns_ at 38.468821248548 "$god_ set-dist 14 23 2"
$ns_ at 38.575894016582 "$god_ set-dist 22 26 1"
$ns_ at 38.575894016582 "$god_ set-dist 26 46 2"
$ns_ at 38.599478310883 "$node_(39) setdest 177.598033000340 520.279305222932 4.124017024365"
$ns_ at 38.695616264801 "$god_ set-dist 7 41 2"
$ns_ at 38.695616264801 "$god_ set-dist 40 41 1"
$ns_ at 38.753304030298 "$god_ set-dist 4 48 3"
$ns_ at 38.753304030298 "$god_ set-dist 32 48 2"
$ns_ at 38.753884627310 "$node_(11) setdest 584.630684480812 143.088673994049 2.287759894006"
$ns_ at 38.873855586982 "$god_ set-dist 10 34 1"
$ns_ at 38.874636041737 "$node_(23) setdest 365.286351744915 304.591321697225 0.000000000000"
$ns_ at 38.898646051227 "$god_ set-dist 1 30 2"
$ns_ at 38.898646051227 "$god_ set-dist 24 30 3"
$ns_ at 38.901642139451 "$god_ set-dist 22 41 1"
$ns_ at 38.929767957668 "$god_ set-dist 6 39 2"
$ns_ at 38.929767957668 "$god_ set-dist 39 47 1"
$ns_ at 38.946323281089 "$god_ set-dist 29 47 1"
$ns_ at 38.953589208430 "$god_ set-dist 22 42 2"
$ns_ at 38.953589208430 "$god_ set-dist 42 46 3"
$ns_ at 39.067976648891 "$god_ set-dist 8 21 2"
$ns_ at 39.159573956280 "$god_ set-dist 16 28 1"
$ns_ at 39.159573956280 "$god_ set-dist 20 28 2"
$ns_ at 39.191332028190 "$god_ set-dist 22 48 2"
$ns_ at 39.191332028190 "$god_ set-dist 46 48 3"
$ns_ at 39.317494762926 "$god_ set-dist 10 22 1"
$ns_ at 39.376224860307 "$god_ set-dist 13 21 2"
$ns_ at 39.796528396877 "$god_ set-dist 25 47 1"
$ns_ at 39.833343353596 "$god_ set-dist 7 29 2"
$ns_ at 39.874636041737 "$node_(23) setdest 200.781829886283 277.723170478460 2.238738498571"
$ns_ at 40.213427858922 "$god_ set-dist 27 38 3"
$ns_ at 40.213427858922 "$god_ set-dist 27 43 2"
$ns_ at 40.231904045287 "$god_ set-dist 22 47 1"
$ns_ at 40.529699531262 "$god_ set-dist 24 25 2"
$ns_ at 40.529699531262 "$god_ set-dist 24 30 2"
$ns_ at 40.529699531262 "$god_ set-dist 24 40 1"
$ns_ at 40.529699531262 "$god_ set-dist 24 41 2"
$ns_ at 40.545685405860 "$god_ set-dist 22 27 2"
$ns_ at 40.545685405860 "$god_ set-dist 27 46 3"
$ns_ at 40.597730177444 "$god_ set-dist 0 49 1"
$ns_ at 40.670377325235 "$god_ set-dist 8 46 2"
$ns_ at 40.670377325235 "$god_ set-dist 31 46 4"
$ns_ at 40.670377325235 "$god_ set-dist 32 46 3"
$ns_ at 40.670377325235 "$god_ set-dist 35 46 3"
$ns_ at 40.786081259808 "$god_ set-dist 18 25 1"
$ns_ at 40.888294724215 "$god_ set-dist 16 37 1"
$ns_ at 40.888294724215 "$god_ set-dist 20 37 2"
$ns_ at 40.913721131399 "$god_ set-dist 10 13 1"
$ns_ at 40.915289471587 "$god_ set-dist 10 25 1"
$ns_ at 40.927309412079 "$god_ set-dist 15 35 1"
$ns_ at 40.935736883616 "$god_ set-dist 13 45 1"
$ns_ at 40.979975815804 "$god_ set-dist 5 27 2"
$ns_ at 40.989157707781 "$god_ set-dist 7 25 3"
$ns_ at 40.989157707781 "$god_ set-dist 24 25 3"
$ns_ at 40.989157707781 "$god_ set-dist 25 40 2"
$ns_ at 41.020423668506 "$god_ set-dist 10 37 1"
$ns_ at 41.037932941165 "$god_ set-dist 3 5 2"
$ns_ at 41.077200119726 "$god_ set-dist 14 43 2"
$ns_ at 41.099213595145 "$god_ set-dist 2 14 2"
$ns_ at 41.148793023184 "$node_(3) setdest 460.173168817074 240.797504644348 0.000000000000"
$ns_ at 41.461480050859 "$god_ set-dist 22 49 2"
$ns_ at 41.461480050859 "$god_ set-dist 46 49 3"
$ns_ at 41.522232703488 "$god_ set-dist 1 20 1"
$ns_ at 41.522232703488 "$god_ set-dist 20 36 2"
$ns_ at 41.556855005712 "$node_(22) setdest 298.689401842979 154.073251548045 0.000000000000"
$ns_ at 41.726742379762 "$god_ set-dist 16 41 1"
$ns_ at 41.726742379762 "$god_ set-dist 20 41 2"
$ns_ at 41.726983246057 "$god_ set-dist 21 23 2"
$ns_ at 41.797607866439 "$god_ set-dist 18 37 1"
$ns_ at 41.830165708598 "$god_ set-dist 22 49 1"
$ns_ at 41.830165708598 "$god_ set-dist 46 49 2"
$ns_ at 41.937670938252 "$god_ set-dist 41 44 1"
$ns_ at 41.981939767425 "$god_ set-dist 21 43 2"
$ns_ at 42.143748601802 "$god_ set-dist 8 17 1"
$ns_ at 42.148793023184 "$node_(3) setdest 559.213300760921 163.697955170454 9.328619144008"
$ns_ at 42.308291683328 "$god_ set-dist 23 49 2"
$ns_ at 42.346021043053 "$god_ set-dist 1 14 3"
$ns_ at 42.346021043053 "$god_ set-dist 5 14 3"
$ns_ at 42.346021043053 "$god_ set-dist 12 14 3"
$ns_ at 42.346021043053 "$god_ set-dist 14 15 2"
$ns_ at 42.346021043053 "$god_ set-dist 14 16 3"
$ns_ at 42.346021043053 "$god_ set-dist 14 20 4"
$ns_ at 42.346021043053 "$god_ set-dist 14 33 3"
$ns_ at 42.346021043053 "$god_ set-dist 14 45 3"
$ns_ at 42.522816848029 "$god_ set-dist 12 15 2"
$ns_ at 42.556855005712 "$node_(22) setdest 597.558907773870 322.551938577276 6.805528499081"
$ns_ at 42.580259494666 "$god_ set-dist 22 44 1"
$ns_ at 42.580259494666 "$god_ set-dist 44 46 2"
$ns_ at 42.606181955258 "$god_ set-dist 21 37 2"
$ns_ at 42.654711032162 "$god_ set-dist 24 31 2"
$ns_ at 42.654711032162 "$god_ set-dist 24 33 1"
$ns_ at 42.654711032162 "$god_ set-dist 24 35 2"
$ns_ at 42.687786153261 "$god_ set-dist 7 46 3"
$ns_ at 42.687786153261 "$god_ set-dist 24 46 3"
$ns_ at 42.687786153261 "$god_ set-dist 27 46 2"
$ns_ at 42.687786153261 "$god_ set-dist 30 46 1"
$ns_ at 42.687786153261 "$god_ set-dist 40 46 2"
$ns_ at 42.687786153261 "$god_ set-dist 42 46 2"
$ns_ at 42.687786153261 "$god_ set-dist 46 48 2"
$ns_ at 42.696931884452 "$god_ set-dist 16 20 2"
$ns_ at 42.696931884452 "$god_ set-dist 20 41 3"
$ns_ at 42.708810346015 "$god_ set-dist 7 35 2"
$ns_ at 42.708810346015 "$god_ set-dist 16 35 1"
$ns_ at 42.712890624190 "$god_ set-dist 2 21 2"
$ns_ at 42.759831971175 "$god_ set-dist 26 35 2"
$ns_ at 42.776184924673 "$god_ set-dist 2 45 2"
$ns_ at 42.778753258317 "$god_ set-dist 11 20 2"
$ns_ at 42.778753258317 "$god_ set-dist 12 20 1"
$ns_ at 42.778753258317 "$god_ set-dist 20 49 2"
$ns_ at 42.896673747235 "$god_ set-dist 6 29 2"
$ns_ at 42.970869526655 "$god_ set-dist 11 24 2"
$ns_ at 42.970869526655 "$god_ set-dist 12 24 1"
$ns_ at 42.970869526655 "$god_ set-dist 24 49 2"
$ns_ at 42.971061724904 "$god_ set-dist 23 35 1"
$ns_ at 43.160935236650 "$god_ set-dist 17 21 2"
$ns_ at 43.292691856529 "$god_ set-dist 43 45 2"
$ns_ at 43.523523396382 "$god_ set-dist 8 30 2"
$ns_ at 43.532961888207 "$god_ set-dist 2 5 2"
$ns_ at 43.541546720495 "$god_ set-dist 22 27 1"
$ns_ at 43.547093548783 "$god_ set-dist 7 25 2"
$ns_ at 43.547093548783 "$god_ set-dist 7 42 1"
$ns_ at 43.678652885415 "$god_ set-dist 26 39 1"
$ns_ at 43.804676508674 "$god_ set-dist 22 48 1"
$ns_ at 43.835732356292 "$god_ set-dist 8 24 2"
$ns_ at 43.835732356292 "$god_ set-dist 8 33 1"
$ns_ at 43.835732356292 "$god_ set-dist 14 33 2"
$ns_ at 43.942113175196 "$god_ set-dist 9 11 2"
$ns_ at 43.942113175196 "$god_ set-dist 11 31 4"
$ns_ at 43.942113175196 "$god_ set-dist 11 33 3"
$ns_ at 43.961984843964 "$god_ set-dist 8 14 2"
$ns_ at 43.961984843964 "$god_ set-dist 14 31 4"
$ns_ at 43.961984843964 "$god_ set-dist 14 32 3"
$ns_ at 43.961984843964 "$god_ set-dist 14 33 3"
$ns_ at 43.961984843964 "$god_ set-dist 14 35 3"
$ns_ at 43.962918288592 "$god_ set-dist 5 15 2"
$ns_ at 43.962918288592 "$god_ set-dist 5 21 3"
$ns_ at 43.966227329999 "$god_ set-dist 24 25 2"
$ns_ at 43.966227329999 "$god_ set-dist 24 42 1"
$ns_ at 44.097884993096 "$god_ set-dist 7 49 3"
$ns_ at 44.097884993096 "$god_ set-dist 12 49 2"
$ns_ at 44.097884993096 "$god_ set-dist 20 49 3"
$ns_ at 44.097884993096 "$god_ set-dist 24 49 3"
$ns_ at 44.370805483139 "$god_ set-dist 35 40 1"
$ns_ at 44.411181104671 "$god_ set-dist 4 45 3"
$ns_ at 44.411181104671 "$god_ set-dist 32 45 2"
$ns_ at 44.615177941498 "$god_ set-dist 5 43 2"
$ns_ at 44.673099119718 "$god_ set-dist 15 21 2"
$ns_ at 44.673099119718 "$god_ set-dist 21 31 4"
$ns_ at 44.673099119718 "$god_ set-dist 21 32 3"
$ns_ at 44.673099119718 "$god_ set-dist 21 33 3"
$ns_ at 44.673099119718 "$god_ set-dist 21 35 3"
$ns_ at 44.673099119718 "$god_ set-dist 21 45 3"
$ns_ at 44.687609284701 "$god_ set-dist 9 41 1"
$ns_ at 44.766076433052 "$god_ set-dist 1 21 3"
$ns_ at 44.766076433052 "$god_ set-dist 11 21 3"
$ns_ at 44.766076433052 "$god_ set-dist 12 21 3"
$ns_ at 44.766076433052 "$god_ set-dist 16 21 3"
$ns_ at 44.766076433052 "$god_ set-dist 20 21 4"
$ns_ at 44.766076433052 "$god_ set-dist 21 28 2"
$ns_ at 44.809385621074 "$god_ set-dist 1 41 1"
$ns_ at 44.809385621074 "$god_ set-dist 20 41 2"
$ns_ at 44.833194130185 "$god_ set-dist 41 42 2"
$ns_ at 44.870328022458 "$god_ set-dist 0 4 3"
$ns_ at 44.870328022458 "$god_ set-dist 0 32 2"
$ns_ at 44.892911276085 "$god_ set-dist 14 40 3"
$ns_ at 44.892911276085 "$god_ set-dist 21 40 3"
$ns_ at 44.892911276085 "$god_ set-dist 30 40 2"
$ns_ at 44.892911276085 "$god_ set-dist 40 46 3"
$ns_ at 44.936621416511 "$god_ set-dist 8 22 2"
$ns_ at 45.032627325012 "$god_ set-dist 15 45 2"
$ns_ at 45.090508672561 "$god_ set-dist 10 38 2"
$ns_ at 45.125751327453 "$node_(21) setdest 210.282649637384 73.879562205856 0.000000000000"
$ns_ at 45.152277594725 "$god_ set-dist 36 47 1"
$ns_ at 45.171551286849 "$god_ set-dist 7 16 2"
$ns_ at 45.190664378817 "$god_ set-dist 4 8 1"
$ns_ at 45.380425076007 "$god_ set-dist 10 27 1"
$ns_ at 45.419208227439 "$node_(14) setdest 149.742788722855 74.768094623406 0.000000000000"
$ns_ at 45.506331084151 "$god_ set-dist 3 18 2"
$ns_ at 45.534083546950 "$god_ set-dist 18 45 2"
$ns_ at 45.534083546950 "$god_ set-dist 38 45 3"
$ns_ at 45.639361129208 "$god_ set-dist 14 31 3"
$ns_ at 45.639361129208 "$god_ set-dist 14 35 2"
$ns_ at 45.639361129208 "$god_ set-dist 21 31 3"
$ns_ at 45.639361129208 "$god_ set-dist 21 35 2"
$ns_ at 45.639361129208 "$god_ set-dist 31 39 2"
$ns_ at 45.639361129208 "$god_ set-dist 31 46 3"
$ns_ at 45.639361129208 "$god_ set-dist 35 39 1"
$ns_ at 45.639361129208 "$god_ set-dist 35 46 2"
$ns_ at 45.703278310485 "$god_ set-dist 13 43 2"
$ns_ at 45.715680869440 "$god_ set-dist 13 18 1"
$ns_ at 45.792139871116 "$god_ set-dist 3 43 2"
$ns_ at 45.889275105049 "$god_ set-dist 11 31 3"
$ns_ at 45.889275105049 "$god_ set-dist 11 33 2"
$ns_ at 45.889275105049 "$god_ set-dist 11 48 1"
$ns_ at 45.996825240844 "$god_ set-dist 7 30 3"
$ns_ at 45.996825240844 "$god_ set-dist 7 46 4"
$ns_ at 45.996825240844 "$god_ set-dist 24 30 3"
$ns_ at 45.996825240844 "$god_ set-dist 24 46 4"
$ns_ at 45.996825240844 "$god_ set-dist 30 42 2"
$ns_ at 45.996825240844 "$god_ set-dist 42 46 3"
$ns_ at 46.011650887875 "$god_ set-dist 31 38 1"
$ns_ at 46.063034204065 "$god_ set-dist 5 17 2"
$ns_ at 46.076586538840 "$god_ set-dist 2 38 2"
$ns_ at 46.076586538840 "$god_ set-dist 3 38 3"
$ns_ at 46.103491795908 "$god_ set-dist 4 42 3"
$ns_ at 46.103491795908 "$god_ set-dist 32 42 2"
$ns_ at 46.125751327453 "$node_(21) setdest 576.996825846224 276.205556746748 3.172495358130"
$ns_ at 46.152968173156 "$god_ set-dist 0 11 1"
$ns_ at 46.152968173156 "$god_ set-dist 11 41 2"
$ns_ at 46.179531509104 "$god_ set-dist 37 39 1"
$ns_ at 46.225445276422 "$node_(38) setdest 71.077175644239 458.293525025959 0.000000000000"
$ns_ at 46.232421310337 "$god_ set-dist 5 34 2"
$ns_ at 46.343819505737 "$god_ set-dist 14 32 2"
$ns_ at 46.343819505737 "$god_ set-dist 21 32 2"
$ns_ at 46.343819505737 "$god_ set-dist 32 39 1"
$ns_ at 46.343819505737 "$god_ set-dist 32 46 2"
$ns_ at 46.394019694058 "$god_ set-dist 7 14 4"
$ns_ at 46.394019694058 "$god_ set-dist 7 21 4"
$ns_ at 46.394019694058 "$god_ set-dist 7 25 3"
$ns_ at 46.394019694058 "$god_ set-dist 14 24 4"
$ns_ at 46.394019694058 "$god_ set-dist 14 42 3"
$ns_ at 46.394019694058 "$god_ set-dist 21 24 4"
$ns_ at 46.394019694058 "$god_ set-dist 21 42 3"
$ns_ at 46.394019694058 "$god_ set-dist 24 25 3"
$ns_ at 46.394019694058 "$god_ set-dist 25 42 2"
$ns_ at 46.419208227439 "$node_(14) setdest 383.184836607530 134.546941711047 8.820869229906"
$ns_ at 46.483816089802 "$god_ set-dist 22 31 2"
$ns_ at 46.483816089802 "$god_ set-dist 30 31 2"
$ns_ at 46.483816089802 "$god_ set-dist 31 41 1"
$ns_ at 46.573348247942 "$god_ set-dist 1 21 2"
$ns_ at 46.573348247942 "$god_ set-dist 7 21 3"
$ns_ at 46.573348247942 "$god_ set-dist 11 21 2"
$ns_ at 46.573348247942 "$god_ set-dist 12 21 2"
$ns_ at 46.573348247942 "$god_ set-dist 16 21 2"
$ns_ at 46.573348247942 "$god_ set-dist 20 21 3"
$ns_ at 46.573348247942 "$god_ set-dist 21 24 3"
$ns_ at 46.573348247942 "$god_ set-dist 21 28 1"
$ns_ at 46.573348247942 "$god_ set-dist 21 40 2"
$ns_ at 46.573348247942 "$god_ set-dist 21 42 2"
$ns_ at 46.788378598900 "$god_ set-dist 26 49 1"
$ns_ at 46.867991740961 "$god_ set-dist 17 35 1"
$ns_ at 46.867991740961 "$god_ set-dist 35 49 2"
$ns_ at 46.933231373453 "$god_ set-dist 8 49 3"
$ns_ at 46.933231373453 "$god_ set-dist 17 49 2"
$ns_ at 46.933231373453 "$god_ set-dist 35 49 3"
$ns_ at 46.996032623452 "$god_ set-dist 20 42 1"
$ns_ at 47.035163659687 "$god_ set-dist 5 29 2"
$ns_ at 47.078413088336 "$god_ set-dist 29 30 1"
$ns_ at 47.078413088336 "$god_ set-dist 29 46 2"
$ns_ at 47.078482868579 "$god_ set-dist 41 48 1"
$ns_ at 47.092057433287 "$god_ set-dist 7 35 3"
$ns_ at 47.092057433287 "$god_ set-dist 7 40 2"
$ns_ at 47.119879795709 "$god_ set-dist 10 36 1"
$ns_ at 47.217650682957 "$god_ set-dist 30 31 3"
$ns_ at 47.217650682957 "$god_ set-dist 30 41 2"
$ns_ at 47.225445276422 "$node_(38) setdest 340.369355314604 163.855398577154 6.560979572750"
$ns_ at 47.233220311454 "$god_ set-dist 10 45 2"
$ns_ at 47.233830230408 "$god_ set-dist 3 45 2"
$ns_ at 47.274155159400 "$god_ set-dist 21 37 1"
$ns_ at 47.305067105979 "$god_ set-dist 20 35 2"
$ns_ at 47.305067105979 "$god_ set-dist 20 40 1"
$ns_ at 47.344013168105 "$god_ set-dist 5 23 2"
$ns_ at 47.417660024143 "$god_ set-dist 2 38 1"
$ns_ at 47.417660024143 "$god_ set-dist 3 38 2"
$ns_ at 47.524956751834 "$god_ set-dist 5 10 2"
$ns_ at 47.975973498001 "$god_ set-dist 5 18 2"
$ns_ at 48.060649295670 "$god_ set-dist 25 46 1"
$ns_ at 48.112082702518 "$god_ set-dist 2 3 2"
$ns_ at 48.112082702518 "$god_ set-dist 3 38 3"
$ns_ at 48.172540440254 "$god_ set-dist 0 41 2"
$ns_ at 48.385015959799 "$god_ set-dist 15 36 2"
$ns_ at 48.450895157303 "$god_ set-dist 17 45 2"
$ns_ at 48.474539178465 "$god_ set-dist 34 43 2"
$ns_ at 48.607291348738 "$god_ set-dist 14 16 2"
$ns_ at 48.607291348738 "$god_ set-dist 14 24 3"
$ns_ at 48.607291348738 "$god_ set-dist 16 22 1"
$ns_ at 48.607291348738 "$god_ set-dist 16 46 2"
$ns_ at 48.607291348738 "$god_ set-dist 22 24 2"
$ns_ at 48.607291348738 "$god_ set-dist 24 46 3"
$ns_ at 48.813825464735 "$god_ set-dist 16 25 1"
$ns_ at 48.813825464735 "$god_ set-dist 24 25 2"
$ns_ at 49.013073718483 "$god_ set-dist 17 21 1"
$ns_ at 49.013073718483 "$god_ set-dist 21 33 2"
$ns_ at 49.059162621161 "$god_ set-dist 8 16 1"
$ns_ at 49.110855263436 "$god_ set-dist 3 16 2"
$ns_ at 49.133632818968 "$god_ set-dist 12 17 2"
$ns_ at 49.140097458220 "$god_ set-dist 23 45 2"
$ns_ at 49.173118449274 "$god_ set-dist 9 49 2"
$ns_ at 49.259362396051 "$god_ set-dist 10 29 1"
$ns_ at 49.296900117132 "$god_ set-dist 22 29 1"
$ns_ at 49.384783275724 "$god_ set-dist 4 19 3"
$ns_ at 49.384783275724 "$god_ set-dist 19 32 2"
$ns_ at 49.423077555289 "$god_ set-dist 3 40 2"
$ns_ at 49.477776941961 "$god_ set-dist 15 27 2"
$ns_ at 49.526675812190 "$god_ set-dist 3 38 2"
$ns_ at 49.526675812190 "$god_ set-dist 15 38 1"
$ns_ at 49.539388965034 "$god_ set-dist 36 40 2"
$ns_ at 49.546570246456 "$god_ set-dist 3 15 2"
$ns_ at 49.546570246456 "$god_ set-dist 3 38 3"
$ns_ at 49.692381923612 "$god_ set-dist 42 43 2"
$ns_ at 49.704983563491 "$god_ set-dist 16 39 1"
$ns_ at 49.704983563491 "$god_ set-dist 24 39 2"
$ns_ at 49.790915153516 "$god_ set-dist 10 21 1"
$ns_ at 49.799837054548 "$god_ set-dist 12 37 2"
$ns_ at 49.818170374466 "$god_ set-dist 2 21 1"
$ns_ at 49.841715551710 "$god_ set-dist 12 23 2"
$ns_ at 49.864533764679 "$god_ set-dist 1 7 2"
$ns_ at 49.864533764679 "$god_ set-dist 7 41 3"
$ns_ at 49.864533764679 "$god_ set-dist 7 43 3"
$ns_ at 50.134625451568 "$god_ set-dist 14 24 4"
$ns_ at 50.134625451568 "$god_ set-dist 16 24 2"
$ns_ at 50.134625451568 "$god_ set-dist 22 24 3"
$ns_ at 50.134625451568 "$god_ set-dist 24 25 3"
$ns_ at 50.134625451568 "$god_ set-dist 24 39 3"
$ns_ at 50.134625451568 "$god_ set-dist 24 46 4"
$ns_ at 50.327556849967 "$god_ set-dist 0 6 2"
$ns_ at 50.374792331705 "$god_ set-dist 4 9 2"
$ns_ at 50.374792331705 "$god_ set-dist 9 32 1"
$ns_ at 50.387054562455 "$god_ set-dist 12 31 2"
$ns_ at 50.387054562455 "$god_ set-dist 13 31 2"
$ns_ at 50.387054562455 "$god_ set-dist 16 31 1"
$ns_ at 50.387054562455 "$god_ set-dist 25 31 2"
$ns_ at 50.387054562455 "$god_ set-dist 27 31 2"
$ns_ at 50.387054562455 "$god_ set-dist 28 31 2"
$ns_ at 50.387054562455 "$god_ set-dist 29 31 2"
$ns_ at 50.387054562455 "$god_ set-dist 31 34 2"
$ns_ at 50.387054562455 "$god_ set-dist 31 37 2"
$ns_ at 50.479090900945 "$god_ set-dist 36 45 1"
$ns_ at 50.497841542193 "$god_ set-dist 44 49 2"
$ns_ at 50.592899940102 "$god_ set-dist 4 26 3"
$ns_ at 50.592899940102 "$god_ set-dist 4 49 4"
$ns_ at 50.592899940102 "$god_ set-dist 26 32 2"
$ns_ at 50.592899940102 "$god_ set-dist 32 49 3"
$ns_ at 50.612411657214 "$god_ set-dist 21 23 1"
$ns_ at 50.744801409004 "$god_ set-dist 6 38 2"
$ns_ at 50.744801409004 "$god_ set-dist 24 38 2"
$ns_ at 50.744801409004 "$god_ set-dist 33 38 1"
$ns_ at 50.744801409004 "$god_ set-dist 38 45 2"
$ns_ at 50.787692755602 "$god_ set-dist 6 26 2"
$ns_ at 50.891473422090 "$god_ set-dist 4 5 3"
$ns_ at 50.891473422090 "$god_ set-dist 4 7 4"
$ns_ at 50.891473422090 "$god_ set-dist 5 32 2"
$ns_ at 50.891473422090 "$god_ set-dist 7 32 3"
$ns_ at 50.941116980338 "$god_ set-dist 19 49 2"
$ns_ at 50.941248047206 "$god_ set-dist 0 33 2"
$ns_ at 51.060498490125 "$god_ set-dist 0 5 2"
$ns_ at 51.065868727506 "$god_ set-dist 1 14 2"
$ns_ at 51.065868727506 "$god_ set-dist 1 22 1"
$ns_ at 51.065868727506 "$god_ set-dist 1 46 2"
$ns_ at 51.065868727506 "$god_ set-dist 14 20 3"
$ns_ at 51.065868727506 "$god_ set-dist 14 24 3"
$ns_ at 51.065868727506 "$god_ set-dist 20 22 2"
$ns_ at 51.065868727506 "$god_ set-dist 20 46 3"
$ns_ at 51.065868727506 "$god_ set-dist 22 24 2"
$ns_ at 51.065868727506 "$god_ set-dist 24 46 3"
$ns_ at 51.087418602421 "$god_ set-dist 7 14 3"
$ns_ at 51.087418602421 "$god_ set-dist 11 14 2"
$ns_ at 51.087418602421 "$god_ set-dist 14 37 1"
$ns_ at 51.087418602421 "$god_ set-dist 14 40 2"
$ns_ at 51.087418602421 "$god_ set-dist 14 42 2"
$ns_ at 51.105542248207 "$god_ set-dist 0 43 2"
$ns_ at 51.133565680668 "$god_ set-dist 30 31 2"
$ns_ at 51.133565680668 "$god_ set-dist 31 43 1"
$ns_ at 51.266451986792 "$god_ set-dist 10 14 1"
$ns_ at 51.266451986792 "$god_ set-dist 14 33 2"
$ns_ at 51.285239933056 "$god_ set-dist 13 18 2"
$ns_ at 51.287926313907 "$god_ set-dist 30 31 3"
$ns_ at 51.287926313907 "$god_ set-dist 30 43 2"
$ns_ at 51.430610484747 "$god_ set-dist 2 7 3"
$ns_ at 51.430610484747 "$god_ set-dist 2 42 2"
$ns_ at 51.525478282879 "$god_ set-dist 28 41 1"
$ns_ at 51.566099897474 "$god_ set-dist 4 44 3"
$ns_ at 51.566099897474 "$god_ set-dist 32 44 2"
$ns_ at 51.684820374899 "$god_ set-dist 2 14 1"
$ns_ at 51.719307610494 "$god_ set-dist 39 44 1"
$ns_ at 51.855091202794 "$god_ set-dist 12 21 3"
$ns_ at 51.855091202794 "$god_ set-dist 12 28 2"
$ns_ at 51.918578103997 "$god_ set-dist 5 26 2"
$ns_ at 51.950953298748 "$god_ set-dist 14 28 1"
$ns_ at 51.968892775083 "$god_ set-dist 20 31 2"
$ns_ at 51.968892775083 "$god_ set-dist 31 40 1"
$ns_ at 52.005956069852 "$god_ set-dist 2 13 2"
$ns_ at 52.046219848553 "$god_ set-dist 14 17 1"
$ns_ at 52.711031010883 "$god_ set-dist 14 23 1"
$ns_ at 52.853361750863 "$god_ set-dist 5 49 3"
$ns_ at 52.853361750863 "$god_ set-dist 6 49 3"
$ns_ at 52.853361750863 "$god_ set-dist 48 49 2"
$ns_ at 52.992818352747 "$god_ set-dist 16 29 2"
$ns_ at 53.050728649235 "$god_ set-dist 25 41 1"
$ns_ at 53.108377385389 "$god_ set-dist 3 17 2"
$ns_ at 53.121605086361 "$god_ set-dist 13 15 2"
$ns_ at 53.121605086361 "$god_ set-dist 13 38 3"
$ns_ at 53.227156549022 "$god_ set-dist 8 31 1"
$ns_ at 53.368275184638 "$god_ set-dist 7 18 3"
$ns_ at 53.368275184638 "$god_ set-dist 18 42 2"
$ns_ at 53.513990484957 "$god_ set-dist 37 40 2"
$ns_ at 53.530208902072 "$god_ set-dist 7 15 3"
$ns_ at 53.530208902072 "$god_ set-dist 15 42 2"
$ns_ at 53.562348598284 "$god_ set-dist 3 47 2"
$ns_ at 53.572665423719 "$god_ set-dist 12 38 2"
$ns_ at 53.572665423719 "$god_ set-dist 13 38 2"
$ns_ at 53.572665423719 "$god_ set-dist 16 38 1"
$ns_ at 53.572665423719 "$god_ set-dist 27 38 2"
$ns_ at 53.662411025305 "$god_ set-dist 33 45 2"
$ns_ at 53.787177525776 "$god_ set-dist 1 46 3"
$ns_ at 53.787177525776 "$god_ set-dist 20 46 4"
$ns_ at 53.787177525776 "$god_ set-dist 22 46 2"
$ns_ at 53.787177525776 "$god_ set-dist 24 46 4"
$ns_ at 53.865364675475 "$god_ set-dist 7 11 3"
$ns_ at 53.865364675475 "$god_ set-dist 11 12 2"
$ns_ at 53.865364675475 "$god_ set-dist 11 20 3"
$ns_ at 53.865364675475 "$god_ set-dist 11 24 3"
$ns_ at 53.866822599847 "$god_ set-dist 10 32 2"
$ns_ at 53.949801365127 "$god_ set-dist 7 37 3"
$ns_ at 53.949801365127 "$god_ set-dist 37 42 2"
$ns_ at 53.996678917603 "$god_ set-dist 17 38 1"
$ns_ at 53.996678917603 "$god_ set-dist 29 38 2"
$ns_ at 53.996678917603 "$god_ set-dist 36 38 2"
$ns_ at 54.175470356766 "$god_ set-dist 3 23 2"
$ns_ at 54.263790956117 "$god_ set-dist 9 35 1"
$ns_ at 54.311562481496 "$god_ set-dist 16 45 2"
$ns_ at 54.311562481496 "$god_ set-dist 38 45 3"
$ns_ at 54.319629223850 "$god_ set-dist 9 30 2"
$ns_ at 54.444280985861 "$god_ set-dist 5 47 2"
$ns_ at 54.461784330971 "$god_ set-dist 1 4 3"
$ns_ at 54.461784330971 "$god_ set-dist 1 32 2"
$ns_ at 54.516598967805 "$god_ set-dist 8 45 3"
$ns_ at 54.516598967805 "$god_ set-dist 45 47 2"
$ns_ at 54.522545090790 "$god_ set-dist 16 27 2"
$ns_ at 54.656269381176 "$god_ set-dist 1 3 2"
$ns_ at 54.657127381210 "$god_ set-dist 37 41 1"
$ns_ at 54.694792842929 "$god_ set-dist 6 13 1"
$ns_ at 54.694792842929 "$god_ set-dist 6 49 2"
$ns_ at 54.723906927523 "$god_ set-dist 9 24 1"
$ns_ at 54.723906927523 "$god_ set-dist 24 25 2"
$ns_ at 54.723906927523 "$god_ set-dist 24 46 3"
$ns_ at 54.740940337971 "$god_ set-dist 12 16 2"
$ns_ at 54.740940337971 "$god_ set-dist 12 38 3"
$ns_ at 54.792500084079 "$god_ set-dist 7 17 3"
$ns_ at 54.792500084079 "$god_ set-dist 17 42 2"
$ns_ at 54.906605836524 "$god_ set-dist 7 10 3"
$ns_ at 54.906605836524 "$god_ set-dist 10 42 2"
$ns_ at 54.977891129208 "$god_ set-dist 17 29 2"
$ns_ at 54.977891129208 "$god_ set-dist 29 38 3"
$ns_ at 55.074261673701 "$god_ set-dist 8 20 2"
$ns_ at 55.074261673701 "$god_ set-dist 20 33 1"
$ns_ at 55.074261673701 "$god_ set-dist 20 38 2"
$ns_ at 55.127416367791 "$god_ set-dist 4 49 3"
$ns_ at 55.127416367791 "$god_ set-dist 8 49 2"
$ns_ at 55.127416367791 "$god_ set-dist 10 49 1"
$ns_ at 55.127416367791 "$god_ set-dist 35 49 2"
$ns_ at 55.239183769369 "$node_(41) setdest 268.588912330217 414.021438843678 0.000000000000"
$ns_ at 55.351578209828 "$god_ set-dist 10 35 2"
$ns_ at 55.351578209828 "$god_ set-dist 35 49 3"
$ns_ at 55.397451456221 "$god_ set-dist 15 30 2"
$ns_ at 55.402324944705 "$god_ set-dist 0 15 2"
$ns_ at 55.506482936670 "$god_ set-dist 15 31 1"
$ns_ at 55.580955239293 "$node_(49) setdest 520.358720252899 87.777219593446 0.000000000000"
$ns_ at 55.603314224909 "$node_(3) setdest 559.213300760921 163.697955170454 0.000000000000"
$ns_ at 55.696783364629 "$god_ set-dist 28 43 2"
$ns_ at 55.715828025022 "$god_ set-dist 37 43 2"
$ns_ at 55.868755329323 "$god_ set-dist 23 38 1"
$ns_ at 55.868755329323 "$god_ set-dist 29 38 2"
$ns_ at 55.932466682483 "$god_ set-dist 13 30 2"
$ns_ at 55.937494232573 "$node_(7) setdest 598.871400720731 641.487782227216 0.000000000000"
$ns_ at 56.035025516797 "$god_ set-dist 11 26 1"
$ns_ at 56.064052637786 "$god_ set-dist 3 9 2"
$ns_ at 56.064052637786 "$god_ set-dist 3 32 3"
$ns_ at 56.064052637786 "$god_ set-dist 3 35 3"
$ns_ at 56.132097502290 "$god_ set-dist 7 23 3"
$ns_ at 56.132097502290 "$god_ set-dist 23 42 2"
$ns_ at 56.151971850237 "$god_ set-dist 26 45 2"
$ns_ at 56.239183769369 "$node_(41) setdest 483.279880325360 299.523698319897 0.765146335855"
$ns_ at 56.241789594782 "$god_ set-dist 14 18 1"
$ns_ at 56.273637139984 "$god_ set-dist 29 31 3"
$ns_ at 56.273637139984 "$god_ set-dist 29 40 2"
$ns_ at 56.319831971378 "$god_ set-dist 3 35 2"
$ns_ at 56.319831971378 "$god_ set-dist 4 44 2"
$ns_ at 56.319831971378 "$god_ set-dist 35 44 1"
$ns_ at 56.370704205024 "$god_ set-dist 12 14 2"
$ns_ at 56.370704205024 "$god_ set-dist 14 26 1"
$ns_ at 56.417166724936 "$god_ set-dist 3 8 3"
$ns_ at 56.417166724936 "$god_ set-dist 4 10 3"
$ns_ at 56.417166724936 "$god_ set-dist 4 49 4"
$ns_ at 56.417166724936 "$god_ set-dist 8 10 2"
$ns_ at 56.417166724936 "$god_ set-dist 8 49 3"
$ns_ at 56.431237647540 "$god_ set-dist 30 48 2"
$ns_ at 56.512125871477 "$god_ set-dist 1 25 1"
$ns_ at 56.512125871477 "$god_ set-dist 1 46 2"
$ns_ at 56.512125871477 "$god_ set-dist 20 25 2"
$ns_ at 56.512125871477 "$god_ set-dist 20 46 3"
$ns_ at 56.526224855763 "$god_ set-dist 5 44 2"
$ns_ at 56.563694845225 "$god_ set-dist 5 16 2"
$ns_ at 56.563694845225 "$god_ set-dist 5 39 3"
$ns_ at 56.580955239293 "$node_(49) setdest 227.041651074463 189.540890272359 3.478032025376"
$ns_ at 56.603314224909 "$node_(3) setdest 173.889664716332 652.271844014186 5.788267625952"
$ns_ at 56.625572350989 "$god_ set-dist 5 39 2"
$ns_ at 56.625572350989 "$god_ set-dist 20 39 2"
$ns_ at 56.625572350989 "$god_ set-dist 24 39 2"
$ns_ at 56.625572350989 "$god_ set-dist 33 39 1"
$ns_ at 56.625572350989 "$god_ set-dist 33 46 2"
$ns_ at 56.680073605732 "$god_ set-dist 12 21 2"
$ns_ at 56.680073605732 "$god_ set-dist 21 26 1"
$ns_ at 56.743497171952 "$god_ set-dist 1 4 2"
$ns_ at 56.743497171952 "$god_ set-dist 4 10 2"
$ns_ at 56.743497171952 "$god_ set-dist 4 11 3"
$ns_ at 56.743497171952 "$god_ set-dist 4 19 2"
$ns_ at 56.743497171952 "$god_ set-dist 4 22 2"
$ns_ at 56.743497171952 "$god_ set-dist 4 25 2"
$ns_ at 56.743497171952 "$god_ set-dist 4 26 2"
$ns_ at 56.743497171952 "$god_ set-dist 4 43 1"
$ns_ at 56.743497171952 "$god_ set-dist 4 48 2"
$ns_ at 56.743497171952 "$god_ set-dist 4 49 3"
$ns_ at 56.787261635213 "$god_ set-dist 7 28 3"
$ns_ at 56.787261635213 "$god_ set-dist 28 42 2"
$ns_ at 56.842533420491 "$god_ set-dist 0 2 2"
$ns_ at 56.881507152766 "$god_ set-dist 4 22 3"
$ns_ at 56.881507152766 "$god_ set-dist 22 43 2"
$ns_ at 56.902847952488 "$god_ set-dist 11 22 1"
$ns_ at 56.916497174521 "$god_ set-dist 5 30 3"
$ns_ at 56.916497174521 "$god_ set-dist 19 30 2"
$ns_ at 56.937494232573 "$node_(7) setdest 484.125075812455 34.634365740686 6.591521674077"
$ns_ at 57.052664991438 "$god_ set-dist 27 31 3"
$ns_ at 57.052664991438 "$god_ set-dist 27 40 2"
$ns_ at 57.276548978860 "$node_(12) setdest 593.424133870802 411.471086686008 0.000000000000"
$ns_ at 57.281876371919 "$god_ set-dist 30 39 2"
$ns_ at 57.373189751234 "$god_ set-dist 0 16 2"
$ns_ at 57.375550928537 "$god_ set-dist 11 37 2"
$ns_ at 57.375633863451 "$god_ set-dist 13 25 2"
$ns_ at 57.375633863451 "$god_ set-dist 13 46 3"
$ns_ at 57.443721827457 "$god_ set-dist 17 27 2"
$ns_ at 57.490209740730 "$god_ set-dist 16 42 2"
$ns_ at 57.508687824867 "$god_ set-dist 1 3 1"
$ns_ at 57.521263398368 "$god_ set-dist 3 8 2"
$ns_ at 57.521263398368 "$god_ set-dist 3 32 2"
$ns_ at 57.521263398368 "$god_ set-dist 3 47 1"
$ns_ at 57.548143029027 "$god_ set-dist 18 21 1"
$ns_ at 57.668275824202 "$god_ set-dist 13 17 2"
$ns_ at 57.704010771355 "$god_ set-dist 13 16 2"
$ns_ at 57.713446909808 "$god_ set-dist 0 31 3"
$ns_ at 57.713446909808 "$god_ set-dist 0 40 2"
$ns_ at 57.740607084641 "$god_ set-dist 0 18 2"
$ns_ at 57.785047804223 "$god_ set-dist 4 48 3"
$ns_ at 57.785047804223 "$god_ set-dist 43 48 2"
$ns_ at 58.008485604937 "$god_ set-dist 2 7 2"
$ns_ at 58.008485604937 "$god_ set-dist 4 7 3"
$ns_ at 58.008485604937 "$god_ set-dist 7 10 2"
$ns_ at 58.008485604937 "$god_ set-dist 7 15 2"
$ns_ at 58.008485604937 "$god_ set-dist 7 17 2"
$ns_ at 58.008485604937 "$god_ set-dist 7 18 2"
$ns_ at 58.008485604937 "$god_ set-dist 7 23 2"
$ns_ at 58.008485604937 "$god_ set-dist 7 28 2"
$ns_ at 58.008485604937 "$god_ set-dist 7 31 2"
$ns_ at 58.008485604937 "$god_ set-dist 7 32 2"
$ns_ at 58.008485604937 "$god_ set-dist 7 35 2"
$ns_ at 58.008485604937 "$god_ set-dist 7 40 1"
$ns_ at 58.008485604937 "$god_ set-dist 7 41 2"
$ns_ at 58.008485604937 "$god_ set-dist 7 43 2"
$ns_ at 58.021944705006 "$god_ set-dist 7 28 3"
$ns_ at 58.021944705006 "$god_ set-dist 28 40 2"
$ns_ at 58.076257694085 "$god_ set-dist 36 45 2"
$ns_ at 58.109243676404 "$god_ set-dist 6 47 2"
$ns_ at 58.213629794094 "$god_ set-dist 14 47 1"
$ns_ at 58.276548978860 "$node_(12) setdest 305.081282022155 116.877840242952 0.984499299614"
$ns_ at 58.594087108985 "$god_ set-dist 6 16 2"
$ns_ at 58.613279234210 "$god_ set-dist 9 20 1"
$ns_ at 58.628516586797 "$god_ set-dist 10 33 2"
$ns_ at 58.875113624700 "$god_ set-dist 0 17 2"
$ns_ at 58.893296317018 "$god_ set-dist 4 24 2"
$ns_ at 58.893296317018 "$god_ set-dist 24 31 1"
$ns_ at 59.008975228079 "$god_ set-dist 15 34 2"
$ns_ at 59.039124480260 "$god_ set-dist 4 25 3"
$ns_ at 59.039124480260 "$god_ set-dist 25 43 2"
$ns_ at 59.157427896186 "$god_ set-dist 18 36 1"
$ns_ at 59.291479728573 "$god_ set-dist 13 46 2"
$ns_ at 59.291479728573 "$god_ set-dist 37 46 1"
$ns_ at 59.322019996418 "$god_ set-dist 9 39 1"
$ns_ at 59.328618756250 "$god_ set-dist 44 45 2"
$ns_ at 59.447312570333 "$god_ set-dist 7 10 3"
$ns_ at 59.447312570333 "$god_ set-dist 10 40 2"
$ns_ at 59.461722826341 "$god_ set-dist 14 49 1"
$ns_ at 59.471881080297 "$god_ set-dist 4 19 3"
$ns_ at 59.471881080297 "$god_ set-dist 19 43 2"
$ns_ at 59.507686013100 "$god_ set-dist 1 35 1"
$ns_ at 59.520844542798 "$node_(25) setdest 322.879565783997 182.689641313499 0.000000000000"
$ns_ at 59.632144102420 "$god_ set-dist 4 6 2"
$ns_ at 59.632144102420 "$god_ set-dist 6 31 1"
$ns_ at 59.651448398229 "$god_ set-dist 4 11 4"
$ns_ at 59.651448398229 "$god_ set-dist 4 26 3"
$ns_ at 59.651448398229 "$god_ set-dist 11 43 3"
$ns_ at 59.651448398229 "$god_ set-dist 26 43 2"
$ns_ at 59.905609256751 "$god_ set-dist 10 46 1"
$ns_ at 59.923623925473 "$god_ set-dist 33 42 2"
$ns_ at 59.923623925473 "$god_ set-dist 38 42 3"
$ns_ at 59.954808988301 "$god_ set-dist 21 47 1"
$ns_ at 60.009291339299 "$god_ set-dist 19 24 1"
$ns_ at 60.063348259573 "$node_(45) setdest 636.397776310504 425.127842362642 0.000000000000"
$ns_ at 60.208919606155 "$god_ set-dist 3 38 2"
$ns_ at 60.208919606155 "$god_ set-dist 12 38 2"
$ns_ at 60.208919606155 "$god_ set-dist 38 42 2"
$ns_ at 60.208919606155 "$god_ set-dist 38 47 1"
$ns_ at 60.350120786248 "$god_ set-dist 3 32 3"
$ns_ at 60.350120786248 "$god_ set-dist 32 47 2"
$ns_ at 60.471690354627 "$god_ set-dist 6 14 2"
$ns_ at 60.471690354627 "$god_ set-dist 14 44 1"
$ns_ at 60.520844542798 "$node_(25) setdest 483.632637014517 640.553035679048 7.213989789716"
$ns_ at 60.610362517172 "$god_ set-dist 0 31 2"
$ns_ at 60.610362517172 "$god_ set-dist 9 31 1"
$ns_ at 60.610362517172 "$god_ set-dist 27 31 2"
$ns_ at 60.610362517172 "$god_ set-dist 29 31 2"
$ns_ at 60.610362517172 "$god_ set-dist 31 36 2"
$ns_ at 60.685211901581 "$god_ set-dist 35 49 2"
$ns_ at 60.685211901581 "$god_ set-dist 44 49 1"
$ns_ at 60.720986977747 "$god_ set-dist 4 10 3"
$ns_ at 60.720986977747 "$god_ set-dist 10 43 2"
$ns_ at 60.791672341292 "$god_ set-dist 11 19 1"
$ns_ at 60.791672341292 "$god_ set-dist 11 24 2"
$ns_ at 60.836022424191 "$god_ set-dist 17 36 2"
$ns_ at 61.063348259573 "$node_(45) setdest 614.483592978815 190.120178583310 1.677857495145"
$ns_ at 61.121426362438 "$god_ set-dist 26 42 2"
$ns_ at 61.302195557052 "$god_ set-dist 8 42 3"
$ns_ at 61.302195557052 "$god_ set-dist 21 42 3"
$ns_ at 61.302195557052 "$god_ set-dist 38 42 3"
$ns_ at 61.302195557052 "$god_ set-dist 42 47 2"
$ns_ at 61.303135732205 "$god_ set-dist 18 30 2"
$ns_ at 61.362064227742 "$god_ set-dist 26 33 2"
$ns_ at 61.441841877672 "$god_ set-dist 14 36 1"
$ns_ at 61.510659224428 "$god_ set-dist 13 23 2"
$ns_ at 61.517643450663 "$god_ set-dist 3 23 1"
$ns_ at 61.517643450663 "$god_ set-dist 3 32 2"
$ns_ at 61.681773312894 "$god_ set-dist 17 30 2"
$ns_ at 61.704634394755 "$god_ set-dist 21 49 1"
$ns_ at 61.718028069423 "$god_ set-dist 3 9 1"
$ns_ at 61.718028069423 "$god_ set-dist 3 31 2"
$ns_ at 62.036102920154 "$god_ set-dist 2 30 2"
$ns_ at 62.125768641157 "$god_ set-dist 0 23 2"
$ns_ at 62.281493413327 "$god_ set-dist 0 8 3"
$ns_ at 62.281493413327 "$god_ set-dist 8 12 3"
$ns_ at 62.281493413327 "$god_ set-dist 8 13 3"
$ns_ at 62.281493413327 "$god_ set-dist 8 47 2"
$ns_ at 62.310140530406 "$god_ set-dist 14 16 1"
$ns_ at 62.310140530406 "$god_ set-dist 14 31 2"
$ns_ at 62.449982487606 "$god_ set-dist 38 49 2"
$ns_ at 62.449982487606 "$god_ set-dist 47 49 1"
$ns_ at 62.511265754924 "$god_ set-dist 24 48 1"
$ns_ at 62.598739254169 "$god_ set-dist 4 20 2"
$ns_ at 62.598739254169 "$god_ set-dist 20 31 1"
$ns_ at 62.630577693465 "$god_ set-dist 11 30 1"
$ns_ at 62.630577693465 "$god_ set-dist 11 46 2"
$ns_ at 62.657456001558 "$god_ set-dist 13 37 2"
$ns_ at 62.683447616587 "$god_ set-dist 0 9 2"
$ns_ at 62.683447616587 "$god_ set-dist 0 31 3"
$ns_ at 62.683447616587 "$god_ set-dist 0 32 3"
$ns_ at 62.867825806242 "$god_ set-dist 14 34 1"
$ns_ at 62.867825806242 "$god_ set-dist 14 45 2"
$ns_ at 62.921880470858 "$god_ set-dist 8 9 1"
$ns_ at 62.921880470858 "$god_ set-dist 8 12 2"
$ns_ at 62.921880470858 "$god_ set-dist 8 13 2"
$ns_ at 62.921880470858 "$god_ set-dist 8 42 2"
$ns_ at 62.921880470858 "$god_ set-dist 8 45 2"
$ns_ at 62.981193769610 "$god_ set-dist 3 45 1"
$ns_ at 63.074721415420 "$god_ set-dist 10 11 1"
$ns_ at 63.118040464490 "$god_ set-dist 26 40 2"
$ns_ at 63.126483999765 "$god_ set-dist 22 39 2"
$ns_ at 63.267849449764 "$god_ set-dist 7 22 2"
$ns_ at 63.267849449764 "$god_ set-dist 12 22 1"
$ns_ at 63.357474223253 "$god_ set-dist 7 26 3"
$ns_ at 63.357474223253 "$god_ set-dist 12 26 2"
$ns_ at 63.387483483378 "$god_ set-dist 5 48 2"
$ns_ at 63.654061537512 "$god_ set-dist 6 21 2"
$ns_ at 63.654061537512 "$god_ set-dist 21 42 2"
$ns_ at 63.654061537512 "$god_ set-dist 21 44 1"
$ns_ at 63.709907593340 "$god_ set-dist 16 34 2"
$ns_ at 63.719487427048 "$god_ set-dist 7 8 2"
$ns_ at 63.719487427048 "$god_ set-dist 8 40 1"
$ns_ at 63.759913454582 "$god_ set-dist 3 14 1"
$ns_ at 63.971064873641 "$god_ set-dist 10 13 2"
$ns_ at 63.971064873641 "$god_ set-dist 13 46 3"
$ns_ at 63.989833890540 "$god_ set-dist 23 32 2"
$ns_ at 63.989833890540 "$god_ set-dist 30 32 3"
$ns_ at 64.127848913243 "$god_ set-dist 16 21 1"
$ns_ at 64.127848913243 "$god_ set-dist 21 31 2"
$ns_ at 64.146281242565 "$god_ set-dist 21 42 3"
$ns_ at 64.146281242565 "$god_ set-dist 42 44 2"
$ns_ at 64.208043899154 "$god_ set-dist 10 15 2"
$ns_ at 64.250686527352 "$god_ set-dist 4 25 2"
$ns_ at 64.250686527352 "$god_ set-dist 25 38 1"
$ns_ at 64.347722914367 "$god_ set-dist 13 49 2"
$ns_ at 64.348641411170 "$god_ set-dist 38 44 1"
$ns_ at 64.402472547882 "$god_ set-dist 10 41 2"
$ns_ at 64.701032197945 "$node_(5) setdest 525.017402915661 595.572021354218 0.000000000000"
$ns_ at 64.702434146255 "$god_ set-dist 0 42 2"
$ns_ at 64.716297866732 "$god_ set-dist 36 42 2"
$ns_ at 64.756491145538 "$god_ set-dist 15 22 2"
$ns_ at 64.811712077673 "$god_ set-dist 24 49 2"
$ns_ at 64.811712077673 "$god_ set-dist 48 49 1"
$ns_ at 64.974961256597 "$god_ set-dist 23 29 2"
$ns_ at 64.991920997178 "$god_ set-dist 1 7 1"
$ns_ at 64.991920997178 "$god_ set-dist 7 10 2"
$ns_ at 64.991920997178 "$god_ set-dist 7 25 2"
$ns_ at 64.991920997178 "$god_ set-dist 7 26 2"
$ns_ at 64.991920997178 "$god_ set-dist 7 28 2"
$ns_ at 64.991920997178 "$god_ set-dist 7 37 2"
$ns_ at 64.991920997178 "$god_ set-dist 7 46 3"
$ns_ at 65.051952795070 "$god_ set-dist 26 39 2"
$ns_ at 65.080259999491 "$god_ set-dist 6 41 1"
$ns_ at 65.097440022247 "$god_ set-dist 2 36 1"
$ns_ at 65.142195633443 "$god_ set-dist 15 26 2"
$ns_ at 65.207224098442 "$god_ set-dist 11 20 2"
$ns_ at 65.207224098442 "$god_ set-dist 19 20 1"
$ns_ at 65.225262877394 "$god_ set-dist 1 43 2"
$ns_ at 65.289287807270 "$god_ set-dist 8 29 3"
$ns_ at 65.289287807270 "$god_ set-dist 9 29 2"
$ns_ at 65.289287807270 "$god_ set-dist 29 31 3"
$ns_ at 65.289287807270 "$god_ set-dist 29 32 3"
$ns_ at 65.335594851090 "$god_ set-dist 9 38 1"
$ns_ at 65.335594851090 "$god_ set-dist 38 42 2"
$ns_ at 65.335594851090 "$god_ set-dist 38 45 2"
$ns_ at 65.366698851610 "$god_ set-dist 7 11 2"
$ns_ at 65.366698851610 "$god_ set-dist 7 13 1"
$ns_ at 65.410774524063 "$god_ set-dist 36 45 1"
$ns_ at 65.491110771717 "$god_ set-dist 17 31 1"
$ns_ at 65.509426328848 "$god_ set-dist 34 40 2"
$ns_ at 65.606951865787 "$god_ set-dist 3 18 1"
$ns_ at 65.629083717798 "$god_ set-dist 14 29 1"
$ns_ at 65.701032197945 "$node_(5) setdest 68.408100292758 344.435678716428 7.045990669999"
$ns_ at 65.928163659599 "$god_ set-dist 7 19 1"
$ns_ at 66.026247487075 "$god_ set-dist 0 45 2"
$ns_ at 66.059635040152 "$god_ set-dist 9 10 2"
$ns_ at 66.265988746695 "$god_ set-dist 10 39 2"
$ns_ at 66.294045369621 "$god_ set-dist 8 46 3"
$ns_ at 66.294045369621 "$god_ set-dist 32 46 3"
$ns_ at 66.294045369621 "$god_ set-dist 33 46 3"
$ns_ at 66.294045369621 "$god_ set-dist 35 46 3"
$ns_ at 66.294045369621 "$god_ set-dist 39 46 2"
$ns_ at 66.294045369621 "$god_ set-dist 43 46 3"
$ns_ at 66.383922168126 "$god_ set-dist 4 37 2"
$ns_ at 66.383922168126 "$god_ set-dist 37 38 1"
$ns_ at 66.545186737676 "$god_ set-dist 6 30 3"
$ns_ at 66.545186737676 "$god_ set-dist 30 44 2"
$ns_ at 66.613166690126 "$god_ set-dist 8 30 3"
$ns_ at 66.613166690126 "$god_ set-dist 23 30 2"
$ns_ at 66.764492817124 "$god_ set-dist 7 9 1"
$ns_ at 66.764492817124 "$god_ set-dist 7 38 2"
$ns_ at 66.764492817124 "$god_ set-dist 7 39 2"
$ns_ at 66.858402764143 "$god_ set-dist 0 1 2"
$ns_ at 66.914399806217 "$god_ set-dist 15 28 2"
$ns_ at 66.977429695127 "$god_ set-dist 5 48 1"
$ns_ at 66.977429695127 "$god_ set-dist 5 49 2"
$ns_ at 67.005498347882 "$god_ set-dist 17 34 2"
$ns_ at 67.021256564016 "$god_ set-dist 4 11 3"
$ns_ at 67.021256564016 "$god_ set-dist 4 15 1"
$ns_ at 67.021256564016 "$god_ set-dist 4 19 2"
$ns_ at 67.021256564016 "$god_ set-dist 4 48 2"
$ns_ at 67.051268384574 "$god_ set-dist 23 27 2"
$ns_ at 67.171584336329 "$god_ set-dist 16 19 2"
$ns_ at 67.213253806306 "$god_ set-dist 25 33 1"
$ns_ at 67.213253806306 "$god_ set-dist 33 46 2"
$ns_ at 67.250648172478 "$god_ set-dist 14 27 1"
$ns_ at 67.285411210312 "$god_ set-dist 14 39 2"
$ns_ at 67.322749534111 "$god_ set-dist 3 42 2"
$ns_ at 67.374728929764 "$god_ set-dist 4 5 2"
$ns_ at 67.374728929764 "$god_ set-dist 5 31 1"
$ns_ at 67.518867482040 "$god_ set-dist 29 42 2"
$ns_ at 67.520000058880 "$god_ set-dist 26 41 2"
$ns_ at 67.735351657698 "$god_ set-dist 25 35 1"
$ns_ at 67.735351657698 "$god_ set-dist 35 46 2"
$ns_ at 67.790650635630 "$god_ set-dist 0 37 2"
$ns_ at 67.826703782658 "$god_ set-dist 0 25 2"
$ns_ at 67.926620162123 "$god_ set-dist 21 36 1"
$ns_ at 67.926620162123 "$god_ set-dist 21 45 2"
$ns_ at 68.005476464105 "$god_ set-dist 9 42 2"
$ns_ at 68.005476464105 "$god_ set-dist 38 42 3"
$ns_ at 68.005476464105 "$god_ set-dist 39 42 3"
$ns_ at 68.033128112077 "$god_ set-dist 0 44 2"
$ns_ at 68.040616373077 "$god_ set-dist 0 14 1"
$ns_ at 68.049141251629 "$god_ set-dist 0 43 3"
$ns_ at 68.049141251629 "$god_ set-dist 30 43 3"
$ns_ at 68.049141251629 "$god_ set-dist 43 47 2"
$ns_ at 68.184905919501 "$god_ set-dist 31 39 1"
$ns_ at 68.427502855236 "$god_ set-dist 8 27 3"
$ns_ at 68.427502855236 "$god_ set-dist 9 27 2"
$ns_ at 68.427502855236 "$god_ set-dist 27 31 3"
$ns_ at 68.427502855236 "$god_ set-dist 27 32 3"
$ns_ at 68.482404492291 "$god_ set-dist 7 48 1"
$ns_ at 68.482404492291 "$god_ set-dist 7 49 2"
$ns_ at 68.493723092211 "$god_ set-dist 18 32 2"
$ns_ at 68.541681030594 "$god_ set-dist 4 19 3"
$ns_ at 68.541681030594 "$god_ set-dist 15 19 2"
$ns_ at 68.564718671078 "$god_ set-dist 10 16 2"
$ns_ at 68.615824876870 "$god_ set-dist 22 45 1"
$ns_ at 68.675111395987 "$god_ set-dist 5 13 1"
$ns_ at 68.717858813131 "$god_ set-dist 8 42 3"
$ns_ at 68.717858813131 "$god_ set-dist 32 42 3"
$ns_ at 68.717858813131 "$god_ set-dist 40 42 2"
$ns_ at 68.717858813131 "$god_ set-dist 42 43 3"
$ns_ at 68.777666918021 "$god_ set-dist 6 14 3"
$ns_ at 68.777666918021 "$god_ set-dist 6 21 3"
$ns_ at 68.777666918021 "$god_ set-dist 6 44 2"
$ns_ at 68.791642131579 "$god_ set-dist 16 22 2"
$ns_ at 68.799446770370 "$god_ set-dist 40 45 2"
$ns_ at 68.863541462935 "$node_(10) setdest 390.545286036427 143.479861210522 0.000000000000"
$ns_ at 68.904432238201 "$god_ set-dist 9 36 2"
$ns_ at 68.904432238201 "$god_ set-dist 31 36 3"
$ns_ at 68.937755362342 "$god_ set-dist 27 30 2"
$ns_ at 68.949474614867 "$god_ set-dist 8 45 3"
$ns_ at 68.949474614867 "$god_ set-dist 9 45 2"
$ns_ at 68.949474614867 "$god_ set-dist 32 45 3"
$ns_ at 68.949474614867 "$god_ set-dist 38 45 3"
$ns_ at 68.949474614867 "$god_ set-dist 39 45 3"
$ns_ at 68.949474614867 "$god_ set-dist 43 45 3"
$ns_ at 68.959742283735 "$god_ set-dist 0 12 2"
$ns_ at 69.002686675160 "$god_ set-dist 15 37 2"
$ns_ at 69.002868866675 "$god_ set-dist 4 37 3"
$ns_ at 69.002868866675 "$god_ set-dist 4 38 2"
$ns_ at 69.039201255508 "$god_ set-dist 16 40 2"
$ns_ at 69.120023620572 "$god_ set-dist 20 45 2"
$ns_ at 69.158532829506 "$god_ set-dist 13 28 2"
$ns_ at 69.372373726853 "$god_ set-dist 16 48 2"
$ns_ at 69.590021185046 "$god_ set-dist 0 35 3"
$ns_ at 69.590021185046 "$god_ set-dist 0 38 3"
$ns_ at 69.590021185046 "$god_ set-dist 0 47 2"
$ns_ at 69.625328963403 "$god_ set-dist 17 19 2"
$ns_ at 69.653189358674 "$node_(0) setdest 590.506753524626 148.853483810444 0.000000000000"
$ns_ at 69.739079426565 "$god_ set-dist 5 14 2"
$ns_ at 69.739079426565 "$god_ set-dist 6 14 2"
$ns_ at 69.739079426565 "$god_ set-dist 7 14 2"
$ns_ at 69.739079426565 "$god_ set-dist 14 24 2"
$ns_ at 69.739079426565 "$god_ set-dist 14 48 1"
$ns_ at 69.771851049652 "$god_ set-dist 0 35 2"
$ns_ at 69.771851049652 "$god_ set-dist 0 38 2"
$ns_ at 69.771851049652 "$god_ set-dist 0 47 1"
$ns_ at 69.863541462935 "$node_(10) setdest 124.911221613068 429.834375715710 1.562494159443"
$ns_ at 69.903805668946 "$god_ set-dist 2 3 1"
$ns_ at 69.939148070549 "$god_ set-dist 1 31 1"
$ns_ at 69.939148070549 "$god_ set-dist 27 31 2"
$ns_ at 69.939148070549 "$god_ set-dist 29 31 2"
$ns_ at 69.939148070549 "$god_ set-dist 31 36 2"
$ns_ at 69.984928893755 "$god_ set-dist 2 31 1"
$ns_ at 70.027237568995 "$god_ set-dist 13 26 2"
$ns_ at 70.059851900253 "$god_ set-dist 11 14 1"
$ns_ at 70.086099537885 "$god_ set-dist 16 26 2"
$ns_ at 70.142683558044 "$god_ set-dist 9 26 2"
$ns_ at 70.231735806137 "$god_ set-dist 13 40 2"
$ns_ at 70.302710322363 "$god_ set-dist 13 24 1"
$ns_ at 70.445056146303 "$god_ set-dist 30 42 3"
$ns_ at 70.445056146303 "$god_ set-dist 34 42 2"
$ns_ at 70.574867016309 "$god_ set-dist 27 43 3"
$ns_ at 70.574867016309 "$god_ set-dist 29 43 3"
$ns_ at 70.574867016309 "$god_ set-dist 43 44 2"
$ns_ at 70.574867016309 "$god_ set-dist 43 49 3"
$ns_ at 70.640097172788 "$god_ set-dist 11 38 2"
$ns_ at 70.640097172788 "$god_ set-dist 28 38 1"
$ns_ at 70.653189358674 "$node_(0) setdest 367.416400712126 285.006732489308 3.571159770433"
$ns_ at 70.686492837781 "$god_ set-dist 9 37 2"
$ns_ at 70.789788762920 "$god_ set-dist 20 42 2"
$ns_ at 70.805931481086 "$god_ set-dist 8 46 2"
$ns_ at 70.805931481086 "$god_ set-dist 23 46 1"
$ns_ at 70.805931481086 "$god_ set-dist 40 46 2"
$ns_ at 70.805931481086 "$god_ set-dist 43 46 2"
$ns_ at 70.806868883717 "$god_ set-dist 7 33 1"
$ns_ at 70.883299635519 "$god_ set-dist 16 46 1"
$ns_ at 70.883299635519 "$god_ set-dist 31 46 2"
$ns_ at 70.883299635519 "$god_ set-dist 32 46 2"
$ns_ at 71.125316608305 "$node_(30) setdest 393.572410571635 31.533276070589 0.000000000000"
$ns_ at 71.139835506697 "$god_ set-dist 14 16 2"
$ns_ at 71.196679382271 "$god_ set-dist 17 22 2"
$ns_ at 71.458934097767 "$god_ set-dist 25 46 2"
$ns_ at 71.478546131959 "$god_ set-dist 21 38 1"
$ns_ at 71.487714470402 "$god_ set-dist 13 47 2"
$ns_ at 71.650319481941 "$god_ set-dist 21 39 2"
$ns_ at 71.681864010543 "$god_ set-dist 13 44 2"
$ns_ at 71.885014327053 "$god_ set-dist 28 46 1"
$ns_ at 71.889504950987 "$god_ set-dist 19 37 2"
$ns_ at 71.965251181046 "$god_ set-dist 11 35 2"
$ns_ at 71.965251181046 "$god_ set-dist 11 47 1"
$ns_ at 72.060836286041 "$god_ set-dist 1 16 2"
$ns_ at 72.060836286041 "$god_ set-dist 16 42 3"
$ns_ at 72.060836286041 "$god_ set-dist 16 45 3"
$ns_ at 72.101979037790 "$node_(42) setdest 668.196084260658 445.851005068284 0.000000000000"
$ns_ at 72.102942769203 "$god_ set-dist 17 26 2"
$ns_ at 72.125316608305 "$node_(30) setdest 352.037719048989 345.949151052028 2.618167140656"
$ns_ at 72.161718974233 "$god_ set-dist 8 27 2"
$ns_ at 72.161718974233 "$god_ set-dist 18 27 1"
$ns_ at 72.161718974233 "$god_ set-dist 27 43 2"
$ns_ at 72.181203627577 "$god_ set-dist 0 12 1"
$ns_ at 72.234443349420 "$god_ set-dist 14 17 2"
$ns_ at 72.249504999148 "$god_ set-dist 8 49 2"
$ns_ at 72.249504999148 "$god_ set-dist 18 49 1"
$ns_ at 72.249504999148 "$god_ set-dist 43 49 2"
$ns_ at 72.379868793393 "$god_ set-dist 4 48 3"
$ns_ at 72.379868793393 "$god_ set-dist 15 48 2"
$ns_ at 72.418147015883 "$god_ set-dist 2 32 2"
$ns_ at 72.418147015883 "$god_ set-dist 14 32 3"
$ns_ at 72.418147015883 "$god_ set-dist 26 32 3"
$ns_ at 72.418147015883 "$god_ set-dist 32 36 3"
$ns_ at 72.420842814668 "$god_ set-dist 30 40 3"
$ns_ at 72.420842814668 "$god_ set-dist 40 47 2"
$ns_ at 72.475019361520 "$god_ set-dist 1 14 1"
$ns_ at 72.475019361520 "$god_ set-dist 14 20 2"
$ns_ at 72.559977493185 "$god_ set-dist 3 21 1"
$ns_ at 72.594980646579 "$god_ set-dist 8 18 2"
$ns_ at 72.594980646579 "$god_ set-dist 8 27 3"
$ns_ at 72.594980646579 "$god_ set-dist 8 49 3"
$ns_ at 72.618184497260 "$god_ set-dist 22 41 2"
$ns_ at 72.619178793995 "$god_ set-dist 10 17 2"
$ns_ at 72.619178793995 "$god_ set-dist 10 32 3"
$ns_ at 72.675700859652 "$god_ set-dist 16 31 2"
$ns_ at 72.675700859652 "$god_ set-dist 31 46 3"
$ns_ at 72.721237168467 "$god_ set-dist 21 34 1"
$ns_ at 72.748687272048 "$god_ set-dist 8 13 3"
$ns_ at 72.748687272048 "$god_ set-dist 9 13 2"
$ns_ at 72.748687272048 "$god_ set-dist 13 16 3"
$ns_ at 72.748687272048 "$god_ set-dist 13 32 3"
$ns_ at 72.748687272048 "$god_ set-dist 13 38 3"
$ns_ at 72.748687272048 "$god_ set-dist 13 39 3"
$ns_ at 72.748687272048 "$god_ set-dist 13 43 3"
$ns_ at 73.101979037790 "$node_(42) setdest 652.887156605844 452.488606783475 8.315630981152"
$ns_ at 73.292498365415 "$god_ set-dist 12 33 1"
$ns_ at 73.314206860912 "$god_ set-dist 25 40 1"
$ns_ at 73.314206860912 "$god_ set-dist 30 40 2"
$ns_ at 73.412687039431 "$god_ set-dist 27 37 2"
$ns_ at 73.737885590890 "$node_(14) setdest 383.184836607530 134.546941711047 0.000000000000"
$ns_ at 73.776711700765 "$god_ set-dist 1 38 1"
$ns_ at 73.776711700765 "$god_ set-dist 13 38 2"
$ns_ at 73.776711700765 "$god_ set-dist 38 42 2"
$ns_ at 73.776711700765 "$god_ set-dist 38 45 2"
$ns_ at 73.810935142099 "$node_(13) setdest 616.367307967599 374.806244568829 0.000000000000"
$ns_ at 73.828842389540 "$god_ set-dist 8 23 2"
$ns_ at 73.924552594769 "$god_ set-dist 2 46 1"
$ns_ at 73.924552594769 "$god_ set-dist 31 46 2"
$ns_ at 74.030006940277 "$god_ set-dist 17 40 2"
$ns_ at 74.097419969972 "$god_ set-dist 5 41 1"
$ns_ at 74.111964880670 "$god_ set-dist 0 15 3"
$ns_ at 74.111964880670 "$god_ set-dist 11 15 3"
$ns_ at 74.111964880670 "$god_ set-dist 15 47 2"
$ns_ at 74.172707781857 "$god_ set-dist 23 40 2"
$ns_ at 74.522816040870 "$node_(40) setdest 393.830516360875 520.407522054101 0.000000000000"
$ns_ at 74.673622202545 "$god_ set-dist 26 46 1"
$ns_ at 74.726564778415 "$god_ set-dist 21 29 1"
$ns_ at 74.737885590890 "$node_(14) setdest 130.976842363175 382.001563705580 1.071537682526"
$ns_ at 74.760582765663 "$god_ set-dist 38 46 1"
$ns_ at 74.779779630244 "$god_ set-dist 4 48 2"
$ns_ at 74.779779630244 "$god_ set-dist 35 48 1"
$ns_ at 74.800504671897 "$god_ set-dist 29 45 2"
$ns_ at 74.810935142099 "$node_(13) setdest 500.137420564094 461.207369554586 2.212161368255"
$ns_ at 74.983715673641 "$god_ set-dist 21 42 2"
$ns_ at 74.983715673641 "$god_ set-dist 22 42 1"
$ns_ at 74.983715673641 "$god_ set-dist 30 42 2"
$ns_ at 75.077708608691 "$god_ set-dist 18 29 1"
$ns_ at 75.077708608691 "$god_ set-dist 29 43 2"
$ns_ at 75.108555915305 "$node_(42) setdest 652.887156605844 452.488606783475 0.000000000000"
$ns_ at 75.141944375269 "$god_ set-dist 1 39 1"
$ns_ at 75.141944375269 "$god_ set-dist 13 39 2"
$ns_ at 75.141944375269 "$god_ set-dist 39 42 2"
$ns_ at 75.141944375269 "$god_ set-dist 39 45 2"
$ns_ at 75.291074181159 "$god_ set-dist 9 16 2"
$ns_ at 75.298214618782 "$god_ set-dist 23 31 1"
$ns_ at 75.346543252599 "$god_ set-dist 12 44 2"
$ns_ at 75.355049600080 "$god_ set-dist 12 47 2"
$ns_ at 75.402198769751 "$god_ set-dist 17 48 2"
$ns_ at 75.423661839417 "$god_ set-dist 20 41 1"
$ns_ at 75.505511843553 "$god_ set-dist 7 16 3"
$ns_ at 75.505511843553 "$god_ set-dist 12 16 3"
$ns_ at 75.505511843553 "$god_ set-dist 16 24 3"
$ns_ at 75.505511843553 "$god_ set-dist 16 33 2"
$ns_ at 75.521216386499 "$god_ set-dist 0 45 1"
$ns_ at 75.522816040870 "$node_(40) setdest 653.857497040266 547.380138071037 4.188151352838"
$ns_ at 75.558053036299 "$god_ set-dist 18 46 1"
$ns_ at 75.573243376980 "$god_ set-dist 27 30 1"
$ns_ at 75.608788121036 "$god_ set-dist 12 16 2"
$ns_ at 75.608788121036 "$god_ set-dist 12 25 1"
$ns_ at 75.637968154912 "$god_ set-dist 18 43 2"
$ns_ at 75.637968154912 "$god_ set-dist 27 43 3"
$ns_ at 75.637968154912 "$god_ set-dist 29 43 3"
$ns_ at 75.637968154912 "$god_ set-dist 43 49 3"
$ns_ at 75.739466606711 "$god_ set-dist 23 49 1"
$ns_ at 75.739466606711 "$god_ set-dist 31 49 2"
$ns_ at 75.739466606711 "$god_ set-dist 43 49 2"
$ns_ at 75.803039407139 "$god_ set-dist 21 22 2"
$ns_ at 75.803039407139 "$god_ set-dist 21 42 3"
$ns_ at 75.816859617178 "$god_ set-dist 10 19 2"
$ns_ at 75.918684561699 "$god_ set-dist 16 32 2"
$ns_ at 76.075691932287 "$god_ set-dist 10 32 2"
$ns_ at 76.075691932287 "$god_ set-dist 10 38 1"
$ns_ at 76.081605102903 "$god_ set-dist 4 28 2"
$ns_ at 76.081605102903 "$god_ set-dist 4 37 2"
$ns_ at 76.081605102903 "$god_ set-dist 4 39 1"
$ns_ at 76.108555915305 "$node_(42) setdest 336.895892702589 157.965749722644 6.705419592263"
$ns_ at 76.139622392273 "$god_ set-dist 0 15 2"
$ns_ at 76.139622392273 "$god_ set-dist 0 25 1"
$ns_ at 76.237267392106 "$god_ set-dist 15 20 1"
$ns_ at 76.371686782741 "$god_ set-dist 15 30 3"
$ns_ at 76.371686782741 "$god_ set-dist 25 30 2"
$ns_ at 76.371686782741 "$god_ set-dist 30 40 3"
$ns_ at 76.650094933334 "$god_ set-dist 9 34 2"
$ns_ at 76.650094933334 "$god_ set-dist 32 34 3"
$ns_ at 76.691869624069 "$god_ set-dist 0 1 1"
$ns_ at 76.691869624069 "$god_ set-dist 0 31 2"
$ns_ at 76.740407652311 "$god_ set-dist 6 22 1"
$ns_ at 76.740407652311 "$god_ set-dist 6 30 2"
$ns_ at 76.743795269532 "$god_ set-dist 6 30 3"
$ns_ at 76.743795269532 "$god_ set-dist 22 30 2"
$ns_ at 76.754390892792 "$god_ set-dist 5 15 1"
$ns_ at 76.770494517763 "$god_ set-dist 15 30 2"
$ns_ at 76.770494517763 "$god_ set-dist 30 40 2"
$ns_ at 76.770494517763 "$god_ set-dist 30 44 1"
$ns_ at 76.799164300231 "$god_ set-dist 16 24 2"
$ns_ at 76.799164300231 "$god_ set-dist 24 41 1"
$ns_ at 77.151367580987 "$god_ set-dist 2 40 2"
$ns_ at 77.190860016046 "$god_ set-dist 3 42 1"
$ns_ at 77.190860016046 "$god_ set-dist 21 42 2"
$ns_ at 77.225190719841 "$god_ set-dist 18 40 2"
$ns_ at 77.225190719841 "$god_ set-dist 40 46 3"
$ns_ at 77.233522159464 "$god_ set-dist 7 22 1"
$ns_ at 77.267164745835 "$god_ set-dist 14 32 2"
$ns_ at 77.267164745835 "$god_ set-dist 14 38 1"
$ns_ at 77.271247924019 "$god_ set-dist 5 35 1"
$ns_ at 77.417341384086 "$god_ set-dist 34 42 1"
$ns_ at 77.456724184919 "$god_ set-dist 3 41 1"
$ns_ at 77.460936018326 "$god_ set-dist 9 28 2"
$ns_ at 77.461249928160 "$node_(11) setdest 584.630684480811 143.088673994049 0.000000000000"
$ns_ at 77.522559224775 "$god_ set-dist 2 8 2"
$ns_ at 77.522559224775 "$god_ set-dist 8 26 3"
$ns_ at 77.522559224775 "$god_ set-dist 8 34 3"
$ns_ at 77.522559224775 "$god_ set-dist 8 36 3"
$ns_ at 77.561367839989 "$node_(26) setdest 421.736595386455 140.021385029994 0.000000000000"
$ns_ at 77.604746056398 "$god_ set-dist 35 37 1"
$ns_ at 77.614753704575 "$god_ set-dist 25 31 1"
$ns_ at 77.717910433455 "$god_ set-dist 12 20 2"
$ns_ at 77.751318619404 "$god_ set-dist 6 21 2"
$ns_ at 77.751318619404 "$god_ set-dist 6 25 1"
$ns_ at 77.825244652769 "$god_ set-dist 18 30 1"
$ns_ at 77.997778232007 "$god_ set-dist 40 43 2"
$ns_ at 78.057584618463 "$god_ set-dist 8 16 2"
$ns_ at 78.062874123751 "$node_(47) setdest 382.758969332527 240.145026501306 0.000000000000"
$ns_ at 78.170634092669 "$god_ set-dist 8 13 2"
$ns_ at 78.170634092669 "$god_ set-dist 13 32 2"
$ns_ at 78.170634092669 "$god_ set-dist 13 40 1"
$ns_ at 78.181000703723 "$god_ set-dist 20 48 1"
$ns_ at 78.181000703723 "$god_ set-dist 20 49 2"
$ns_ at 78.245209335839 "$god_ set-dist 8 42 2"
$ns_ at 78.245209335839 "$god_ set-dist 32 42 2"
$ns_ at 78.245209335839 "$god_ set-dist 40 42 1"
$ns_ at 78.302599151666 "$god_ set-dist 10 32 3"
$ns_ at 78.302599151666 "$god_ set-dist 14 32 3"
$ns_ at 78.302599151666 "$god_ set-dist 32 38 2"
$ns_ at 78.302599151666 "$god_ set-dist 32 46 3"
$ns_ at 78.411589828404 "$god_ set-dist 20 35 1"
$ns_ at 78.418045096382 "$god_ set-dist 3 33 1"
$ns_ at 78.461249928160 "$node_(11) setdest 471.003329141227 398.310826965294 7.729509504917"
$ns_ at 78.540985047572 "$god_ set-dist 8 22 3"
$ns_ at 78.540985047572 "$god_ set-dist 9 22 2"
$ns_ at 78.540985047572 "$god_ set-dist 22 32 3"
$ns_ at 78.561367839989 "$node_(26) setdest 301.467461212359 579.204439412459 0.453629438848"
$ns_ at 78.576713402750 "$god_ set-dist 29 37 2"
$ns_ at 78.717386065364 "$god_ set-dist 16 28 2"
$ns_ at 78.785638730183 "$god_ set-dist 8 20 1"
$ns_ at 78.791878125504 "$god_ set-dist 4 28 3"
$ns_ at 78.791878125504 "$god_ set-dist 28 39 2"
$ns_ at 78.832026185744 "$god_ set-dist 11 16 3"
$ns_ at 78.832026185744 "$god_ set-dist 16 47 2"
$ns_ at 78.908597160359 "$god_ set-dist 23 43 2"
$ns_ at 78.908597160359 "$god_ set-dist 43 49 3"
$ns_ at 78.948360844860 "$god_ set-dist 22 37 2"
$ns_ at 79.003380188130 "$god_ set-dist 11 12 1"
$ns_ at 79.013270442960 "$god_ set-dist 19 26 2"
$ns_ at 79.062874123751 "$node_(47) setdest 424.144834541279 440.928769373145 7.417336758879"
$ns_ at 79.100739533783 "$god_ set-dist 3 7 1"
$ns_ at 79.100739533783 "$god_ set-dist 7 21 2"
$ns_ at 79.100739533783 "$god_ set-dist 7 30 2"
$ns_ at 79.140392889860 "$god_ set-dist 3 6 1"
$ns_ at 79.140392889860 "$god_ set-dist 6 30 2"
$ns_ at 79.192012946790 "$god_ set-dist 17 21 2"
$ns_ at 79.192012946790 "$god_ set-dist 21 32 3"
$ns_ at 79.245025409303 "$god_ set-dist 12 47 1"
$ns_ at 79.275761066259 "$god_ set-dist 1 49 1"
$ns_ at 79.289890218006 "$god_ set-dist 5 21 2"
$ns_ at 79.289890218006 "$god_ set-dist 5 25 1"
$ns_ at 79.321210957032 "$god_ set-dist 18 31 1"
$ns_ at 79.321210957032 "$god_ set-dist 30 31 2"
$ns_ at 79.374666081818 "$god_ set-dist 19 23 2"
$ns_ at 79.422099653953 "$god_ set-dist 13 16 2"
$ns_ at 79.422099653953 "$god_ set-dist 13 25 1"
$ns_ at 79.426601329030 "$god_ set-dist 11 45 1"
$ns_ at 79.455623635220 "$god_ set-dist 2 19 2"
$ns_ at 79.505575620691 "$god_ set-dist 31 44 1"
$ns_ at 79.687720059705 "$god_ set-dist 8 10 3"
$ns_ at 79.687720059705 "$god_ set-dist 8 14 3"
$ns_ at 79.687720059705 "$god_ set-dist 8 21 3"
$ns_ at 79.687720059705 "$god_ set-dist 8 38 2"
$ns_ at 79.687720059705 "$god_ set-dist 8 46 3"
$ns_ at 79.779497043173 "$god_ set-dist 38 48 1"
$ns_ at 80.021787153969 "$god_ set-dist 20 32 1"
$ns_ at 80.098694993676 "$god_ set-dist 12 29 2"
$ns_ at 80.105730870305 "$god_ set-dist 1 15 2"
$ns_ at 80.123313039879 "$god_ set-dist 0 44 1"
$ns_ at 80.127574595592 "$god_ set-dist 5 45 2"
$ns_ at 80.127574595592 "$god_ set-dist 15 45 3"
$ns_ at 80.328191799001 "$god_ set-dist 2 22 2"
$ns_ at 80.328191799001 "$god_ set-dist 22 43 3"
$ns_ at 80.401516439440 "$god_ set-dist 11 31 2"
$ns_ at 80.401516439440 "$god_ set-dist 31 48 1"
$ns_ at 80.462042472539 "$god_ set-dist 30 40 3"
$ns_ at 80.462042472539 "$god_ set-dist 40 44 2"
$ns_ at 80.502665793777 "$god_ set-dist 12 16 3"
$ns_ at 80.502665793777 "$god_ set-dist 13 16 3"
$ns_ at 80.502665793777 "$god_ set-dist 16 25 2"
$ns_ at 80.502967799611 "$god_ set-dist 46 49 1"
$ns_ at 80.715881648971 "$god_ set-dist 22 23 2"
$ns_ at 80.740623553115 "$god_ set-dist 5 8 1"
$ns_ at 80.752236182198 "$god_ set-dist 13 32 3"
$ns_ at 80.752236182198 "$god_ set-dist 32 40 2"
$ns_ at 80.752236182198 "$god_ set-dist 32 42 3"
$ns_ at 80.934964147592 "$god_ set-dist 1 11 1"
$ns_ at 81.066976929498 "$god_ set-dist 44 46 1"
$ns_ at 81.100835208598 "$node_(8) setdest 182.871020205126 557.407920370077 0.000000000000"
$ns_ at 81.105835255759 "$god_ set-dist 7 34 1"
$ns_ at 81.157872535721 "$god_ set-dist 2 43 2"
$ns_ at 81.157872535721 "$god_ set-dist 26 43 3"
$ns_ at 81.157872535721 "$god_ set-dist 34 43 3"
$ns_ at 81.157872535721 "$god_ set-dist 36 43 3"
$ns_ at 81.202632853782 "$god_ set-dist 2 49 1"
$ns_ at 81.223606374825 "$god_ set-dist 3 38 1"
$ns_ at 81.230756692551 "$node_(16) setdest 117.460901486191 277.723067208752 0.000000000000"
$ns_ at 81.316162355893 "$god_ set-dist 13 29 2"
$ns_ at 81.421855945477 "$god_ set-dist 26 38 1"
$ns_ at 81.421855945477 "$god_ set-dist 26 43 2"
$ns_ at 81.506748243431 "$god_ set-dist 37 48 2"
$ns_ at 81.532851422158 "$god_ set-dist 15 44 2"
$ns_ at 81.580884868516 "$god_ set-dist 7 25 1"
$ns_ at 81.720353094854 "$god_ set-dist 21 24 2"
$ns_ at 81.720353094854 "$god_ set-dist 24 25 1"
$ns_ at 81.753855202815 "$god_ set-dist 3 40 1"
$ns_ at 81.753855202815 "$god_ set-dist 30 40 2"
$ns_ at 81.795614581098 "$god_ set-dist 15 18 2"
$ns_ at 81.795614581098 "$god_ set-dist 15 30 3"
$ns_ at 81.803217943391 "$god_ set-dist 13 47 1"
$ns_ at 81.893903526933 "$god_ set-dist 0 21 1"
$ns_ at 82.100835208598 "$node_(8) setdest 540.143613540538 138.666894694957 5.277227621447"
$ns_ at 82.114818331195 "$god_ set-dist 9 12 2"
$ns_ at 82.224229428969 "$god_ set-dist 8 45 2"
$ns_ at 82.224229428969 "$god_ set-dist 15 45 2"
$ns_ at 82.224229428969 "$god_ set-dist 40 45 1"
$ns_ at 82.230756692551 "$node_(16) setdest 549.891754572160 289.786581719669 9.049785789651"
$ns_ at 82.326891852111 "$god_ set-dist 7 27 1"
$ns_ at 82.382410045755 "$god_ set-dist 10 43 3"
$ns_ at 82.382410045755 "$god_ set-dist 14 43 3"
$ns_ at 82.382410045755 "$god_ set-dist 26 43 3"
$ns_ at 82.382410045755 "$god_ set-dist 38 43 2"
$ns_ at 82.952090995933 "$god_ set-dist 4 17 1"
$ns_ at 82.952090995933 "$god_ set-dist 4 28 2"
$ns_ at 83.041090268717 "$god_ set-dist 1 17 2"
$ns_ at 83.041090268717 "$god_ set-dist 17 42 3"
$ns_ at 83.041090268717 "$god_ set-dist 17 45 3"
$ns_ at 83.053163250173 "$god_ set-dist 11 42 1"
$ns_ at 83.091220529074 "$god_ set-dist 28 35 1"
$ns_ at 83.308166658502 "$god_ set-dist 0 18 1"
$ns_ at 83.371650958103 "$god_ set-dist 11 15 2"
$ns_ at 83.371650958103 "$god_ set-dist 11 25 1"
$ns_ at 83.466439963317 "$god_ set-dist 36 42 1"
$ns_ at 83.497918970499 "$god_ set-dist 11 16 2"
$ns_ at 83.497918970499 "$god_ set-dist 16 28 1"
$ns_ at 83.607854322388 "$god_ set-dist 16 43 2"
$ns_ at 83.607854322388 "$god_ set-dist 21 43 3"
$ns_ at 83.607854322388 "$god_ set-dist 43 46 3"
$ns_ at 83.666778433043 "$god_ set-dist 17 42 2"
$ns_ at 83.666778433043 "$god_ set-dist 25 42 1"
$ns_ at 83.680939884193 "$god_ set-dist 1 21 1"
$ns_ at 83.680939884193 "$god_ set-dist 20 21 2"
$ns_ at 83.836164972795 "$god_ set-dist 15 29 3"
$ns_ at 83.836164972795 "$god_ set-dist 25 29 2"
$ns_ at 84.008881748079 "$god_ set-dist 3 5 1"
$ns_ at 84.008881748079 "$god_ set-dist 5 30 2"
$ns_ at 84.023771294927 "$god_ set-dist 19 20 2"
$ns_ at 84.159903738580 "$god_ set-dist 20 25 1"
$ns_ at 84.166273177422 "$god_ set-dist 0 42 1"
$ns_ at 84.174599235788 "$god_ set-dist 40 47 1"
$ns_ at 84.415530232751 "$god_ set-dist 38 49 1"
$ns_ at 84.473928432441 "$god_ set-dist 6 47 1"
$ns_ at 84.740952712210 "$god_ set-dist 20 48 2"
$ns_ at 84.745588595108 "$god_ set-dist 5 47 1"
$ns_ at 84.745966415875 "$god_ set-dist 7 47 1"
$ns_ at 84.815924216525 "$god_ set-dist 7 16 2"
$ns_ at 84.815924216525 "$god_ set-dist 12 16 2"
$ns_ at 84.815924216525 "$god_ set-dist 13 16 2"
$ns_ at 84.815924216525 "$god_ set-dist 16 25 1"
$ns_ at 84.815924216525 "$god_ set-dist 16 42 2"
$ns_ at 84.890093141297 "$god_ set-dist 16 47 1"
$ns_ at 84.895300195963 "$god_ set-dist 31 47 1"
$ns_ at 84.900145220167 "$god_ set-dist 17 28 2"
$ns_ at 85.048385474217 "$god_ set-dist 34 37 2"
$ns_ at 85.073812864685 "$god_ set-dist 36 38 1"
$ns_ at 85.104741640608 "$god_ set-dist 5 32 1"
$ns_ at 85.104741640608 "$god_ set-dist 13 32 2"
$ns_ at 85.104741640608 "$god_ set-dist 32 42 2"
$ns_ at 85.206398734183 "$god_ set-dist 24 35 1"
$ns_ at 85.221385291093 "$god_ set-dist 19 29 2"
$ns_ at 85.239934193982 "$god_ set-dist 42 47 1"
$ns_ at 85.323176069086 "$god_ set-dist 3 4 2"
$ns_ at 85.323176069086 "$god_ set-dist 3 35 1"
$ns_ at 85.324645640965 "$god_ set-dist 11 18 1"
$ns_ at 85.457498253724 "$god_ set-dist 11 21 1"
$ns_ at 85.682791366658 "$god_ set-dist 15 38 2"
$ns_ at 85.949568758232 "$god_ set-dist 11 44 1"
$ns_ at 86.010704846914 "$god_ set-dist 30 38 1"
$ns_ at 86.049581179646 "$god_ set-dist 5 39 1"
$ns_ at 86.070542184696 "$god_ set-dist 16 45 2"
$ns_ at 86.070542184696 "$god_ set-dist 17 45 2"
$ns_ at 86.070542184696 "$god_ set-dist 25 45 1"
$ns_ at 86.071285357574 "$god_ set-dist 10 16 1"
$ns_ at 86.163255406405 "$god_ set-dist 0 15 3"
$ns_ at 86.163255406405 "$god_ set-dist 11 15 3"
$ns_ at 86.163255406405 "$god_ set-dist 15 22 3"
$ns_ at 86.163255406405 "$god_ set-dist 15 25 2"
$ns_ at 86.163255406405 "$god_ set-dist 15 27 3"
$ns_ at 86.505339200508 "$god_ set-dist 34 38 1"
$ns_ at 86.513893459541 "$god_ set-dist 7 11 1"
$ns_ at 86.810188044232 "$god_ set-dist 2 8 1"
$ns_ at 86.810188044232 "$god_ set-dist 8 10 2"
$ns_ at 86.810188044232 "$god_ set-dist 8 14 2"
$ns_ at 86.810188044232 "$god_ set-dist 8 21 2"
$ns_ at 86.810188044232 "$god_ set-dist 8 26 2"
$ns_ at 86.810188044232 "$god_ set-dist 8 34 2"
$ns_ at 86.810188044232 "$god_ set-dist 8 36 2"
$ns_ at 86.810188044232 "$god_ set-dist 8 46 2"
$ns_ at 86.810188044232 "$god_ set-dist 8 49 2"
$ns_ at 86.822568218124 "$god_ set-dist 9 38 2"
$ns_ at 86.866671454257 "$god_ set-dist 3 24 1"
$ns_ at 86.866671454257 "$god_ set-dist 24 30 2"
$ns_ at 87.107832394892 "$god_ set-dist 15 40 2"
$ns_ at 87.107832394892 "$god_ set-dist 15 45 3"
$ns_ at 87.213421077388 "$god_ set-dist 17 47 2"
$ns_ at 87.286153056831 "$god_ set-dist 14 16 1"
$ns_ at 87.373734521176 "$god_ set-dist 7 36 1"
$ns_ at 87.472603621947 "$god_ set-dist 45 47 1"
$ns_ at 87.529556099986 "$god_ set-dist 14 22 2"
$ns_ at 87.529683738287 "$god_ set-dist 15 23 2"
$ns_ at 87.560214943328 "$god_ set-dist 15 16 2"
$ns_ at 87.581570552829 "$god_ set-dist 21 27 1"
$ns_ at 87.676821622322 "$god_ set-dist 22 44 2"
$ns_ at 87.696122179681 "$god_ set-dist 0 8 2"
$ns_ at 87.696122179681 "$god_ set-dist 8 11 2"
$ns_ at 87.696122179681 "$god_ set-dist 8 22 2"
$ns_ at 87.696122179681 "$god_ set-dist 8 25 1"
$ns_ at 87.696122179681 "$god_ set-dist 8 27 2"
$ns_ at 87.783659171097 "$god_ set-dist 1 29 2"
$ns_ at 87.783659171097 "$god_ set-dist 20 29 3"
$ns_ at 87.816601425151 "$god_ set-dist 3 31 1"
$ns_ at 87.939880015133 "$god_ set-dist 8 24 1"
$ns_ at 87.944884178818 "$god_ set-dist 2 5 1"
$ns_ at 87.944884178818 "$god_ set-dist 5 46 2"
$ns_ at 88.009218690224 "$god_ set-dist 16 31 1"
$ns_ at 88.058551475193 "$god_ set-dist 24 47 1"
$ns_ at 88.088080813973 "$god_ set-dist 29 44 2"
$ns_ at 88.135674778329 "$god_ set-dist 21 48 1"
$ns_ at 88.184451418309 "$god_ set-dist 9 18 2"
$ns_ at 88.243212217425 "$god_ set-dist 23 30 1"
$ns_ at 88.441513930605 "$god_ set-dist 25 49 2"
$ns_ at 88.575882889802 "$god_ set-dist 8 23 1"
$ns_ at 88.575882889802 "$god_ set-dist 8 30 2"
$ns_ at 88.583934565967 "$node_(29) setdest 515.135038562139 116.565796154478 0.000000000000"
$ns_ at 88.627122631436 "$god_ set-dist 12 43 3"
$ns_ at 88.627122631436 "$god_ set-dist 33 43 2"
$ns_ at 88.687210270516 "$god_ set-dist 6 35 1"
$ns_ at 88.693785888566 "$god_ set-dist 2 15 2"
$ns_ at 88.693785888566 "$god_ set-dist 10 15 3"
$ns_ at 88.693785888566 "$god_ set-dist 14 15 3"
$ns_ at 88.693785888566 "$god_ set-dist 15 21 3"
$ns_ at 88.693785888566 "$god_ set-dist 15 26 3"
$ns_ at 88.693785888566 "$god_ set-dist 15 34 3"
$ns_ at 88.693785888566 "$god_ set-dist 15 36 3"
$ns_ at 88.693785888566 "$god_ set-dist 15 46 3"
$ns_ at 88.693785888566 "$god_ set-dist 15 49 3"
$ns_ at 88.730585092040 "$god_ set-dist 33 42 1"
$ns_ at 88.750621252076 "$god_ set-dist 19 44 2"
$ns_ at 88.775105147493 "$god_ set-dist 18 22 2"
$ns_ at 88.805123868924 "$god_ set-dist 27 44 2"
$ns_ at 88.813372579161 "$god_ set-dist 9 19 2"
$ns_ at 88.815078225025 "$god_ set-dist 7 9 2"
$ns_ at 88.815078225025 "$god_ set-dist 7 43 3"
$ns_ at 88.858491413578 "$god_ set-dist 1 16 1"
$ns_ at 88.905752927306 "$god_ set-dist 10 15 2"
$ns_ at 88.905752927306 "$god_ set-dist 10 32 2"
$ns_ at 88.905752927306 "$god_ set-dist 10 41 1"
$ns_ at 88.905752927306 "$god_ set-dist 10 43 2"
$ns_ at 88.944561993931 "$god_ set-dist 22 40 1"
$ns_ at 89.073726786277 "$god_ set-dist 10 22 2"
$ns_ at 89.151312530534 "$god_ set-dist 13 33 1"
$ns_ at 89.257201154686 "$god_ set-dist 0 7 1"
$ns_ at 89.369141194464 "$god_ set-dist 25 37 2"
$ns_ at 89.375718815164 "$god_ set-dist 8 16 1"
$ns_ at 89.396253385816 "$god_ set-dist 4 31 2"
$ns_ at 89.469493021840 "$god_ set-dist 2 30 1"
$ns_ at 89.475247990080 "$god_ set-dist 17 22 3"
$ns_ at 89.475247990080 "$god_ set-dist 17 25 2"
$ns_ at 89.475247990080 "$god_ set-dist 17 45 3"
$ns_ at 89.583934565967 "$node_(29) setdest 25.080882806057 518.434799808180 5.328695047267"
$ns_ at 89.720832748246 "$god_ set-dist 7 20 2"
$ns_ at 89.725838412616 "$god_ set-dist 22 49 2"
$ns_ at 89.748735455219 "$god_ set-dist 1 29 1"
$ns_ at 89.748735455219 "$god_ set-dist 20 29 2"
$ns_ at 89.890807865978 "$god_ set-dist 3 4 3"
$ns_ at 89.890807865978 "$god_ set-dist 4 6 3"
$ns_ at 89.890807865978 "$god_ set-dist 4 28 3"
$ns_ at 89.890807865978 "$god_ set-dist 4 35 2"
$ns_ at 89.890807865978 "$god_ set-dist 4 48 3"
$ns_ at 90.033939958274 "$god_ set-dist 21 25 2"
$ns_ at 90.034365275870 "$god_ set-dist 20 39 1"
$ns_ at 90.191511667554 "$god_ set-dist 9 44 2"
$ns_ at 90.277666725825 "$god_ set-dist 29 44 1"
$ns_ at 90.339729801872 "$god_ set-dist 16 33 1"
$ns_ at 90.346914954702 "$node_(43) setdest 110.050528016991 560.174732233012 0.000000000000"
$ns_ at 90.361661294146 "$god_ set-dist 3 16 1"
$ns_ at 90.362547568375 "$god_ set-dist 19 41 2"
$ns_ at 90.362547568375 "$god_ set-dist 19 43 3"
$ns_ at 90.386932314720 "$god_ set-dist 18 19 2"
$ns_ at 90.404715170466 "$god_ set-dist 36 37 2"
$ns_ at 90.557372495253 "$god_ set-dist 3 37 2"
$ns_ at 90.574612147772 "$god_ set-dist 24 45 2"
$ns_ at 91.173821672948 "$god_ set-dist 19 28 2"
$ns_ at 91.173821672948 "$god_ set-dist 19 46 3"
$ns_ at 91.281089087648 "$god_ set-dist 20 43 1"
$ns_ at 91.346914954702 "$node_(43) setdest 421.693220236849 421.525519277739 0.300296901833"
$ns_ at 91.420625849655 "$god_ set-dist 1 37 2"
$ns_ at 91.449386500967 "$god_ set-dist 1 20 2"
$ns_ at 91.449386500967 "$god_ set-dist 20 21 3"
$ns_ at 91.449386500967 "$god_ set-dist 20 29 3"
$ns_ at 91.449386500967 "$god_ set-dist 20 49 3"
$ns_ at 91.456381195575 "$god_ set-dist 5 23 1"
$ns_ at 91.510685154783 "$god_ set-dist 22 28 2"
$ns_ at 91.669868652258 "$god_ set-dist 20 26 3"
$ns_ at 91.669868652258 "$god_ set-dist 25 26 2"
$ns_ at 91.681818117139 "$god_ set-dist 5 44 1"
$ns_ at 91.690165704394 "$god_ set-dist 30 47 2"
$ns_ at 91.837219227158 "$god_ set-dist 14 20 3"
$ns_ at 91.837219227158 "$god_ set-dist 14 25 2"
$ns_ at 91.975458272581 "$god_ set-dist 16 49 1"
$ns_ at 92.368230772771 "$god_ set-dist 16 26 1"
$ns_ at 92.872634227242 "$god_ set-dist 5 13 2"
$ns_ at 92.934496223353 "$god_ set-dist 9 23 2"
$ns_ at 92.934556672199 "$god_ set-dist 23 34 2"
$ns_ at 92.944677606135 "$god_ set-dist 22 26 2"
$ns_ at 92.944677606135 "$god_ set-dist 22 46 3"
$ns_ at 92.969702049358 "$node_(22) setdest 597.558907773870 322.551938577276 0.000000000000"
$ns_ at 93.000498247978 "$god_ set-dist 16 48 1"
$ns_ at 93.168235187152 "$god_ set-dist 29 38 1"
$ns_ at 93.179015641146 "$god_ set-dist 8 29 2"
$ns_ at 93.179015641146 "$god_ set-dist 8 47 1"
$ns_ at 93.230711293640 "$god_ set-dist 14 20 2"
$ns_ at 93.230711293640 "$god_ set-dist 20 21 2"
$ns_ at 93.230711293640 "$god_ set-dist 20 26 2"
$ns_ at 93.230711293640 "$god_ set-dist 20 29 2"
$ns_ at 93.230711293640 "$god_ set-dist 20 47 1"
$ns_ at 93.230711293640 "$god_ set-dist 20 49 2"
$ns_ at 93.337378454117 "$god_ set-dist 0 38 1"
$ns_ at 93.379474782741 "$god_ set-dist 7 17 3"
$ns_ at 93.379474782741 "$god_ set-dist 12 17 3"
$ns_ at 93.379474782741 "$god_ set-dist 13 17 3"
$ns_ at 93.379474782741 "$god_ set-dist 17 19 3"
$ns_ at 93.379474782741 "$god_ set-dist 17 33 2"
$ns_ at 93.379474782741 "$god_ set-dist 17 42 3"
$ns_ at 93.455490835740 "$god_ set-dist 5 43 1"
$ns_ at 93.455490835740 "$god_ set-dist 7 43 2"
$ns_ at 93.455490835740 "$god_ set-dist 12 43 2"
$ns_ at 93.455490835740 "$god_ set-dist 19 43 2"
$ns_ at 93.455490835740 "$god_ set-dist 42 43 2"
$ns_ at 93.471755246727 "$god_ set-dist 7 37 3"
$ns_ at 93.471755246727 "$god_ set-dist 12 37 3"
$ns_ at 93.471755246727 "$god_ set-dist 13 37 3"
$ns_ at 93.471755246727 "$god_ set-dist 19 37 3"
$ns_ at 93.471755246727 "$god_ set-dist 22 37 3"
$ns_ at 93.471755246727 "$god_ set-dist 37 42 3"
$ns_ at 93.471755246727 "$god_ set-dist 37 45 3"
$ns_ at 93.471755246727 "$god_ set-dist 37 47 2"
$ns_ at 93.681134962261 "$god_ set-dist 22 26 1"
$ns_ at 93.681134962261 "$god_ set-dist 22 37 2"
$ns_ at 93.681134962261 "$god_ set-dist 22 46 2"
$ns_ at 93.722607128513 "$god_ set-dist 5 42 2"
$ns_ at 93.722607128513 "$god_ set-dist 42 43 3"
$ns_ at 93.728226350338 "$god_ set-dist 17 18 2"
$ns_ at 93.728226350338 "$god_ set-dist 17 27 3"
$ns_ at 93.838789609448 "$god_ set-dist 29 42 1"
$ns_ at 93.969702049358 "$node_(22) setdest 406.148837334234 222.634493798943 9.114580323415"
$ns_ at 94.064776160071 "$god_ set-dist 25 27 2"
$ns_ at 94.142164467498 "$god_ set-dist 13 32 3"
$ns_ at 94.142164467498 "$god_ set-dist 32 33 2"
$ns_ at 94.142164467498 "$god_ set-dist 32 42 3"
$ns_ at 94.203994102125 "$god_ set-dist 16 30 1"
$ns_ at 94.248711279651 "$god_ set-dist 5 16 1"
$ns_ at 94.290169911314 "$god_ set-dist 37 39 2"
$ns_ at 94.335402112835 "$god_ set-dist 1 4 3"
$ns_ at 94.335402112835 "$god_ set-dist 1 39 2"
$ns_ at 94.423945776311 "$god_ set-dist 33 38 2"
$ns_ at 94.500834128994 "$god_ set-dist 16 36 1"
$ns_ at 94.547533527378 "$god_ set-dist 1 4 2"
$ns_ at 94.547533527378 "$god_ set-dist 1 8 1"
$ns_ at 94.790060392428 "$god_ set-dist 4 18 3"
$ns_ at 94.790060392428 "$god_ set-dist 18 39 2"
$ns_ at 94.881209417883 "$god_ set-dist 6 11 1"
$ns_ at 94.893692044688 "$god_ set-dist 1 30 1"
$ns_ at 94.922049394435 "$god_ set-dist 10 32 3"
$ns_ at 94.922049394435 "$god_ set-dist 32 41 2"
$ns_ at 94.965256391331 "$god_ set-dist 3 4 2"
$ns_ at 94.965256391331 "$god_ set-dist 4 6 2"
$ns_ at 94.965256391331 "$god_ set-dist 4 9 1"
$ns_ at 94.965256391331 "$god_ set-dist 4 48 2"
$ns_ at 95.008814466839 "$god_ set-dist 35 40 2"
$ns_ at 95.066006151752 "$god_ set-dist 5 12 2"
$ns_ at 95.066006151752 "$god_ set-dist 12 32 3"
$ns_ at 95.066006151752 "$god_ set-dist 12 43 3"
$ns_ at 95.078443502666 "$god_ set-dist 3 30 2"
$ns_ at 95.115368258506 "$god_ set-dist 6 8 1"
$ns_ at 95.230135673949 "$god_ set-dist 10 25 2"
$ns_ at 95.338182359219 "$god_ set-dist 0 25 2"
$ns_ at 95.371634760363 "$god_ set-dist 11 38 1"
$ns_ at 95.585783827084 "$god_ set-dist 22 28 1"
$ns_ at 95.586334524554 "$god_ set-dist 28 42 1"
$ns_ at 95.586334524554 "$god_ set-dist 37 42 2"
$ns_ at 95.586334524554 "$god_ set-dist 42 46 2"
$ns_ at 95.610710141383 "$god_ set-dist 3 8 1"
$ns_ at 95.846564273191 "$god_ set-dist 8 40 2"
$ns_ at 96.170445673367 "$god_ set-dist 31 38 2"
$ns_ at 96.229812733662 "$god_ set-dist 18 42 1"
$ns_ at 96.312448080045 "$god_ set-dist 2 9 2"
$ns_ at 96.312448080045 "$god_ set-dist 9 46 3"
$ns_ at 96.402533986593 "$god_ set-dist 38 39 2"
$ns_ at 96.484965175846 "$god_ set-dist 26 42 1"
$ns_ at 96.632828723807 "$god_ set-dist 16 34 1"
$ns_ at 96.704960351006 "$god_ set-dist 18 22 1"
$ns_ at 96.765809970185 "$god_ set-dist 8 44 1"
$ns_ at 96.895158144423 "$god_ set-dist 7 29 1"
$ns_ at 96.904554242117 "$god_ set-dist 9 17 2"
$ns_ at 97.064403374761 "$god_ set-dist 4 38 3"
$ns_ at 97.064403374761 "$god_ set-dist 17 38 2"
$ns_ at 97.103359736316 "$god_ set-dist 10 22 1"
$ns_ at 97.262932591363 "$god_ set-dist 5 17 1"
$ns_ at 97.262932591363 "$god_ set-dist 7 17 2"
$ns_ at 97.262932591363 "$god_ set-dist 17 19 2"
$ns_ at 97.457181841722 "$god_ set-dist 3 20 1"
$ns_ at 97.607214535409 "$god_ set-dist 25 38 2"
$ns_ at 97.752838138015 "$god_ set-dist 4 48 3"
$ns_ at 97.752838138015 "$god_ set-dist 9 48 2"
$ns_ at 97.778677821007 "$god_ set-dist 5 19 2"
$ns_ at 97.778677821007 "$god_ set-dist 17 19 3"
$ns_ at 97.778677821007 "$god_ set-dist 19 32 3"
$ns_ at 97.778677821007 "$god_ set-dist 19 43 3"
$ns_ at 97.791306796364 "$god_ set-dist 22 49 1"
$ns_ at 97.867015665203 "$god_ set-dist 11 15 2"
$ns_ at 97.867015665203 "$god_ set-dist 11 33 1"
$ns_ at 97.954911323899 "$god_ set-dist 28 33 1"
$ns_ at 98.207272898172 "$god_ set-dist 14 22 1"
$ns_ at 98.208298049290 "$god_ set-dist 5 7 2"
$ns_ at 98.208298049290 "$god_ set-dist 7 17 3"
$ns_ at 98.208298049290 "$god_ set-dist 7 32 3"
$ns_ at 98.208298049290 "$god_ set-dist 7 43 3"
$ns_ at 98.212794265655 "$god_ set-dist 11 40 1"
$ns_ at 98.440805117127 "$god_ set-dist 3 39 1"
$ns_ at 98.464831043627 "$god_ set-dist 10 32 2"
$ns_ at 98.464831043627 "$god_ set-dist 10 35 1"
$ns_ at 98.651955620596 "$god_ set-dist 17 42 2"
$ns_ at 98.651955620596 "$god_ set-dist 41 42 1"
$ns_ at 98.651955620596 "$god_ set-dist 42 43 2"
$ns_ at 98.703031405994 "$god_ set-dist 7 28 1"
$ns_ at 98.703031405994 "$god_ set-dist 7 37 2"
$ns_ at 98.703031405994 "$god_ set-dist 7 46 2"
$ns_ at 98.726237558395 "$god_ set-dist 16 29 1"
$ns_ at 98.780636445263 "$god_ set-dist 11 41 1"
$ns_ at 98.780636445263 "$god_ set-dist 11 43 2"
$ns_ at 98.808841187307 "$god_ set-dist 21 22 1"
$ns_ at 98.817278958110 "$god_ set-dist 28 31 1"
$ns_ at 98.850820765112 "$god_ set-dist 10 42 1"
$ns_ at 98.858132281289 "$god_ set-dist 0 16 1"
$ns_ at 98.872883334752 "$god_ set-dist 47 49 2"
$ns_ at 98.925005115103 "$god_ set-dist 4 48 2"
$ns_ at 98.925005115103 "$god_ set-dist 8 48 1"
$ns_ at 98.929386596765 "$god_ set-dist 7 18 1"
$ns_ at 99.080373008832 "$god_ set-dist 15 36 2"
$ns_ at 99.080373008832 "$god_ set-dist 36 41 1"
$ns_ at 99.080373008832 "$god_ set-dist 36 43 2"
$ns_ at 99.081384394260 "$god_ set-dist 11 16 1"
$ns_ at 99.147832482271 "$god_ set-dist 1 9 2"
$ns_ at 99.147832482271 "$god_ set-dist 9 30 3"
$ns_ at 99.300880731642 "$god_ set-dist 12 29 1"
$ns_ at 99.491133361229 "$god_ set-dist 2 29 1"
$ns_ at 99.570907704722 "$god_ set-dist 2 11 1"
$ns_ at 99.689708436256 "$god_ set-dist 15 21 2"
$ns_ at 99.689708436256 "$god_ set-dist 21 41 1"
$ns_ at 99.689708436256 "$god_ set-dist 21 43 2"
$ns_ at 99.692555381550 "$god_ set-dist 0 2 1"
$ns_ at 99.712208315355 "$god_ set-dist 7 26 1"
$ns_ at 99.874356617452 "$god_ set-dist 11 24 1"
$ns_ at 99.989515821361 "$god_ set-dist 23 25 2"
$ns_ at 100.259831567435 "$node_(17) setdest 88.536073336262 388.467553472438 0.000000000000"
$ns_ at 100.389752684535 "$god_ set-dist 22 30 1"
$ns_ at 100.576571011920 "$god_ set-dist 7 17 2"
$ns_ at 100.576571011920 "$god_ set-dist 7 41 1"
$ns_ at 100.576571011920 "$god_ set-dist 7 43 2"
$ns_ at 100.613372460085 "$god_ set-dist 12 46 2"
$ns_ at 100.613372460085 "$god_ set-dist 29 46 1"
$ns_ at 100.669574291427 "$god_ set-dist 21 42 1"
$ns_ at 100.671668911254 "$god_ set-dist 25 44 2"
$ns_ at 100.789856355794 "$god_ set-dist 25 28 2"
$ns_ at 100.881225821630 "$god_ set-dist 14 47 2"
$ns_ at 100.891636631673 "$god_ set-dist 14 42 1"
$ns_ at 100.953396157743 "$god_ set-dist 25 36 2"
$ns_ at 100.996263384590 "$god_ set-dist 16 42 1"
$ns_ at 101.021591514065 "$god_ set-dist 29 47 2"
$ns_ at 101.024410030430 "$god_ set-dist 22 38 1"
$ns_ at 101.044845764799 "$god_ set-dist 26 47 2"
$ns_ at 101.148013788583 "$god_ set-dist 10 32 3"
$ns_ at 101.148013788583 "$god_ set-dist 32 35 2"
$ns_ at 101.148013788583 "$god_ set-dist 32 38 3"
$ns_ at 101.214972423716 "$god_ set-dist 16 22 1"
$ns_ at 101.214972423716 "$god_ set-dist 17 22 2"
$ns_ at 101.215247924022 "$god_ set-dist 15 22 2"
$ns_ at 101.215247924022 "$god_ set-dist 22 33 1"
$ns_ at 101.238535173144 "$god_ set-dist 15 21 3"
$ns_ at 101.238535173144 "$god_ set-dist 15 36 3"
$ns_ at 101.238535173144 "$god_ set-dist 15 41 2"
$ns_ at 101.243570431550 "$node_(28) setdest 347.465048977810 217.132918002002 0.000000000000"
$ns_ at 101.259831567435 "$node_(17) setdest 197.457468142070 157.858281835104 0.960973503506"
$ns_ at 101.383445426551 "$god_ set-dist 26 37 2"
$ns_ at 101.482179310348 "$god_ set-dist 4 20 1"
$ns_ at 101.514557962471 "$god_ set-dist 21 47 2"
$ns_ at 101.546975315873 "$god_ set-dist 18 25 2"
$ns_ at 101.641298427595 "$node_(37) setdest 170.402116240848 186.123598582044 0.000000000000"
$ns_ at 101.670337099723 "$god_ set-dist 7 15 3"
$ns_ at 101.670337099723 "$god_ set-dist 11 15 3"
$ns_ at 101.670337099723 "$god_ set-dist 12 15 3"
$ns_ at 101.670337099723 "$god_ set-dist 13 15 3"
$ns_ at 101.670337099723 "$god_ set-dist 15 19 3"
$ns_ at 101.670337099723 "$god_ set-dist 15 22 3"
$ns_ at 101.670337099723 "$god_ set-dist 15 33 2"
$ns_ at 101.670337099723 "$god_ set-dist 15 42 3"
$ns_ at 101.746494847244 "$god_ set-dist 42 49 1"
$ns_ at 101.888517849426 "$god_ set-dist 15 42 2"
$ns_ at 101.888517849426 "$god_ set-dist 31 42 1"
$ns_ at 101.888517849426 "$god_ set-dist 32 42 2"
$ns_ at 101.933452432365 "$god_ set-dist 11 15 2"
$ns_ at 101.933452432365 "$god_ set-dist 11 31 1"
$ns_ at 101.933452432365 "$god_ set-dist 11 32 2"
$ns_ at 102.243570431550 "$node_(28) setdest 214.034636581597 400.556809908202 3.751700597432"
$ns_ at 102.383124946244 "$god_ set-dist 14 41 1"
$ns_ at 102.383124946244 "$god_ set-dist 14 43 2"
$ns_ at 102.478913498957 "$god_ set-dist 7 10 1"
$ns_ at 102.538550305426 "$god_ set-dist 7 16 1"
$ns_ at 102.637444615574 "$god_ set-dist 38 42 1"
$ns_ at 102.641298427595 "$node_(37) setdest 468.184111021062 265.708836528342 7.271146448888"
$ns_ at 102.784344535109 "$god_ set-dist 26 37 1"
$ns_ at 102.916737164666 "$god_ set-dist 27 47 2"
$ns_ at 102.968880975095 "$god_ set-dist 11 32 3"
$ns_ at 102.968880975095 "$god_ set-dist 18 32 3"
$ns_ at 102.968880975095 "$god_ set-dist 28 32 3"
$ns_ at 102.968880975095 "$god_ set-dist 31 32 2"
$ns_ at 102.968880975095 "$god_ set-dist 32 42 3"
$ns_ at 103.163615556646 "$god_ set-dist 24 39 1"
$ns_ at 103.189747229615 "$god_ set-dist 22 41 1"
$ns_ at 103.189747229615 "$god_ set-dist 22 43 2"
$ns_ at 103.234722259142 "$god_ set-dist 7 21 1"
$ns_ at 103.287291325383 "$god_ set-dist 38 47 2"
$ns_ at 103.415374267059 "$god_ set-dist 22 40 2"
$ns_ at 103.451322977368 "$god_ set-dist 25 34 2"
$ns_ at 103.552030676609 "$god_ set-dist 27 38 1"
$ns_ at 103.554503541497 "$god_ set-dist 37 40 3"
$ns_ at 103.554503541497 "$god_ set-dist 40 41 2"
$ns_ at 103.819402787670 "$god_ set-dist 39 44 2"
$ns_ at 103.854118568777 "$god_ set-dist 5 28 1"
$ns_ at 103.854118568777 "$god_ set-dist 28 32 2"
$ns_ at 103.925624174920 "$god_ set-dist 11 35 1"
$ns_ at 103.929408349194 "$god_ set-dist 30 42 1"
$ns_ at 103.953304529224 "$god_ set-dist 2 22 1"
$ns_ at 104.009780644094 "$god_ set-dist 22 44 1"
$ns_ at 104.046087159943 "$god_ set-dist 10 15 3"
$ns_ at 104.046087159943 "$god_ set-dist 15 35 2"
$ns_ at 104.046087159943 "$god_ set-dist 15 38 3"
$ns_ at 104.266872350318 "$god_ set-dist 2 25 2"
$ns_ at 104.320816653643 "$god_ set-dist 2 42 1"
$ns_ at 104.360169507679 "$god_ set-dist 10 47 2"
$ns_ at 104.384240050795 "$god_ set-dist 16 17 2"
$ns_ at 104.492160559803 "$god_ set-dist 30 48 1"
$ns_ at 104.527373347083 "$god_ set-dist 11 44 2"
$ns_ at 104.762148675512 "$god_ set-dist 3 27 2"
$ns_ at 104.762148675512 "$god_ set-dist 9 27 3"
$ns_ at 104.762148675512 "$god_ set-dist 20 27 3"
$ns_ at 104.762148675512 "$god_ set-dist 27 39 3"
$ns_ at 104.854220486811 "$god_ set-dist 9 40 2"
$ns_ at 104.924730187131 "$god_ set-dist 7 14 1"
$ns_ at 104.958528724711 "$god_ set-dist 25 39 2"
$ns_ at 105.059801979367 "$god_ set-dist 1 37 1"
$ns_ at 105.059801979367 "$god_ set-dist 12 37 2"
$ns_ at 105.059801979367 "$god_ set-dist 13 37 2"
$ns_ at 105.059801979367 "$god_ set-dist 19 37 2"
$ns_ at 105.059801979367 "$god_ set-dist 37 40 2"
$ns_ at 105.059801979367 "$god_ set-dist 37 45 2"
$ns_ at 105.178549997976 "$god_ set-dist 23 47 2"
$ns_ at 105.353223895066 "$god_ set-dist 4 28 2"
$ns_ at 105.353223895066 "$god_ set-dist 8 28 1"
$ns_ at 105.475897190427 "$god_ set-dist 5 40 2"
$ns_ at 105.514729277710 "$god_ set-dist 11 15 3"
$ns_ at 105.514729277710 "$god_ set-dist 15 18 3"
$ns_ at 105.514729277710 "$god_ set-dist 15 31 2"
$ns_ at 105.514729277710 "$god_ set-dist 15 42 3"
$ns_ at 105.630606493599 "$god_ set-dist 16 39 2"
$ns_ at 105.649942874140 "$god_ set-dist 18 33 2"
$ns_ at 105.653431787971 "$god_ set-dist 12 16 1"
$ns_ at 105.657153373924 "$god_ set-dist 44 47 2"
$ns_ at 105.740089506860 "$god_ set-dist 13 46 2"
$ns_ at 105.740089506860 "$god_ set-dist 19 46 2"
$ns_ at 105.740089506860 "$god_ set-dist 36 46 1"
$ns_ at 105.740089506860 "$god_ set-dist 45 46 2"
$ns_ at 105.819570873472 "$god_ set-dist 16 27 1"
$ns_ at 105.961341222392 "$god_ set-dist 3 45 2"
$ns_ at 105.988083063607 "$god_ set-dist 16 24 1"
$ns_ at 105.988083063607 "$god_ set-dist 24 46 2"
$ns_ at 106.082692538435 "$god_ set-dist 35 42 1"
$ns_ at 106.096576543636 "$god_ set-dist 4 5 1"
$ns_ at 106.213727928005 "$god_ set-dist 6 16 1"
$ns_ at 106.213727928005 "$god_ set-dist 6 46 2"
$ns_ at 106.320695456921 "$node_(15) setdest 136.069321293015 625.786774431740 0.000000000000"
$ns_ at 106.373013724955 "$god_ set-dist 22 31 1"
$ns_ at 106.384495795608 "$god_ set-dist 29 37 1"
$ns_ at 106.485469539314 "$god_ set-dist 13 17 2"
$ns_ at 106.485469539314 "$god_ set-dist 13 31 1"
$ns_ at 106.485469539314 "$god_ set-dist 13 43 2"
$ns_ at 106.701451659627 "$node_(47) setdest 424.144834541279 440.928769373145 0.000000000000"
$ns_ at 106.704603856917 "$god_ set-dist 4 40 3"
$ns_ at 106.704603856917 "$god_ set-dist 15 40 3"
$ns_ at 106.704603856917 "$god_ set-dist 20 40 2"
$ns_ at 106.704603856917 "$god_ set-dist 32 40 3"
$ns_ at 106.818386025967 "$god_ set-dist 14 35 1"
$ns_ at 106.861838492958 "$god_ set-dist 23 29 1"
$ns_ at 106.946276884262 "$god_ set-dist 39 45 3"
$ns_ at 106.946276884262 "$god_ set-dist 39 47 2"
$ns_ at 106.978798441308 "$god_ set-dist 7 30 1"
$ns_ at 107.046285893656 "$god_ set-dist 21 35 1"
$ns_ at 107.083977727653 "$god_ set-dist 7 38 1"
$ns_ at 107.098118425000 "$god_ set-dist 11 30 2"
$ns_ at 107.283329452363 "$god_ set-dist 7 49 1"
$ns_ at 107.304015740544 "$god_ set-dist 4 11 2"
$ns_ at 107.304015740544 "$god_ set-dist 8 11 1"
$ns_ at 107.304015740544 "$god_ set-dist 11 15 2"
$ns_ at 107.304015740544 "$god_ set-dist 11 32 2"
$ns_ at 107.304947074071 "$god_ set-dist 1 40 2"
$ns_ at 107.304947074071 "$god_ set-dist 37 40 3"
$ns_ at 107.320695456921 "$node_(15) setdest 265.089480818392 425.142215727731 5.365253150457"
$ns_ at 107.331330891111 "$god_ set-dist 36 37 1"
$ns_ at 107.342812392849 "$god_ set-dist 10 31 1"
$ns_ at 107.357099925701 "$god_ set-dist 5 11 1"
$ns_ at 107.404817983642 "$god_ set-dist 3 49 2"
$ns_ at 107.404817983642 "$god_ set-dist 9 49 3"
$ns_ at 107.404817983642 "$god_ set-dist 20 49 3"
$ns_ at 107.434606899191 "$god_ set-dist 0 41 1"
$ns_ at 107.434606899191 "$god_ set-dist 0 43 2"
$ns_ at 107.611158032086 "$god_ set-dist 13 16 1"
$ns_ at 107.701451659627 "$node_(47) setdest 576.303147925310 570.557793061254 5.130589640970"
$ns_ at 107.768192111403 "$god_ set-dist 22 35 1"
$ns_ at 107.795094411417 "$god_ set-dist 33 44 2"
$ns_ at 107.812127329762 "$god_ set-dist 42 44 1"
$ns_ at 108.012922683570 "$god_ set-dist 25 45 2"
$ns_ at 108.041652748870 "$node_(38) setdest 340.369355314603 163.855398577155 0.000000000000"
$ns_ at 108.232476086034 "$god_ set-dist 4 8 2"
$ns_ at 108.265789789987 "$god_ set-dist 11 49 2"
$ns_ at 108.318976237273 "$god_ set-dist 22 25 2"
$ns_ at 108.390753991062 "$god_ set-dist 3 26 2"
$ns_ at 108.390753991062 "$god_ set-dist 9 26 3"
$ns_ at 108.390753991062 "$god_ set-dist 20 26 3"
$ns_ at 108.675749548028 "$god_ set-dist 18 47 2"
$ns_ at 108.981496052568 "$god_ set-dist 29 41 1"
$ns_ at 108.981496052568 "$god_ set-dist 29 43 2"
$ns_ at 109.007388834671 "$god_ set-dist 31 37 1"
$ns_ at 109.007388834671 "$god_ set-dist 37 40 2"
$ns_ at 109.041652748870 "$node_(38) setdest 402.228810762426 412.780519136774 6.279286610915"
$ns_ at 109.059365803366 "$god_ set-dist 12 17 2"
$ns_ at 109.059365803366 "$god_ set-dist 12 31 1"
$ns_ at 109.059365803366 "$god_ set-dist 12 43 2"
$ns_ at 109.140651081264 "$node_(31) setdest 313.982351084316 427.314478450318 0.000000000000"
$ns_ at 109.378107566418 "$god_ set-dist 35 36 1"
$ns_ at 109.401439638915 "$god_ set-dist 0 43 3"
$ns_ at 109.401439638915 "$god_ set-dist 7 43 3"
$ns_ at 109.401439638915 "$god_ set-dist 29 43 3"
$ns_ at 109.401439638915 "$god_ set-dist 41 43 2"
$ns_ at 109.532745595464 "$god_ set-dist 8 32 2"
$ns_ at 109.563814707143 "$god_ set-dist 5 37 1"
$ns_ at 109.628818515641 "$god_ set-dist 9 49 2"
$ns_ at 109.628818515641 "$god_ set-dist 20 49 2"
$ns_ at 109.628818515641 "$god_ set-dist 41 49 1"
$ns_ at 109.759202702163 "$god_ set-dist 35 49 1"
$ns_ at 109.759202702163 "$god_ set-dist 43 49 2"
$ns_ at 109.945605448819 "$god_ set-dist 0 37 1"
$ns_ at 110.125439184627 "$god_ set-dist 22 37 1"
$ns_ at 110.140651081264 "$node_(31) setdest 551.351170051155 568.227801302304 2.767290229815"
$ns_ at 110.187834510778 "$god_ set-dist 13 41 1"
$ns_ at 110.282415254768 "$god_ set-dist 8 37 1"
$ns_ at 110.482937785207 "$god_ set-dist 10 15 2"
$ns_ at 110.482937785207 "$god_ set-dist 12 15 2"
$ns_ at 110.482937785207 "$god_ set-dist 13 15 2"
$ns_ at 110.482937785207 "$god_ set-dist 15 18 2"
$ns_ at 110.482937785207 "$god_ set-dist 15 22 2"
$ns_ at 110.482937785207 "$god_ set-dist 15 31 1"
$ns_ at 110.482937785207 "$god_ set-dist 15 40 2"
$ns_ at 110.482937785207 "$god_ set-dist 15 42 2"
$ns_ at 110.710108192422 "$god_ set-dist 3 37 1"
$ns_ at 110.783272448671 "$god_ set-dist 16 19 1"
$ns_ at 110.819260934203 "$god_ set-dist 34 41 1"
$ns_ at 110.836768721737 "$god_ set-dist 8 42 1"
$ns_ at 110.862509602025 "$god_ set-dist 29 35 1"
$ns_ at 110.862509602025 "$god_ set-dist 29 43 2"
$ns_ at 110.862834010600 "$god_ set-dist 17 32 2"
$ns_ at 110.883883950402 "$god_ set-dist 7 25 2"
$ns_ at 110.925178931640 "$god_ set-dist 23 48 2"
$ns_ at 110.941075687807 "$god_ set-dist 7 24 2"
$ns_ at 110.975734292876 "$god_ set-dist 16 25 2"
$ns_ at 110.975734292876 "$god_ set-dist 25 46 3"
$ns_ at 110.993542701564 "$god_ set-dist 40 42 2"
$ns_ at 111.184066961836 "$god_ set-dist 3 14 2"
$ns_ at 111.190164658556 "$god_ set-dist 15 40 3"
$ns_ at 111.190164658556 "$god_ set-dist 17 40 3"
$ns_ at 111.190164658556 "$god_ set-dist 31 40 2"
$ns_ at 111.190164658556 "$god_ set-dist 40 43 3"
$ns_ at 111.286292077131 "$god_ set-dist 8 18 1"
$ns_ at 111.377439972680 "$god_ set-dist 0 35 1"
$ns_ at 111.377439972680 "$god_ set-dist 0 43 2"
$ns_ at 111.630498928417 "$god_ set-dist 22 23 1"
$ns_ at 111.743844198263 "$god_ set-dist 27 28 2"
$ns_ at 111.752560378119 "$god_ set-dist 7 17 3"
$ns_ at 111.752560378119 "$god_ set-dist 7 41 2"
$ns_ at 111.761162508529 "$god_ set-dist 7 40 2"
$ns_ at 111.769677214583 "$god_ set-dist 16 45 1"
$ns_ at 111.875271500592 "$god_ set-dist 11 14 2"
$ns_ at 111.886879552996 "$god_ set-dist 15 38 2"
$ns_ at 111.886879552996 "$god_ set-dist 31 38 1"
$ns_ at 111.991494822373 "$god_ set-dist 6 9 2"
$ns_ at 111.995798805877 "$god_ set-dist 17 20 1"
$ns_ at 112.116302906831 "$god_ set-dist 23 36 2"
$ns_ at 112.294436243183 "$god_ set-dist 0 15 2"
$ns_ at 112.294436243183 "$god_ set-dist 0 31 1"
$ns_ at 112.304953221616 "$god_ set-dist 34 44 2"
$ns_ at 112.322280096848 "$god_ set-dist 25 42 2"
$ns_ at 112.385378250185 "$god_ set-dist 37 42 1"
$ns_ at 112.455924032381 "$god_ set-dist 8 22 1"
$ns_ at 112.488263313701 "$god_ set-dist 8 10 1"
$ns_ at 112.624804996215 "$god_ set-dist 22 46 1"
$ns_ at 112.632487359730 "$god_ set-dist 9 45 3"
$ns_ at 112.632487359730 "$god_ set-dist 9 47 2"
$ns_ at 112.719355985165 "$god_ set-dist 19 36 2"
$ns_ at 112.760787130640 "$god_ set-dist 12 41 1"
$ns_ at 112.762350510455 "$god_ set-dist 2 47 2"
$ns_ at 113.140764134803 "$god_ set-dist 14 15 2"
$ns_ at 113.140764134803 "$god_ set-dist 15 21 2"
$ns_ at 113.140764134803 "$god_ set-dist 15 29 2"
$ns_ at 113.140764134803 "$god_ set-dist 15 35 1"
$ns_ at 113.140764134803 "$god_ set-dist 15 36 2"
$ns_ at 113.140764134803 "$god_ set-dist 15 49 2"
$ns_ at 113.201034726435 "$god_ set-dist 8 38 1"
$ns_ at 113.311411846387 "$god_ set-dist 34 37 1"
$ns_ at 113.433351058775 "$god_ set-dist 37 48 1"
$ns_ at 113.564438218390 "$god_ set-dist 0 46 1"
$ns_ at 113.760932013333 "$god_ set-dist 0 33 1"
$ns_ at 113.807117221375 "$god_ set-dist 3 21 2"
$ns_ at 113.838954950906 "$god_ set-dist 12 21 1"
$ns_ at 113.859237404563 "$god_ set-dist 5 25 2"
$ns_ at 113.859620944716 "$god_ set-dist 6 22 2"
$ns_ at 113.867323402557 "$god_ set-dist 2 39 2"
$ns_ at 113.951991596426 "$god_ set-dist 7 15 2"
$ns_ at 113.951991596426 "$god_ set-dist 15 19 2"
$ns_ at 113.951991596426 "$god_ set-dist 15 33 1"
$ns_ at 113.951991596426 "$god_ set-dist 15 40 2"
$ns_ at 114.092045538649 "$god_ set-dist 7 15 3"
$ns_ at 114.092045538649 "$god_ set-dist 7 33 2"
$ns_ at 114.220966866548 "$god_ set-dist 29 31 1"
$ns_ at 114.329172960196 "$node_(23) setdest 200.781829886283 277.723170478460 0.000000000000"
$ns_ at 114.352300554330 "$god_ set-dist 27 49 2"
$ns_ at 114.435165132406 "$god_ set-dist 36 47 2"
$ns_ at 114.461479878732 "$god_ set-dist 6 46 3"
$ns_ at 114.461479878732 "$god_ set-dist 16 46 2"
$ns_ at 114.461479878732 "$god_ set-dist 24 46 3"
$ns_ at 114.527939463473 "$god_ set-dist 3 19 2"
$ns_ at 114.548741492741 "$node_(39) setdest 177.598033000341 520.279305222932 0.000000000000"
$ns_ at 114.604998437266 "$node_(11) setdest 471.003329141226 398.310826965294 0.000000000000"
$ns_ at 114.628632101346 "$god_ set-dist 4 11 3"
$ns_ at 114.628632101346 "$god_ set-dist 5 11 2"
$ns_ at 114.628632101346 "$god_ set-dist 11 32 3"
$ns_ at 114.633387548551 "$god_ set-dist 1 25 2"
$ns_ at 114.690727892779 "$god_ set-dist 15 34 2"
$ns_ at 114.690727892779 "$god_ set-dist 15 41 1"
$ns_ at 114.745863935833 "$god_ set-dist 5 6 2"
$ns_ at 114.817957226520 "$god_ set-dist 19 22 2"
$ns_ at 114.897239946278 "$god_ set-dist 8 13 1"
$ns_ at 115.073570592516 "$god_ set-dist 8 29 1"
$ns_ at 115.081541976364 "$god_ set-dist 3 15 1"
$ns_ at 115.081541976364 "$god_ set-dist 7 15 2"
$ns_ at 115.150286736960 "$god_ set-dist 0 8 1"
$ns_ at 115.329172960196 "$node_(23) setdest 329.509644722102 602.282770782434 4.980574528677"
$ns_ at 115.345413431646 "$god_ set-dist 31 36 1"
$ns_ at 115.417093070944 "$god_ set-dist 3 34 2"
$ns_ at 115.497901189134 "$god_ set-dist 28 47 2"
$ns_ at 115.548741492741 "$node_(39) setdest 560.166479392123 270.572111459682 9.454849778351"
$ns_ at 115.564320249570 "$god_ set-dist 25 35 2"
$ns_ at 115.604998437266 "$node_(11) setdest 182.261451406028 136.129781963535 5.487601163662"
$ns_ at 115.648257902448 "$god_ set-dist 1 32 3"
$ns_ at 115.648257902448 "$god_ set-dist 2 32 3"
$ns_ at 115.648257902448 "$god_ set-dist 5 32 2"
$ns_ at 115.648257902448 "$god_ set-dist 16 32 3"
$ns_ at 115.648257902448 "$god_ set-dist 27 32 4"
$ns_ at 115.648257902448 "$god_ set-dist 28 32 3"
$ns_ at 115.648257902448 "$god_ set-dist 32 37 3"
$ns_ at 115.648257902448 "$god_ set-dist 32 44 3"
$ns_ at 115.648257902448 "$god_ set-dist 32 48 3"
$ns_ at 115.660098019223 "$god_ set-dist 44 48 2"
$ns_ at 115.678338067282 "$god_ set-dist 23 36 1"
$ns_ at 115.727357718489 "$god_ set-dist 4 6 3"
$ns_ at 115.727357718489 "$god_ set-dist 6 20 2"
$ns_ at 115.727357718489 "$god_ set-dist 6 32 3"
$ns_ at 115.893125222476 "$god_ set-dist 3 7 2"
$ns_ at 115.893125222476 "$god_ set-dist 7 9 3"
$ns_ at 115.893125222476 "$god_ set-dist 7 15 3"
$ns_ at 115.893125222476 "$god_ set-dist 7 39 3"
$ns_ at 115.972120966470 "$god_ set-dist 4 16 3"
$ns_ at 115.972120966470 "$god_ set-dist 5 16 2"
$ns_ at 116.033864198116 "$god_ set-dist 7 20 3"
$ns_ at 116.033864198116 "$god_ set-dist 7 32 4"
$ns_ at 116.033864198116 "$god_ set-dist 20 45 3"
$ns_ at 116.033864198116 "$god_ set-dist 20 47 2"
$ns_ at 116.033864198116 "$god_ set-dist 32 45 4"
$ns_ at 116.033864198116 "$god_ set-dist 32 47 3"
$ns_ at 116.041857364796 "$god_ set-dist 2 32 2"
$ns_ at 116.041857364796 "$god_ set-dist 2 39 1"
$ns_ at 116.075172588953 "$god_ set-dist 9 35 2"
$ns_ at 116.231443012106 "$god_ set-dist 18 31 2"
$ns_ at 116.316486135754 "$god_ set-dist 7 17 2"
$ns_ at 116.316486135754 "$god_ set-dist 17 28 1"
$ns_ at 116.359612266553 "$god_ set-dist 4 47 3"
$ns_ at 116.359612266553 "$god_ set-dist 5 47 2"
$ns_ at 116.375093677869 "$god_ set-dist 8 36 1"
$ns_ at 116.554821236728 "$god_ set-dist 15 30 2"
$ns_ at 116.554821236728 "$god_ set-dist 20 30 2"
$ns_ at 116.554821236728 "$god_ set-dist 30 35 1"
$ns_ at 116.554821236728 "$god_ set-dist 30 43 2"
$ns_ at 116.592877092557 "$god_ set-dist 3 18 2"
$ns_ at 116.662866615346 "$god_ set-dist 33 38 1"
$ns_ at 116.825963281597 "$god_ set-dist 15 24 1"
$ns_ at 116.854773854023 "$god_ set-dist 1 46 1"
$ns_ at 116.854773854023 "$god_ set-dist 6 46 2"
$ns_ at 116.854773854023 "$god_ set-dist 24 46 2"
$ns_ at 116.868871836915 "$god_ set-dist 22 47 2"
$ns_ at 116.876177515451 "$god_ set-dist 23 42 1"
$ns_ at 116.877286951371 "$god_ set-dist 0 6 1"
$ns_ at 116.988238369584 "$god_ set-dist 23 48 1"
$ns_ at 117.117615301600 "$god_ set-dist 0 23 1"
$ns_ at 117.232287260330 "$god_ set-dist 1 19 2"
$ns_ at 117.369190657488 "$god_ set-dist 9 14 3"
$ns_ at 117.369190657488 "$god_ set-dist 9 21 3"
$ns_ at 117.369190657488 "$god_ set-dist 9 34 3"
$ns_ at 117.369190657488 "$god_ set-dist 9 41 2"
$ns_ at 117.369190657488 "$god_ set-dist 9 49 3"
$ns_ at 117.381885793520 "$god_ set-dist 24 28 1"
$ns_ at 117.659184002242 "$node_(22) setdest 406.148837334234 222.634493798943 0.000000000000"
$ns_ at 117.674515647852 "$god_ set-dist 29 33 1"
$ns_ at 117.757229059937 "$god_ set-dist 7 37 1"
$ns_ at 117.760753303886 "$god_ set-dist 11 14 1"
$ns_ at 117.840459671771 "$god_ set-dist 3 44 2"
$ns_ at 117.840459671771 "$god_ set-dist 40 44 3"
$ns_ at 117.864661812252 "$god_ set-dist 3 40 2"
$ns_ at 117.880382178627 "$god_ set-dist 12 38 1"
$ns_ at 117.884607643663 "$god_ set-dist 34 47 2"
$ns_ at 117.900538075150 "$god_ set-dist 3 43 1"
$ns_ at 118.013324497843 "$god_ set-dist 3 36 2"
$ns_ at 118.040682353112 "$god_ set-dist 8 14 1"
$ns_ at 118.040682353112 "$god_ set-dist 9 14 2"
$ns_ at 118.071149428935 "$god_ set-dist 8 12 1"
$ns_ at 118.147607769704 "$god_ set-dist 30 41 1"
$ns_ at 118.241316270561 "$god_ set-dist 11 37 1"
$ns_ at 118.253909044901 "$god_ set-dist 4 38 2"
$ns_ at 118.253909044901 "$god_ set-dist 5 38 1"
$ns_ at 118.335451787011 "$god_ set-dist 8 21 1"
$ns_ at 118.335451787011 "$god_ set-dist 9 21 2"
$ns_ at 118.365748149777 "$god_ set-dist 42 46 1"
$ns_ at 118.421938381748 "$god_ set-dist 11 30 1"
$ns_ at 118.659184002242 "$node_(22) setdest 539.859666144664 317.748017053024 3.617451694428"
$ns_ at 118.672997955893 "$god_ set-dist 23 26 2"
$ns_ at 118.720475990473 "$god_ set-dist 4 48 3"
$ns_ at 118.720475990473 "$god_ set-dist 5 48 2"
$ns_ at 118.930669893670 "$god_ set-dist 6 7 2"
$ns_ at 119.016827641206 "$god_ set-dist 20 25 2"
$ns_ at 119.077249328868 "$god_ set-dist 8 49 1"
$ns_ at 119.077249328868 "$god_ set-dist 9 49 2"
$ns_ at 119.126257394361 "$god_ set-dist 31 44 2"
$ns_ at 119.289450066766 "$god_ set-dist 12 26 1"
$ns_ at 119.445139211583 "$god_ set-dist 3 17 1"
$ns_ at 119.571863817004 "$god_ set-dist 7 47 2"
$ns_ at 119.587384568122 "$god_ set-dist 0 19 2"
$ns_ at 119.615883590737 "$god_ set-dist 7 32 3"
$ns_ at 119.615883590737 "$god_ set-dist 7 39 2"
$ns_ at 119.615883590737 "$god_ set-dist 28 32 2"
$ns_ at 119.615883590737 "$god_ set-dist 28 39 1"
$ns_ at 119.639977001587 "$god_ set-dist 17 31 2"
$ns_ at 119.717965056399 "$god_ set-dist 3 10 2"
$ns_ at 119.838118693744 "$god_ set-dist 8 9 2"
$ns_ at 119.838118693744 "$god_ set-dist 9 14 3"
$ns_ at 119.838118693744 "$god_ set-dist 9 18 3"
$ns_ at 119.838118693744 "$god_ set-dist 9 21 3"
$ns_ at 119.838118693744 "$god_ set-dist 9 49 3"
$ns_ at 119.991168269839 "$god_ set-dist 16 23 2"
$ns_ at 120.008203697159 "$god_ set-dist 4 6 2"
$ns_ at 120.008203697159 "$god_ set-dist 6 32 2"
$ns_ at 120.008203697159 "$god_ set-dist 6 39 1"
$ns_ at 120.008203697159 "$god_ set-dist 32 45 3"
$ns_ at 120.008203697159 "$god_ set-dist 39 45 2"
$ns_ at 120.097987762341 "$god_ set-dist 16 44 2"
$ns_ at 120.110038447718 "$god_ set-dist 25 41 2"
$ns_ at 120.114530116182 "$god_ set-dist 4 25 3"
$ns_ at 120.114530116182 "$god_ set-dist 9 25 2"
$ns_ at 120.114530116182 "$god_ set-dist 25 32 3"
$ns_ at 120.137042508011 "$node_(27) setdest 578.234079478469 202.048509301639 0.000000000000"
$ns_ at 120.275537794296 "$god_ set-dist 17 37 2"
$ns_ at 120.415623491039 "$god_ set-dist 15 26 2"
$ns_ at 120.415623491039 "$god_ set-dist 20 26 2"
$ns_ at 120.415623491039 "$god_ set-dist 26 35 1"
$ns_ at 120.415623491039 "$god_ set-dist 26 43 2"
$ns_ at 120.437035292443 "$god_ set-dist 33 37 1"
$ns_ at 120.467267501286 "$god_ set-dist 26 43 3"
$ns_ at 120.467267501286 "$god_ set-dist 30 43 3"
$ns_ at 120.467267501286 "$god_ set-dist 35 43 2"
$ns_ at 120.506908307781 "$god_ set-dist 19 42 2"
$ns_ at 120.506908307781 "$god_ set-dist 19 44 3"
$ns_ at 120.506908307781 "$god_ set-dist 19 46 3"
$ns_ at 120.655538749888 "$node_(9) setdest 218.966548118051 642.312110369308 0.000000000000"
$ns_ at 120.658441589837 "$god_ set-dist 19 33 2"
$ns_ at 120.675133050472 "$god_ set-dist 8 43 2"
$ns_ at 120.675133050472 "$god_ set-dist 14 43 3"
$ns_ at 120.675133050472 "$god_ set-dist 18 43 3"
$ns_ at 120.675133050472 "$god_ set-dist 21 43 3"
$ns_ at 120.675133050472 "$god_ set-dist 43 49 3"
$ns_ at 120.841264948313 "$god_ set-dist 2 24 1"
$ns_ at 120.853229726967 "$god_ set-dist 21 45 1"
$ns_ at 120.909187949761 "$god_ set-dist 11 23 1"
$ns_ at 120.992636457745 "$god_ set-dist 1 32 2"
$ns_ at 120.992636457745 "$god_ set-dist 1 39 1"
$ns_ at 120.992636457745 "$god_ set-dist 27 32 3"
$ns_ at 120.992636457745 "$god_ set-dist 27 39 2"
$ns_ at 121.044107882671 "$god_ set-dist 8 30 1"
$ns_ at 121.137042508011 "$node_(27) setdest 589.031762415219 327.199501026770 8.806606620032"
$ns_ at 121.151008683228 "$god_ set-dist 8 34 1"
$ns_ at 121.445918479173 "$god_ set-dist 4 11 2"
$ns_ at 121.445918479173 "$god_ set-dist 11 32 2"
$ns_ at 121.445918479173 "$god_ set-dist 11 39 1"
$ns_ at 121.575188764562 "$god_ set-dist 4 48 2"
$ns_ at 121.575188764562 "$god_ set-dist 32 48 2"
$ns_ at 121.575188764562 "$god_ set-dist 39 48 1"
$ns_ at 121.589027690027 "$god_ set-dist 8 25 2"
$ns_ at 121.589027690027 "$god_ set-dist 25 44 3"
$ns_ at 121.655538749888 "$node_(9) setdest 471.044412077693 357.012107350984 2.345560888731"
$ns_ at 121.686667227937 "$god_ set-dist 10 43 3"
$ns_ at 121.686667227937 "$god_ set-dist 31 43 2"
$ns_ at 121.686667227937 "$god_ set-dist 36 43 3"
$ns_ at 121.709931159826 "$god_ set-dist 24 42 2"
$ns_ at 121.863041142927 "$god_ set-dist 42 47 2"
$ns_ at 121.929467977884 "$god_ set-dist 24 38 1"
$ns_ at 122.005034360720 "$god_ set-dist 0 24 1"
$ns_ at 122.296830615569 "$god_ set-dist 3 22 2"
$ns_ at 122.296830615569 "$god_ set-dist 22 43 3"
$ns_ at 122.336577716303 "$god_ set-dist 4 47 2"
$ns_ at 122.336577716303 "$god_ set-dist 32 47 2"
$ns_ at 122.336577716303 "$god_ set-dist 39 47 1"
$ns_ at 122.356115644003 "$god_ set-dist 15 23 1"
$ns_ at 122.356115644003 "$god_ set-dist 15 46 2"
$ns_ at 122.373582741612 "$god_ set-dist 12 25 2"
$ns_ at 122.506211221043 "$god_ set-dist 23 24 1"
$ns_ at 122.568571455101 "$god_ set-dist 0 47 2"
$ns_ at 122.932209093434 "$god_ set-dist 11 49 1"
$ns_ at 123.095328500778 "$god_ set-dist 1 45 2"
$ns_ at 123.095328500778 "$god_ set-dist 5 45 3"
$ns_ at 123.110358396852 "$god_ set-dist 6 38 1"
$ns_ at 123.122011891457 "$god_ set-dist 3 42 2"
$ns_ at 123.122011891457 "$god_ set-dist 42 43 3"
$ns_ at 123.238041843340 "$god_ set-dist 25 48 2"
$ns_ at 123.299720309916 "$god_ set-dist 6 22 1"
$ns_ at 123.319269190843 "$god_ set-dist 8 26 1"
$ns_ at 123.327209129691 "$god_ set-dist 3 12 2"
$ns_ at 123.327209129691 "$god_ set-dist 12 43 3"
$ns_ at 123.521423845615 "$god_ set-dist 34 35 1"
$ns_ at 123.648942796614 "$god_ set-dist 3 16 2"
$ns_ at 123.648942796614 "$god_ set-dist 16 43 3"
$ns_ at 123.713941737232 "$god_ set-dist 13 38 1"
$ns_ at 123.743193599694 "$god_ set-dist 1 32 3"
$ns_ at 123.743193599694 "$god_ set-dist 2 32 3"
$ns_ at 123.743193599694 "$god_ set-dist 6 32 3"
$ns_ at 123.743193599694 "$god_ set-dist 7 32 4"
$ns_ at 123.743193599694 "$god_ set-dist 11 32 3"
$ns_ at 123.743193599694 "$god_ set-dist 27 32 4"
$ns_ at 123.743193599694 "$god_ set-dist 28 32 3"
$ns_ at 123.743193599694 "$god_ set-dist 32 39 2"
$ns_ at 123.743193599694 "$god_ set-dist 32 45 4"
$ns_ at 123.743193599694 "$god_ set-dist 32 47 3"
$ns_ at 123.743193599694 "$god_ set-dist 32 48 3"
$ns_ at 123.875640864439 "$god_ set-dist 20 23 1"
$ns_ at 123.875640864439 "$god_ set-dist 20 46 2"
$ns_ at 123.887371788468 "$god_ set-dist 33 36 1"
$ns_ at 123.975165382983 "$god_ set-dist 11 25 2"
$ns_ at 123.975165382983 "$god_ set-dist 14 25 3"
$ns_ at 123.975165382983 "$god_ set-dist 18 25 3"
$ns_ at 123.975165382983 "$god_ set-dist 21 25 3"
$ns_ at 123.975165382983 "$god_ set-dist 25 26 3"
$ns_ at 123.975165382983 "$god_ set-dist 25 30 3"
$ns_ at 123.975165382983 "$god_ set-dist 25 49 3"
$ns_ at 124.099902834560 "$god_ set-dist 38 39 1"
$ns_ at 124.228450277719 "$god_ set-dist 13 35 1"
$ns_ at 124.337877615903 "$god_ set-dist 6 42 2"
$ns_ at 124.654413554148 "$god_ set-dist 10 27 2"
$ns_ at 124.691993523279 "$god_ set-dist 7 19 2"
$ns_ at 124.761599619063 "$god_ set-dist 5 9 2"
$ns_ at 124.761599619063 "$god_ set-dist 9 44 3"
$ns_ at 124.836292451769 "$god_ set-dist 0 3 2"
$ns_ at 124.836292451769 "$god_ set-dist 0 43 3"
$ns_ at 124.897940705449 "$god_ set-dist 24 29 1"
$ns_ at 125.021556711550 "$god_ set-dist 5 19 3"
$ns_ at 125.021556711550 "$god_ set-dist 9 19 3"
$ns_ at 125.021556711550 "$god_ set-dist 15 19 3"
$ns_ at 125.021556711550 "$god_ set-dist 19 20 3"
$ns_ at 125.021556711550 "$god_ set-dist 19 24 2"
$ns_ at 125.021556711550 "$god_ set-dist 19 32 4"
$ns_ at 125.266025981558 "$god_ set-dist 26 41 1"
$ns_ at 125.476120866186 "$god_ set-dist 6 28 1"
$ns_ at 125.637419117094 "$god_ set-dist 27 37 1"
$ns_ at 125.663852089121 "$god_ set-dist 37 39 1"
$ns_ at 125.665086171081 "$god_ set-dist 11 40 2"
$ns_ at 125.688999200341 "$god_ set-dist 2 16 2"
$ns_ at 125.758285201390 "$god_ set-dist 16 49 2"
$ns_ at 125.885998525566 "$god_ set-dist 22 24 1"
$ns_ at 125.924435177961 "$god_ set-dist 3 37 2"
$ns_ at 125.931822882382 "$god_ set-dist 19 25 2"
$ns_ at 125.975464786692 "$god_ set-dist 4 29 2"
$ns_ at 125.975464786692 "$god_ set-dist 29 39 1"
$ns_ at 126.011959253646 "$god_ set-dist 0 43 2"
$ns_ at 126.011959253646 "$god_ set-dist 10 43 2"
$ns_ at 126.011959253646 "$god_ set-dist 14 43 2"
$ns_ at 126.011959253646 "$god_ set-dist 18 43 2"
$ns_ at 126.011959253646 "$god_ set-dist 21 43 2"
$ns_ at 126.011959253646 "$god_ set-dist 22 43 2"
$ns_ at 126.011959253646 "$god_ set-dist 23 43 1"
$ns_ at 126.011959253646 "$god_ set-dist 30 43 2"
$ns_ at 126.011959253646 "$god_ set-dist 36 43 2"
$ns_ at 126.011959253646 "$god_ set-dist 42 43 2"
$ns_ at 126.011959253646 "$god_ set-dist 43 46 2"
$ns_ at 126.011959253646 "$god_ set-dist 43 49 2"
$ns_ at 126.122720145157 "$god_ set-dist 12 37 1"
$ns_ at 126.202420982451 "$god_ set-dist 7 13 2"
$ns_ at 126.202420982451 "$god_ set-dist 7 25 3"
$ns_ at 126.368381818379 "$god_ set-dist 13 42 2"
$ns_ at 126.391477887069 "$god_ set-dist 14 27 2"
$ns_ at 126.425765638288 "$node_(32) setdest 64.525461099413 665.653508842442 0.000000000000"
$ns_ at 126.438665290417 "$god_ set-dist 21 23 2"
$ns_ at 126.438665290417 "$god_ set-dist 21 43 3"
$ns_ at 126.494402225542 "$god_ set-dist 5 24 2"
$ns_ at 126.673675901913 "$god_ set-dist 5 40 3"
$ns_ at 126.673675901913 "$god_ set-dist 33 40 2"
$ns_ at 126.697414621579 "$god_ set-dist 35 47 2"
$ns_ at 127.055068529470 "$node_(20) setdest 170.778723084826 563.404237785860 0.000000000000"
$ns_ at 127.083846430826 "$god_ set-dist 5 37 2"
$ns_ at 127.111854075878 "$god_ set-dist 8 20 2"
$ns_ at 127.185707421934 "$god_ set-dist 1 47 2"
$ns_ at 127.185707421934 "$god_ set-dist 46 47 3"
$ns_ at 127.233626386868 "$god_ set-dist 19 34 2"
$ns_ at 127.425765638288 "$node_(32) setdest 307.653211309078 169.514314511087 1.760242170685"
$ns_ at 127.486621232043 "$god_ set-dist 5 38 2"
$ns_ at 127.516893091059 "$god_ set-dist 0 4 2"
$ns_ at 127.516893091059 "$god_ set-dist 0 39 1"
$ns_ at 127.585043039802 "$god_ set-dist 10 33 1"
$ns_ at 127.599920492201 "$god_ set-dist 4 13 2"
$ns_ at 127.599920492201 "$god_ set-dist 13 39 1"
$ns_ at 127.618066905549 "$god_ set-dist 24 37 1"
$ns_ at 127.625187844713 "$god_ set-dist 10 40 3"
$ns_ at 127.625187844713 "$god_ set-dist 14 40 3"
$ns_ at 127.625187844713 "$god_ set-dist 18 40 3"
$ns_ at 127.625187844713 "$god_ set-dist 30 40 3"
$ns_ at 127.625187844713 "$god_ set-dist 40 48 2"
$ns_ at 127.625187844713 "$god_ set-dist 40 49 3"
$ns_ at 127.639063819950 "$god_ set-dist 6 27 1"
$ns_ at 127.787818941259 "$node_(25) setdest 483.632637014517 640.553035679048 0.000000000000"
$ns_ at 127.828953812522 "$god_ set-dist 0 4 3"
$ns_ at 127.828953812522 "$god_ set-dist 4 6 3"
$ns_ at 127.828953812522 "$god_ set-dist 4 11 3"
$ns_ at 127.828953812522 "$god_ set-dist 4 13 3"
$ns_ at 127.828953812522 "$god_ set-dist 4 19 4"
$ns_ at 127.828953812522 "$god_ set-dist 4 29 3"
$ns_ at 127.828953812522 "$god_ set-dist 4 37 3"
$ns_ at 127.828953812522 "$god_ set-dist 4 38 3"
$ns_ at 127.828953812522 "$god_ set-dist 4 39 2"
$ns_ at 127.828953812522 "$god_ set-dist 4 45 4"
$ns_ at 127.828953812522 "$god_ set-dist 4 47 3"
$ns_ at 127.828953812522 "$god_ set-dist 4 48 3"
$ns_ at 127.862990380939 "$god_ set-dist 1 4 3"
$ns_ at 127.862990380939 "$god_ set-dist 1 5 2"
$ns_ at 127.862990380939 "$god_ set-dist 4 27 4"
$ns_ at 127.862990380939 "$god_ set-dist 5 27 3"
$ns_ at 127.980423627784 "$god_ set-dist 6 29 1"
$ns_ at 128.055068529470 "$node_(20) setdest 319.781887134219 200.110317981557 3.494593663345"
$ns_ at 128.066366076272 "$god_ set-dist 7 46 1"
$ns_ at 128.176492154520 "$god_ set-dist 10 39 1"
$ns_ at 128.211424009200 "$god_ set-dist 4 7 4"
$ns_ at 128.211424009200 "$god_ set-dist 5 7 3"
$ns_ at 128.211424009200 "$god_ set-dist 7 17 3"
$ns_ at 128.211424009200 "$god_ set-dist 7 28 2"
$ns_ at 128.391852286320 "$god_ set-dist 42 45 2"
$ns_ at 128.417986116501 "$god_ set-dist 16 35 2"
$ns_ at 128.432732351440 "$god_ set-dist 12 35 1"
$ns_ at 128.600019127478 "$god_ set-dist 15 28 1"
$ns_ at 128.600019127478 "$god_ set-dist 28 32 2"
$ns_ at 128.787818941259 "$node_(25) setdest 574.238702366513 460.070677999105 9.770206509205"
$ns_ at 128.798361720164 "$god_ set-dist 16 28 2"
$ns_ at 128.803940956556 "$god_ set-dist 34 46 1"
$ns_ at 128.831651862067 "$god_ set-dist 20 46 3"
$ns_ at 128.831651862067 "$god_ set-dist 23 46 2"
$ns_ at 128.831651862067 "$god_ set-dist 43 46 3"
$ns_ at 128.908621611701 "$god_ set-dist 5 33 2"
$ns_ at 128.960225720051 "$god_ set-dist 12 30 1"
$ns_ at 128.960225720051 "$god_ set-dist 30 40 2"
$ns_ at 129.025051293083 "$god_ set-dist 16 24 2"
$ns_ at 129.254481763951 "$god_ set-dist 2 40 3"
$ns_ at 129.254481763951 "$god_ set-dist 4 40 4"
$ns_ at 129.254481763951 "$god_ set-dist 9 40 3"
$ns_ at 129.254481763951 "$god_ set-dist 15 40 3"
$ns_ at 129.254481763951 "$god_ set-dist 20 40 3"
$ns_ at 129.254481763951 "$god_ set-dist 23 40 3"
$ns_ at 129.254481763951 "$god_ set-dist 24 40 2"
$ns_ at 129.254481763951 "$god_ set-dist 32 40 4"
$ns_ at 129.443697863462 "$god_ set-dist 27 47 1"
$ns_ at 129.485127641972 "$god_ set-dist 22 44 2"
$ns_ at 129.601757408467 "$god_ set-dist 21 44 2"
$ns_ at 129.759868616583 "$god_ set-dist 22 39 1"
$ns_ at 129.782988602858 "$god_ set-dist 19 25 1"
$ns_ at 129.852773328556 "$god_ set-dist 31 42 2"
$ns_ at 129.862360134726 "$god_ set-dist 16 31 2"
$ns_ at 129.866661303326 "$god_ set-dist 16 41 2"
$ns_ at 130.032892369821 "$node_(16) setdest 549.891754572160 289.786581719669 0.000000000000"
$ns_ at 130.207300164500 "$god_ set-dist 9 42 3"
$ns_ at 130.207300164500 "$god_ set-dist 25 42 3"
$ns_ at 130.207300164500 "$god_ set-dist 33 42 2"
$ns_ at 130.261107995926 "$god_ set-dist 13 36 2"
$ns_ at 130.268584052903 "$god_ set-dist 3 29 2"
$ns_ at 130.420966509518 "$god_ set-dist 4 27 3"
$ns_ at 130.420966509518 "$god_ set-dist 5 27 2"
$ns_ at 130.420966509518 "$god_ set-dist 8 27 1"
$ns_ at 130.420966509518 "$god_ set-dist 15 27 2"
$ns_ at 130.420966509518 "$god_ set-dist 17 27 2"
$ns_ at 130.420966509518 "$god_ set-dist 27 32 3"
$ns_ at 130.422007125286 "$god_ set-dist 5 31 2"
$ns_ at 130.500793258517 "$god_ set-dist 18 27 2"
$ns_ at 130.741879714762 "$god_ set-dist 6 37 1"
$ns_ at 130.747946292320 "$god_ set-dist 1 4 2"
$ns_ at 130.747946292320 "$god_ set-dist 3 4 1"
$ns_ at 130.747946292320 "$god_ set-dist 4 6 2"
$ns_ at 130.747946292320 "$god_ set-dist 4 7 3"
$ns_ at 130.747946292320 "$god_ set-dist 4 11 2"
$ns_ at 130.747946292320 "$god_ set-dist 4 13 2"
$ns_ at 130.747946292320 "$god_ set-dist 4 19 3"
$ns_ at 130.747946292320 "$god_ set-dist 4 25 2"
$ns_ at 130.747946292320 "$god_ set-dist 4 38 2"
$ns_ at 130.747946292320 "$god_ set-dist 4 40 3"
$ns_ at 130.747946292320 "$god_ set-dist 4 45 3"
$ns_ at 130.747946292320 "$god_ set-dist 4 47 2"
$ns_ at 130.747946292320 "$god_ set-dist 4 48 2"
$ns_ at 130.803944873773 "$god_ set-dist 11 19 2"
$ns_ at 131.032892369821 "$node_(16) setdest 16.553987821850 165.507949782920 4.371484196575"
$ns_ at 131.075587802983 "$god_ set-dist 16 31 1"
$ns_ at 131.123152586403 "$god_ set-dist 8 17 2"
$ns_ at 131.123152586403 "$god_ set-dist 16 17 3"
$ns_ at 131.123152586403 "$god_ set-dist 17 27 3"
$ns_ at 131.144502758993 "$god_ set-dist 16 17 2"
$ns_ at 131.144502758993 "$god_ set-dist 16 41 1"
$ns_ at 131.530464427109 "$god_ set-dist 2 15 1"
$ns_ at 131.530464427109 "$god_ set-dist 2 32 2"
$ns_ at 131.609027272547 "$god_ set-dist 19 49 3"
$ns_ at 131.609027272547 "$god_ set-dist 48 49 2"
$ns_ at 131.630156224567 "$god_ set-dist 18 23 2"
$ns_ at 131.630156224567 "$god_ set-dist 18 43 3"
$ns_ at 131.654110845794 "$god_ set-dist 12 39 1"
$ns_ at 131.654110845794 "$god_ set-dist 12 43 2"
$ns_ at 131.680647252123 "$god_ set-dist 9 42 2"
$ns_ at 131.680647252123 "$god_ set-dist 39 42 1"
$ns_ at 131.712269248812 "$god_ set-dist 36 39 1"
$ns_ at 132.111790983534 "$god_ set-dist 13 37 1"
$ns_ at 132.129853993517 "$god_ set-dist 38 45 1"
$ns_ at 132.144075133521 "$god_ set-dist 27 40 1"
$ns_ at 132.189576276810 "$god_ set-dist 27 29 2"
$ns_ at 132.285236191097 "$god_ set-dist 6 15 1"
$ns_ at 132.285236191097 "$god_ set-dist 6 32 2"
$ns_ at 132.285236191097 "$god_ set-dist 15 19 2"
$ns_ at 132.285236191097 "$god_ set-dist 15 40 2"
$ns_ at 132.285236191097 "$god_ set-dist 15 45 2"
$ns_ at 132.285236191097 "$god_ set-dist 19 32 3"
$ns_ at 132.285236191097 "$god_ set-dist 32 40 3"
$ns_ at 132.285236191097 "$god_ set-dist 32 45 3"
$ns_ at 132.352976732040 "$god_ set-dist 4 29 2"
$ns_ at 132.352976732040 "$god_ set-dist 5 7 2"
$ns_ at 132.352976732040 "$god_ set-dist 5 29 1"
$ns_ at 132.530044915420 "$god_ set-dist 6 23 1"
$ns_ at 132.530044915420 "$god_ set-dist 23 40 2"
$ns_ at 132.704413963633 "$god_ set-dist 9 30 2"
$ns_ at 132.704413963633 "$god_ set-dist 30 39 1"
$ns_ at 132.782758423858 "$god_ set-dist 7 25 2"
$ns_ at 132.782758423858 "$god_ set-dist 12 25 1"
$ns_ at 132.782758423858 "$god_ set-dist 21 25 2"
$ns_ at 132.782758423858 "$god_ set-dist 25 26 2"
$ns_ at 132.782758423858 "$god_ set-dist 25 30 2"
$ns_ at 132.782758423858 "$god_ set-dist 25 42 2"
$ns_ at 132.809094685389 "$god_ set-dist 14 25 2"
$ns_ at 132.809094685389 "$god_ set-dist 18 25 2"
$ns_ at 132.809094685389 "$god_ set-dist 25 48 1"
$ns_ at 132.856995436944 "$god_ set-dist 16 35 1"
$ns_ at 132.913249294263 "$god_ set-dist 37 45 1"
$ns_ at 132.922777216848 "$god_ set-dist 4 49 2"
$ns_ at 132.922777216848 "$god_ set-dist 5 49 1"
$ns_ at 133.107520620796 "$god_ set-dist 7 17 2"
$ns_ at 133.107520620796 "$god_ set-dist 17 49 1"
$ns_ at 133.199499849280 "$god_ set-dist 5 8 2"
$ns_ at 133.199499849280 "$god_ set-dist 5 27 3"
$ns_ at 133.269942770823 "$god_ set-dist 9 14 2"
$ns_ at 133.269942770823 "$god_ set-dist 9 18 2"
$ns_ at 133.269942770823 "$god_ set-dist 9 21 2"
$ns_ at 133.269942770823 "$god_ set-dist 9 26 2"
$ns_ at 133.269942770823 "$god_ set-dist 9 34 2"
$ns_ at 133.269942770823 "$god_ set-dist 9 41 1"
$ns_ at 133.269942770823 "$god_ set-dist 9 44 2"
$ns_ at 133.269942770823 "$god_ set-dist 9 49 2"
$ns_ at 133.431680361852 "$god_ set-dist 14 39 1"
$ns_ at 133.706132050306 "$god_ set-dist 16 24 1"
$ns_ at 133.718667618299 "$god_ set-dist 27 42 2"
$ns_ at 133.718849069852 "$god_ set-dist 17 29 1"
$ns_ at 133.941398330342 "$god_ set-dist 25 39 1"
$ns_ at 133.950038708038 "$god_ set-dist 41 47 2"
$ns_ at 134.037625002878 "$god_ set-dist 1 3 2"
$ns_ at 134.037625002878 "$god_ set-dist 1 4 3"
$ns_ at 134.113305988640 "$god_ set-dist 7 15 2"
$ns_ at 134.113305988640 "$god_ set-dist 7 32 3"
$ns_ at 134.113305988640 "$god_ set-dist 15 38 1"
$ns_ at 134.113305988640 "$god_ set-dist 32 38 2"
$ns_ at 134.131093012065 "$god_ set-dist 20 28 1"
$ns_ at 134.131093012065 "$god_ set-dist 20 46 2"
$ns_ at 134.164600034886 "$god_ set-dist 9 18 3"
$ns_ at 134.164600034886 "$god_ set-dist 18 41 2"
$ns_ at 134.331121569614 "$god_ set-dist 21 39 1"
$ns_ at 134.331121569614 "$god_ set-dist 21 43 2"
$ns_ at 134.346273718667 "$god_ set-dist 16 39 1"
$ns_ at 134.346273718667 "$god_ set-dist 16 43 2"
$ns_ at 134.466395382254 "$god_ set-dist 27 30 2"
$ns_ at 134.538486565005 "$god_ set-dist 11 15 1"
$ns_ at 134.538486565005 "$god_ set-dist 11 32 2"
$ns_ at 134.584508075345 "$god_ set-dist 3 32 1"
$ns_ at 134.584508075345 "$god_ set-dist 13 32 2"
$ns_ at 134.584508075345 "$god_ set-dist 25 32 2"
$ns_ at 134.584508075345 "$god_ set-dist 32 47 2"
$ns_ at 134.584508075345 "$god_ set-dist 32 48 2"
$ns_ at 134.619458431467 "$god_ set-dist 3 47 2"
$ns_ at 134.619458431467 "$god_ set-dist 4 47 3"
$ns_ at 134.619458431467 "$god_ set-dist 32 47 3"
$ns_ at 134.654858264068 "$god_ set-dist 9 27 2"
$ns_ at 134.654858264068 "$god_ set-dist 20 27 2"
$ns_ at 134.654858264068 "$god_ set-dist 27 33 1"
$ns_ at 134.748859319542 "$god_ set-dist 13 21 1"
$ns_ at 134.858408249648 "$god_ set-dist 2 3 2"
$ns_ at 134.917955651878 "$god_ set-dist 31 36 2"
$ns_ at 134.948322309969 "$god_ set-dist 8 47 2"
$ns_ at 134.948322309969 "$god_ set-dist 44 47 3"
$ns_ at 135.012199866225 "$god_ set-dist 9 23 1"
$ns_ at 135.071909083870 "$god_ set-dist 12 43 3"
$ns_ at 135.071909083870 "$god_ set-dist 16 43 3"
$ns_ at 135.071909083870 "$god_ set-dist 21 43 3"
$ns_ at 135.071909083870 "$god_ set-dist 39 43 2"
$ns_ at 135.071909083870 "$god_ set-dist 43 47 3"
$ns_ at 135.150958378226 "$god_ set-dist 11 46 1"
$ns_ at 135.150958378226 "$god_ set-dist 46 47 2"
$ns_ at 135.235815022953 "$god_ set-dist 10 31 2"
$ns_ at 135.250650197712 "$god_ set-dist 11 47 2"
$ns_ at 135.250650197712 "$god_ set-dist 46 47 3"
$ns_ at 135.250650197712 "$god_ set-dist 47 49 3"
$ns_ at 135.336974522313 "$god_ set-dist 12 42 2"
$ns_ at 135.336974522313 "$god_ set-dist 40 42 3"
$ns_ at 135.400870871226 "$node_(27) setdest 589.031762415218 327.199501026770 0.000000000000"
$ns_ at 135.433115982157 "$god_ set-dist 45 47 2"
$ns_ at 135.467135307675 "$god_ set-dist 35 46 1"
$ns_ at 135.508829629222 "$god_ set-dist 26 45 1"
$ns_ at 135.614301598126 "$god_ set-dist 5 39 2"
$ns_ at 135.614301598126 "$god_ set-dist 5 47 3"
$ns_ at 135.632199263177 "$god_ set-dist 15 29 1"
$ns_ at 135.632199263177 "$god_ set-dist 29 32 2"
$ns_ at 135.791376366125 "$god_ set-dist 25 49 2"
$ns_ at 135.791376366125 "$god_ set-dist 39 49 1"
$ns_ at 135.791376366125 "$god_ set-dist 47 49 2"
$ns_ at 135.794261823576 "$god_ set-dist 38 44 2"
$ns_ at 135.934496608699 "$god_ set-dist 16 47 2"
$ns_ at 136.161284527684 "$god_ set-dist 34 39 1"
$ns_ at 136.167196173644 "$god_ set-dist 15 48 1"
$ns_ at 136.184004783874 "$god_ set-dist 3 5 2"
$ns_ at 136.184004783874 "$god_ set-dist 5 25 3"
$ns_ at 136.290614021822 "$god_ set-dist 10 24 1"
$ns_ at 136.400870871226 "$node_(27) setdest 106.117000724733 37.662681153472 5.204658320306"
$ns_ at 136.459052094794 "$god_ set-dist 41 44 2"
$ns_ at 136.477687241703 "$god_ set-dist 8 44 2"
$ns_ at 136.598852688349 "$god_ set-dist 38 46 2"
$ns_ at 136.680887425673 "$god_ set-dist 7 48 2"
$ns_ at 136.687693998387 "$god_ set-dist 7 49 2"
$ns_ at 136.689659077920 "$god_ set-dist 3 25 2"
$ns_ at 136.689659077920 "$god_ set-dist 4 25 3"
$ns_ at 136.689659077920 "$god_ set-dist 25 32 3"
$ns_ at 136.689659077920 "$god_ set-dist 25 43 3"
$ns_ at 136.849017093651 "$god_ set-dist 27 30 1"
$ns_ at 136.946431555183 "$god_ set-dist 37 44 2"
$ns_ at 137.001717089708 "$god_ set-dist 40 45 2"
$ns_ at 137.044778537083 "$god_ set-dist 17 25 3"
$ns_ at 137.044778537083 "$god_ set-dist 17 39 2"
$ns_ at 137.044778537083 "$god_ set-dist 17 47 3"
$ns_ at 137.207005948357 "$god_ set-dist 8 46 1"
$ns_ at 137.255633582117 "$god_ set-dist 27 39 1"
$ns_ at 137.272283483872 "$god_ set-dist 27 31 1"
$ns_ at 137.274351983367 "$god_ set-dist 25 27 1"
$ns_ at 137.392575884558 "$god_ set-dist 26 39 1"
$ns_ at 137.527949299036 "$god_ set-dist 36 44 2"
$ns_ at 137.534054970778 "$god_ set-dist 22 23 2"
$ns_ at 137.534054970778 "$god_ set-dist 22 43 3"
$ns_ at 137.590392197797 "$god_ set-dist 28 34 2"
$ns_ at 137.667932040094 "$node_(19) setdest 658.881360580522 442.110442218597 0.000000000000"
$ns_ at 137.813766291145 "$god_ set-dist 7 38 2"
$ns_ at 137.824581965670 "$god_ set-dist 30 33 1"
$ns_ at 137.942282598326 "$node_(40) setdest 653.857497040266 547.380138071036 0.000000000000"
$ns_ at 138.340200218419 "$god_ set-dist 5 41 2"
$ns_ at 138.429691207951 "$god_ set-dist 5 7 3"
$ns_ at 138.429691207951 "$god_ set-dist 7 17 3"
$ns_ at 138.429691207951 "$god_ set-dist 7 29 2"
$ns_ at 138.452670432707 "$god_ set-dist 11 44 1"
$ns_ at 138.568707925280 "$god_ set-dist 3 13 2"
$ns_ at 138.568707925280 "$god_ set-dist 4 13 3"
$ns_ at 138.568707925280 "$god_ set-dist 13 32 3"
$ns_ at 138.568707925280 "$god_ set-dist 13 43 3"
$ns_ at 138.587863875556 "$god_ set-dist 1 4 2"
$ns_ at 138.587863875556 "$god_ set-dist 1 15 1"
$ns_ at 138.587863875556 "$god_ set-dist 1 32 2"
$ns_ at 138.611011351200 "$god_ set-dist 26 44 2"
$ns_ at 138.661038542425 "$god_ set-dist 3 7 3"
$ns_ at 138.661038542425 "$god_ set-dist 3 11 2"
$ns_ at 138.667932040094 "$node_(19) setdest 417.320448654390 416.075513284585 3.788993993800"
$ns_ at 138.698454341897 "$god_ set-dist 8 45 1"
$ns_ at 138.942282598326 "$node_(40) setdest 63.549656574225 514.022018857435 3.192851192810"
$ns_ at 138.973798997032 "$god_ set-dist 25 38 1"
$ns_ at 139.043112649993 "$god_ set-dist 24 36 1"
$ns_ at 139.112157519988 "$god_ set-dist 3 7 2"
$ns_ at 139.112157519988 "$god_ set-dist 7 8 1"
$ns_ at 139.138417925481 "$god_ set-dist 6 21 1"
$ns_ at 139.295969205647 "$god_ set-dist 11 45 2"
$ns_ at 139.371788674367 "$god_ set-dist 7 12 2"
$ns_ at 139.500029643863 "$god_ set-dist 4 10 2"
$ns_ at 139.500029643863 "$god_ set-dist 7 17 2"
$ns_ at 139.500029643863 "$god_ set-dist 10 17 1"
$ns_ at 139.660205816250 "$node_(5) setdest 68.408100292758 344.435678716428 0.000000000000"
$ns_ at 139.736750211930 "$god_ set-dist 6 9 1"
$ns_ at 139.736750211930 "$god_ set-dist 9 19 2"
$ns_ at 139.736750211930 "$god_ set-dist 9 40 2"
$ns_ at 139.736750211930 "$god_ set-dist 9 45 2"
$ns_ at 139.821420774538 "$god_ set-dist 34 49 2"
$ns_ at 139.918406152602 "$god_ set-dist 0 4 2"
$ns_ at 139.918406152602 "$god_ set-dist 0 15 1"
$ns_ at 139.918406152602 "$god_ set-dist 0 32 2"
$ns_ at 140.051838076688 "$god_ set-dist 23 42 2"
$ns_ at 140.051838076688 "$god_ set-dist 42 43 3"
$ns_ at 140.085213114864 "$god_ set-dist 3 7 3"
$ns_ at 140.085213114864 "$god_ set-dist 3 8 2"
$ns_ at 140.153503594799 "$god_ set-dist 9 39 2"
$ns_ at 140.278988890590 "$node_(13) setdest 500.137420564092 461.207369554586 0.000000000000"
$ns_ at 140.449279618381 "$god_ set-dist 7 8 2"
$ns_ at 140.450247563193 "$god_ set-dist 6 36 1"
$ns_ at 140.470027787155 "$god_ set-dist 24 30 1"
$ns_ at 140.528909168930 "$node_(42) setdest 336.895892702589 157.965749722644 0.000000000000"
$ns_ at 140.600260749032 "$god_ set-dist 19 22 1"
$ns_ at 140.600260749032 "$god_ set-dist 19 46 2"
$ns_ at 140.600260749032 "$god_ set-dist 19 49 2"
$ns_ at 140.660205816250 "$node_(5) setdest 665.223460704200 259.111677383824 5.989736040557"
$ns_ at 140.833232656349 "$god_ set-dist 3 48 2"
$ns_ at 140.873029289130 "$god_ set-dist 21 33 1"
$ns_ at 141.278988890590 "$node_(13) setdest 2.510782543626 61.507381087527 9.823868841251"
$ns_ at 141.297538027014 "$god_ set-dist 2 16 1"
$ns_ at 141.398011664307 "$god_ set-dist 12 43 2"
$ns_ at 141.398011664307 "$god_ set-dist 13 43 2"
$ns_ at 141.398011664307 "$god_ set-dist 16 43 2"
$ns_ at 141.398011664307 "$god_ set-dist 22 43 2"
$ns_ at 141.398011664307 "$god_ set-dist 24 43 1"
$ns_ at 141.398011664307 "$god_ set-dist 25 43 2"
$ns_ at 141.398011664307 "$god_ set-dist 43 47 2"
$ns_ at 141.511591464110 "$god_ set-dist 17 27 2"
$ns_ at 141.511591464110 "$god_ set-dist 27 41 1"
$ns_ at 141.528909168930 "$node_(42) setdest 34.495906020782 510.569792522238 5.734546031520"
$ns_ at 141.671947991199 "$god_ set-dist 0 45 2"
$ns_ at 141.671947991199 "$god_ set-dist 44 45 3"
$ns_ at 141.881689741459 "$god_ set-dist 16 25 1"
$ns_ at 141.896324077646 "$god_ set-dist 19 49 3"
$ns_ at 141.896324077646 "$god_ set-dist 22 49 2"
$ns_ at 141.906195936231 "$god_ set-dist 25 45 1"
$ns_ at 142.009349455956 "$god_ set-dist 20 29 1"
$ns_ at 142.086761602673 "$god_ set-dist 18 28 2"
$ns_ at 142.093310521359 "$god_ set-dist 13 23 1"
$ns_ at 142.407888651846 "$god_ set-dist 13 36 1"
$ns_ at 142.472693296896 "$god_ set-dist 16 28 1"
$ns_ at 142.518844631355 "$god_ set-dist 13 29 1"
$ns_ at 142.525141940592 "$god_ set-dist 20 45 2"
$ns_ at 142.525141940592 "$god_ set-dist 39 45 1"
$ns_ at 142.548027795955 "$god_ set-dist 20 38 1"
$ns_ at 142.569578228344 "$god_ set-dist 7 11 2"
$ns_ at 142.641485880935 "$god_ set-dist 18 47 3"
$ns_ at 142.641485880935 "$god_ set-dist 18 48 2"
$ns_ at 142.643819511558 "$god_ set-dist 5 27 2"
$ns_ at 142.643819511558 "$god_ set-dist 5 41 1"
$ns_ at 142.704563471339 "$god_ set-dist 27 35 1"
$ns_ at 142.707228393867 "$god_ set-dist 21 28 2"
$ns_ at 142.755874318633 "$god_ set-dist 7 40 3"
$ns_ at 142.755874318633 "$god_ set-dist 27 40 2"
$ns_ at 142.768266311666 "$god_ set-dist 9 44 3"
$ns_ at 142.768266311666 "$god_ set-dist 23 44 2"
$ns_ at 142.778878558113 "$god_ set-dist 10 15 1"
$ns_ at 142.778878558113 "$god_ set-dist 10 32 2"
$ns_ at 142.785246120663 "$god_ set-dist 4 13 2"
$ns_ at 142.785246120663 "$god_ set-dist 13 15 1"
$ns_ at 142.785246120663 "$god_ set-dist 13 32 2"
$ns_ at 142.906526586255 "$god_ set-dist 18 38 2"
$ns_ at 143.112999379330 "$god_ set-dist 3 17 2"
$ns_ at 143.188506600381 "$god_ set-dist 7 47 3"
$ns_ at 143.188506600381 "$god_ set-dist 27 47 2"
$ns_ at 143.212872240124 "$god_ set-dist 22 25 1"
$ns_ at 143.212872240124 "$god_ set-dist 25 46 2"
$ns_ at 143.293284123852 "$god_ set-dist 23 37 2"
$ns_ at 143.324315315160 "$god_ set-dist 2 31 2"
$ns_ at 143.336310572983 "$god_ set-dist 26 43 2"
$ns_ at 143.336310572983 "$god_ set-dist 28 43 1"
$ns_ at 143.336310572983 "$god_ set-dist 42 43 2"
$ns_ at 143.336310572983 "$god_ set-dist 43 46 2"
$ns_ at 143.379723079653 "$god_ set-dist 39 49 2"
$ns_ at 143.379723079653 "$god_ set-dist 47 49 3"
$ns_ at 143.445294097811 "$god_ set-dist 19 20 2"
$ns_ at 143.445294097811 "$god_ set-dist 19 31 1"
$ns_ at 143.494377332260 "$god_ set-dist 13 28 1"
$ns_ at 143.518269160484 "$god_ set-dist 19 39 1"
$ns_ at 143.634472036023 "$god_ set-dist 20 39 2"
$ns_ at 143.719787509937 "$god_ set-dist 21 49 2"
$ns_ at 143.838406467928 "$node_(0) setdest 367.416400712125 285.006732489309 0.000000000000"
$ns_ at 144.037383439491 "$god_ set-dist 19 37 1"
$ns_ at 144.037383439491 "$god_ set-dist 19 49 2"
$ns_ at 144.081412458695 "$god_ set-dist 5 7 2"
$ns_ at 144.081412458695 "$god_ set-dist 5 10 1"
$ns_ at 144.166950973187 "$god_ set-dist 13 30 1"
$ns_ at 144.209683797882 "$god_ set-dist 39 47 2"
$ns_ at 144.275116176054 "$god_ set-dist 25 49 3"
$ns_ at 144.275116176054 "$god_ set-dist 38 49 2"
$ns_ at 144.362786627989 "$god_ set-dist 3 39 2"
$ns_ at 144.509772302349 "$god_ set-dist 12 29 2"
$ns_ at 144.514970018088 "$god_ set-dist 19 38 1"
$ns_ at 144.591511095226 "$god_ set-dist 20 40 2"
$ns_ at 144.591511095226 "$god_ set-dist 31 40 1"
$ns_ at 144.668691138126 "$god_ set-dist 18 27 1"
$ns_ at 144.698878381985 "$god_ set-dist 7 45 2"
$ns_ at 144.759002543242 "$god_ set-dist 8 25 1"
$ns_ at 144.759002543242 "$god_ set-dist 25 49 2"
$ns_ at 144.838406467928 "$node_(0) setdest 598.009855080408 241.349488725116 6.676650093576"
$ns_ at 144.853032424461 "$god_ set-dist 28 46 2"
$ns_ at 144.853032424461 "$god_ set-dist 43 46 3"
$ns_ at 144.903126708434 "$god_ set-dist 25 37 1"
$ns_ at 144.962302527727 "$god_ set-dist 22 46 2"
$ns_ at 144.970779767520 "$god_ set-dist 19 49 3"
$ns_ at 144.970779767520 "$god_ set-dist 37 49 2"
$ns_ at 145.000268215737 "$god_ set-dist 0 44 2"
$ns_ at 145.002496759243 "$god_ set-dist 24 47 2"
$ns_ at 145.002496759243 "$god_ set-dist 43 47 3"
$ns_ at 145.032627023578 "$node_(37) setdest 468.184111021061 265.708836528342 0.000000000000"
$ns_ at 145.040531947819 "$god_ set-dist 14 27 1"
$ns_ at 145.067737236893 "$god_ set-dist 18 44 2"
$ns_ at 145.286769707031 "$god_ set-dist 24 27 1"
$ns_ at 145.286769707031 "$god_ set-dist 27 43 2"
$ns_ at 145.293110041415 "$god_ set-dist 10 27 1"
$ns_ at 145.663074983763 "$god_ set-dist 16 46 1"
$ns_ at 145.677690193944 "$god_ set-dist 11 17 1"
$ns_ at 145.721503502506 "$god_ set-dist 0 45 1"
$ns_ at 145.754603184540 "$god_ set-dist 0 32 3"
$ns_ at 145.754603184540 "$god_ set-dist 1 32 3"
$ns_ at 145.754603184540 "$god_ set-dist 2 32 3"
$ns_ at 145.754603184540 "$god_ set-dist 7 32 4"
$ns_ at 145.754603184540 "$god_ set-dist 8 32 3"
$ns_ at 145.754603184540 "$god_ set-dist 10 32 3"
$ns_ at 145.754603184540 "$god_ set-dist 11 32 3"
$ns_ at 145.754603184540 "$god_ set-dist 13 32 3"
$ns_ at 145.754603184540 "$god_ set-dist 15 32 2"
$ns_ at 145.754603184540 "$god_ set-dist 32 39 3"
$ns_ at 145.754603184540 "$god_ set-dist 32 48 3"
$ns_ at 145.790883524649 "$god_ set-dist 19 33 1"
$ns_ at 145.810578584239 "$god_ set-dist 2 20 1"
$ns_ at 145.810578584239 "$god_ set-dist 2 32 2"
$ns_ at 145.818024263227 "$god_ set-dist 23 36 2"
$ns_ at 145.823883825339 "$god_ set-dist 20 45 3"
$ns_ at 145.823883825339 "$god_ set-dist 38 45 2"
$ns_ at 145.836211590126 "$god_ set-dist 6 30 1"
$ns_ at 145.846548984080 "$node_(49) setdest 227.041651074464 189.540890272359 0.000000000000"
$ns_ at 145.926413910856 "$god_ set-dist 3 18 3"
$ns_ at 145.926413910856 "$god_ set-dist 3 35 2"
$ns_ at 145.926413910856 "$god_ set-dist 3 46 3"
$ns_ at 145.937266635062 "$god_ set-dist 9 28 1"
$ns_ at 145.937266635062 "$god_ set-dist 9 44 2"
$ns_ at 146.032627023578 "$node_(37) setdest 193.532294620461 377.875346212665 8.358656209568"
$ns_ at 146.249931395320 "$god_ set-dist 3 45 3"
$ns_ at 146.249931395320 "$god_ set-dist 6 45 2"
$ns_ at 146.249931395320 "$god_ set-dist 9 45 3"
$ns_ at 146.249931395320 "$god_ set-dist 32 45 4"
$ns_ at 146.335878227452 "$god_ set-dist 23 42 1"
$ns_ at 146.351349761319 "$god_ set-dist 5 11 1"
$ns_ at 146.384115962987 "$god_ set-dist 9 38 1"
$ns_ at 146.386670964356 "$god_ set-dist 10 13 1"
$ns_ at 146.386670964356 "$god_ set-dist 10 40 2"
$ns_ at 146.483448371818 "$god_ set-dist 19 49 2"
$ns_ at 146.483448371818 "$god_ set-dist 37 49 1"
$ns_ at 146.505284828176 "$god_ set-dist 14 47 3"
$ns_ at 146.505284828176 "$god_ set-dist 42 47 3"
$ns_ at 146.505284828176 "$god_ set-dist 47 48 2"
$ns_ at 146.661800036880 "$node_(47) setdest 576.303147925310 570.557793061254 0.000000000000"
$ns_ at 146.769121445273 "$god_ set-dist 22 28 2"
$ns_ at 146.846548984080 "$node_(49) setdest 668.515654090153 491.890066385533 7.754838488299"
$ns_ at 146.971145823040 "$god_ set-dist 4 30 2"
$ns_ at 146.971145823040 "$god_ set-dist 15 30 1"
$ns_ at 146.977072019450 "$god_ set-dist 5 7 3"
$ns_ at 146.977072019450 "$god_ set-dist 7 10 2"
$ns_ at 146.977072019450 "$god_ set-dist 7 17 3"
$ns_ at 147.039220089204 "$god_ set-dist 14 47 2"
$ns_ at 147.039220089204 "$god_ set-dist 38 47 1"
$ns_ at 147.039220089204 "$god_ set-dist 42 47 2"
$ns_ at 147.183151595549 "$god_ set-dist 19 21 1"
$ns_ at 147.192630897048 "$god_ set-dist 18 39 1"
$ns_ at 147.661800036880 "$node_(47) setdest 298.916055610063 361.574257171584 2.839031184679"
$ns_ at 147.723070476602 "$god_ set-dist 23 37 1"
$ns_ at 147.824694151751 "$god_ set-dist 15 49 1"
$ns_ at 147.984065808518 "$god_ set-dist 47 48 1"
$ns_ at 147.997318440343 "$god_ set-dist 2 13 1"
$ns_ at 147.997318440343 "$god_ set-dist 2 40 2"
$ns_ at 148.006860375159 "$god_ set-dist 27 42 1"
$ns_ at 148.014851683651 "$god_ set-dist 1 5 1"
$ns_ at 148.014851683651 "$god_ set-dist 5 7 2"
$ns_ at 148.051411502778 "$god_ set-dist 0 7 2"
$ns_ at 148.122466818936 "$god_ set-dist 26 28 2"
$ns_ at 148.122466818936 "$god_ set-dist 26 43 3"
$ns_ at 148.162287092087 "$god_ set-dist 7 27 2"
$ns_ at 148.175037744055 "$god_ set-dist 4 42 2"
$ns_ at 148.175037744055 "$god_ set-dist 5 42 1"
$ns_ at 148.230620441242 "$god_ set-dist 1 7 2"
$ns_ at 148.256088274116 "$god_ set-dist 13 26 1"
$ns_ at 148.427756992436 "$god_ set-dist 21 25 1"
$ns_ at 148.470371233985 "$god_ set-dist 16 49 1"
$ns_ at 148.496502281001 "$god_ set-dist 14 23 2"
$ns_ at 148.520653906204 "$god_ set-dist 5 24 1"
$ns_ at 148.520653906204 "$god_ set-dist 5 25 2"
$ns_ at 148.705892009944 "$god_ set-dist 6 20 1"
$ns_ at 148.828553223859 "$god_ set-dist 3 6 2"
$ns_ at 148.902345440842 "$god_ set-dist 4 37 2"
$ns_ at 148.902345440842 "$god_ set-dist 15 37 1"
$ns_ at 149.084038682779 "$god_ set-dist 39 49 1"
$ns_ at 149.120048133312 "$god_ set-dist 13 14 1"
$ns_ at 149.120048133312 "$god_ set-dist 14 40 2"
$ns_ at 149.176445180756 "$god_ set-dist 29 34 2"
$ns_ at 149.259380773255 "$god_ set-dist 47 49 2"
$ns_ at 149.259380773255 "$god_ set-dist 48 49 1"
$ns_ at 149.260955878093 "$god_ set-dist 15 42 1"
$ns_ at 149.457684618039 "$node_(25) setdest 574.238702366512 460.070677999104 0.000000000000"
$ns_ at 149.573869081468 "$god_ set-dist 18 29 2"
$ns_ at 149.585536281280 "$god_ set-dist 17 24 1"
$ns_ at 149.585536281280 "$god_ set-dist 17 25 2"
$ns_ at 149.663075760097 "$god_ set-dist 34 49 1"
$ns_ at 149.716988399996 "$god_ set-dist 7 17 2"
$ns_ at 149.716988399996 "$god_ set-dist 17 42 1"
$ns_ at 149.788068483921 "$god_ set-dist 13 20 1"
$ns_ at 149.788068483921 "$god_ set-dist 13 32 2"
$ns_ at 149.788068483921 "$god_ set-dist 20 45 2"
$ns_ at 149.788068483921 "$god_ set-dist 32 45 3"
$ns_ at 149.790897772569 "$god_ set-dist 35 44 2"
$ns_ at 149.812223855468 "$god_ set-dist 4 14 2"
$ns_ at 149.812223855468 "$god_ set-dist 5 14 1"
$ns_ at 149.845333774306 "$god_ set-dist 13 42 1"
$ns_ at 149.845333774306 "$god_ set-dist 40 42 2"
$ns_ at 149.889639159520 "$node_(38) setdest 402.228810762426 412.780519136774 0.000000000000"
$ns_ at 149.896293354672 "$god_ set-dist 24 42 1"
$ns_ at 150.002426821188 "$god_ set-dist 7 22 2"
$ns_ at 150.044603463925 "$god_ set-dist 3 38 2"
$ns_ at 150.067606023033 "$god_ set-dist 0 4 3"
$ns_ at 150.067606023033 "$god_ set-dist 4 8 3"
$ns_ at 150.067606023033 "$god_ set-dist 4 15 2"
$ns_ at 150.067606023033 "$god_ set-dist 4 30 3"
$ns_ at 150.067606023033 "$god_ set-dist 4 37 3"
$ns_ at 150.067606023033 "$god_ set-dist 4 39 3"
$ns_ at 150.067606023033 "$god_ set-dist 4 48 3"
$ns_ at 150.150973060888 "$god_ set-dist 14 15 1"
$ns_ at 150.192702770647 "$god_ set-dist 0 25 1"
$ns_ at 150.199282566790 "$god_ set-dist 21 29 2"
$ns_ at 150.375714589350 "$god_ set-dist 1 4 3"
$ns_ at 150.375714589350 "$god_ set-dist 4 5 2"
$ns_ at 150.375714589350 "$god_ set-dist 4 14 3"
$ns_ at 150.457684618039 "$node_(25) setdest 542.679756597474 255.022271798140 8.338951234357"
$ns_ at 150.493224667981 "$god_ set-dist 9 13 1"
$ns_ at 150.493224667981 "$god_ set-dist 9 45 2"
$ns_ at 150.527672363576 "$god_ set-dist 14 24 1"
$ns_ at 150.544537941402 "$god_ set-dist 7 37 2"
$ns_ at 150.589508360591 "$god_ set-dist 0 4 2"
$ns_ at 150.589508360591 "$god_ set-dist 1 4 2"
$ns_ at 150.589508360591 "$god_ set-dist 4 8 2"
$ns_ at 150.589508360591 "$god_ set-dist 4 23 1"
$ns_ at 150.589508360591 "$god_ set-dist 4 30 2"
$ns_ at 150.589508360591 "$god_ set-dist 4 37 2"
$ns_ at 150.589508360591 "$god_ set-dist 4 39 2"
$ns_ at 150.589508360591 "$god_ set-dist 4 48 2"
$ns_ at 150.634599393257 "$node_(7) setdest 484.125075812457 34.634365740686 0.000000000000"
$ns_ at 150.636485879718 "$god_ set-dist 24 49 1"
$ns_ at 150.638219439697 "$god_ set-dist 8 19 1"
$ns_ at 150.854991030512 "$god_ set-dist 21 49 1"
$ns_ at 150.879081959380 "$god_ set-dist 30 44 2"
$ns_ at 150.889639159520 "$node_(38) setdest 452.582415302084 383.611724255895 0.737785655879"
$ns_ at 151.047883784773 "$god_ set-dist 15 36 1"
$ns_ at 151.147764805740 "$god_ set-dist 2 22 2"
$ns_ at 151.151296797128 "$god_ set-dist 33 40 1"
$ns_ at 151.297190904893 "$god_ set-dist 38 40 1"
$ns_ at 151.312941829717 "$god_ set-dist 2 21 2"
$ns_ at 151.448637742100 "$god_ set-dist 38 49 1"
$ns_ at 151.448637742100 "$god_ set-dist 40 49 2"
$ns_ at 151.526850407958 "$god_ set-dist 13 49 1"
$ns_ at 151.624425960950 "$god_ set-dist 25 41 1"
$ns_ at 151.634599393257 "$node_(7) setdest 659.271247721841 96.010867136126 2.359446417718"
$ns_ at 151.721269654859 "$god_ set-dist 7 17 3"
$ns_ at 151.721269654859 "$god_ set-dist 7 42 2"
$ns_ at 151.782067500649 "$node_(15) setdest 265.089480818392 425.142215727731 0.000000000000"
$ns_ at 151.959796098654 "$god_ set-dist 5 30 1"
$ns_ at 151.970533085086 "$god_ set-dist 7 8 1"
$ns_ at 152.088143770843 "$god_ set-dist 15 16 1"
$ns_ at 152.148337891501 "$god_ set-dist 22 29 2"
$ns_ at 152.180019708391 "$god_ set-dist 25 34 1"
$ns_ at 152.256586895943 "$god_ set-dist 10 12 1"
$ns_ at 152.275836526111 "$god_ set-dist 0 19 1"
$ns_ at 152.412017170634 "$god_ set-dist 0 7 1"
$ns_ at 152.468690418485 "$god_ set-dist 20 48 1"
$ns_ at 152.468690418485 "$god_ set-dist 32 48 2"
$ns_ at 152.523827793899 "$god_ set-dist 3 26 3"
$ns_ at 152.523827793899 "$god_ set-dist 3 34 3"
$ns_ at 152.523827793899 "$god_ set-dist 3 41 2"
$ns_ at 152.659765186190 "$god_ set-dist 13 40 2"
$ns_ at 152.674585274311 "$god_ set-dist 7 27 1"
$ns_ at 152.782067500649 "$node_(15) setdest 198.067772932839 542.693076205943 7.077783647035"
$ns_ at 153.225873452673 "$god_ set-dist 11 20 1"
$ns_ at 153.225873452673 "$god_ set-dist 11 32 2"
$ns_ at 153.252011423826 "$god_ set-dist 15 16 2"
$ns_ at 153.377641874545 "$god_ set-dist 11 31 2"
$ns_ at 153.586227761528 "$god_ set-dist 27 49 1"
$ns_ at 153.628100123166 "$god_ set-dist 15 36 2"
$ns_ at 153.629004681152 "$god_ set-dist 28 39 2"
$ns_ at 153.652990967546 "$god_ set-dist 1 31 2"
$ns_ at 153.832243538939 "$god_ set-dist 22 49 1"
$ns_ at 153.892233856056 "$god_ set-dist 1 17 1"
$ns_ at 154.003908513413 "$god_ set-dist 4 39 3"
$ns_ at 154.003908513413 "$god_ set-dist 23 39 2"
$ns_ at 154.059977949906 "$god_ set-dist 26 43 2"
$ns_ at 154.059977949906 "$god_ set-dist 29 43 1"
$ns_ at 154.059977949906 "$god_ set-dist 43 46 2"
$ns_ at 154.111281410122 "$god_ set-dist 4 14 2"
$ns_ at 154.111281410122 "$god_ set-dist 4 15 1"
$ns_ at 154.111281410122 "$god_ set-dist 4 39 2"
$ns_ at 154.121173179093 "$god_ set-dist 0 32 2"
$ns_ at 154.121173179093 "$god_ set-dist 1 32 2"
$ns_ at 154.121173179093 "$god_ set-dist 7 32 3"
$ns_ at 154.121173179093 "$god_ set-dist 8 32 2"
$ns_ at 154.121173179093 "$god_ set-dist 10 32 2"
$ns_ at 154.121173179093 "$god_ set-dist 23 32 1"
$ns_ at 154.121173179093 "$god_ set-dist 30 32 2"
$ns_ at 154.121173179093 "$god_ set-dist 32 37 2"
$ns_ at 154.121173179093 "$god_ set-dist 32 42 2"
$ns_ at 154.121173179093 "$god_ set-dist 32 49 2"
$ns_ at 154.161383574281 "$god_ set-dist 4 39 3"
$ns_ at 154.161383574281 "$god_ set-dist 15 39 2"
$ns_ at 154.311472657352 "$god_ set-dist 33 49 1"
$ns_ at 154.427727276392 "$god_ set-dist 9 29 1"
$ns_ at 154.427727276392 "$god_ set-dist 9 46 2"
$ns_ at 154.598489648217 "$god_ set-dist 4 14 3"
$ns_ at 154.598489648217 "$god_ set-dist 14 15 2"
$ns_ at 154.631276934832 "$god_ set-dist 8 23 2"
$ns_ at 154.631276934832 "$god_ set-dist 8 32 3"
$ns_ at 154.672519017293 "$god_ set-dist 3 44 3"
$ns_ at 154.672519017293 "$god_ set-dist 28 44 2"
$ns_ at 154.693858459348 "$god_ set-dist 40 48 1"
$ns_ at 154.698390946827 "$god_ set-dist 5 13 1"
$ns_ at 154.698390946827 "$god_ set-dist 5 19 2"
$ns_ at 154.698390946827 "$god_ set-dist 5 45 2"
$ns_ at 154.698390946827 "$god_ set-dist 5 47 2"
$ns_ at 154.711235557047 "$god_ set-dist 5 45 3"
$ns_ at 154.711235557047 "$god_ set-dist 9 45 3"
$ns_ at 154.711235557047 "$god_ set-dist 13 45 2"
$ns_ at 154.880921909942 "$god_ set-dist 5 37 1"
$ns_ at 154.880921909942 "$god_ set-dist 5 45 2"
$ns_ at 155.007569138518 "$god_ set-dist 33 42 1"
$ns_ at 155.101931316404 "$god_ set-dist 27 46 1"
$ns_ at 155.112545969542 "$god_ set-dist 8 32 2"
$ns_ at 155.112545969542 "$god_ set-dist 15 32 1"
$ns_ at 155.249670942982 "$god_ set-dist 4 8 3"
$ns_ at 155.249670942982 "$god_ set-dist 8 15 2"
$ns_ at 155.249670942982 "$god_ set-dist 8 32 3"
$ns_ at 155.275667733198 "$god_ set-dist 0 23 2"
$ns_ at 155.369649767376 "$god_ set-dist 29 39 2"
$ns_ at 155.532106521885 "$god_ set-dist 30 31 1"
$ns_ at 155.556109270443 "$god_ set-dist 19 34 1"
$ns_ at 155.584038335637 "$god_ set-dist 0 4 3"
$ns_ at 155.584038335637 "$god_ set-dist 0 15 2"
$ns_ at 155.584038335637 "$god_ set-dist 0 32 3"
$ns_ at 155.646871631288 "$god_ set-dist 10 20 1"
$ns_ at 155.647853738306 "$god_ set-dist 3 31 2"
$ns_ at 155.747698550283 "$god_ set-dist 5 47 3"
$ns_ at 155.747698550283 "$god_ set-dist 13 47 2"
$ns_ at 155.814814429732 "$god_ set-dist 2 39 2"
$ns_ at 155.823842289584 "$god_ set-dist 3 19 3"
$ns_ at 155.823842289584 "$god_ set-dist 3 21 3"
$ns_ at 155.823842289584 "$god_ set-dist 3 33 2"
$ns_ at 155.823842289584 "$god_ set-dist 3 40 3"
$ns_ at 155.823842289584 "$god_ set-dist 3 47 3"
$ns_ at 155.938598060256 "$god_ set-dist 2 27 1"
$ns_ at 156.169041198407 "$god_ set-dist 9 46 3"
$ns_ at 156.169041198407 "$god_ set-dist 29 46 2"
$ns_ at 156.169041198407 "$god_ set-dist 43 46 3"
$ns_ at 156.360150757584 "$god_ set-dist 20 37 1"
$ns_ at 156.593213146214 "$god_ set-dist 22 42 2"
$ns_ at 156.865892221639 "$god_ set-dist 4 7 4"
$ns_ at 156.865892221639 "$god_ set-dist 7 15 3"
$ns_ at 156.865892221639 "$god_ set-dist 7 23 3"
$ns_ at 156.865892221639 "$god_ set-dist 7 30 2"
$ns_ at 156.865892221639 "$god_ set-dist 7 32 4"
$ns_ at 156.984912726302 "$god_ set-dist 20 49 1"
$ns_ at 157.076204404546 "$god_ set-dist 5 33 1"
$ns_ at 157.076204404546 "$god_ set-dist 5 40 2"
$ns_ at 157.076204404546 "$god_ set-dist 5 47 2"
$ns_ at 157.204929154845 "$god_ set-dist 0 28 2"
$ns_ at 157.286343147138 "$god_ set-dist 8 28 2"
$ns_ at 157.388419151839 "$god_ set-dist 5 36 1"
$ns_ at 157.458671063402 "$god_ set-dist 18 22 2"
$ns_ at 157.498364863668 "$god_ set-dist 20 42 1"
$ns_ at 157.520429932894 "$god_ set-dist 25 30 1"
$ns_ at 157.698964085008 "$god_ set-dist 25 36 1"
$ns_ at 157.712320790564 "$god_ set-dist 6 11 2"
$ns_ at 157.742140951679 "$god_ set-dist 25 35 1"
$ns_ at 157.771997034223 "$god_ set-dist 5 38 1"
$ns_ at 157.784116955922 "$god_ set-dist 22 40 1"
$ns_ at 157.840691133306 "$god_ set-dist 12 49 1"
$ns_ at 157.925560291806 "$god_ set-dist 22 47 1"
$ns_ at 158.119892010123 "$god_ set-dist 37 45 2"
$ns_ at 158.150812154513 "$god_ set-dist 1 44 2"
$ns_ at 158.150935170843 "$god_ set-dist 39 42 2"
$ns_ at 158.157810451671 "$god_ set-dist 6 10 1"
$ns_ at 158.223286276621 "$god_ set-dist 26 29 2"
$ns_ at 158.223286276621 "$god_ set-dist 26 43 3"
$ns_ at 158.529131859695 "$god_ set-dist 6 49 1"
$ns_ at 158.610348038346 "$god_ set-dist 21 42 2"
$ns_ at 158.643853812200 "$god_ set-dist 9 46 2"
$ns_ at 158.643853812200 "$god_ set-dist 13 46 1"
$ns_ at 158.727791072827 "$god_ set-dist 11 12 2"
$ns_ at 158.789810448579 "$god_ set-dist 5 48 1"
$ns_ at 158.880425124741 "$god_ set-dist 4 7 3"
$ns_ at 158.880425124741 "$god_ set-dist 4 14 2"
$ns_ at 158.880425124741 "$god_ set-dist 7 17 2"
$ns_ at 158.880425124741 "$god_ set-dist 14 17 1"
$ns_ at 159.127236539833 "$god_ set-dist 4 16 2"
$ns_ at 159.127236539833 "$god_ set-dist 4 28 1"
$ns_ at 159.127236539833 "$god_ set-dist 4 36 2"
$ns_ at 159.149526172734 "$god_ set-dist 12 14 1"
$ns_ at 159.194567923604 "$god_ set-dist 17 19 2"
$ns_ at 159.194567923604 "$god_ set-dist 19 41 1"
$ns_ at 159.307063798186 "$god_ set-dist 13 17 1"
$ns_ at 159.335283227672 "$god_ set-dist 8 31 2"
$ns_ at 159.353849212498 "$god_ set-dist 0 29 2"
$ns_ at 159.422195411613 "$god_ set-dist 19 37 2"
$ns_ at 159.446467512880 "$god_ set-dist 9 45 2"
$ns_ at 159.446467512880 "$god_ set-dist 9 48 1"
$ns_ at 159.463589673010 "$god_ set-dist 29 31 2"
$ns_ at 159.463589673010 "$god_ set-dist 31 44 3"
$ns_ at 159.573616642006 "$god_ set-dist 7 45 1"
$ns_ at 159.881807668413 "$god_ set-dist 17 37 1"
$ns_ at 159.985272957511 "$god_ set-dist 11 23 2"
$ns_ at 159.989575012575 "$god_ set-dist 8 29 2"
$ns_ at 160.102107350326 "$god_ set-dist 20 30 1"
$ns_ at 160.104974402971 "$god_ set-dist 1 23 2"
$ns_ at 160.111790521314 "$god_ set-dist 3 39 3"
$ns_ at 160.111790521314 "$god_ set-dist 24 39 2"
$ns_ at 160.111790521314 "$god_ set-dist 39 43 3"
$ns_ at 160.133964426742 "$god_ set-dist 11 22 2"
$ns_ at 160.157505891476 "$god_ set-dist 7 39 1"
$ns_ at 160.257164394769 "$god_ set-dist 1 15 2"
$ns_ at 160.257164394769 "$god_ set-dist 1 32 3"
$ns_ at 160.258911986202 "$god_ set-dist 5 16 1"
$ns_ at 160.407219071990 "$god_ set-dist 11 39 2"
$ns_ at 160.410663381700 "$god_ set-dist 1 20 1"
$ns_ at 160.410663381700 "$god_ set-dist 1 32 2"
$ns_ at 160.521971998044 "$god_ set-dist 0 3 3"
$ns_ at 160.521971998044 "$god_ set-dist 3 8 3"
$ns_ at 160.521971998044 "$god_ set-dist 3 12 3"
$ns_ at 160.521971998044 "$god_ set-dist 3 22 3"
$ns_ at 160.521971998044 "$god_ set-dist 3 24 2"
$ns_ at 160.521971998044 "$god_ set-dist 3 25 3"
$ns_ at 160.521971998044 "$god_ set-dist 3 27 3"
$ns_ at 160.617219281680 "$god_ set-dist 25 26 1"
$ns_ at 161.006930513381 "$god_ set-dist 11 15 2"
$ns_ at 161.314728758856 "$god_ set-dist 7 32 3"
$ns_ at 161.314728758856 "$god_ set-dist 14 32 2"
$ns_ at 161.314728758856 "$god_ set-dist 16 32 2"
$ns_ at 161.314728758856 "$god_ set-dist 28 32 1"
$ns_ at 161.314728758856 "$god_ set-dist 32 36 2"
$ns_ at 161.367310762158 "$god_ set-dist 15 30 2"
$ns_ at 161.423319898944 "$god_ set-dist 10 39 2"
$ns_ at 161.429528963737 "$god_ set-dist 44 49 2"
$ns_ at 161.631487627334 "$god_ set-dist 9 44 3"
$ns_ at 161.631487627334 "$god_ set-dist 29 44 2"
$ns_ at 161.723987028155 "$god_ set-dist 18 37 2"
$ns_ at 161.888003726841 "$god_ set-dist 11 21 2"
$ns_ at 162.008040851460 "$god_ set-dist 13 19 2"
$ns_ at 162.063530964623 "$god_ set-dist 10 22 2"
$ns_ at 162.112964974453 "$god_ set-dist 24 25 2"
$ns_ at 162.112964974453 "$god_ set-dist 25 43 3"
$ns_ at 162.222546485223 "$god_ set-dist 18 39 2"
$ns_ at 162.552308398033 "$god_ set-dist 31 39 2"
$ns_ at 162.701890013030 "$node_(28) setdest 214.034636581597 400.556809908202 0.000000000000"
$ns_ at 162.789454776222 "$god_ set-dist 25 49 1"
$ns_ at 163.059086374292 "$god_ set-dist 2 34 2"
$ns_ at 163.130978238258 "$god_ set-dist 3 7 4"
$ns_ at 163.130978238258 "$god_ set-dist 3 14 3"
$ns_ at 163.130978238258 "$god_ set-dist 3 16 3"
$ns_ at 163.130978238258 "$god_ set-dist 3 28 2"
$ns_ at 163.130978238258 "$god_ set-dist 3 36 3"
$ns_ at 163.159514067964 "$god_ set-dist 14 39 2"
$ns_ at 163.159514067964 "$god_ set-dist 39 44 3"
$ns_ at 163.159867066054 "$god_ set-dist 15 49 2"
$ns_ at 163.192318239075 "$god_ set-dist 7 14 2"
$ns_ at 163.192318239075 "$god_ set-dist 7 17 3"
$ns_ at 163.202091337764 "$god_ set-dist 14 22 2"
$ns_ at 163.202091337764 "$god_ set-dist 22 44 3"
$ns_ at 163.323166243604 "$god_ set-dist 2 23 2"
$ns_ at 163.498534279661 "$god_ set-dist 10 23 2"
$ns_ at 163.580824096661 "$god_ set-dist 7 44 3"
$ns_ at 163.580824096661 "$god_ set-dist 44 46 2"
$ns_ at 163.651165212758 "$god_ set-dist 27 31 2"
$ns_ at 163.701890013030 "$node_(28) setdest 52.474936420281 563.501910182740 7.682169693963"
$ns_ at 163.708769252078 "$god_ set-dist 11 33 2"
$ns_ at 163.764311928161 "$god_ set-dist 10 15 2"
$ns_ at 163.811753450936 "$god_ set-dist 28 31 2"
$ns_ at 163.867902827151 "$node_(39) setdest 560.166479392124 270.572111459682 0.000000000000"
$ns_ at 163.904562649651 "$god_ set-dist 9 37 1"
$ns_ at 163.955973041979 "$god_ set-dist 23 42 2"
$ns_ at 164.019541717179 "$node_(22) setdest 539.859666144664 317.748017053023 0.000000000000"
$ns_ at 164.034740919066 "$god_ set-dist 9 13 2"
$ns_ at 164.090716096194 "$god_ set-dist 4 36 3"
$ns_ at 164.090716096194 "$god_ set-dist 28 36 2"
$ns_ at 164.090716096194 "$god_ set-dist 32 36 3"
$ns_ at 164.102989754709 "$node_(3) setdest 173.889664716331 652.271844014188 0.000000000000"
$ns_ at 164.381591637341 "$god_ set-dist 5 26 1"
$ns_ at 164.381591637341 "$god_ set-dist 26 43 2"
$ns_ at 164.383950903246 "$god_ set-dist 34 42 2"
$ns_ at 164.443997975900 "$god_ set-dist 3 47 2"
$ns_ at 164.443997975900 "$god_ set-dist 4 47 2"
$ns_ at 164.443997975900 "$god_ set-dist 17 47 2"
$ns_ at 164.443997975900 "$god_ set-dist 23 47 1"
$ns_ at 164.443997975900 "$god_ set-dist 32 47 2"
$ns_ at 164.443997975900 "$god_ set-dist 43 47 2"
$ns_ at 164.466139428154 "$god_ set-dist 16 31 2"
$ns_ at 164.490665925722 "$god_ set-dist 3 7 3"
$ns_ at 164.490665925722 "$god_ set-dist 3 14 2"
$ns_ at 164.490665925722 "$god_ set-dist 3 16 2"
$ns_ at 164.490665925722 "$god_ set-dist 3 28 1"
$ns_ at 164.550203656158 "$god_ set-dist 18 42 2"
$ns_ at 164.676314397794 "$god_ set-dist 19 24 1"
$ns_ at 164.676314397794 "$god_ set-dist 19 43 2"
$ns_ at 164.720264839284 "$god_ set-dist 0 31 2"
$ns_ at 164.720264839284 "$god_ set-dist 7 31 3"
$ns_ at 164.723731285882 "$god_ set-dist 10 21 2"
$ns_ at 164.811539325372 "$god_ set-dist 5 46 1"
$ns_ at 164.811539325372 "$god_ set-dist 43 46 2"
$ns_ at 164.867902827151 "$node_(39) setdest 245.308729238858 214.447255694547 4.773765535313"
$ns_ at 164.960666777589 "$god_ set-dist 0 42 2"
$ns_ at 164.979560278717 "$god_ set-dist 4 17 2"
$ns_ at 164.979560278717 "$god_ set-dist 4 44 3"
$ns_ at 165.011528534396 "$god_ set-dist 0 2 2"
$ns_ at 165.013691031632 "$god_ set-dist 2 15 2"
$ns_ at 165.019541717179 "$node_(22) setdest 654.135274773030 210.325586436717 7.542350743620"
$ns_ at 165.092504963524 "$god_ set-dist 3 7 4"
$ns_ at 165.092504963524 "$god_ set-dist 3 16 3"
$ns_ at 165.092504963524 "$god_ set-dist 4 7 4"
$ns_ at 165.092504963524 "$god_ set-dist 4 16 3"
$ns_ at 165.092504963524 "$god_ set-dist 7 28 3"
$ns_ at 165.092504963524 "$god_ set-dist 7 32 4"
$ns_ at 165.092504963524 "$god_ set-dist 16 28 2"
$ns_ at 165.092504963524 "$god_ set-dist 16 32 3"
$ns_ at 165.100274098720 "$god_ set-dist 22 24 2"
$ns_ at 165.100274098720 "$god_ set-dist 22 43 3"
$ns_ at 165.102989754709 "$node_(3) setdest 236.513221474539 407.776878987809 8.065180610297"
$ns_ at 165.156979803373 "$god_ set-dist 1 25 1"
$ns_ at 165.238550680972 "$god_ set-dist 17 23 2"
$ns_ at 165.238550680972 "$god_ set-dist 17 47 3"
$ns_ at 165.516841463307 "$god_ set-dist 9 47 1"
$ns_ at 165.529746354275 "$god_ set-dist 5 6 1"
$ns_ at 165.579570522449 "$god_ set-dist 8 24 2"
$ns_ at 165.579570522449 "$god_ set-dist 8 43 3"
$ns_ at 165.619186360792 "$god_ set-dist 4 7 3"
$ns_ at 165.619186360792 "$god_ set-dist 4 16 2"
$ns_ at 165.619186360792 "$god_ set-dist 4 29 1"
$ns_ at 165.619186360792 "$god_ set-dist 4 36 2"
$ns_ at 165.789152639639 "$god_ set-dist 0 24 2"
$ns_ at 165.789152639639 "$god_ set-dist 0 43 3"
$ns_ at 165.833470993832 "$god_ set-dist 19 30 1"
$ns_ at 165.974951312615 "$god_ set-dist 5 27 1"
$ns_ at 166.113353620471 "$god_ set-dist 14 39 1"
$ns_ at 166.113353620471 "$god_ set-dist 39 44 2"
$ns_ at 166.249599157048 "$god_ set-dist 2 18 2"
$ns_ at 166.426824203209 "$god_ set-dist 37 39 2"
$ns_ at 166.429658841717 "$god_ set-dist 21 46 2"
$ns_ at 166.475425298657 "$god_ set-dist 7 32 3"
$ns_ at 166.475425298657 "$god_ set-dist 16 32 2"
$ns_ at 166.475425298657 "$god_ set-dist 29 32 1"
$ns_ at 166.475425298657 "$god_ set-dist 32 36 2"
$ns_ at 166.487224464244 "$god_ set-dist 19 35 1"
$ns_ at 166.513729327382 "$god_ set-dist 0 11 2"
$ns_ at 166.518149461477 "$god_ set-dist 15 18 3"
$ns_ at 166.518149461477 "$god_ set-dist 18 35 2"
$ns_ at 166.532132608383 "$god_ set-dist 31 49 1"
$ns_ at 166.546180198002 "$god_ set-dist 5 9 1"
$ns_ at 166.546180198002 "$god_ set-dist 9 44 2"
$ns_ at 166.842148475680 "$god_ set-dist 13 25 2"
$ns_ at 166.874546041853 "$god_ set-dist 19 49 1"
$ns_ at 166.876017234374 "$god_ set-dist 13 31 2"
$ns_ at 166.913149666332 "$god_ set-dist 21 37 2"
$ns_ at 166.965683484304 "$god_ set-dist 17 47 2"
$ns_ at 166.965683484304 "$god_ set-dist 41 47 1"
$ns_ at 167.112424166434 "$god_ set-dist 14 20 1"
$ns_ at 167.158421645414 "$god_ set-dist 18 39 1"
$ns_ at 167.178562769050 "$god_ set-dist 13 22 2"
$ns_ at 167.241357280619 "$god_ set-dist 11 38 2"
$ns_ at 167.251012573063 "$god_ set-dist 15 35 2"
$ns_ at 167.283282281249 "$god_ set-dist 22 37 2"
$ns_ at 167.286184878735 "$god_ set-dist 13 39 2"
$ns_ at 167.353282140067 "$god_ set-dist 13 21 2"
$ns_ at 167.366451167135 "$god_ set-dist 25 37 2"
$ns_ at 167.554397952363 "$god_ set-dist 3 7 3"
$ns_ at 167.554397952363 "$god_ set-dist 3 16 2"
$ns_ at 167.554397952363 "$god_ set-dist 7 20 2"
$ns_ at 167.554397952363 "$god_ set-dist 16 20 1"
$ns_ at 167.667607686264 "$god_ set-dist 6 34 1"
$ns_ at 167.694948357996 "$god_ set-dist 15 45 3"
$ns_ at 167.694948357996 "$god_ set-dist 15 48 2"
$ns_ at 167.765842530307 "$god_ set-dist 17 49 2"
$ns_ at 167.862094605772 "$god_ set-dist 3 29 1"
$ns_ at 167.862094605772 "$god_ set-dist 3 36 2"
$ns_ at 167.891115305973 "$god_ set-dist 17 30 1"
$ns_ at 167.898506496968 "$god_ set-dist 14 28 2"
$ns_ at 167.941869405674 "$god_ set-dist 5 43 2"
$ns_ at 167.941869405674 "$god_ set-dist 26 43 3"
$ns_ at 167.941869405674 "$god_ set-dist 43 46 3"
$ns_ at 168.005920053379 "$god_ set-dist 14 33 1"
$ns_ at 168.305531299998 "$god_ set-dist 3 12 2"
$ns_ at 168.305531299998 "$god_ set-dist 3 19 2"
$ns_ at 168.305531299998 "$god_ set-dist 3 24 1"
$ns_ at 168.305531299998 "$god_ set-dist 3 27 2"
$ns_ at 168.377337283067 "$god_ set-dist 8 42 2"
$ns_ at 168.471329678698 "$god_ set-dist 23 30 2"
$ns_ at 168.479430370352 "$god_ set-dist 6 29 2"
$ns_ at 168.713677426146 "$god_ set-dist 39 46 1"
$ns_ at 168.818701432949 "$god_ set-dist 5 44 2"
$ns_ at 168.818701432949 "$god_ set-dist 9 44 3"
$ns_ at 168.818701432949 "$god_ set-dist 23 44 3"
$ns_ at 168.926067911095 "$god_ set-dist 4 36 3"
$ns_ at 168.926067911095 "$god_ set-dist 29 36 2"
$ns_ at 168.926067911095 "$god_ set-dist 32 36 3"
$ns_ at 169.016073139815 "$god_ set-dist 0 37 2"
$ns_ at 169.196188330069 "$god_ set-dist 14 44 2"
$ns_ at 169.196188330069 "$god_ set-dist 21 44 3"
$ns_ at 169.196188330069 "$god_ set-dist 39 44 3"
$ns_ at 169.256935443077 "$god_ set-dist 13 15 2"
$ns_ at 169.263600478150 "$god_ set-dist 34 37 2"
$ns_ at 169.325671408773 "$god_ set-dist 18 21 2"
$ns_ at 169.360326718932 "$god_ set-dist 18 23 3"
$ns_ at 169.360326718932 "$god_ set-dist 23 49 2"
$ns_ at 169.378492546588 "$god_ set-dist 7 22 1"
$ns_ at 169.378492546588 "$god_ set-dist 7 31 2"
$ns_ at 169.378492546588 "$god_ set-dist 7 40 2"
$ns_ at 169.378492546588 "$god_ set-dist 7 47 2"
$ns_ at 169.488434590006 "$god_ set-dist 6 28 2"
$ns_ at 169.517180734440 "$god_ set-dist 1 28 2"
$ns_ at 169.530754878184 "$god_ set-dist 1 22 2"
$ns_ at 169.599716907141 "$god_ set-dist 8 33 2"
$ns_ at 169.610676720530 "$god_ set-dist 15 31 2"
$ns_ at 169.689606243007 "$god_ set-dist 0 13 2"
$ns_ at 169.744784890747 "$god_ set-dist 15 42 2"
$ns_ at 169.785181982949 "$god_ set-dist 14 21 2"
$ns_ at 169.790261197619 "$god_ set-dist 45 49 1"
$ns_ at 169.847549662428 "$god_ set-dist 4 23 2"
$ns_ at 169.865662287769 "$god_ set-dist 0 44 3"
$ns_ at 169.865662287769 "$god_ set-dist 6 44 3"
$ns_ at 169.865662287769 "$god_ set-dist 10 44 2"
$ns_ at 169.865662287769 "$god_ set-dist 12 44 3"
$ns_ at 169.986591884887 "$god_ set-dist 7 40 3"
$ns_ at 169.986591884887 "$god_ set-dist 22 40 2"
$ns_ at 170.132070321379 "$god_ set-dist 7 25 1"
$ns_ at 170.132070321379 "$god_ set-dist 7 40 2"
$ns_ at 170.211132532581 "$god_ set-dist 0 10 2"
$ns_ at 170.240819255965 "$god_ set-dist 13 23 2"
$ns_ at 170.285390352937 "$god_ set-dist 11 28 2"
$ns_ at 170.498017412122 "$god_ set-dist 8 37 2"
$ns_ at 170.522279534344 "$god_ set-dist 22 31 2"
$ns_ at 170.551963438483 "$god_ set-dist 10 39 1"
$ns_ at 170.732735294012 "$god_ set-dist 28 49 2"
$ns_ at 170.754134644949 "$god_ set-dist 3 40 2"
$ns_ at 170.754134644949 "$god_ set-dist 23 40 1"
$ns_ at 170.754134644949 "$god_ set-dist 32 40 2"
$ns_ at 170.754134644949 "$god_ set-dist 40 43 2"
$ns_ at 170.826478461122 "$god_ set-dist 15 38 2"
$ns_ at 170.892126252095 "$god_ set-dist 7 40 3"
$ns_ at 170.892126252095 "$god_ set-dist 25 40 2"
$ns_ at 170.912274527215 "$god_ set-dist 28 45 3"
$ns_ at 170.912274527215 "$god_ set-dist 28 48 2"
$ns_ at 170.918927032956 "$god_ set-dist 6 15 2"
$ns_ at 171.082535292680 "$god_ set-dist 31 37 2"
$ns_ at 171.093726576121 "$god_ set-dist 26 43 2"
$ns_ at 171.093726576121 "$god_ set-dist 37 43 1"
$ns_ at 171.093726576121 "$god_ set-dist 43 46 2"
$ns_ at 171.103399456634 "$god_ set-dist 12 13 2"
$ns_ at 171.113805900143 "$god_ set-dist 4 36 2"
$ns_ at 171.113805900143 "$god_ set-dist 20 36 1"
$ns_ at 171.113805900143 "$god_ set-dist 32 36 2"
$ns_ at 171.142512323359 "$god_ set-dist 11 34 2"
$ns_ at 171.142512323359 "$god_ set-dist 34 44 3"
$ns_ at 171.165760348578 "$god_ set-dist 10 18 2"
$ns_ at 171.219798366524 "$god_ set-dist 18 49 2"
$ns_ at 171.246999137361 "$god_ set-dist 22 47 2"
$ns_ at 171.268279097280 "$god_ set-dist 11 40 3"
$ns_ at 171.268279097280 "$god_ set-dist 11 48 2"
$ns_ at 171.476905470239 "$god_ set-dist 7 16 2"
$ns_ at 171.476905470239 "$god_ set-dist 7 29 3"
$ns_ at 171.663905471808 "$god_ set-dist 23 35 2"
$ns_ at 171.801798282522 "$god_ set-dist 18 28 3"
$ns_ at 171.801798282522 "$god_ set-dist 18 30 2"
$ns_ at 171.801798282522 "$god_ set-dist 18 31 3"
$ns_ at 171.875364202144 "$god_ set-dist 6 44 2"
$ns_ at 171.875364202144 "$god_ set-dist 13 44 1"
$ns_ at 171.875364202144 "$god_ set-dist 34 44 2"
$ns_ at 171.889514598394 "$god_ set-dist 14 25 1"
$ns_ at 171.900322177292 "$node_(15) setdest 198.067772932839 542.693076205943 0.000000000000"
$ns_ at 171.917770568190 "$god_ set-dist 31 35 2"
$ns_ at 171.922963190048 "$god_ set-dist 37 46 2"
$ns_ at 171.922963190048 "$god_ set-dist 43 46 3"
$ns_ at 171.924172223439 "$god_ set-dist 20 31 2"
$ns_ at 171.935498654958 "$god_ set-dist 3 26 2"
$ns_ at 171.935498654958 "$god_ set-dist 24 26 1"
$ns_ at 172.012135741361 "$god_ set-dist 28 38 2"
$ns_ at 172.135345403166 "$god_ set-dist 8 11 2"
$ns_ at 172.219028243713 "$god_ set-dist 12 37 2"
$ns_ at 172.224870498956 "$god_ set-dist 22 41 2"
$ns_ at 172.228262920329 "$god_ set-dist 6 8 2"
$ns_ at 172.319586942417 "$god_ set-dist 7 31 3"
$ns_ at 172.319586942417 "$god_ set-dist 25 31 2"
$ns_ at 172.332466780964 "$god_ set-dist 7 47 3"
$ns_ at 172.332466780964 "$god_ set-dist 25 47 2"
$ns_ at 172.338385255798 "$god_ set-dist 4 40 2"
$ns_ at 172.338385255798 "$god_ set-dist 9 40 1"
$ns_ at 172.414419030434 "$god_ set-dist 2 8 2"
$ns_ at 172.711000686634 "$god_ set-dist 15 42 1"
$ns_ at 172.806421246169 "$god_ set-dist 28 30 2"
$ns_ at 172.900322177292 "$node_(15) setdest 661.793536102179 232.266504299229 1.749924678352"
$ns_ at 172.969989633510 "$god_ set-dist 3 37 1"
$ns_ at 173.001023189597 "$god_ set-dist 16 29 2"
$ns_ at 173.049032594633 "$god_ set-dist 25 46 1"
$ns_ at 173.180872810324 "$god_ set-dist 8 13 2"
$ns_ at 173.180872810324 "$god_ set-dist 8 44 3"
$ns_ at 173.301875902028 "$god_ set-dist 15 22 3"
$ns_ at 173.301875902028 "$god_ set-dist 22 33 2"
$ns_ at 173.330558495929 "$god_ set-dist 13 34 2"
$ns_ at 173.330558495929 "$god_ set-dist 34 44 3"
$ns_ at 173.337382588715 "$god_ set-dist 0 14 2"
$ns_ at 173.490106569971 "$god_ set-dist 22 28 3"
$ns_ at 173.490106569971 "$god_ set-dist 28 35 2"
$ns_ at 173.498558503262 "$god_ set-dist 16 45 2"
$ns_ at 173.577929810135 "$god_ set-dist 46 47 2"
$ns_ at 173.577929810135 "$god_ set-dist 47 49 1"
$ns_ at 173.584003249039 "$god_ set-dist 19 23 1"
$ns_ at 173.584003249039 "$god_ set-dist 19 32 2"
$ns_ at 173.635078487508 "$god_ set-dist 1 21 2"
$ns_ at 173.700906135424 "$god_ set-dist 5 12 1"
$ns_ at 173.713475142118 "$god_ set-dist 6 13 2"
$ns_ at 173.713475142118 "$god_ set-dist 6 44 3"
$ns_ at 173.849578956891 "$god_ set-dist 29 49 2"
$ns_ at 174.066053347913 "$god_ set-dist 29 38 2"
$ns_ at 174.136968750057 "$god_ set-dist 0 33 2"
$ns_ at 174.148958017712 "$god_ set-dist 3 21 2"
$ns_ at 174.148958017712 "$god_ set-dist 3 25 2"
$ns_ at 174.148958017712 "$god_ set-dist 3 33 1"
$ns_ at 174.148958017712 "$god_ set-dist 3 39 2"
$ns_ at 174.251409214632 "$god_ set-dist 29 45 3"
$ns_ at 174.251409214632 "$god_ set-dist 29 48 2"
$ns_ at 174.272407078383 "$god_ set-dist 0 18 2"
$ns_ at 174.648197248517 "$god_ set-dist 5 39 1"
$ns_ at 175.005576196899 "$god_ set-dist 18 25 1"
$ns_ at 175.098043472591 "$god_ set-dist 0 1 2"
$ns_ at 175.114602918061 "$god_ set-dist 0 15 3"
$ns_ at 175.114602918061 "$god_ set-dist 0 28 3"
$ns_ at 175.114602918061 "$god_ set-dist 0 41 2"
$ns_ at 175.252969737749 "$god_ set-dist 4 19 2"
$ns_ at 175.252969737749 "$god_ set-dist 9 19 1"
$ns_ at 175.336449385780 "$node_(25) setdest 542.679756597474 255.022271798139 0.000000000000"
$ns_ at 175.567181236580 "$god_ set-dist 0 15 2"
$ns_ at 175.567181236580 "$god_ set-dist 6 15 1"
$ns_ at 175.567181236580 "$god_ set-dist 15 22 2"
$ns_ at 175.638969848344 "$god_ set-dist 5 34 1"
$ns_ at 175.668145331070 "$god_ set-dist 28 33 2"
$ns_ at 175.893889621269 "$god_ set-dist 3 8 2"
$ns_ at 175.893889621269 "$god_ set-dist 3 34 2"
$ns_ at 175.893889621269 "$god_ set-dist 3 41 1"
$ns_ at 175.905273568889 "$god_ set-dist 13 33 2"
$ns_ at 175.931105505219 "$god_ set-dist 0 46 2"
$ns_ at 176.034012212248 "$god_ set-dist 4 9 2"
$ns_ at 176.034012212248 "$god_ set-dist 4 19 3"
$ns_ at 176.034012212248 "$god_ set-dist 4 31 3"
$ns_ at 176.034012212248 "$god_ set-dist 4 40 3"
$ns_ at 176.034012212248 "$god_ set-dist 4 47 3"
$ns_ at 176.194174395144 "$god_ set-dist 26 37 2"
$ns_ at 176.201524996858 "$god_ set-dist 22 35 2"
$ns_ at 176.263824142674 "$god_ set-dist 1 29 2"
$ns_ at 176.264845456134 "$god_ set-dist 45 48 2"
$ns_ at 176.336449385780 "$node_(25) setdest 416.865609390206 56.874218210540 2.782064105540"
$ns_ at 176.349524992005 "$god_ set-dist 9 30 1"
$ns_ at 176.395764576280 "$god_ set-dist 16 17 1"
$ns_ at 176.541063257040 "$god_ set-dist 11 40 2"
$ns_ at 176.541063257040 "$god_ set-dist 40 46 2"
$ns_ at 176.541063257040 "$god_ set-dist 40 49 1"
$ns_ at 176.580823594381 "$god_ set-dist 42 43 1"
$ns_ at 176.580823594381 "$god_ set-dist 43 46 2"
$ns_ at 176.590249966217 "$god_ set-dist 42 46 2"
$ns_ at 176.590249966217 "$god_ set-dist 43 46 3"
$ns_ at 176.628347436943 "$god_ set-dist 22 29 3"
$ns_ at 176.628347436943 "$god_ set-dist 22 30 2"
$ns_ at 176.711229904264 "$god_ set-dist 5 23 2"
$ns_ at 176.711229904264 "$god_ set-dist 23 46 3"
$ns_ at 176.756999044089 "$god_ set-dist 17 40 2"
$ns_ at 176.756999044089 "$god_ set-dist 40 41 1"
$ns_ at 176.760282323249 "$god_ set-dist 3 42 1"
$ns_ at 176.760282323249 "$god_ set-dist 3 44 2"
$ns_ at 176.774810814786 "$god_ set-dist 6 22 2"
$ns_ at 176.774810814786 "$god_ set-dist 15 22 3"
$ns_ at 176.813574333741 "$god_ set-dist 16 22 2"
$ns_ at 176.813574333741 "$god_ set-dist 17 22 3"
$ns_ at 176.823595728708 "$god_ set-dist 3 44 3"
$ns_ at 176.823595728708 "$god_ set-dist 42 44 2"
$ns_ at 176.833332328943 "$god_ set-dist 36 45 2"
$ns_ at 176.840979755882 "$god_ set-dist 2 28 2"
$ns_ at 176.870214235776 "$god_ set-dist 14 29 2"
$ns_ at 176.870861379185 "$god_ set-dist 3 17 1"
$ns_ at 176.870861379185 "$god_ set-dist 3 44 2"
$ns_ at 176.873915375477 "$god_ set-dist 13 38 2"
$ns_ at 176.940235620135 "$god_ set-dist 8 19 2"
$ns_ at 176.964068591652 "$god_ set-dist 3 8 3"
$ns_ at 176.964068591652 "$god_ set-dist 8 15 3"
$ns_ at 176.964068591652 "$god_ set-dist 8 41 2"
$ns_ at 177.104324721444 "$god_ set-dist 11 49 2"
$ns_ at 177.119293582618 "$god_ set-dist 11 29 2"
$ns_ at 177.119293582618 "$god_ set-dist 18 29 3"
$ns_ at 177.176723037230 "$god_ set-dist 19 36 1"
$ns_ at 177.323018812876 "$god_ set-dist 8 10 2"
$ns_ at 177.323018812876 "$god_ set-dist 8 28 3"
$ns_ at 177.338952779933 "$god_ set-dist 13 28 2"
$ns_ at 177.390600217133 "$god_ set-dist 9 49 1"
$ns_ at 177.475260011599 "$god_ set-dist 1 4 3"
$ns_ at 177.475260011599 "$god_ set-dist 4 7 4"
$ns_ at 177.475260011599 "$god_ set-dist 4 11 3"
$ns_ at 177.475260011599 "$god_ set-dist 4 14 3"
$ns_ at 177.475260011599 "$god_ set-dist 4 16 3"
$ns_ at 177.475260011599 "$god_ set-dist 4 18 4"
$ns_ at 177.475260011599 "$god_ set-dist 4 20 2"
$ns_ at 177.475260011599 "$god_ set-dist 4 22 4"
$ns_ at 177.475260011599 "$god_ set-dist 4 36 3"
$ns_ at 177.475260011599 "$god_ set-dist 4 38 3"
$ns_ at 177.475260011599 "$god_ set-dist 4 45 4"
$ns_ at 177.475260011599 "$god_ set-dist 4 48 3"
$ns_ at 177.475260011599 "$god_ set-dist 4 49 3"
$ns_ at 177.531228972042 "$god_ set-dist 10 28 2"
$ns_ at 177.796484202589 "$god_ set-dist 27 32 2"
$ns_ at 177.796484202589 "$god_ set-dist 32 37 1"
$ns_ at 177.796830208077 "$god_ set-dist 5 19 1"
$ns_ at 177.898163210682 "$god_ set-dist 20 27 1"
$ns_ at 178.002269735380 "$god_ set-dist 9 42 1"
$ns_ at 178.143549833276 "$node_(21) setdest 576.996825846225 276.205556746748 0.000000000000"
$ns_ at 178.166610268663 "$god_ set-dist 24 39 1"
$ns_ at 178.166610268663 "$god_ set-dist 39 43 2"
$ns_ at 178.214807192011 "$god_ set-dist 29 33 2"
$ns_ at 178.297551925811 "$god_ set-dist 6 26 1"
$ns_ at 178.407137234586 "$god_ set-dist 26 42 2"
$ns_ at 178.448323489172 "$god_ set-dist 11 18 2"
$ns_ at 178.448323489172 "$god_ set-dist 18 44 3"
$ns_ at 178.460566214454 "$god_ set-dist 8 38 2"
$ns_ at 178.608831990026 "$god_ set-dist 2 39 1"
$ns_ at 178.608831990026 "$god_ set-dist 39 44 2"
$ns_ at 178.715423126192 "$god_ set-dist 22 36 2"
$ns_ at 178.733630512232 "$god_ set-dist 0 6 2"
$ns_ at 178.733630512232 "$god_ set-dist 0 15 3"
$ns_ at 178.787710845912 "$god_ set-dist 22 38 2"
$ns_ at 178.927472440000 "$god_ set-dist 4 35 3"
$ns_ at 178.927472440000 "$god_ set-dist 29 35 2"
$ns_ at 179.018953576342 "$god_ set-dist 13 48 2"
$ns_ at 179.022767913237 "$god_ set-dist 3 5 1"
$ns_ at 179.022767913237 "$god_ set-dist 3 46 2"
$ns_ at 179.143549833276 "$node_(21) setdest 67.469853182260 616.519317702860 7.474744132428"
$ns_ at 179.153375704974 "$god_ set-dist 5 25 1"
$ns_ at 179.211123142672 "$god_ set-dist 3 6 1"
$ns_ at 179.243779637637 "$god_ set-dist 21 28 3"
$ns_ at 179.243779637637 "$god_ set-dist 28 41 2"
$ns_ at 179.312037555886 "$god_ set-dist 7 47 2"
$ns_ at 179.312037555886 "$god_ set-dist 21 47 1"
$ns_ at 179.373083931936 "$god_ set-dist 13 49 2"
$ns_ at 179.384082532832 "$god_ set-dist 0 16 2"
$ns_ at 179.473227905889 "$god_ set-dist 11 40 3"
$ns_ at 179.473227905889 "$god_ set-dist 11 41 2"
$ns_ at 179.473227905889 "$god_ set-dist 11 47 3"
$ns_ at 179.806147001824 "$god_ set-dist 0 4 4"
$ns_ at 179.806147001824 "$god_ set-dist 0 29 3"
$ns_ at 179.806147001824 "$god_ set-dist 0 30 2"
$ns_ at 179.894052868682 "$god_ set-dist 22 48 2"
$ns_ at 179.964367599306 "$god_ set-dist 5 28 2"
$ns_ at 179.964367599306 "$god_ set-dist 25 28 3"
$ns_ at 179.964367599306 "$god_ set-dist 28 34 3"
$ns_ at 179.964367599306 "$god_ set-dist 28 46 3"
$ns_ at 179.989235660532 "$node_(0) setdest 598.009855080407 241.349488725116 0.000000000000"
$ns_ at 180.105391203568 "$god_ set-dist 27 37 2"
$ns_ at 180.197166829054 "$god_ set-dist 11 47 2"
$ns_ at 180.197166829054 "$god_ set-dist 30 47 1"
$ns_ at 180.333276297992 "$god_ set-dist 0 4 3"
$ns_ at 180.333276297992 "$god_ set-dist 1 4 2"
$ns_ at 180.333276297992 "$god_ set-dist 4 7 3"
$ns_ at 180.333276297992 "$god_ set-dist 4 11 2"
$ns_ at 180.333276297992 "$god_ set-dist 4 14 2"
$ns_ at 180.333276297992 "$god_ set-dist 4 16 2"
$ns_ at 180.333276297992 "$god_ set-dist 4 18 3"
$ns_ at 180.333276297992 "$god_ set-dist 4 22 3"
$ns_ at 180.333276297992 "$god_ set-dist 4 35 2"
$ns_ at 180.333276297992 "$god_ set-dist 4 36 2"
$ns_ at 180.333276297992 "$god_ set-dist 4 37 1"
$ns_ at 180.333276297992 "$god_ set-dist 4 38 2"
$ns_ at 180.333276297992 "$god_ set-dist 4 45 3"
$ns_ at 180.333276297992 "$god_ set-dist 4 48 2"
$ns_ at 180.333276297992 "$god_ set-dist 4 49 2"
$ns_ at 180.388500448221 "$god_ set-dist 42 49 2"
$ns_ at 180.511433200734 "$god_ set-dist 6 14 1"
$ns_ at 180.948528768948 "$god_ set-dist 4 22 4"
$ns_ at 180.948528768948 "$god_ set-dist 4 45 4"
$ns_ at 180.948528768948 "$god_ set-dist 4 49 3"
$ns_ at 180.948528768948 "$god_ set-dist 22 37 3"
$ns_ at 180.948528768948 "$god_ set-dist 37 45 3"
$ns_ at 180.948528768948 "$god_ set-dist 37 49 2"
$ns_ at 180.989235660532 "$node_(0) setdest 397.893539499924 358.843830253351 7.412273099588"
$ns_ at 181.012431692801 "$god_ set-dist 0 3 2"
$ns_ at 181.012431692801 "$god_ set-dist 3 38 1"
$ns_ at 181.018309343905 "$god_ set-dist 0 15 2"
$ns_ at 181.018309343905 "$god_ set-dist 15 38 1"
$ns_ at 181.116710692641 "$god_ set-dist 1 6 2"
$ns_ at 181.181966718386 "$god_ set-dist 4 7 4"
$ns_ at 181.181966718386 "$god_ set-dist 7 36 2"
$ns_ at 181.181966718386 "$god_ set-dist 7 37 3"
$ns_ at 181.393188249177 "$god_ set-dist 0 29 2"
$ns_ at 181.393188249177 "$god_ set-dist 0 30 1"
$ns_ at 181.525548696820 "$node_(37) setdest 193.532294620461 377.875346212665 0.000000000000"
$ns_ at 181.731692206712 "$god_ set-dist 5 21 1"
$ns_ at 181.738808173748 "$god_ set-dist 3 8 2"
$ns_ at 181.738808173748 "$god_ set-dist 3 48 1"
$ns_ at 181.827450115168 "$god_ set-dist 0 6 1"
$ns_ at 181.902588762469 "$god_ set-dist 2 44 2"
$ns_ at 181.902588762469 "$god_ set-dist 33 44 3"
$ns_ at 181.902588762469 "$god_ set-dist 38 44 3"
$ns_ at 181.902588762469 "$god_ set-dist 39 44 3"
$ns_ at 181.902588762469 "$god_ set-dist 44 48 3"
$ns_ at 181.902588762469 "$god_ set-dist 44 49 3"
$ns_ at 182.006210333681 "$god_ set-dist 12 46 1"
$ns_ at 182.031458284360 "$god_ set-dist 24 31 2"
$ns_ at 182.110174884635 "$god_ set-dist 22 27 2"
$ns_ at 182.110174884635 "$god_ set-dist 22 42 3"
$ns_ at 182.153399515840 "$god_ set-dist 3 8 3"
$ns_ at 182.153399515840 "$god_ set-dist 8 23 3"
$ns_ at 182.153399515840 "$god_ set-dist 8 48 2"
$ns_ at 182.180444112049 "$god_ set-dist 3 8 2"
$ns_ at 182.180444112049 "$god_ set-dist 3 30 1"
$ns_ at 182.382532973152 "$god_ set-dist 7 31 2"
$ns_ at 182.382532973152 "$god_ set-dist 21 31 1"
$ns_ at 182.455305453222 "$god_ set-dist 0 29 3"
$ns_ at 182.455305453222 "$god_ set-dist 8 29 3"
$ns_ at 182.455305453222 "$god_ set-dist 29 30 2"
$ns_ at 182.472145341701 "$god_ set-dist 26 33 1"
$ns_ at 182.525548696820 "$node_(37) setdest 0.482760148685 653.431968121754 3.084775910627"
$ns_ at 182.673623527096 "$god_ set-dist 3 10 1"
$ns_ at 182.751055497476 "$god_ set-dist 23 29 2"
$ns_ at 183.033751354220 "$god_ set-dist 23 37 2"
$ns_ at 183.080203388368 "$god_ set-dist 7 40 2"
$ns_ at 183.080203388368 "$god_ set-dist 21 40 1"
$ns_ at 183.092897170967 "$god_ set-dist 32 42 1"
$ns_ at 183.239178817519 "$god_ set-dist 0 46 1"
$ns_ at 183.256753330057 "$god_ set-dist 19 20 1"
$ns_ at 183.269276627371 "$god_ set-dist 19 22 2"
$ns_ at 183.269276627371 "$god_ set-dist 22 23 3"
$ns_ at 183.450551841652 "$god_ set-dist 38 42 2"
$ns_ at 183.498574052655 "$god_ set-dist 15 48 1"
$ns_ at 183.519568790604 "$god_ set-dist 11 24 2"
$ns_ at 183.530531696381 "$god_ set-dist 46 49 2"
$ns_ at 183.530725073950 "$node_(2) setdest 244.682220775613 240.647355167814 0.000000000000"
$ns_ at 183.848826464835 "$god_ set-dist 21 46 1"
$ns_ at 183.868550107048 "$god_ set-dist 5 15 2"
$ns_ at 183.868550107048 "$god_ set-dist 15 46 3"
$ns_ at 183.937744788798 "$god_ set-dist 19 27 2"
$ns_ at 184.126482147555 "$god_ set-dist 13 40 3"
$ns_ at 184.126482147555 "$god_ set-dist 13 41 2"
$ns_ at 184.176970996215 "$god_ set-dist 19 26 1"
$ns_ at 184.232021715049 "$god_ set-dist 0 29 2"
$ns_ at 184.232021715049 "$god_ set-dist 0 41 1"
$ns_ at 184.314775031108 "$god_ set-dist 3 8 3"
$ns_ at 184.314775031108 "$god_ set-dist 8 30 2"
$ns_ at 184.416656661714 "$god_ set-dist 2 49 2"
$ns_ at 184.465438127369 "$god_ set-dist 1 33 2"
$ns_ at 184.484690938750 "$god_ set-dist 0 33 1"
$ns_ at 184.530725073950 "$node_(2) setdest 143.460709515453 256.918236571130 4.852727579271"
$ns_ at 184.554551195047 "$god_ set-dist 2 33 2"
$ns_ at 184.583556854356 "$node_(44) setdest 26.597312992028 102.035576233966 0.000000000000"
$ns_ at 184.713700042930 "$god_ set-dist 0 5 1"
$ns_ at 184.737197516248 "$god_ set-dist 15 30 1"
$ns_ at 184.737197516248 "$god_ set-dist 15 46 2"
$ns_ at 184.942951204918 "$god_ set-dist 13 29 2"
$ns_ at 185.122015759141 "$node_(18) setdest 432.716742170761 13.633867708465 0.000000000000"
$ns_ at 185.228322695682 "$god_ set-dist 5 29 2"
$ns_ at 185.417041237340 "$god_ set-dist 20 39 1"
$ns_ at 185.417041237340 "$god_ set-dist 32 39 2"
$ns_ at 185.432695128307 "$node_(23) setdest 329.509644722102 602.282770782434 0.000000000000"
$ns_ at 185.464423691941 "$god_ set-dist 8 14 2"
$ns_ at 185.507996341916 "$god_ set-dist 16 18 2"
$ns_ at 185.511422525363 "$god_ set-dist 11 30 2"
$ns_ at 185.511422525363 "$god_ set-dist 11 31 3"
$ns_ at 185.511422525363 "$god_ set-dist 11 47 3"
$ns_ at 185.531264060188 "$god_ set-dist 7 42 3"
$ns_ at 185.531264060188 "$god_ set-dist 27 42 2"
$ns_ at 185.531264060188 "$god_ set-dist 42 45 3"
$ns_ at 185.583556854356 "$node_(44) setdest 659.355743871069 664.037783583593 5.597398531218"
$ns_ at 185.586951035445 "$god_ set-dist 20 26 1"
$ns_ at 185.586951035445 "$god_ set-dist 26 32 2"
$ns_ at 185.655889728615 "$god_ set-dist 13 31 3"
$ns_ at 185.655889728615 "$god_ set-dist 30 31 2"
$ns_ at 185.803184725557 "$god_ set-dist 2 3 1"
$ns_ at 185.813996068733 "$node_(22) setdest 654.135274773030 210.325586436717 0.000000000000"
$ns_ at 185.834089115746 "$god_ set-dist 13 22 3"
$ns_ at 185.834089115746 "$god_ set-dist 13 26 2"
$ns_ at 185.938497921566 "$god_ set-dist 13 45 3"
$ns_ at 185.938497921566 "$god_ set-dist 27 45 2"
$ns_ at 186.022730942161 "$god_ set-dist 0 29 3"
$ns_ at 186.022730942161 "$god_ set-dist 21 29 3"
$ns_ at 186.022730942161 "$god_ set-dist 25 29 3"
$ns_ at 186.022730942161 "$god_ set-dist 29 41 2"
$ns_ at 186.088845389556 "$god_ set-dist 2 44 1"
$ns_ at 186.088845389556 "$god_ set-dist 38 44 2"
$ns_ at 186.088845389556 "$god_ set-dist 39 44 2"
$ns_ at 186.088845389556 "$god_ set-dist 44 48 2"
$ns_ at 186.094315470721 "$god_ set-dist 5 47 1"
$ns_ at 186.094315470721 "$god_ set-dist 11 47 2"
$ns_ at 186.122015759141 "$node_(18) setdest 510.935858524092 537.305614997067 9.726107673028"
$ns_ at 186.207703910290 "$god_ set-dist 23 28 2"
$ns_ at 186.222485839857 "$god_ set-dist 16 18 1"
$ns_ at 186.314382394622 "$god_ set-dist 4 11 3"
$ns_ at 186.314382394622 "$god_ set-dist 11 37 2"
$ns_ at 186.406215283543 "$node_(8) setdest 540.143613540538 138.666894694958 0.000000000000"
$ns_ at 186.426107831334 "$god_ set-dist 14 21 1"
$ns_ at 186.431006978544 "$god_ set-dist 4 11 2"
$ns_ at 186.431006978544 "$god_ set-dist 4 42 1"
$ns_ at 186.432695128307 "$node_(23) setdest 212.217364730596 121.761204564555 6.873112828379"
$ns_ at 186.435633118176 "$god_ set-dist 16 19 2"
$ns_ at 186.436831742725 "$god_ set-dist 17 36 1"
$ns_ at 186.676819946442 "$node_(11) setdest 182.261451406028 136.129781963535 0.000000000000"
$ns_ at 186.705521040444 "$god_ set-dist 13 30 2"
$ns_ at 186.710173265264 "$god_ set-dist 23 46 2"
$ns_ at 186.710173265264 "$god_ set-dist 41 46 1"
$ns_ at 186.714458296838 "$god_ set-dist 1 21 1"
$ns_ at 186.813996068733 "$node_(22) setdest 22.443042797538 488.573877143992 1.074572003798"
$ns_ at 186.833083740635 "$god_ set-dist 0 16 1"
$ns_ at 186.835390712851 "$god_ set-dist 19 45 2"
$ns_ at 186.835390712851 "$god_ set-dist 23 45 3"
$ns_ at 187.027739173274 "$god_ set-dist 0 47 1"
$ns_ at 187.215100403307 "$god_ set-dist 7 21 2"
$ns_ at 187.215100403307 "$god_ set-dist 7 31 3"
$ns_ at 187.215100403307 "$god_ set-dist 7 40 3"
$ns_ at 187.406215283543 "$node_(8) setdest 365.972056682731 131.958137186545 9.621599791872"
$ns_ at 187.408982111273 "$god_ set-dist 33 42 2"
$ns_ at 187.464799324610 "$god_ set-dist 23 37 1"
$ns_ at 187.492247730033 "$god_ set-dist 2 38 2"
$ns_ at 187.492247730033 "$god_ set-dist 38 44 3"
$ns_ at 187.518076236453 "$god_ set-dist 12 32 2"
$ns_ at 187.518076236453 "$god_ set-dist 24 32 1"
$ns_ at 187.549952799021 "$god_ set-dist 1 49 2"
$ns_ at 187.550186402522 "$god_ set-dist 18 35 1"
$ns_ at 187.676819946442 "$node_(11) setdest 625.286788989243 15.072182315638 1.440281944717"
$ns_ at 187.891595654551 "$god_ set-dist 3 8 2"
$ns_ at 187.891595654551 "$god_ set-dist 5 8 1"
$ns_ at 188.088906449161 "$god_ set-dist 24 47 1"
$ns_ at 188.165297514215 "$god_ set-dist 8 14 1"
$ns_ at 188.340598008226 "$god_ set-dist 30 40 1"
$ns_ at 188.380025884826 "$god_ set-dist 5 13 2"
$ns_ at 188.503986893462 "$god_ set-dist 27 33 2"
$ns_ at 188.599907807410 "$god_ set-dist 3 18 2"
$ns_ at 188.599907807410 "$god_ set-dist 3 35 1"
$ns_ at 188.600484442621 "$god_ set-dist 14 49 2"
$ns_ at 188.656457901460 "$god_ set-dist 3 16 1"
$ns_ at 188.691868413700 "$god_ set-dist 13 35 2"
$ns_ at 188.705230980743 "$god_ set-dist 18 45 1"
$ns_ at 188.731267623818 "$god_ set-dist 13 46 2"
$ns_ at 188.834450571444 "$god_ set-dist 10 19 1"
$ns_ at 188.855705505036 "$god_ set-dist 10 49 2"
$ns_ at 188.926898940247 "$god_ set-dist 12 28 3"
$ns_ at 188.926898940247 "$god_ set-dist 24 28 2"
$ns_ at 189.201391006361 "$god_ set-dist 23 30 1"
$ns_ at 189.204200006623 "$god_ set-dist 3 19 1"
$ns_ at 189.204200006623 "$god_ set-dist 4 19 2"
$ns_ at 189.275213095472 "$god_ set-dist 10 15 1"
$ns_ at 189.432782926237 "$god_ set-dist 9 28 2"
$ns_ at 189.432782926237 "$god_ set-dist 28 31 3"
$ns_ at 189.432782926237 "$god_ set-dist 28 40 3"
$ns_ at 189.432782926237 "$god_ set-dist 28 47 3"
$ns_ at 189.449435258026 "$god_ set-dist 10 34 2"
$ns_ at 189.449435258026 "$god_ set-dist 29 34 3"
$ns_ at 189.450356142845 "$god_ set-dist 7 28 4"
$ns_ at 189.450356142845 "$god_ set-dist 20 28 2"
$ns_ at 189.450356142845 "$god_ set-dist 22 28 4"
$ns_ at 189.450356142845 "$god_ set-dist 26 28 3"
$ns_ at 189.450356142845 "$god_ set-dist 27 28 3"
$ns_ at 189.450356142845 "$god_ set-dist 28 39 3"
$ns_ at 189.450356142845 "$god_ set-dist 28 45 4"
$ns_ at 189.450356142845 "$god_ set-dist 28 49 3"
$ns_ at 189.495301524011 "$god_ set-dist 42 48 2"
$ns_ at 189.530641580241 "$god_ set-dist 9 10 1"
$ns_ at 189.580293764707 "$god_ set-dist 0 18 1"
$ns_ at 189.580293764707 "$god_ set-dist 18 47 2"
$ns_ at 189.658266928107 "$god_ set-dist 13 24 2"
$ns_ at 189.658266928107 "$god_ set-dist 13 47 3"
$ns_ at 189.690541002663 "$god_ set-dist 3 14 1"
$ns_ at 189.832014622600 "$god_ set-dist 45 46 1"
$ns_ at 189.839358725767 "$god_ set-dist 16 49 2"
$ns_ at 189.872762375960 "$god_ set-dist 20 49 2"
$ns_ at 189.974258250879 "$god_ set-dist 10 21 1"
$ns_ at 189.974258250879 "$god_ set-dist 21 29 2"
$ns_ at 189.997112882703 "$god_ set-dist 7 13 3"
$ns_ at 189.997112882703 "$god_ set-dist 7 27 2"
$ns_ at 190.017390173005 "$god_ set-dist 21 24 1"
$ns_ at 190.017390173005 "$god_ set-dist 21 32 2"
$ns_ at 190.017390173005 "$god_ set-dist 21 43 2"
$ns_ at 190.120640029098 "$god_ set-dist 6 27 2"
$ns_ at 190.163319939387 "$god_ set-dist 27 49 2"
$ns_ at 190.221300700811 "$god_ set-dist 11 24 1"
$ns_ at 190.265689308324 "$god_ set-dist 0 14 1"
$ns_ at 190.893945787930 "$god_ set-dist 13 37 2"
$ns_ at 190.926883441685 "$god_ set-dist 0 1 1"
$ns_ at 191.168018821064 "$god_ set-dist 20 21 1"
$ns_ at 191.173234236310 "$god_ set-dist 5 18 1"
$ns_ at 191.173234236310 "$god_ set-dist 9 18 2"
$ns_ at 191.285540574612 "$god_ set-dist 37 38 2"
$ns_ at 191.349693335401 "$god_ set-dist 17 35 2"
$ns_ at 191.366549756329 "$god_ set-dist 24 49 2"
$ns_ at 191.447331065052 "$god_ set-dist 36 42 2"
$ns_ at 191.508980163791 "$god_ set-dist 17 28 2"
$ns_ at 191.508980163791 "$god_ set-dist 28 44 3"
$ns_ at 191.531495141091 "$god_ set-dist 12 20 1"
$ns_ at 191.655420543280 "$god_ set-dist 23 29 1"
$ns_ at 191.665506274459 "$god_ set-dist 13 20 2"
$ns_ at 191.665506274459 "$god_ set-dist 13 23 3"
$ns_ at 191.746351419311 "$god_ set-dist 35 42 2"
$ns_ at 191.750991174749 "$god_ set-dist 20 32 2"
$ns_ at 191.792421586576 "$god_ set-dist 8 49 2"
$ns_ at 191.842687275193 "$god_ set-dist 3 36 1"
$ns_ at 191.945860180369 "$god_ set-dist 13 36 2"
$ns_ at 191.945860180369 "$god_ set-dist 13 49 3"
$ns_ at 192.274539484359 "$god_ set-dist 18 22 1"
$ns_ at 192.292733504813 "$god_ set-dist 8 15 2"
$ns_ at 192.292733504813 "$god_ set-dist 8 23 2"
$ns_ at 192.292733504813 "$god_ set-dist 8 30 1"
$ns_ at 192.325729751355 "$god_ set-dist 3 45 2"
$ns_ at 192.325729751355 "$god_ set-dist 4 45 3"
$ns_ at 192.325729751355 "$god_ set-dist 28 45 3"
$ns_ at 192.325729751355 "$god_ set-dist 35 45 1"
$ns_ at 192.325729751355 "$god_ set-dist 37 45 2"
$ns_ at 192.366819096795 "$god_ set-dist 9 21 1"
$ns_ at 192.420498227236 "$god_ set-dist 12 18 1"
$ns_ at 192.420498227236 "$god_ set-dist 18 31 2"
$ns_ at 192.420498227236 "$god_ set-dist 18 40 2"
$ns_ at 192.452570303347 "$god_ set-dist 4 47 2"
$ns_ at 192.452570303347 "$god_ set-dist 15 47 1"
$ns_ at 192.452570303347 "$god_ set-dist 28 47 2"
$ns_ at 192.484373000939 "$god_ set-dist 5 11 2"
$ns_ at 192.507505540391 "$god_ set-dist 5 17 2"
$ns_ at 192.530735511719 "$god_ set-dist 0 44 2"
$ns_ at 192.530735511719 "$god_ set-dist 1 44 1"
$ns_ at 192.530735511719 "$god_ set-dist 8 44 2"
$ns_ at 192.530735511719 "$god_ set-dist 12 44 2"
$ns_ at 192.530735511719 "$god_ set-dist 18 44 2"
$ns_ at 192.530735511719 "$god_ set-dist 21 44 2"
$ns_ at 192.530735511719 "$god_ set-dist 25 44 2"
$ns_ at 192.530735511719 "$god_ set-dist 34 44 2"
$ns_ at 192.530735511719 "$god_ set-dist 38 44 2"
$ns_ at 192.607023911283 "$god_ set-dist 17 27 1"
$ns_ at 192.650156274996 "$god_ set-dist 4 11 3"
$ns_ at 192.650156274996 "$god_ set-dist 11 28 3"
$ns_ at 192.650156274996 "$god_ set-dist 11 42 2"
$ns_ at 192.662562133778 "$god_ set-dist 13 23 2"
$ns_ at 192.662562133778 "$god_ set-dist 23 42 1"
$ns_ at 192.843962596131 "$god_ set-dist 15 19 1"
$ns_ at 192.880437114519 "$god_ set-dist 6 44 2"
$ns_ at 192.880437114519 "$god_ set-dist 16 44 1"
$ns_ at 192.880437114519 "$god_ set-dist 33 44 2"
$ns_ at 193.189648344988 "$god_ set-dist 5 42 2"
$ns_ at 193.235980519623 "$god_ set-dist 10 29 2"
$ns_ at 193.258683009357 "$node_(30) setdest 352.037719048989 345.949151052028 0.000000000000"
$ns_ at 193.286331811159 "$god_ set-dist 3 47 1"
$ns_ at 193.375310518246 "$god_ set-dist 36 37 2"
$ns_ at 193.403772634510 "$god_ set-dist 1 3 1"
$ns_ at 193.540322347304 "$god_ set-dist 14 44 1"
$ns_ at 193.571268742376 "$node_(28) setdest 52.474936420281 563.501910182739 0.000000000000"
$ns_ at 193.685761979675 "$god_ set-dist 4 13 3"
$ns_ at 193.685761979675 "$god_ set-dist 13 23 3"
$ns_ at 193.685761979675 "$god_ set-dist 13 28 3"
$ns_ at 193.685761979675 "$god_ set-dist 13 32 3"
$ns_ at 193.685761979675 "$god_ set-dist 13 42 2"
$ns_ at 193.687865490636 "$god_ set-dist 39 47 1"
$ns_ at 193.807223087590 "$god_ set-dist 9 44 2"
$ns_ at 193.807223087590 "$god_ set-dist 10 44 1"
$ns_ at 193.807223087590 "$god_ set-dist 19 44 2"
$ns_ at 193.862283132540 "$god_ set-dist 9 29 2"
$ns_ at 193.862283132540 "$god_ set-dist 29 49 3"
$ns_ at 193.882762696035 "$god_ set-dist 1 42 2"
$ns_ at 193.991574003153 "$god_ set-dist 0 40 1"
$ns_ at 193.991574003153 "$god_ set-dist 7 40 2"
$ns_ at 193.995408251416 "$god_ set-dist 35 37 2"
$ns_ at 193.995408251416 "$god_ set-dist 37 45 3"
$ns_ at 194.014180627535 "$god_ set-dist 4 40 2"
$ns_ at 194.014180627535 "$god_ set-dist 15 40 1"
$ns_ at 194.014180627535 "$god_ set-dist 28 40 2"
$ns_ at 194.032871927878 "$god_ set-dist 1 37 2"
$ns_ at 194.042723130876 "$god_ set-dist 5 45 1"
$ns_ at 194.042723130876 "$god_ set-dist 37 45 2"
$ns_ at 194.182920406426 "$god_ set-dist 36 49 2"
$ns_ at 194.258683009357 "$node_(30) setdest 547.491596350039 61.793208397689 7.745975745181"
$ns_ at 194.267197255383 "$god_ set-dist 18 21 1"
$ns_ at 194.371434588239 "$god_ set-dist 2 29 2"
$ns_ at 194.371434588239 "$god_ set-dist 29 46 3"
$ns_ at 194.571268742376 "$node_(28) setdest 59.561651390703 168.202191744013 6.302720753235"
$ns_ at 194.623382017579 "$god_ set-dist 14 19 1"
$ns_ at 195.187066187648 "$god_ set-dist 0 10 1"
$ns_ at 195.269910611905 "$god_ set-dist 8 41 1"
$ns_ at 195.353236631118 "$god_ set-dist 3 7 2"
$ns_ at 195.353236631118 "$god_ set-dist 3 22 2"
$ns_ at 195.353236631118 "$god_ set-dist 3 39 1"
$ns_ at 195.353236631118 "$god_ set-dist 4 7 3"
$ns_ at 195.353236631118 "$god_ set-dist 4 22 3"
$ns_ at 195.353236631118 "$god_ set-dist 4 39 2"
$ns_ at 195.353236631118 "$god_ set-dist 7 28 3"
$ns_ at 195.353236631118 "$god_ set-dist 22 28 3"
$ns_ at 195.353236631118 "$god_ set-dist 28 39 2"
$ns_ at 195.372382958407 "$god_ set-dist 27 38 2"
$ns_ at 195.383695069499 "$god_ set-dist 2 48 2"
$ns_ at 195.411609891927 "$god_ set-dist 11 39 1"
$ns_ at 195.450266444046 "$god_ set-dist 1 38 2"
$ns_ at 195.499671746899 "$god_ set-dist 0 20 1"
$ns_ at 195.499671746899 "$god_ set-dist 0 29 2"
$ns_ at 195.499671746899 "$god_ set-dist 0 43 2"
$ns_ at 195.515167600711 "$god_ set-dist 5 37 2"
$ns_ at 195.515167600711 "$god_ set-dist 37 45 3"
$ns_ at 195.526211418723 "$god_ set-dist 15 18 2"
$ns_ at 195.526211418723 "$god_ set-dist 18 23 2"
$ns_ at 195.526211418723 "$god_ set-dist 18 30 1"
$ns_ at 195.568726768091 "$god_ set-dist 3 21 1"
$ns_ at 195.568726768091 "$god_ set-dist 4 21 2"
$ns_ at 195.568726768091 "$god_ set-dist 21 28 2"
$ns_ at 195.703314656716 "$god_ set-dist 26 49 2"
$ns_ at 195.912333205680 "$god_ set-dist 21 23 1"
$ns_ at 195.912333205680 "$god_ set-dist 22 23 2"
$ns_ at 195.912333205680 "$god_ set-dist 23 45 2"
$ns_ at 196.040377071232 "$god_ set-dist 35 47 1"
$ns_ at 196.392797980019 "$god_ set-dist 8 10 1"
$ns_ at 196.396473006996 "$node_(3) setdest 236.513221474539 407.776878987811 0.000000000000"
$ns_ at 196.457562566649 "$god_ set-dist 27 44 1"
$ns_ at 196.581402330354 "$god_ set-dist 12 24 2"
$ns_ at 196.581402330354 "$god_ set-dist 12 32 3"
$ns_ at 196.583099253788 "$god_ set-dist 5 40 1"
$ns_ at 196.650691818583 "$god_ set-dist 20 47 1"
$ns_ at 196.885571080783 "$god_ set-dist 0 31 1"
$ns_ at 196.885571080783 "$god_ set-dist 7 31 2"
$ns_ at 196.893727251776 "$god_ set-dist 10 23 1"
$ns_ at 196.893727251776 "$god_ set-dist 13 23 2"
$ns_ at 196.893727251776 "$god_ set-dist 23 44 2"
$ns_ at 197.042237054649 "$god_ set-dist 9 13 3"
$ns_ at 197.042237054649 "$god_ set-dist 10 13 2"
$ns_ at 197.042237054649 "$god_ set-dist 13 23 3"
$ns_ at 197.117480417738 "$god_ set-dist 13 27 2"
$ns_ at 197.149384399638 "$god_ set-dist 0 24 1"
$ns_ at 197.149384399638 "$god_ set-dist 0 32 2"
$ns_ at 197.245609082703 "$god_ set-dist 8 11 1"
$ns_ at 197.321726688020 "$god_ set-dist 0 7 2"
$ns_ at 197.321726688020 "$god_ set-dist 7 31 3"
$ns_ at 197.321726688020 "$god_ set-dist 7 40 3"
$ns_ at 197.332521614406 "$node_(35) setdest 378.008553373110 252.741269972219 0.000000000000"
$ns_ at 197.396473006996 "$node_(3) setdest 546.267375760622 144.091522547192 9.021654244630"
$ns_ at 197.430410585347 "$god_ set-dist 16 33 2"
$ns_ at 197.477259781907 "$god_ set-dist 30 42 2"
$ns_ at 197.542788598183 "$god_ set-dist 2 46 2"
$ns_ at 197.669452057617 "$god_ set-dist 5 23 1"
$ns_ at 197.701789962454 "$god_ set-dist 1 4 3"
$ns_ at 197.701789962454 "$god_ set-dist 3 4 2"
$ns_ at 197.701789962454 "$god_ set-dist 4 5 3"
$ns_ at 197.701789962454 "$god_ set-dist 4 7 4"
$ns_ at 197.701789962454 "$god_ set-dist 4 21 3"
$ns_ at 197.701789962454 "$god_ set-dist 4 22 4"
$ns_ at 197.701789962454 "$god_ set-dist 4 35 3"
$ns_ at 197.701789962454 "$god_ set-dist 4 36 3"
$ns_ at 197.701789962454 "$god_ set-dist 4 39 3"
$ns_ at 197.701789962454 "$god_ set-dist 4 45 4"
$ns_ at 197.724394764182 "$god_ set-dist 3 7 3"
$ns_ at 197.724394764182 "$god_ set-dist 7 28 4"
$ns_ at 197.724394764182 "$god_ set-dist 7 39 2"
$ns_ at 197.724394764182 "$god_ set-dist 7 47 3"
$ns_ at 197.741828945349 "$god_ set-dist 5 22 1"
$ns_ at 197.801701511625 "$god_ set-dist 13 32 2"
$ns_ at 197.801701511625 "$god_ set-dist 17 32 1"
$ns_ at 197.801701511625 "$god_ set-dist 32 44 2"
$ns_ at 197.835477691057 "$god_ set-dist 11 28 2"
$ns_ at 197.835477691057 "$god_ set-dist 13 28 2"
$ns_ at 197.835477691057 "$god_ set-dist 17 28 1"
$ns_ at 197.835477691057 "$god_ set-dist 27 28 2"
$ns_ at 197.835477691057 "$god_ set-dist 28 44 2"
$ns_ at 197.893644236315 "$god_ set-dist 13 14 2"
$ns_ at 197.893644236315 "$god_ set-dist 13 19 3"
$ns_ at 197.893644236315 "$god_ set-dist 13 33 3"
$ns_ at 197.984409531455 "$god_ set-dist 8 48 1"
$ns_ at 198.016131516047 "$god_ set-dist 18 41 1"
$ns_ at 198.241556508317 "$god_ set-dist 12 16 2"
$ns_ at 198.332521614406 "$node_(35) setdest 329.545436411968 168.170387793668 7.832577843027"
$ns_ at 198.369824154727 "$god_ set-dist 0 9 1"
$ns_ at 198.448850700604 "$god_ set-dist 3 27 1"
$ns_ at 198.617599794174 "$god_ set-dist 6 37 2"
$ns_ at 198.783457005106 "$god_ set-dist 12 29 3"
$ns_ at 198.783457005106 "$god_ set-dist 20 29 2"
$ns_ at 198.892705151948 "$god_ set-dist 9 12 1"
$ns_ at 198.892705151948 "$god_ set-dist 12 32 2"
$ns_ at 198.908092343113 "$god_ set-dist 35 49 2"
$ns_ at 198.973227055074 "$god_ set-dist 18 48 1"
$ns_ at 199.112901710287 "$god_ set-dist 0 3 1"
$ns_ at 199.112901710287 "$god_ set-dist 0 28 2"
$ns_ at 199.113423894713 "$god_ set-dist 35 47 2"
$ns_ at 199.168552694223 "$god_ set-dist 20 46 1"
$ns_ at 199.168552694223 "$god_ set-dist 43 46 2"
$ns_ at 199.217105725369 "$god_ set-dist 10 18 1"
$ns_ at 199.276833209309 "$god_ set-dist 16 25 2"
$ns_ at 199.465058035873 "$god_ set-dist 2 31 3"
$ns_ at 199.465058035873 "$god_ set-dist 17 31 3"
$ns_ at 199.465058035873 "$god_ set-dist 31 41 2"
$ns_ at 199.601870204513 "$god_ set-dist 41 42 2"
$ns_ at 199.696025825310 "$god_ set-dist 2 5 2"
$ns_ at 199.801863437981 "$god_ set-dist 1 13 2"
$ns_ at 199.801863437981 "$god_ set-dist 12 13 3"
$ns_ at 199.801863437981 "$god_ set-dist 13 25 3"
$ns_ at 199.820301063703 "$god_ set-dist 18 38 1"
$ns_ at 199.890026145114 "$god_ set-dist 34 49 2"
$ns_ at 199.897058019448 "$god_ set-dist 20 43 2"
$ns_ at 199.897058019448 "$god_ set-dist 43 46 3"
$ns_ at 199.910077130006 "$god_ set-dist 8 20 1"
$ns_ at 199.964330228996 "$god_ set-dist 21 27 2"
#
# Destination Unreachables: 0
#
# Route Changes: 4922
#
# Link Changes: 2607
#
# Node | Route Changes | Link Changes
#    0 |           222 |          133
#    1 |           147 |           98
#    2 |           112 |           95
#    3 |           246 |          149
#    4 |           381 |           36
#    5 |           190 |          143
#    6 |           148 |           74
#    7 |           292 |          100
#    8 |           252 |          115
#    9 |           175 |          100
#   10 |           177 |          107
#   11 |           220 |          111
#   12 |           128 |           76
#   13 |           210 |          134
#   14 |           256 |          112
#   15 |           255 |          127
#   16 |           216 |          157
#   17 |           174 |          100
#   18 |           162 |          103
#   19 |           183 |          114
#   20 |           204 |           86
#   21 |           215 |          114
#   22 |           203 |          129
#   23 |           191 |          131
#   24 |           194 |           91
#   25 |           204 |          120
#   26 |           143 |           90
#   27 |           155 |           94
#   28 |           209 |          116
#   29 |           178 |          109
#   30 |           169 |          114
#   31 |           230 |          104
#   32 |           256 |           67
#   33 |           123 |           80
#   34 |            94 |           65
#   35 |           148 |           80
#   36 |           133 |           76
#   37 |           193 |          120
#   38 |           231 |          110
#   39 |           186 |          121
#   40 |           195 |          101
#   41 |           147 |           95
#   42 |           235 |          153
#   43 |           225 |           77
#   44 |           180 |          101
#   45 |           198 |           93
#   46 |           288 |           61
#   47 |           195 |          122
#   48 |           164 |           96
#   49 |           212 |          114
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
    exec nam dsdvms_10.nam &
    exit 0
}
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns_ at $val(stop) "\$node_($i) reset"
}
$ns_ at $val(stop) "$ns_ nam-end-wireless $val(stop)"
$ns_ at $val(stop) "finish"
$ns_ at $val(stop) "puts \"done\" ; $ns_ halt"
$ns_ run
