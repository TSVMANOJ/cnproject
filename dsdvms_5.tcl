
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
set tracefile [open dsdvms_5.tr w]
$ns_ trace-all $tracefile
#$ns use-newtrace
#Open the NAM trace file
set namfile [open dsdvms_5.nam w]
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
# nodes: 50, pause: 1.00, max speed: 5.00, max x: 670.00, max y: 670.00
#
$node_(0) set X_ 288.294568891933
$node_(0) set Y_ 230.659548229814
$node_(0) set Z_ 0.000000000000
$node_(1) set X_ 534.073223820243
$node_(1) set Y_ 299.525588217965
$node_(1) set Z_ 0.000000000000
$node_(2) set X_ 201.207991838749
$node_(2) set Y_ 438.392241472748
$node_(2) set Z_ 0.000000000000
$node_(3) set X_ 420.040909577745
$node_(3) set Y_ 272.562220611829
$node_(3) set Z_ 0.000000000000
$node_(4) set X_ 287.528774551113
$node_(4) set Y_ 229.343141641788
$node_(4) set Z_ 0.000000000000
$node_(5) set X_ 401.660126316200
$node_(5) set Y_ 320.778014732485
$node_(5) set Z_ 0.000000000000
$node_(6) set X_ 389.759234609064
$node_(6) set Y_ 643.190425481556
$node_(6) set Z_ 0.000000000000
$node_(7) set X_ 397.689660603518
$node_(7) set Y_ 254.328592005267
$node_(7) set Z_ 0.000000000000
$node_(8) set X_ 469.379359777297
$node_(8) set Y_ 582.444695466779
$node_(8) set Z_ 0.000000000000
$node_(9) set X_ 5.692885584226
$node_(9) set Y_ 203.574697227109
$node_(9) set Z_ 0.000000000000
$node_(10) set X_ 48.939692783043
$node_(10) set Y_ 14.878663617364
$node_(10) set Z_ 0.000000000000
$node_(11) set X_ 382.654783768159
$node_(11) set Y_ 4.011613387711
$node_(11) set Z_ 0.000000000000
$node_(12) set X_ 81.293230789945
$node_(12) set Y_ 178.465528192657
$node_(12) set Z_ 0.000000000000
$node_(13) set X_ 152.655914575427
$node_(13) set Y_ 146.698220654677
$node_(13) set Z_ 0.000000000000
$node_(14) set X_ 5.615879296815
$node_(14) set Y_ 452.122390244961
$node_(14) set Z_ 0.000000000000
$node_(15) set X_ 398.589282347022
$node_(15) set Y_ 360.732203298784
$node_(15) set Z_ 0.000000000000
$node_(16) set X_ 323.336711769001
$node_(16) set Y_ 585.614300064690
$node_(16) set Z_ 0.000000000000
$node_(17) set X_ 651.516624054745
$node_(17) set Y_ 134.891914952900
$node_(17) set Z_ 0.000000000000
$node_(18) set X_ 606.517163295199
$node_(18) set Y_ 521.908680334921
$node_(18) set Z_ 0.000000000000
$node_(19) set X_ 109.408989755220
$node_(19) set Y_ 162.095655129733
$node_(19) set Z_ 0.000000000000
$node_(20) set X_ 20.026442228234
$node_(20) set Y_ 78.464850213073
$node_(20) set Z_ 0.000000000000
$node_(21) set X_ 244.422480298643
$node_(21) set Y_ 85.204569290520
$node_(21) set Z_ 0.000000000000
$node_(22) set X_ 44.477709431984
$node_(22) set Y_ 251.464910035651
$node_(22) set Z_ 0.000000000000
$node_(23) set X_ 137.016218723583
$node_(23) set Y_ 605.214430427785
$node_(23) set Z_ 0.000000000000
$node_(24) set X_ 313.534492353251
$node_(24) set Y_ 608.043155757006
$node_(24) set Z_ 0.000000000000
$node_(25) set X_ 269.137662914729
$node_(25) set Y_ 72.205029683804
$node_(25) set Z_ 0.000000000000
$node_(26) set X_ 541.380911319803
$node_(26) set Y_ 230.018794942626
$node_(26) set Z_ 0.000000000000
$node_(27) set X_ 195.580848967847
$node_(27) set Y_ 581.762012181920
$node_(27) set Z_ 0.000000000000
$node_(28) set X_ 501.533105061130
$node_(28) set Y_ 52.328653785950
$node_(28) set Z_ 0.000000000000
$node_(29) set X_ 578.710884147292
$node_(29) set Y_ 496.674785671838
$node_(29) set Z_ 0.000000000000
$node_(30) set X_ 283.206128712482
$node_(30) set Y_ 6.725212335317
$node_(30) set Z_ 0.000000000000
$node_(31) set X_ 145.328030671978
$node_(31) set Y_ 613.647069027319
$node_(31) set Z_ 0.000000000000
$node_(32) set X_ 336.820311131567
$node_(32) set Y_ 650.700625659835
$node_(32) set Z_ 0.000000000000
$node_(33) set X_ 595.958047113212
$node_(33) set Y_ 189.945840751458
$node_(33) set Z_ 0.000000000000
$node_(34) set X_ 62.306685044847
$node_(34) set Y_ 340.573576311419
$node_(34) set Z_ 0.000000000000
$node_(35) set X_ 148.557167137016
$node_(35) set Y_ 507.954946871528
$node_(35) set Z_ 0.000000000000
$node_(36) set X_ 669.916028467131
$node_(36) set Y_ 521.530121662250
$node_(36) set Z_ 0.000000000000
$node_(37) set X_ 346.896258297940
$node_(37) set Y_ 149.665220067922
$node_(37) set Z_ 0.000000000000
$node_(38) set X_ 219.102057163424
$node_(38) set Y_ 38.382168857728
$node_(38) set Z_ 0.000000000000
$node_(39) set X_ 625.195152566440
$node_(39) set Y_ 93.590433419871
$node_(39) set Z_ 0.000000000000
$node_(40) set X_ 348.637265157083
$node_(40) set Y_ 412.342416273249
$node_(40) set Z_ 0.000000000000
$node_(41) set X_ 308.726655939860
$node_(41) set Y_ 323.722737371998
$node_(41) set Z_ 0.000000000000
$node_(42) set X_ 611.940664384435
$node_(42) set Y_ 642.003104781417
$node_(42) set Z_ 0.000000000000
$node_(43) set X_ 415.280563502656
$node_(43) set Y_ 288.248033876436
$node_(43) set Z_ 0.000000000000
$node_(44) set X_ 530.794223685562
$node_(44) set Y_ 529.589893122832
$node_(44) set Z_ 0.000000000000
$node_(45) set X_ 87.793905295230
$node_(45) set Y_ 459.416013096583
$node_(45) set Z_ 0.000000000000
$node_(46) set X_ 111.641637178012
$node_(46) set Y_ 133.867550889135
$node_(46) set Z_ 0.000000000000
$node_(47) set X_ 478.620939332330
$node_(47) set Y_ 178.194144134033
$node_(47) set Z_ 0.000000000000
$node_(48) set X_ 669.288036164807
$node_(48) set Y_ 630.538276595055
$node_(48) set Z_ 0.000000000000
$node_(49) set X_ 466.003719162842
$node_(49) set Y_ 71.434995669052
$node_(49) set Z_ 0.000000000000
$god_ set-dist 0 1 2
$god_ set-dist 0 2 1
$god_ set-dist 0 3 1
$god_ set-dist 0 4 1
$god_ set-dist 0 5 1
$god_ set-dist 0 6 2
$god_ set-dist 0 7 1
$god_ set-dist 0 8 2
$god_ set-dist 0 9 2
$god_ set-dist 0 10 2
$god_ set-dist 0 11 1
$god_ set-dist 0 12 1
$god_ set-dist 0 13 1
$god_ set-dist 0 14 2
$god_ set-dist 0 15 1
$god_ set-dist 0 16 2
$god_ set-dist 0 17 2
$god_ set-dist 0 18 3
$god_ set-dist 0 19 1
$god_ set-dist 0 20 2
$god_ set-dist 0 21 1
$god_ set-dist 0 22 1
$god_ set-dist 0 23 2
$god_ set-dist 0 24 2
$god_ set-dist 0 25 1
$god_ set-dist 0 26 2
$god_ set-dist 0 27 2
$god_ set-dist 0 28 2
$god_ set-dist 0 29 2
$god_ set-dist 0 30 1
$god_ set-dist 0 31 2
$god_ set-dist 0 32 2
$god_ set-dist 0 33 2
$god_ set-dist 0 34 2
$god_ set-dist 0 35 2
$god_ set-dist 0 36 3
$god_ set-dist 0 37 1
$god_ set-dist 0 38 1
$god_ set-dist 0 39 2
$god_ set-dist 0 40 1
$god_ set-dist 0 41 1
$god_ set-dist 0 42 3
$god_ set-dist 0 43 1
$god_ set-dist 0 44 2
$god_ set-dist 0 45 2
$god_ set-dist 0 46 1
$god_ set-dist 0 47 1
$god_ set-dist 0 48 3
$god_ set-dist 0 49 1
$god_ set-dist 1 2 2
$god_ set-dist 1 3 1
$god_ set-dist 1 4 2
$god_ set-dist 1 5 1
$god_ set-dist 1 6 2
$god_ set-dist 1 7 1
$god_ set-dist 1 8 2
$god_ set-dist 1 9 3
$god_ set-dist 1 10 3
$god_ set-dist 1 11 2
$god_ set-dist 1 12 3
$god_ set-dist 1 13 2
$god_ set-dist 1 14 3
$god_ set-dist 1 15 1
$god_ set-dist 1 16 2
$god_ set-dist 1 17 1
$god_ set-dist 1 18 1
$god_ set-dist 1 19 2
$god_ set-dist 1 20 3
$god_ set-dist 1 21 2
$god_ set-dist 1 22 3
$god_ set-dist 1 23 3
$god_ set-dist 1 24 2
$god_ set-dist 1 25 2
$god_ set-dist 1 26 1
$god_ set-dist 1 27 2
$god_ set-dist 1 28 1
$god_ set-dist 1 29 1
$god_ set-dist 1 30 2
$god_ set-dist 1 31 3
$god_ set-dist 1 32 2
$god_ set-dist 1 33 1
$god_ set-dist 1 34 2
$god_ set-dist 1 35 2
$god_ set-dist 1 36 2
$god_ set-dist 1 37 1
$god_ set-dist 1 38 2
$god_ set-dist 1 39 1
$god_ set-dist 1 40 1
$god_ set-dist 1 41 1
$god_ set-dist 1 42 2
$god_ set-dist 1 43 1
$god_ set-dist 1 44 1
$god_ set-dist 1 45 3
$god_ set-dist 1 46 2
$god_ set-dist 1 47 1
$god_ set-dist 1 48 2
$god_ set-dist 1 49 1
$god_ set-dist 2 3 2
$god_ set-dist 2 4 1
$god_ set-dist 2 5 1
$god_ set-dist 2 6 2
$god_ set-dist 2 7 2
$god_ set-dist 2 8 2
$god_ set-dist 2 9 2
$god_ set-dist 2 10 2
$god_ set-dist 2 11 2
$god_ set-dist 2 12 2
$god_ set-dist 2 13 2
$god_ set-dist 2 14 1
$god_ set-dist 2 15 1
$god_ set-dist 2 16 1
$god_ set-dist 2 17 3
$god_ set-dist 2 18 3
$god_ set-dist 2 19 2
$god_ set-dist 2 20 2
$god_ set-dist 2 21 2
$god_ set-dist 2 22 1
$god_ set-dist 2 23 1
$god_ set-dist 2 24 1
$god_ set-dist 2 25 2
$god_ set-dist 2 26 2
$god_ set-dist 2 27 1
$god_ set-dist 2 28 3
$god_ set-dist 2 29 2
$god_ set-dist 2 30 2
$god_ set-dist 2 31 1
$god_ set-dist 2 32 2
$god_ set-dist 2 33 2
$god_ set-dist 2 34 1
$god_ set-dist 2 35 1
$god_ set-dist 2 36 3
$god_ set-dist 2 37 2
$god_ set-dist 2 38 2
$god_ set-dist 2 39 3
$god_ set-dist 2 40 1
$god_ set-dist 2 41 1
$god_ set-dist 2 42 3
$god_ set-dist 2 43 2
$god_ set-dist 2 44 2
$god_ set-dist 2 45 1
$god_ set-dist 2 46 2
$god_ set-dist 2 47 2
$god_ set-dist 2 48 3
$god_ set-dist 2 49 2
$god_ set-dist 3 4 1
$god_ set-dist 3 5 1
$god_ set-dist 3 6 2
$god_ set-dist 3 7 1
$god_ set-dist 3 8 2
$god_ set-dist 3 9 3
$god_ set-dist 3 10 3
$god_ set-dist 3 11 2
$god_ set-dist 3 12 2
$god_ set-dist 3 13 2
$god_ set-dist 3 14 3
$god_ set-dist 3 15 1
$god_ set-dist 3 16 2
$god_ set-dist 3 17 2
$god_ set-dist 3 18 2
$god_ set-dist 3 19 2
$god_ set-dist 3 20 3
$god_ set-dist 3 21 2
$god_ set-dist 3 22 2
$god_ set-dist 3 23 3
$god_ set-dist 3 24 2
$god_ set-dist 3 25 2
$god_ set-dist 3 26 1
$god_ set-dist 3 27 2
$god_ set-dist 3 28 1
$god_ set-dist 3 29 2
$god_ set-dist 3 30 2
$god_ set-dist 3 31 3
$god_ set-dist 3 32 2
$god_ set-dist 3 33 1
$god_ set-dist 3 34 2
$god_ set-dist 3 35 2
$god_ set-dist 3 36 3
$god_ set-dist 3 37 1
$god_ set-dist 3 38 2
$god_ set-dist 3 39 2
$god_ set-dist 3 40 1
$god_ set-dist 3 41 1
$god_ set-dist 3 42 3
$god_ set-dist 3 43 1
$god_ set-dist 3 44 2
$god_ set-dist 3 45 3
$god_ set-dist 3 46 2
$god_ set-dist 3 47 1
$god_ set-dist 3 48 3
$god_ set-dist 3 49 1
$god_ set-dist 4 5 1
$god_ set-dist 4 6 2
$god_ set-dist 4 7 1
$god_ set-dist 4 8 2
$god_ set-dist 4 9 2
$god_ set-dist 4 10 2
$god_ set-dist 4 11 1
$god_ set-dist 4 12 1
$god_ set-dist 4 13 1
$god_ set-dist 4 14 2
$god_ set-dist 4 15 1
$god_ set-dist 4 16 2
$god_ set-dist 4 17 2
$god_ set-dist 4 18 3
$god_ set-dist 4 19 1
$god_ set-dist 4 20 2
$god_ set-dist 4 21 1
$god_ set-dist 4 22 1
$god_ set-dist 4 23 2
$god_ set-dist 4 24 2
$god_ set-dist 4 25 1
$god_ set-dist 4 26 2
$god_ set-dist 4 27 2
$god_ set-dist 4 28 2
$god_ set-dist 4 29 2
$god_ set-dist 4 30 1
$god_ set-dist 4 31 2
$god_ set-dist 4 32 2
$god_ set-dist 4 33 2
$god_ set-dist 4 34 2
$god_ set-dist 4 35 2
$god_ set-dist 4 36 3
$god_ set-dist 4 37 1
$god_ set-dist 4 38 1
$god_ set-dist 4 39 2
$god_ set-dist 4 40 1
$god_ set-dist 4 41 1
$god_ set-dist 4 42 3
$god_ set-dist 4 43 1
$god_ set-dist 4 44 2
$god_ set-dist 4 45 2
$god_ set-dist 4 46 1
$god_ set-dist 4 47 1
$god_ set-dist 4 48 3
$god_ set-dist 4 49 1
$god_ set-dist 5 6 2
$god_ set-dist 5 7 1
$god_ set-dist 5 8 2
$god_ set-dist 5 9 3
$god_ set-dist 5 10 3
$god_ set-dist 5 11 2
$god_ set-dist 5 12 2
$god_ set-dist 5 13 2
$god_ set-dist 5 14 2
$god_ set-dist 5 15 1
$god_ set-dist 5 16 2
$god_ set-dist 5 17 2
$god_ set-dist 5 18 2
$god_ set-dist 5 19 2
$god_ set-dist 5 20 3
$god_ set-dist 5 21 2
$god_ set-dist 5 22 2
$god_ set-dist 5 23 2
$god_ set-dist 5 24 2
$god_ set-dist 5 25 2
$god_ set-dist 5 26 1
$god_ set-dist 5 27 2
$god_ set-dist 5 28 2
$god_ set-dist 5 29 1
$god_ set-dist 5 30 2
$god_ set-dist 5 31 2
$god_ set-dist 5 32 2
$god_ set-dist 5 33 1
$god_ set-dist 5 34 2
$god_ set-dist 5 35 2
$god_ set-dist 5 36 2
$god_ set-dist 5 37 1
$god_ set-dist 5 38 2
$god_ set-dist 5 39 2
$god_ set-dist 5 40 1
$god_ set-dist 5 41 1
$god_ set-dist 5 42 2
$god_ set-dist 5 43 1
$god_ set-dist 5 44 1
$god_ set-dist 5 45 2
$god_ set-dist 5 46 2
$god_ set-dist 5 47 1
$god_ set-dist 5 48 2
$god_ set-dist 5 49 2
$god_ set-dist 6 7 2
$god_ set-dist 6 8 1
$god_ set-dist 6 9 3
$god_ set-dist 6 10 4
$god_ set-dist 6 11 3
$god_ set-dist 6 12 3
$god_ set-dist 6 13 3
$god_ set-dist 6 14 2
$god_ set-dist 6 15 2
$god_ set-dist 6 16 1
$god_ set-dist 6 17 3
$god_ set-dist 6 18 1
$god_ set-dist 6 19 3
$god_ set-dist 6 20 4
$god_ set-dist 6 21 3
$god_ set-dist 6 22 3
$god_ set-dist 6 23 2
$god_ set-dist 6 24 1
$god_ set-dist 6 25 3
$god_ set-dist 6 26 3
$god_ set-dist 6 27 1
$god_ set-dist 6 28 3
$god_ set-dist 6 29 1
$god_ set-dist 6 30 3
$god_ set-dist 6 31 1
$god_ set-dist 6 32 1
$god_ set-dist 6 33 3
$god_ set-dist 6 34 3
$god_ set-dist 6 35 2
$god_ set-dist 6 36 2
$god_ set-dist 6 37 3
$god_ set-dist 6 38 3
$god_ set-dist 6 39 3
$god_ set-dist 6 40 1
$god_ set-dist 6 41 2
$god_ set-dist 6 42 1
$god_ set-dist 6 43 2
$god_ set-dist 6 44 1
$god_ set-dist 6 45 2
$god_ set-dist 6 46 3
$god_ set-dist 6 47 3
$god_ set-dist 6 48 2
$god_ set-dist 6 49 3
$god_ set-dist 7 8 2
$god_ set-dist 7 9 3
$god_ set-dist 7 10 2
$god_ set-dist 7 11 2
$god_ set-dist 7 12 2
$god_ set-dist 7 13 2
$god_ set-dist 7 14 3
$god_ set-dist 7 15 1
$god_ set-dist 7 16 2
$god_ set-dist 7 17 2
$god_ set-dist 7 18 2
$god_ set-dist 7 19 2
$god_ set-dist 7 20 2
$god_ set-dist 7 21 1
$god_ set-dist 7 22 2
$god_ set-dist 7 23 3
$god_ set-dist 7 24 2
$god_ set-dist 7 25 1
$god_ set-dist 7 26 1
$god_ set-dist 7 27 2
$god_ set-dist 7 28 1
$god_ set-dist 7 29 2
$god_ set-dist 7 30 2
$god_ set-dist 7 31 3
$god_ set-dist 7 32 2
$god_ set-dist 7 33 1
$god_ set-dist 7 34 2
$god_ set-dist 7 35 2
$god_ set-dist 7 36 3
$god_ set-dist 7 37 1
$god_ set-dist 7 38 2
$god_ set-dist 7 39 2
$god_ set-dist 7 40 1
$god_ set-dist 7 41 1
$god_ set-dist 7 42 3
$god_ set-dist 7 43 1
$god_ set-dist 7 44 2
$god_ set-dist 7 45 3
$god_ set-dist 7 46 2
$god_ set-dist 7 47 1
$god_ set-dist 7 48 3
$god_ set-dist 7 49 1
$god_ set-dist 8 9 4
$god_ set-dist 8 10 4
$god_ set-dist 8 11 3
$god_ set-dist 8 12 3
$god_ set-dist 8 13 3
$god_ set-dist 8 14 3
$god_ set-dist 8 15 1
$god_ set-dist 8 16 1
$god_ set-dist 8 17 3
$god_ set-dist 8 18 1
$god_ set-dist 8 19 3
$god_ set-dist 8 20 4
$god_ set-dist 8 21 3
$god_ set-dist 8 22 3
$god_ set-dist 8 23 2
$god_ set-dist 8 24 1
$god_ set-dist 8 25 3
$god_ set-dist 8 26 2
$god_ set-dist 8 27 2
$god_ set-dist 8 28 3
$god_ set-dist 8 29 1
$god_ set-dist 8 30 3
$god_ set-dist 8 31 2
$god_ set-dist 8 32 1
$god_ set-dist 8 33 3
$god_ set-dist 8 34 3
$god_ set-dist 8 35 2
$god_ set-dist 8 36 1
$god_ set-dist 8 37 2
$god_ set-dist 8 38 3
$god_ set-dist 8 39 3
$god_ set-dist 8 40 1
$god_ set-dist 8 41 2
$god_ set-dist 8 42 1
$god_ set-dist 8 43 2
$god_ set-dist 8 44 1
$god_ set-dist 8 45 3
$god_ set-dist 8 46 3
$god_ set-dist 8 47 2
$god_ set-dist 8 48 1
$god_ set-dist 8 49 3
$god_ set-dist 9 10 1
$god_ set-dist 9 11 3
$god_ set-dist 9 12 1
$god_ set-dist 9 13 1
$god_ set-dist 9 14 1
$god_ set-dist 9 15 3
$god_ set-dist 9 16 3
$god_ set-dist 9 17 4
$god_ set-dist 9 18 4
$god_ set-dist 9 19 1
$god_ set-dist 9 20 1
$god_ set-dist 9 21 2
$god_ set-dist 9 22 1
$god_ set-dist 9 23 2
$god_ set-dist 9 24 3
$god_ set-dist 9 25 2
$god_ set-dist 9 26 3
$god_ set-dist 9 27 2
$god_ set-dist 9 28 3
$god_ set-dist 9 29 4
$god_ set-dist 9 30 2
$god_ set-dist 9 31 2
$god_ set-dist 9 32 3
$god_ set-dist 9 33 4
$god_ set-dist 9 34 1
$god_ set-dist 9 35 2
$god_ set-dist 9 36 5
$god_ set-dist 9 37 2
$god_ set-dist 9 38 2
$god_ set-dist 9 39 4
$god_ set-dist 9 40 3
$god_ set-dist 9 41 2
$god_ set-dist 9 42 4
$god_ set-dist 9 43 3
$god_ set-dist 9 44 4
$god_ set-dist 9 45 2
$god_ set-dist 9 46 1
$god_ set-dist 9 47 3
$god_ set-dist 9 48 5
$god_ set-dist 9 49 3
$god_ set-dist 10 11 2
$god_ set-dist 10 12 1
$god_ set-dist 10 13 1
$god_ set-dist 10 14 2
$god_ set-dist 10 15 3
$god_ set-dist 10 16 3
$god_ set-dist 10 17 3
$god_ set-dist 10 18 4
$god_ set-dist 10 19 1
$god_ set-dist 10 20 1
$god_ set-dist 10 21 1
$god_ set-dist 10 22 1
$god_ set-dist 10 23 3
$god_ set-dist 10 24 3
$god_ set-dist 10 25 1
$god_ set-dist 10 26 3
$god_ set-dist 10 27 3
$god_ set-dist 10 28 2
$god_ set-dist 10 29 4
$god_ set-dist 10 30 1
$god_ set-dist 10 31 3
$god_ set-dist 10 32 4
$god_ set-dist 10 33 3
$god_ set-dist 10 34 2
$god_ set-dist 10 35 3
$god_ set-dist 10 36 5
$god_ set-dist 10 37 2
$god_ set-dist 10 38 1
$god_ set-dist 10 39 3
$god_ set-dist 10 40 3
$god_ set-dist 10 41 2
$god_ set-dist 10 42 5
$god_ set-dist 10 43 3
$god_ set-dist 10 44 4
$god_ set-dist 10 45 2
$god_ set-dist 10 46 1
$god_ set-dist 10 47 2
$god_ set-dist 10 48 5
$god_ set-dist 10 49 2
$god_ set-dist 11 12 2
$god_ set-dist 11 13 2
$god_ set-dist 11 14 3
$god_ set-dist 11 15 2
$god_ set-dist 11 16 3
$god_ set-dist 11 17 2
$god_ set-dist 11 18 3
$god_ set-dist 11 19 2
$god_ set-dist 11 20 2
$god_ set-dist 11 21 1
$god_ set-dist 11 22 2
$god_ set-dist 11 23 3
$god_ set-dist 11 24 3
$god_ set-dist 11 25 1
$god_ set-dist 11 26 2
$god_ set-dist 11 27 3
$god_ set-dist 11 28 1
$god_ set-dist 11 29 3
$god_ set-dist 11 30 1
$god_ set-dist 11 31 3
$god_ set-dist 11 32 3
$god_ set-dist 11 33 2
$god_ set-dist 11 34 3
$god_ set-dist 11 35 3
$god_ set-dist 11 36 4
$god_ set-dist 11 37 1
$god_ set-dist 11 38 1
$god_ set-dist 11 39 2
$god_ set-dist 11 40 2
$god_ set-dist 11 41 2
$god_ set-dist 11 42 4
$god_ set-dist 11 43 2
$god_ set-dist 11 44 3
$god_ set-dist 11 45 3
$god_ set-dist 11 46 2
$god_ set-dist 11 47 1
$god_ set-dist 11 48 4
$god_ set-dist 11 49 1
$god_ set-dist 12 13 1
$god_ set-dist 12 14 2
$god_ set-dist 12 15 2
$god_ set-dist 12 16 3
$god_ set-dist 12 17 3
$god_ set-dist 12 18 4
$god_ set-dist 12 19 1
$god_ set-dist 12 20 1
$god_ set-dist 12 21 1
$god_ set-dist 12 22 1
$god_ set-dist 12 23 3
$god_ set-dist 12 24 3
$god_ set-dist 12 25 1
$god_ set-dist 12 26 3
$god_ set-dist 12 27 3
$god_ set-dist 12 28 2
$god_ set-dist 12 29 3
$god_ set-dist 12 30 2
$god_ set-dist 12 31 3
$god_ set-dist 12 32 3
$god_ set-dist 12 33 3
$god_ set-dist 12 34 1
$god_ set-dist 12 35 2
$god_ set-dist 12 36 4
$god_ set-dist 12 37 2
$god_ set-dist 12 38 1
$god_ set-dist 12 39 3
$god_ set-dist 12 40 2
$god_ set-dist 12 41 2
$god_ set-dist 12 42 4
$god_ set-dist 12 43 2
$god_ set-dist 12 44 3
$god_ set-dist 12 45 2
$god_ set-dist 12 46 1
$god_ set-dist 12 47 2
$god_ set-dist 12 48 4
$god_ set-dist 12 49 2
$god_ set-dist 13 14 2
$god_ set-dist 13 15 2
$god_ set-dist 13 16 3
$god_ set-dist 13 17 3
$god_ set-dist 13 18 3
$god_ set-dist 13 19 1
$god_ set-dist 13 20 1
$god_ set-dist 13 21 1
$god_ set-dist 13 22 1
$god_ set-dist 13 23 3
$god_ set-dist 13 24 3
$god_ set-dist 13 25 1
$god_ set-dist 13 26 2
$god_ set-dist 13 27 3
$god_ set-dist 13 28 2
$god_ set-dist 13 29 3
$god_ set-dist 13 30 1
$god_ set-dist 13 31 3
$god_ set-dist 13 32 3
$god_ set-dist 13 33 3
$god_ set-dist 13 34 1
$god_ set-dist 13 35 2
$god_ set-dist 13 36 4
$god_ set-dist 13 37 1
$god_ set-dist 13 38 1
$god_ set-dist 13 39 3
$god_ set-dist 13 40 2
$god_ set-dist 13 41 1
$god_ set-dist 13 42 4
$god_ set-dist 13 43 2
$god_ set-dist 13 44 3
$god_ set-dist 13 45 2
$god_ set-dist 13 46 1
$god_ set-dist 13 47 2
$god_ set-dist 13 48 4
$god_ set-dist 13 49 2
$god_ set-dist 14 15 2
$god_ set-dist 14 16 2
$god_ set-dist 14 17 4
$god_ set-dist 14 18 3
$god_ set-dist 14 19 2
$god_ set-dist 14 20 2
$god_ set-dist 14 21 3
$god_ set-dist 14 22 1
$god_ set-dist 14 23 1
$god_ set-dist 14 24 2
$god_ set-dist 14 25 3
$god_ set-dist 14 26 3
$god_ set-dist 14 27 1
$god_ set-dist 14 28 4
$god_ set-dist 14 29 3
$god_ set-dist 14 30 3
$god_ set-dist 14 31 1
$god_ set-dist 14 32 2
$god_ set-dist 14 33 3
$god_ set-dist 14 34 1
$god_ set-dist 14 35 1
$god_ set-dist 14 36 4
$god_ set-dist 14 37 3
$god_ set-dist 14 38 3
$god_ set-dist 14 39 4
$god_ set-dist 14 40 2
$god_ set-dist 14 41 2
$god_ set-dist 14 42 3
$god_ set-dist 14 43 3
$god_ set-dist 14 44 3
$god_ set-dist 14 45 1
$god_ set-dist 14 46 2
$god_ set-dist 14 47 3
$god_ set-dist 14 48 4
$god_ set-dist 14 49 3
$god_ set-dist 15 16 1
$god_ set-dist 15 17 2
$god_ set-dist 15 18 2
$god_ set-dist 15 19 2
$god_ set-dist 15 20 3
$god_ set-dist 15 21 2
$god_ set-dist 15 22 2
$god_ set-dist 15 23 2
$god_ set-dist 15 24 2
$god_ set-dist 15 25 2
$god_ set-dist 15 26 1
$god_ set-dist 15 27 2
$god_ set-dist 15 28 2
$god_ set-dist 15 29 1
$god_ set-dist 15 30 2
$god_ set-dist 15 31 2
$god_ set-dist 15 32 2
$god_ set-dist 15 33 2
$god_ set-dist 15 34 2
$god_ set-dist 15 35 2
$god_ set-dist 15 36 2
$god_ set-dist 15 37 1
$god_ set-dist 15 38 2
$god_ set-dist 15 39 2
$god_ set-dist 15 40 1
$god_ set-dist 15 41 1
$god_ set-dist 15 42 2
$god_ set-dist 15 43 1
$god_ set-dist 15 44 1
$god_ set-dist 15 45 2
$god_ set-dist 15 46 2
$god_ set-dist 15 47 1
$god_ set-dist 15 48 2
$god_ set-dist 15 49 2
$god_ set-dist 16 17 3
$god_ set-dist 16 18 2
$god_ set-dist 16 19 3
$god_ set-dist 16 20 3
$god_ set-dist 16 21 3
$god_ set-dist 16 22 2
$god_ set-dist 16 23 1
$god_ set-dist 16 24 1
$god_ set-dist 16 25 3
$god_ set-dist 16 26 2
$god_ set-dist 16 27 1
$god_ set-dist 16 28 3
$god_ set-dist 16 29 2
$god_ set-dist 16 30 3
$god_ set-dist 16 31 1
$god_ set-dist 16 32 1
$god_ set-dist 16 33 3
$god_ set-dist 16 34 2
$god_ set-dist 16 35 1
$god_ set-dist 16 36 2
$god_ set-dist 16 37 2
$god_ set-dist 16 38 3
$god_ set-dist 16 39 3
$god_ set-dist 16 40 1
$god_ set-dist 16 41 2
$god_ set-dist 16 42 2
$god_ set-dist 16 43 2
$god_ set-dist 16 44 1
$god_ set-dist 16 45 2
$god_ set-dist 16 46 3
$god_ set-dist 16 47 2
$god_ set-dist 16 48 2
$god_ set-dist 16 49 3
$god_ set-dist 17 18 2
$god_ set-dist 17 19 3
$god_ set-dist 17 20 3
$god_ set-dist 17 21 2
$god_ set-dist 17 22 3
$god_ set-dist 17 23 4
$god_ set-dist 17 24 3
$god_ set-dist 17 25 2
$god_ set-dist 17 26 1
$god_ set-dist 17 27 3
$god_ set-dist 17 28 1
$god_ set-dist 17 29 2
$god_ set-dist 17 30 2
$god_ set-dist 17 31 4
$god_ set-dist 17 32 3
$god_ set-dist 17 33 1
$god_ set-dist 17 34 3
$god_ set-dist 17 35 3
$god_ set-dist 17 36 3
$god_ set-dist 17 37 2
$god_ set-dist 17 38 2
$god_ set-dist 17 39 1
$god_ set-dist 17 40 2
$god_ set-dist 17 41 2
$god_ set-dist 17 42 3
$god_ set-dist 17 43 2
$god_ set-dist 17 44 2
$god_ set-dist 17 45 4
$god_ set-dist 17 46 3
$god_ set-dist 17 47 1
$god_ set-dist 17 48 3
$god_ set-dist 17 49 1
$god_ set-dist 18 19 3
$god_ set-dist 18 20 4
$god_ set-dist 18 21 3
$god_ set-dist 18 22 4
$god_ set-dist 18 23 3
$god_ set-dist 18 24 2
$god_ set-dist 18 25 3
$god_ set-dist 18 26 2
$god_ set-dist 18 27 2
$god_ set-dist 18 28 2
$god_ set-dist 18 29 1
$god_ set-dist 18 30 3
$god_ set-dist 18 31 2
$god_ set-dist 18 32 2
$god_ set-dist 18 33 2
$god_ set-dist 18 34 3
$god_ set-dist 18 35 3
$god_ set-dist 18 36 1
$god_ set-dist 18 37 2
$god_ set-dist 18 38 3
$god_ set-dist 18 39 2
$god_ set-dist 18 40 2
$god_ set-dist 18 41 2
$god_ set-dist 18 42 1
$god_ set-dist 18 43 2
$god_ set-dist 18 44 1
$god_ set-dist 18 45 3
$god_ set-dist 18 46 3
$god_ set-dist 18 47 2
$god_ set-dist 18 48 1
$god_ set-dist 18 49 2
$god_ set-dist 19 20 1
$god_ set-dist 19 21 1
$god_ set-dist 19 22 1
$god_ set-dist 19 23 3
$god_ set-dist 19 24 3
$god_ set-dist 19 25 1
$god_ set-dist 19 26 2
$god_ set-dist 19 27 3
$god_ set-dist 19 28 2
$god_ set-dist 19 29 3
$god_ set-dist 19 30 1
$god_ set-dist 19 31 3
$god_ set-dist 19 32 3
$god_ set-dist 19 33 3
$god_ set-dist 19 34 1
$god_ set-dist 19 35 2
$god_ set-dist 19 36 4
$god_ set-dist 19 37 1
$god_ set-dist 19 38 1
$god_ set-dist 19 39 3
$god_ set-dist 19 40 2
$god_ set-dist 19 41 2
$god_ set-dist 19 42 4
$god_ set-dist 19 43 2
$god_ set-dist 19 44 3
$god_ set-dist 19 45 2
$god_ set-dist 19 46 1
$god_ set-dist 19 47 2
$god_ set-dist 19 48 4
$god_ set-dist 19 49 2
$god_ set-dist 20 21 1
$god_ set-dist 20 22 1
$god_ set-dist 20 23 3
$god_ set-dist 20 24 3
$god_ set-dist 20 25 1
$god_ set-dist 20 26 3
$god_ set-dist 20 27 3
$god_ set-dist 20 28 2
$god_ set-dist 20 29 4
$god_ set-dist 20 30 2
$god_ set-dist 20 31 3
$god_ set-dist 20 32 4
$god_ set-dist 20 33 3
$god_ set-dist 20 34 2
$god_ set-dist 20 35 3
$god_ set-dist 20 36 5
$god_ set-dist 20 37 2
$god_ set-dist 20 38 1
$god_ set-dist 20 39 3
$god_ set-dist 20 40 3
$god_ set-dist 20 41 2
$god_ set-dist 20 42 5
$god_ set-dist 20 43 3
$god_ set-dist 20 44 4
$god_ set-dist 20 45 2
$god_ set-dist 20 46 1
$god_ set-dist 20 47 2
$god_ set-dist 20 48 5
$god_ set-dist 20 49 2
$god_ set-dist 21 22 2
$god_ set-dist 21 23 3
$god_ set-dist 21 24 3
$god_ set-dist 21 25 1
$god_ set-dist 21 26 2
$god_ set-dist 21 27 3
$god_ set-dist 21 28 2
$god_ set-dist 21 29 3
$god_ set-dist 21 30 1
$god_ set-dist 21 31 3
$god_ set-dist 21 32 3
$god_ set-dist 21 33 2
$god_ set-dist 21 34 2
$god_ set-dist 21 35 2
$god_ set-dist 21 36 4
$god_ set-dist 21 37 1
$god_ set-dist 21 38 1
$god_ set-dist 21 39 2
$god_ set-dist 21 40 2
$god_ set-dist 21 41 1
$god_ set-dist 21 42 4
$god_ set-dist 21 43 2
$god_ set-dist 21 44 3
$god_ set-dist 21 45 3
$god_ set-dist 21 46 1
$god_ set-dist 21 47 2
$god_ set-dist 21 48 4
$god_ set-dist 21 49 1
$god_ set-dist 22 23 2
$god_ set-dist 22 24 2
$god_ set-dist 22 25 2
$god_ set-dist 22 26 3
$god_ set-dist 22 27 2
$god_ set-dist 22 28 3
$god_ set-dist 22 29 3
$god_ set-dist 22 30 2
$god_ set-dist 22 31 2
$god_ set-dist 22 32 3
$god_ set-dist 22 33 3
$god_ set-dist 22 34 1
$god_ set-dist 22 35 2
$god_ set-dist 22 36 4
$god_ set-dist 22 37 2
$god_ set-dist 22 38 2
$god_ set-dist 22 39 3
$god_ set-dist 22 40 2
$god_ set-dist 22 41 2
$god_ set-dist 22 42 4
$god_ set-dist 22 43 2
$god_ set-dist 22 44 3
$god_ set-dist 22 45 1
$god_ set-dist 22 46 1
$god_ set-dist 22 47 2
$god_ set-dist 22 48 4
$god_ set-dist 22 49 2
$god_ set-dist 23 24 1
$god_ set-dist 23 25 3
$god_ set-dist 23 26 3
$god_ set-dist 23 27 1
$god_ set-dist 23 28 4
$god_ set-dist 23 29 3
$god_ set-dist 23 30 3
$god_ set-dist 23 31 1
$god_ set-dist 23 32 1
$god_ set-dist 23 33 3
$god_ set-dist 23 34 2
$god_ set-dist 23 35 1
$god_ set-dist 23 36 3
$god_ set-dist 23 37 3
$god_ set-dist 23 38 3
$god_ set-dist 23 39 4
$god_ set-dist 23 40 2
$god_ set-dist 23 41 2
$god_ set-dist 23 42 3
$god_ set-dist 23 43 3
$god_ set-dist 23 44 2
$god_ set-dist 23 45 1
$god_ set-dist 23 46 3
$god_ set-dist 23 47 3
$god_ set-dist 23 48 3
$god_ set-dist 23 49 3
$god_ set-dist 24 25 3
$god_ set-dist 24 26 3
$god_ set-dist 24 27 1
$god_ set-dist 24 28 3
$god_ set-dist 24 29 2
$god_ set-dist 24 30 3
$god_ set-dist 24 31 1
$god_ set-dist 24 32 1
$god_ set-dist 24 33 3
$god_ set-dist 24 34 2
$god_ set-dist 24 35 1
$god_ set-dist 24 36 2
$god_ set-dist 24 37 3
$god_ set-dist 24 38 3
$god_ set-dist 24 39 3
$god_ set-dist 24 40 1
$god_ set-dist 24 41 2
$god_ set-dist 24 42 2
$god_ set-dist 24 43 2
$god_ set-dist 24 44 1
$god_ set-dist 24 45 2
$god_ set-dist 24 46 3
$god_ set-dist 24 47 3
$god_ set-dist 24 48 2
$god_ set-dist 24 49 3
$god_ set-dist 25 26 2
$god_ set-dist 25 27 3
$god_ set-dist 25 28 1
$god_ set-dist 25 29 3
$god_ set-dist 25 30 1
$god_ set-dist 25 31 3
$god_ set-dist 25 32 3
$god_ set-dist 25 33 2
$god_ set-dist 25 34 2
$god_ set-dist 25 35 3
$god_ set-dist 25 36 4
$god_ set-dist 25 37 1
$god_ set-dist 25 38 1
$god_ set-dist 25 39 2
$god_ set-dist 25 40 2
$god_ set-dist 25 41 2
$god_ set-dist 25 42 4
$god_ set-dist 25 43 2
$god_ set-dist 25 44 3
$god_ set-dist 25 45 3
$god_ set-dist 25 46 1
$god_ set-dist 25 47 1
$god_ set-dist 25 48 4
$god_ set-dist 25 49 1
$god_ set-dist 26 27 3
$god_ set-dist 26 28 1
$god_ set-dist 26 29 2
$god_ set-dist 26 30 2
$god_ set-dist 26 31 3
$god_ set-dist 26 32 3
$god_ set-dist 26 33 1
$god_ set-dist 26 34 3
$god_ set-dist 26 35 3
$god_ set-dist 26 36 3
$god_ set-dist 26 37 1
$god_ set-dist 26 38 2
$god_ set-dist 26 39 1
$god_ set-dist 26 40 2
$god_ set-dist 26 41 2
$god_ set-dist 26 42 3
$god_ set-dist 26 43 1
$god_ set-dist 26 44 2
$god_ set-dist 26 45 3
$god_ set-dist 26 46 2
$god_ set-dist 26 47 1
$god_ set-dist 26 48 3
$god_ set-dist 26 49 1
$god_ set-dist 27 28 3
$god_ set-dist 27 29 2
$god_ set-dist 27 30 3
$god_ set-dist 27 31 1
$god_ set-dist 27 32 1
$god_ set-dist 27 33 3
$god_ set-dist 27 34 2
$god_ set-dist 27 35 1
$god_ set-dist 27 36 3
$god_ set-dist 27 37 3
$god_ set-dist 27 38 3
$god_ set-dist 27 39 3
$god_ set-dist 27 40 1
$god_ set-dist 27 41 2
$god_ set-dist 27 42 2
$god_ set-dist 27 43 2
$god_ set-dist 27 44 2
$god_ set-dist 27 45 1
$god_ set-dist 27 46 3
$god_ set-dist 27 47 3
$god_ set-dist 27 48 3
$god_ set-dist 27 49 3
$god_ set-dist 28 29 2
$god_ set-dist 28 30 1
$god_ set-dist 28 31 4
$god_ set-dist 28 32 3
$god_ set-dist 28 33 1
$god_ set-dist 28 34 3
$god_ set-dist 28 35 3
$god_ set-dist 28 36 3
$god_ set-dist 28 37 1
$god_ set-dist 28 38 2
$god_ set-dist 28 39 1
$god_ set-dist 28 40 2
$god_ set-dist 28 41 2
$god_ set-dist 28 42 3
$god_ set-dist 28 43 2
$god_ set-dist 28 44 2
$god_ set-dist 28 45 4
$god_ set-dist 28 46 2
$god_ set-dist 28 47 1
$god_ set-dist 28 48 3
$god_ set-dist 28 49 1
$god_ set-dist 29 30 3
$god_ set-dist 29 31 2
$god_ set-dist 29 32 2
$god_ set-dist 29 33 2
$god_ set-dist 29 34 3
$god_ set-dist 29 35 2
$god_ set-dist 29 36 1
$god_ set-dist 29 37 2
$god_ set-dist 29 38 3
$god_ set-dist 29 39 2
$god_ set-dist 29 40 1
$god_ set-dist 29 41 2
$god_ set-dist 29 42 1
$god_ set-dist 29 43 2
$god_ set-dist 29 44 1
$god_ set-dist 29 45 3
$god_ set-dist 29 46 3
$god_ set-dist 29 47 2
$god_ set-dist 29 48 1
$god_ set-dist 29 49 2
$god_ set-dist 30 31 3
$god_ set-dist 30 32 3
$god_ set-dist 30 33 2
$god_ set-dist 30 34 2
$god_ set-dist 30 35 3
$god_ set-dist 30 36 4
$god_ set-dist 30 37 1
$god_ set-dist 30 38 1
$god_ set-dist 30 39 2
$god_ set-dist 30 40 2
$god_ set-dist 30 41 2
$god_ set-dist 30 42 4
$god_ set-dist 30 43 2
$god_ set-dist 30 44 3
$god_ set-dist 30 45 3
$god_ set-dist 30 46 1
$god_ set-dist 30 47 2
$god_ set-dist 30 48 4
$god_ set-dist 30 49 1
$god_ set-dist 31 32 1
$god_ set-dist 31 33 3
$god_ set-dist 31 34 2
$god_ set-dist 31 35 1
$god_ set-dist 31 36 3
$god_ set-dist 31 37 3
$god_ set-dist 31 38 3
$god_ set-dist 31 39 4
$god_ set-dist 31 40 2
$god_ set-dist 31 41 2
$god_ set-dist 31 42 2
$god_ set-dist 31 43 3
$god_ set-dist 31 44 2
$god_ set-dist 31 45 1
$god_ set-dist 31 46 3
$god_ set-dist 31 47 3
$god_ set-dist 31 48 3
$god_ set-dist 31 49 3
$god_ set-dist 32 33 3
$god_ set-dist 32 34 2
$god_ set-dist 32 35 1
$god_ set-dist 32 36 2
$god_ set-dist 32 37 3
$god_ set-dist 32 38 3
$god_ set-dist 32 39 3
$god_ set-dist 32 40 1
$god_ set-dist 32 41 2
$god_ set-dist 32 42 2
$god_ set-dist 32 43 2
$god_ set-dist 32 44 1
$god_ set-dist 32 45 2
$god_ set-dist 32 46 3
$god_ set-dist 32 47 3
$god_ set-dist 32 48 2
$god_ set-dist 32 49 3
$god_ set-dist 33 34 3
$god_ set-dist 33 35 3
$god_ set-dist 33 36 3
$god_ set-dist 33 37 2
$god_ set-dist 33 38 2
$god_ set-dist 33 39 1
$god_ set-dist 33 40 2
$god_ set-dist 33 41 2
$god_ set-dist 33 42 3
$god_ set-dist 33 43 1
$god_ set-dist 33 44 2
$god_ set-dist 33 45 3
$god_ set-dist 33 46 3
$god_ set-dist 33 47 1
$god_ set-dist 33 48 3
$god_ set-dist 33 49 1
$god_ set-dist 34 35 1
$god_ set-dist 34 36 4
$god_ set-dist 34 37 2
$god_ set-dist 34 38 2
$god_ set-dist 34 39 3
$god_ set-dist 34 40 2
$god_ set-dist 34 41 1
$god_ set-dist 34 42 4
$god_ set-dist 34 43 2
$god_ set-dist 34 44 3
$god_ set-dist 34 45 1
$god_ set-dist 34 46 1
$god_ set-dist 34 47 2
$god_ set-dist 34 48 4
$god_ set-dist 34 49 3
$god_ set-dist 35 36 3
$god_ set-dist 35 37 2
$god_ set-dist 35 38 3
$god_ set-dist 35 39 3
$god_ set-dist 35 40 1
$god_ set-dist 35 41 1
$god_ set-dist 35 42 3
$god_ set-dist 35 43 2
$god_ set-dist 35 44 2
$god_ set-dist 35 45 1
$god_ set-dist 35 46 2
$god_ set-dist 35 47 2
$god_ set-dist 35 48 3
$god_ set-dist 35 49 3
$god_ set-dist 36 37 3
$god_ set-dist 36 38 4
$god_ set-dist 36 39 3
$god_ set-dist 36 40 2
$god_ set-dist 36 41 3
$god_ set-dist 36 42 1
$god_ set-dist 36 43 3
$god_ set-dist 36 44 1
$god_ set-dist 36 45 4
$god_ set-dist 36 46 4
$god_ set-dist 36 47 3
$god_ set-dist 36 48 1
$god_ set-dist 36 49 3
$god_ set-dist 37 38 1
$god_ set-dist 37 39 2
$god_ set-dist 37 40 2
$god_ set-dist 37 41 1
$god_ set-dist 37 42 3
$god_ set-dist 37 43 1
$god_ set-dist 37 44 2
$god_ set-dist 37 45 3
$god_ set-dist 37 46 1
$god_ set-dist 37 47 1
$god_ set-dist 37 48 3
$god_ set-dist 37 49 1
$god_ set-dist 38 39 2
$god_ set-dist 38 40 2
$god_ set-dist 38 41 2
$god_ set-dist 38 42 4
$god_ set-dist 38 43 2
$god_ set-dist 38 44 3
$god_ set-dist 38 45 3
$god_ set-dist 38 46 1
$god_ set-dist 38 47 2
$god_ set-dist 38 48 4
$god_ set-dist 38 49 1
$god_ set-dist 39 40 2
$god_ set-dist 39 41 2
$god_ set-dist 39 42 3
$god_ set-dist 39 43 2
$god_ set-dist 39 44 2
$god_ set-dist 39 45 4
$god_ set-dist 39 46 3
$god_ set-dist 39 47 1
$god_ set-dist 39 48 3
$god_ set-dist 39 49 1
$god_ set-dist 40 41 1
$god_ set-dist 40 42 2
$god_ set-dist 40 43 1
$god_ set-dist 40 44 1
$god_ set-dist 40 45 2
$god_ set-dist 40 46 2
$god_ set-dist 40 47 2
$god_ set-dist 40 48 2
$god_ set-dist 40 49 2
$god_ set-dist 41 42 3
$god_ set-dist 41 43 1
$god_ set-dist 41 44 2
$god_ set-dist 41 45 2
$god_ set-dist 41 46 2
$god_ set-dist 41 47 1
$god_ set-dist 41 48 3
$god_ set-dist 41 49 2
$god_ set-dist 42 43 3
$god_ set-dist 42 44 1
$god_ set-dist 42 45 3
$god_ set-dist 42 46 4
$god_ set-dist 42 47 3
$god_ set-dist 42 48 1
$god_ set-dist 42 49 3
$god_ set-dist 43 44 2
$god_ set-dist 43 45 3
$god_ set-dist 43 46 2
$god_ set-dist 43 47 1
$god_ set-dist 43 48 3
$god_ set-dist 43 49 1
$god_ set-dist 44 45 3
$god_ set-dist 44 46 3
$god_ set-dist 44 47 2
$god_ set-dist 44 48 1
$god_ set-dist 44 49 2
$god_ set-dist 45 46 2
$god_ set-dist 45 47 3
$god_ set-dist 45 48 4
$god_ set-dist 45 49 3
$god_ set-dist 46 47 2
$god_ set-dist 46 48 4
$god_ set-dist 46 49 2
$god_ set-dist 47 48 3
$god_ set-dist 47 49 1
$god_ set-dist 48 49 3
$ns_ at 1.000000000000 "$node_(0) setdest 308.994980438369 166.881085760255 1.483715152976"
$ns_ at 1.000000000000 "$node_(1) setdest 232.022439446456 612.450663556750 3.921156517603"
$ns_ at 1.000000000000 "$node_(2) setdest 520.279483214983 393.313758482519 1.201809531771"
$ns_ at 1.000000000000 "$node_(3) setdest 353.190311175674 26.411679606798 2.553160285125"
$ns_ at 1.000000000000 "$node_(4) setdest 6.992999425750 523.195672527584 1.761315503706"
$ns_ at 1.000000000000 "$node_(5) setdest 41.016405034208 622.611626808815 2.763632571985"
$ns_ at 1.000000000000 "$node_(6) setdest 186.810149489090 347.941122178862 2.667108039548"
$ns_ at 1.000000000000 "$node_(7) setdest 37.801141653358 411.475149927854 0.126338282432"
$ns_ at 1.000000000000 "$node_(8) setdest 502.109253161756 504.931767800778 0.569541185038"
$ns_ at 1.000000000000 "$node_(9) setdest 475.998801467417 450.969711384201 2.124682506997"
$ns_ at 1.000000000000 "$node_(10) setdest 457.437688702959 626.772105509555 4.619597930200"
$ns_ at 1.000000000000 "$node_(11) setdest 394.649493041703 601.817310493905 0.411291817564"
$ns_ at 1.000000000000 "$node_(12) setdest 119.161125078219 377.470796176681 1.092946342503"
$ns_ at 1.000000000000 "$node_(13) setdest 631.526227790736 113.753435954152 1.932468079485"
$ns_ at 1.000000000000 "$node_(14) setdest 417.593107516730 316.047529514852 2.269605389349"
$ns_ at 1.000000000000 "$node_(15) setdest 356.543177855430 329.070090466779 0.312424035506"
$ns_ at 1.000000000000 "$node_(16) setdest 186.120675674896 515.360144063577 3.802045816748"
$ns_ at 1.000000000000 "$node_(17) setdest 53.833780774713 516.428952477226 4.899586955810"
$ns_ at 1.000000000000 "$node_(18) setdest 517.458013440777 647.956017252256 3.520623029277"
$ns_ at 1.000000000000 "$node_(19) setdest 524.462113424232 495.277985487557 1.014567321639"
$ns_ at 1.000000000000 "$node_(20) setdest 5.353557077129 544.280811161829 3.887904279093"
$ns_ at 1.000000000000 "$node_(21) setdest 266.995379606969 204.404276680688 0.648999917319"
$ns_ at 1.000000000000 "$node_(22) setdest 452.469963637123 488.508524110022 4.053229017433"
$ns_ at 1.000000000000 "$node_(23) setdest 377.853046039453 44.833669666062 4.591532283239"
$ns_ at 1.000000000000 "$node_(24) setdest 553.360723235884 126.926925585326 1.380096000400"
$ns_ at 1.000000000000 "$node_(25) setdest 191.033547365800 324.072911694452 1.782146818164"
$ns_ at 1.000000000000 "$node_(26) setdest 523.109680995535 30.456721180817 3.387014001957"
$ns_ at 1.000000000000 "$node_(27) setdest 509.341692610893 611.926438904065 2.941344642732"
$ns_ at 1.000000000000 "$node_(28) setdest 569.249701088746 595.775903994541 1.630244104678"
$ns_ at 1.000000000000 "$node_(29) setdest 18.978708322991 651.471680047947 1.864311710879"
$ns_ at 1.000000000000 "$node_(30) setdest 409.811219086576 466.108069303557 0.788205021281"
$ns_ at 1.000000000000 "$node_(31) setdest 134.983946670932 49.688583182922 4.317563343340"
$ns_ at 1.000000000000 "$node_(32) setdest 552.910465590045 465.985002698116 3.112822985851"
$ns_ at 1.000000000000 "$node_(33) setdest 177.185990918587 314.615376926958 2.950515892288"
$ns_ at 1.000000000000 "$node_(34) setdest 422.781461607326 331.107627558612 3.699534120854"
$ns_ at 1.000000000000 "$node_(35) setdest 379.714539321285 14.683137555628 2.641127877718"
$ns_ at 1.000000000000 "$node_(36) setdest 125.314627570436 388.630423998723 3.668288129383"
$ns_ at 1.000000000000 "$node_(37) setdest 255.575896494507 464.907087518525 0.237681241575"
$ns_ at 1.000000000000 "$node_(38) setdest 635.957916769955 190.406777140361 1.840827820797"
$ns_ at 1.000000000000 "$node_(39) setdest 298.288118998503 630.630690348610 3.811124506806"
$ns_ at 1.000000000000 "$node_(40) setdest 493.284116038842 638.678941620798 0.557654348899"
$ns_ at 1.000000000000 "$node_(41) setdest 623.998269434469 585.649486643983 1.391388141645"
$ns_ at 1.000000000000 "$node_(42) setdest 569.568779529144 114.992475434773 2.858561449587"
$ns_ at 1.000000000000 "$node_(43) setdest 140.452277109510 397.538404331540 0.356826147581"
$ns_ at 1.000000000000 "$node_(44) setdest 487.344762943152 399.858749108533 0.531964237021"
$ns_ at 1.000000000000 "$node_(45) setdest 88.862940839839 421.315427819176 4.408623172667"
$ns_ at 1.000000000000 "$node_(46) setdest 173.819859853138 394.636261727275 1.222164410681"
$ns_ at 1.000000000000 "$node_(47) setdest 57.913934673671 546.850940872681 1.136129149542"
$ns_ at 1.000000000000 "$node_(48) setdest 558.835039729646 154.219743373735 0.246272952348"
$ns_ at 1.000000000000 "$node_(49) setdest 402.688193737796 210.101450609765 0.606079158854"
$ns_ at 1.237688249299 "$god_ set-dist 4 34 1"
$ns_ at 1.237688249299 "$god_ set-dist 11 34 2"
$ns_ at 1.237688249299 "$god_ set-dist 34 49 2"
$ns_ at 1.242875952842 "$god_ set-dist 3 10 2"
$ns_ at 1.242875952842 "$god_ set-dist 3 20 2"
$ns_ at 1.242875952842 "$god_ set-dist 3 25 1"
$ns_ at 1.557509245719 "$god_ set-dist 0 34 1"
$ns_ at 1.811116600951 "$god_ set-dist 1 28 2"
$ns_ at 1.811116600951 "$god_ set-dist 18 28 3"
$ns_ at 1.811116600951 "$god_ set-dist 28 29 3"
$ns_ at 1.811116600951 "$god_ set-dist 28 36 4"
$ns_ at 1.811116600951 "$god_ set-dist 28 42 4"
$ns_ at 1.811116600951 "$god_ set-dist 28 44 3"
$ns_ at 1.811116600951 "$god_ set-dist 28 48 4"
$ns_ at 1.874968994415 "$god_ set-dist 9 33 3"
$ns_ at 1.874968994415 "$god_ set-dist 13 33 2"
$ns_ at 1.874968994415 "$god_ set-dist 19 33 2"
$ns_ at 1.874968994415 "$god_ set-dist 33 37 1"
$ns_ at 1.874968994415 "$god_ set-dist 33 46 2"
$ns_ at 1.984810461940 "$god_ set-dist 28 43 1"
$ns_ at 2.883093010229 "$god_ set-dist 6 23 1"
$ns_ at 2.883093010229 "$god_ set-dist 18 23 2"
$ns_ at 2.883093010229 "$god_ set-dist 23 29 2"
$ns_ at 2.883093010229 "$god_ set-dist 23 42 2"
$ns_ at 3.090642200934 "$god_ set-dist 7 11 1"
$ns_ at 3.106895596796 "$god_ set-dist 2 32 1"
$ns_ at 3.106895596796 "$god_ set-dist 10 32 3"
$ns_ at 3.106895596796 "$god_ set-dist 20 32 3"
$ns_ at 3.106895596796 "$god_ set-dist 22 32 2"
$ns_ at 3.295279662047 "$god_ set-dist 21 47 1"
$ns_ at 3.434927106942 "$god_ set-dist 3 21 1"
$ns_ at 3.869209122873 "$god_ set-dist 1 36 1"
$ns_ at 3.869209122873 "$god_ set-dist 3 36 2"
$ns_ at 3.869209122873 "$god_ set-dist 7 36 2"
$ns_ at 3.869209122873 "$god_ set-dist 9 36 4"
$ns_ at 3.869209122873 "$god_ set-dist 10 36 4"
$ns_ at 3.869209122873 "$god_ set-dist 11 36 3"
$ns_ at 3.869209122873 "$god_ set-dist 13 36 3"
$ns_ at 3.869209122873 "$god_ set-dist 17 36 2"
$ns_ at 3.869209122873 "$god_ set-dist 19 36 3"
$ns_ at 3.869209122873 "$god_ set-dist 20 36 4"
$ns_ at 3.869209122873 "$god_ set-dist 21 36 3"
$ns_ at 3.869209122873 "$god_ set-dist 25 36 3"
$ns_ at 3.869209122873 "$god_ set-dist 26 36 2"
$ns_ at 3.869209122873 "$god_ set-dist 28 36 3"
$ns_ at 3.869209122873 "$god_ set-dist 30 36 3"
$ns_ at 3.869209122873 "$god_ set-dist 33 36 2"
$ns_ at 3.869209122873 "$god_ set-dist 34 36 3"
$ns_ at 3.869209122873 "$god_ set-dist 36 37 2"
$ns_ at 3.869209122873 "$god_ set-dist 36 38 3"
$ns_ at 3.869209122873 "$god_ set-dist 36 39 2"
$ns_ at 3.869209122873 "$god_ set-dist 36 41 2"
$ns_ at 3.869209122873 "$god_ set-dist 36 43 2"
$ns_ at 3.869209122873 "$god_ set-dist 36 46 3"
$ns_ at 3.869209122873 "$god_ set-dist 36 47 2"
$ns_ at 3.869209122873 "$god_ set-dist 36 49 2"
$ns_ at 3.950272187063 "$god_ set-dist 0 1 1"
$ns_ at 3.950272187063 "$god_ set-dist 0 18 2"
$ns_ at 3.950272187063 "$god_ set-dist 0 36 2"
$ns_ at 3.950272187063 "$god_ set-dist 1 12 2"
$ns_ at 3.950272187063 "$god_ set-dist 1 22 2"
$ns_ at 3.950272187063 "$god_ set-dist 12 18 3"
$ns_ at 3.950272187063 "$god_ set-dist 12 36 3"
$ns_ at 3.950272187063 "$god_ set-dist 18 22 3"
$ns_ at 3.950272187063 "$god_ set-dist 22 36 3"
$ns_ at 4.293883719232 "$god_ set-dist 9 45 1"
$ns_ at 4.491590268209 "$god_ set-dist 3 17 1"
$ns_ at 5.204970774176 "$god_ set-dist 8 33 2"
$ns_ at 5.204970774176 "$god_ set-dist 15 33 1"
$ns_ at 5.204970774176 "$god_ set-dist 16 33 2"
$ns_ at 5.233433191400 "$god_ set-dist 0 26 1"
$ns_ at 5.233433191400 "$god_ set-dist 12 26 2"
$ns_ at 5.233433191400 "$god_ set-dist 22 26 2"
$ns_ at 5.233433191400 "$god_ set-dist 26 34 2"
$ns_ at 5.240122188582 "$god_ set-dist 4 11 2"
$ns_ at 5.560346801507 "$god_ set-dist 13 16 2"
$ns_ at 5.560346801507 "$god_ set-dist 16 21 2"
$ns_ at 5.560346801507 "$god_ set-dist 16 41 1"
$ns_ at 5.800466267319 "$god_ set-dist 3 39 1"
$ns_ at 5.949051418528 "$god_ set-dist 20 34 1"
$ns_ at 5.949051418528 "$god_ set-dist 20 35 2"
$ns_ at 6.364785651059 "$god_ set-dist 10 35 2"
$ns_ at 6.364785651059 "$god_ set-dist 22 35 1"
$ns_ at 6.492776604837 "$god_ set-dist 1 45 2"
$ns_ at 6.492776604837 "$god_ set-dist 3 45 2"
$ns_ at 6.492776604837 "$god_ set-dist 7 45 2"
$ns_ at 6.492776604837 "$god_ set-dist 17 45 3"
$ns_ at 6.492776604837 "$god_ set-dist 21 45 2"
$ns_ at 6.492776604837 "$god_ set-dist 28 45 3"
$ns_ at 6.492776604837 "$god_ set-dist 36 45 3"
$ns_ at 6.492776604837 "$god_ set-dist 37 45 2"
$ns_ at 6.492776604837 "$god_ set-dist 39 45 3"
$ns_ at 6.492776604837 "$god_ set-dist 41 45 1"
$ns_ at 6.492776604837 "$god_ set-dist 43 45 2"
$ns_ at 6.492776604837 "$god_ set-dist 45 47 2"
$ns_ at 6.585395390813 "$god_ set-dist 6 20 3"
$ns_ at 6.585395390813 "$god_ set-dist 6 34 2"
$ns_ at 6.585395390813 "$god_ set-dist 12 23 2"
$ns_ at 6.585395390813 "$god_ set-dist 13 23 2"
$ns_ at 6.585395390813 "$god_ set-dist 19 23 2"
$ns_ at 6.585395390813 "$god_ set-dist 20 23 2"
$ns_ at 6.585395390813 "$god_ set-dist 20 42 4"
$ns_ at 6.585395390813 "$god_ set-dist 23 34 1"
$ns_ at 6.585395390813 "$god_ set-dist 23 46 2"
$ns_ at 6.585395390813 "$god_ set-dist 34 42 3"
$ns_ at 6.660644731513 "$god_ set-dist 12 27 2"
$ns_ at 6.660644731513 "$god_ set-dist 12 31 2"
$ns_ at 6.660644731513 "$god_ set-dist 12 45 1"
$ns_ at 6.660644731513 "$god_ set-dist 25 45 2"
$ns_ at 6.660644731513 "$god_ set-dist 38 45 2"
$ns_ at 6.948298803602 "$god_ set-dist 16 21 3"
$ns_ at 6.948298803602 "$god_ set-dist 21 35 3"
$ns_ at 6.948298803602 "$god_ set-dist 21 41 2"
$ns_ at 7.379690782630 "$god_ set-dist 14 21 2"
$ns_ at 7.379690782630 "$god_ set-dist 21 22 1"
$ns_ at 7.379690782630 "$god_ set-dist 21 35 2"
$ns_ at 7.456014441699 "$god_ set-dist 7 17 1"
$ns_ at 7.475376393569 "$god_ set-dist 1 4 1"
$ns_ at 7.475376393569 "$god_ set-dist 4 18 2"
$ns_ at 7.475376393569 "$god_ set-dist 4 36 2"
$ns_ at 7.956322132822 "$god_ set-dist 17 43 1"
$ns_ at 8.004319592720 "$god_ set-dist 13 31 2"
$ns_ at 8.004319592720 "$god_ set-dist 19 31 2"
$ns_ at 8.004319592720 "$god_ set-dist 20 31 2"
$ns_ at 8.004319592720 "$god_ set-dist 31 34 1"
$ns_ at 8.004319592720 "$god_ set-dist 31 46 2"
$ns_ at 8.190688404328 "$god_ set-dist 3 11 1"
$ns_ at 8.459681292486 "$god_ set-dist 1 49 2"
$ns_ at 8.459681292486 "$god_ set-dist 18 49 3"
$ns_ at 8.459681292486 "$god_ set-dist 29 49 3"
$ns_ at 8.459681292486 "$god_ set-dist 36 49 3"
$ns_ at 8.459681292486 "$god_ set-dist 42 49 4"
$ns_ at 8.459681292486 "$god_ set-dist 44 49 3"
$ns_ at 8.459681292486 "$god_ set-dist 48 49 4"
$ns_ at 8.557891796349 "$god_ set-dist 29 32 1"
$ns_ at 9.130978120911 "$god_ set-dist 2 17 2"
$ns_ at 9.130978120911 "$god_ set-dist 2 28 2"
$ns_ at 9.130978120911 "$god_ set-dist 2 43 1"
$ns_ at 9.130978120911 "$god_ set-dist 14 17 3"
$ns_ at 9.130978120911 "$god_ set-dist 14 28 3"
$ns_ at 9.130978120911 "$god_ set-dist 14 43 2"
$ns_ at 9.130978120911 "$god_ set-dist 17 23 3"
$ns_ at 9.130978120911 "$god_ set-dist 17 31 3"
$ns_ at 9.130978120911 "$god_ set-dist 23 28 3"
$ns_ at 9.130978120911 "$god_ set-dist 23 43 2"
$ns_ at 9.130978120911 "$god_ set-dist 28 31 3"
$ns_ at 9.130978120911 "$god_ set-dist 31 43 2"
$ns_ at 9.131198300421 "$god_ set-dist 11 26 1"
$ns_ at 9.179686316256 "$god_ set-dist 2 18 2"
$ns_ at 9.179686316256 "$god_ set-dist 18 32 1"
$ns_ at 9.179686316256 "$god_ set-dist 18 35 2"
$ns_ at 9.557124680390 "$god_ set-dist 2 6 1"
$ns_ at 9.557124680390 "$god_ set-dist 2 42 2"
$ns_ at 9.557124680390 "$god_ set-dist 6 10 3"
$ns_ at 9.557124680390 "$god_ set-dist 6 22 2"
$ns_ at 9.557124680390 "$god_ set-dist 10 42 4"
$ns_ at 9.557124680390 "$god_ set-dist 22 42 3"
$ns_ at 9.570109955512 "$god_ set-dist 7 39 1"
$ns_ at 9.645687885857 "$node_(45) setdest 88.862940839839 421.315427819176 0.000000000000"
$ns_ at 9.707920945085 "$god_ set-dist 1 23 2"
$ns_ at 9.707920945085 "$god_ set-dist 3 23 2"
$ns_ at 9.707920945085 "$god_ set-dist 7 23 2"
$ns_ at 9.707920945085 "$god_ set-dist 23 39 3"
$ns_ at 9.707920945085 "$god_ set-dist 23 40 1"
$ns_ at 9.824324724977 "$god_ set-dist 8 9 3"
$ns_ at 9.824324724977 "$god_ set-dist 8 14 2"
$ns_ at 9.824324724977 "$god_ set-dist 8 27 1"
$ns_ at 9.824324724977 "$god_ set-dist 8 45 2"
$ns_ at 9.824324724977 "$god_ set-dist 9 48 4"
$ns_ at 9.824324724977 "$god_ set-dist 14 36 3"
$ns_ at 9.824324724977 "$god_ set-dist 14 48 3"
$ns_ at 9.824324724977 "$god_ set-dist 27 36 2"
$ns_ at 9.824324724977 "$god_ set-dist 27 48 2"
$ns_ at 9.824324724977 "$god_ set-dist 45 48 3"
$ns_ at 9.976008812128 "$god_ set-dist 5 16 1"
$ns_ at 10.048524044043 "$god_ set-dist 22 41 1"
$ns_ at 10.095026683932 "$god_ set-dist 15 24 1"
$ns_ at 10.095026683932 "$god_ set-dist 24 26 2"
$ns_ at 10.095026683932 "$god_ set-dist 24 33 2"
$ns_ at 10.095026683932 "$god_ set-dist 24 37 2"
$ns_ at 10.095026683932 "$god_ set-dist 24 47 2"
$ns_ at 10.208769431632 "$god_ set-dist 16 25 2"
$ns_ at 10.208769431632 "$god_ set-dist 25 35 2"
$ns_ at 10.208769431632 "$god_ set-dist 25 41 1"
$ns_ at 10.251729754897 "$god_ set-dist 10 43 2"
$ns_ at 10.251729754897 "$god_ set-dist 20 43 2"
$ns_ at 10.251729754897 "$god_ set-dist 25 43 1"
$ns_ at 10.645687885857 "$node_(45) setdest 435.922768840551 23.368229253821 1.280693394687"
$ns_ at 10.654455823700 "$god_ set-dist 9 16 2"
$ns_ at 10.654455823700 "$god_ set-dist 9 44 3"
$ns_ at 10.654455823700 "$god_ set-dist 12 16 2"
$ns_ at 10.654455823700 "$god_ set-dist 16 45 1"
$ns_ at 10.654455823700 "$god_ set-dist 44 45 2"
$ns_ at 10.736271777028 "$god_ set-dist 4 49 2"
$ns_ at 10.899238948866 "$god_ set-dist 32 42 1"
$ns_ at 10.899238948866 "$god_ set-dist 35 42 2"
$ns_ at 10.915425672796 "$god_ set-dist 7 9 2"
$ns_ at 10.915425672796 "$god_ set-dist 7 13 1"
$ns_ at 10.915425672796 "$god_ set-dist 9 17 3"
$ns_ at 10.915425672796 "$god_ set-dist 9 39 3"
$ns_ at 10.915425672796 "$god_ set-dist 13 17 2"
$ns_ at 10.915425672796 "$god_ set-dist 13 39 2"
$ns_ at 11.520949727860 "$god_ set-dist 1 8 1"
$ns_ at 11.520949727860 "$god_ set-dist 8 17 2"
$ns_ at 11.520949727860 "$god_ set-dist 8 39 2"
$ns_ at 11.810825326205 "$god_ set-dist 9 11 2"
$ns_ at 11.810825326205 "$god_ set-dist 11 13 1"
$ns_ at 11.820204262220 "$god_ set-dist 1 9 2"
$ns_ at 11.820204262220 "$god_ set-dist 3 9 2"
$ns_ at 11.820204262220 "$god_ set-dist 4 9 1"
$ns_ at 11.820204262220 "$god_ set-dist 5 9 2"
$ns_ at 11.820204262220 "$god_ set-dist 9 15 2"
$ns_ at 11.820204262220 "$god_ set-dist 9 18 3"
$ns_ at 11.820204262220 "$god_ set-dist 9 29 3"
$ns_ at 11.820204262220 "$god_ set-dist 9 36 3"
$ns_ at 11.820204262220 "$god_ set-dist 9 40 2"
$ns_ at 11.820204262220 "$god_ set-dist 9 43 2"
$ns_ at 11.820204262220 "$god_ set-dist 9 47 2"
$ns_ at 11.980991466364 "$god_ set-dist 2 39 2"
$ns_ at 11.980991466364 "$god_ set-dist 14 39 3"
$ns_ at 11.980991466364 "$god_ set-dist 31 39 3"
$ns_ at 11.980991466364 "$god_ set-dist 39 43 1"
$ns_ at 12.260835849003 "$god_ set-dist 18 35 3"
$ns_ at 12.260835849003 "$god_ set-dist 32 35 2"
$ns_ at 12.260835849003 "$god_ set-dist 35 42 3"
$ns_ at 12.828895901222 "$god_ set-dist 9 21 1"
$ns_ at 12.828895901222 "$god_ set-dist 9 49 2"
$ns_ at 13.174827206365 "$god_ set-dist 16 44 2"
$ns_ at 13.174827206365 "$god_ set-dist 44 45 3"
$ns_ at 13.347916530701 "$god_ set-dist 6 35 1"
$ns_ at 13.347916530701 "$god_ set-dist 18 35 2"
$ns_ at 13.347916530701 "$god_ set-dist 35 42 2"
$ns_ at 13.551719790135 "$god_ set-dist 30 47 1"
$ns_ at 13.563826854456 "$god_ set-dist 16 19 2"
$ns_ at 13.563826854456 "$god_ set-dist 19 27 2"
$ns_ at 13.563826854456 "$god_ set-dist 19 45 1"
$ns_ at 13.563826854456 "$god_ set-dist 30 45 2"
$ns_ at 13.706103120874 "$god_ set-dist 4 45 1"
$ns_ at 13.883005999758 "$god_ set-dist 5 35 1"
$ns_ at 13.883005999758 "$god_ set-dist 26 35 2"
$ns_ at 13.883005999758 "$god_ set-dist 33 35 2"
$ns_ at 14.043990611761 "$god_ set-dist 24 29 1"
$ns_ at 14.177345078321 "$god_ set-dist 1 31 2"
$ns_ at 14.177345078321 "$god_ set-dist 3 31 2"
$ns_ at 14.177345078321 "$god_ set-dist 7 31 2"
$ns_ at 14.177345078321 "$god_ set-dist 31 40 1"
$ns_ at 14.600227142346 "$god_ set-dist 17 19 2"
$ns_ at 14.600227142346 "$god_ set-dist 17 37 1"
$ns_ at 14.600227142346 "$god_ set-dist 17 46 2"
$ns_ at 14.697606044324 "$god_ set-dist 14 25 2"
$ns_ at 14.697606044324 "$god_ set-dist 22 25 1"
$ns_ at 14.697606044324 "$god_ set-dist 22 28 2"
$ns_ at 14.733884701489 "$god_ set-dist 3 13 1"
$ns_ at 14.922679671526 "$god_ set-dist 0 28 1"
$ns_ at 14.922679671526 "$god_ set-dist 28 34 2"
$ns_ at 15.044425753423 "$god_ set-dist 5 24 1"
$ns_ at 15.209690288955 "$god_ set-dist 4 35 1"
$ns_ at 15.209690288955 "$god_ set-dist 30 35 2"
$ns_ at 15.209690288955 "$god_ set-dist 35 38 2"
$ns_ at 15.454997514188 "$god_ set-dist 5 8 1"
$ns_ at 15.563166576917 "$god_ set-dist 8 20 3"
$ns_ at 15.563166576917 "$god_ set-dist 8 34 2"
$ns_ at 15.563166576917 "$god_ set-dist 20 29 3"
$ns_ at 15.563166576917 "$god_ set-dist 20 40 2"
$ns_ at 15.563166576917 "$god_ set-dist 20 44 3"
$ns_ at 15.563166576917 "$god_ set-dist 20 48 4"
$ns_ at 15.563166576917 "$god_ set-dist 29 34 2"
$ns_ at 15.563166576917 "$god_ set-dist 34 40 1"
$ns_ at 15.563166576917 "$god_ set-dist 34 44 2"
$ns_ at 15.563166576917 "$god_ set-dist 34 48 3"
$ns_ at 15.752117966982 "$god_ set-dist 0 10 1"
$ns_ at 15.752117966982 "$god_ set-dist 1 10 2"
$ns_ at 15.752117966982 "$god_ set-dist 5 10 2"
$ns_ at 15.752117966982 "$god_ set-dist 8 10 3"
$ns_ at 15.752117966982 "$god_ set-dist 10 15 2"
$ns_ at 15.752117966982 "$god_ set-dist 10 18 3"
$ns_ at 15.752117966982 "$god_ set-dist 10 26 2"
$ns_ at 15.752117966982 "$god_ set-dist 10 29 3"
$ns_ at 15.752117966982 "$god_ set-dist 10 36 3"
$ns_ at 15.752117966982 "$god_ set-dist 10 40 2"
$ns_ at 15.752117966982 "$god_ set-dist 10 44 3"
$ns_ at 15.752117966982 "$god_ set-dist 10 48 4"
$ns_ at 15.899351339209 "$god_ set-dist 19 39 2"
$ns_ at 15.899351339209 "$god_ set-dist 37 39 1"
$ns_ at 15.899351339209 "$god_ set-dist 39 46 2"
$ns_ at 15.982615297891 "$god_ set-dist 3 38 1"
$ns_ at 16.054653400174 "$god_ set-dist 3 30 1"
$ns_ at 16.386993915183 "$god_ set-dist 5 20 2"
$ns_ at 16.386993915183 "$god_ set-dist 5 34 1"
$ns_ at 16.386993915183 "$god_ set-dist 33 34 2"
$ns_ at 16.567998830720 "$god_ set-dist 12 14 1"
$ns_ at 16.567998830720 "$god_ set-dist 14 38 2"
$ns_ at 16.676808020520 "$god_ set-dist 4 10 1"
$ns_ at 17.162264295999 "$god_ set-dist 13 24 2"
$ns_ at 17.162264295999 "$god_ set-dist 24 25 2"
$ns_ at 17.162264295999 "$god_ set-dist 24 41 1"
$ns_ at 17.491295817736 "$god_ set-dist 18 24 1"
$ns_ at 17.635819214593 "$god_ set-dist 8 14 3"
$ns_ at 17.635819214593 "$god_ set-dist 14 27 2"
$ns_ at 17.635819214593 "$god_ set-dist 14 36 4"
$ns_ at 17.635819214593 "$god_ set-dist 14 48 4"
$ns_ at 18.068874222809 "$god_ set-dist 6 15 1"
$ns_ at 18.068874222809 "$god_ set-dist 6 26 2"
$ns_ at 18.068874222809 "$god_ set-dist 6 33 2"
$ns_ at 18.068874222809 "$god_ set-dist 6 37 2"
$ns_ at 18.068874222809 "$god_ set-dist 6 47 2"
$ns_ at 18.161290284289 "$god_ set-dist 20 38 2"
$ns_ at 18.316364906512 "$god_ set-dist 23 25 2"
$ns_ at 18.316364906512 "$god_ set-dist 23 37 2"
$ns_ at 18.316364906512 "$god_ set-dist 23 41 1"
$ns_ at 18.316364906512 "$god_ set-dist 23 47 2"
$ns_ at 18.356384414515 "$god_ set-dist 8 14 2"
$ns_ at 18.356384414515 "$god_ set-dist 14 16 1"
$ns_ at 18.356384414515 "$god_ set-dist 14 36 3"
$ns_ at 18.356384414515 "$god_ set-dist 14 48 3"
$ns_ at 18.549562108676 "$god_ set-dist 0 33 1"
$ns_ at 18.549562108676 "$god_ set-dist 10 33 2"
$ns_ at 18.549562108676 "$god_ set-dist 12 33 2"
$ns_ at 18.549562108676 "$god_ set-dist 22 33 2"
$ns_ at 18.669917341261 "$god_ set-dist 5 26 2"
$ns_ at 18.669917341261 "$god_ set-dist 26 35 3"
$ns_ at 18.749868264210 "$god_ set-dist 2 7 1"
$ns_ at 18.749868264210 "$god_ set-dist 7 14 2"
$ns_ at 18.850287652295 "$god_ set-dist 10 23 2"
$ns_ at 18.850287652295 "$god_ set-dist 21 23 2"
$ns_ at 18.850287652295 "$god_ set-dist 22 23 1"
$ns_ at 18.870731324054 "$god_ set-dist 15 35 1"
$ns_ at 18.870731324054 "$god_ set-dist 26 35 2"
$ns_ at 18.994305788463 "$god_ set-dist 9 25 1"
$ns_ at 18.994305788463 "$god_ set-dist 9 28 2"
$ns_ at 19.070223242979 "$god_ set-dist 10 31 2"
$ns_ at 19.070223242979 "$god_ set-dist 21 31 2"
$ns_ at 19.070223242979 "$god_ set-dist 22 31 1"
$ns_ at 19.070223242979 "$god_ set-dist 25 31 2"
$ns_ at 19.168105867378 "$god_ set-dist 2 36 2"
$ns_ at 19.168105867378 "$god_ set-dist 23 36 2"
$ns_ at 19.168105867378 "$god_ set-dist 31 36 2"
$ns_ at 19.168105867378 "$god_ set-dist 32 36 1"
$ns_ at 19.232610010518 "$god_ set-dist 5 6 1"
$ns_ at 19.591028746335 "$god_ set-dist 31 32 2"
$ns_ at 19.591028746335 "$god_ set-dist 31 36 3"
$ns_ at 19.687410806138 "$god_ set-dist 6 17 2"
$ns_ at 19.687410806138 "$god_ set-dist 15 17 1"
$ns_ at 19.687410806138 "$god_ set-dist 16 17 2"
$ns_ at 19.687410806138 "$god_ set-dist 17 24 2"
$ns_ at 19.687410806138 "$god_ set-dist 17 35 2"
$ns_ at 19.710086211426 "$god_ set-dist 16 20 2"
$ns_ at 19.710086211426 "$god_ set-dist 16 34 1"
$ns_ at 19.710086211426 "$god_ set-dist 16 46 2"
$ns_ at 20.122881597550 "$god_ set-dist 7 38 1"
$ns_ at 20.657568308872 "$god_ set-dist 23 33 2"
$ns_ at 20.657568308872 "$god_ set-dist 33 41 1"
$ns_ at 20.657568308872 "$god_ set-dist 33 45 2"
$ns_ at 20.763890176456 "$god_ set-dist 5 23 1"
$ns_ at 20.814785435194 "$god_ set-dist 11 33 1"
$ns_ at 20.873152290684 "$god_ set-dist 10 16 2"
$ns_ at 20.873152290684 "$god_ set-dist 10 34 1"
$ns_ at 21.535805855550 "$god_ set-dist 5 22 1"
$ns_ at 21.535805855550 "$god_ set-dist 8 22 2"
$ns_ at 21.535805855550 "$god_ set-dist 22 29 2"
$ns_ at 21.535805855550 "$god_ set-dist 22 44 2"
$ns_ at 21.535805855550 "$god_ set-dist 22 48 3"
$ns_ at 21.773865983499 "$god_ set-dist 15 36 1"
$ns_ at 21.773865983499 "$god_ set-dist 35 36 2"
$ns_ at 21.880627355625 "$god_ set-dist 38 47 1"
$ns_ at 21.925973397125 "$god_ set-dist 10 17 2"
$ns_ at 21.925973397125 "$god_ set-dist 10 37 1"
$ns_ at 21.925973397125 "$god_ set-dist 10 39 2"
$ns_ at 22.150960199409 "$god_ set-dist 5 27 1"
$ns_ at 22.150960199409 "$god_ set-dist 27 33 2"
$ns_ at 22.150960199409 "$god_ set-dist 27 37 2"
$ns_ at 22.150960199409 "$god_ set-dist 27 47 2"
$ns_ at 22.348129353631 "$god_ set-dist 6 42 2"
$ns_ at 22.348129353631 "$god_ set-dist 31 42 3"
$ns_ at 22.348129353631 "$god_ set-dist 35 42 3"
$ns_ at 22.595066878582 "$god_ set-dist 5 32 1"
$ns_ at 22.595066878582 "$god_ set-dist 32 33 2"
$ns_ at 22.595066878582 "$god_ set-dist 32 37 2"
$ns_ at 22.595066878582 "$god_ set-dist 32 47 2"
$ns_ at 22.809338555976 "$god_ set-dist 15 32 1"
$ns_ at 22.809338555976 "$god_ set-dist 17 32 2"
$ns_ at 22.809338555976 "$god_ set-dist 26 32 2"
$ns_ at 22.842650513474 "$god_ set-dist 20 36 3"
$ns_ at 22.842650513474 "$god_ set-dist 31 36 2"
$ns_ at 22.842650513474 "$god_ set-dist 34 36 2"
$ns_ at 22.842650513474 "$god_ set-dist 36 40 1"
$ns_ at 23.022940289954 "$god_ set-dist 15 20 2"
$ns_ at 23.022940289954 "$god_ set-dist 15 34 1"
$ns_ at 23.022940289954 "$god_ set-dist 17 34 2"
$ns_ at 23.028790111860 "$god_ set-dist 27 46 2"
$ns_ at 23.028790111860 "$god_ set-dist 45 46 1"
$ns_ at 23.655942896421 "$god_ set-dist 21 43 1"
$ns_ at 23.820719196317 "$god_ set-dist 6 13 2"
$ns_ at 23.820719196317 "$god_ set-dist 6 25 2"
$ns_ at 23.820719196317 "$god_ set-dist 6 41 1"
$ns_ at 23.828799075105 "$god_ set-dist 9 28 3"
$ns_ at 23.828799075105 "$god_ set-dist 20 28 3"
$ns_ at 23.828799075105 "$god_ set-dist 25 28 2"
$ns_ at 23.993986370999 "$god_ set-dist 28 38 1"
$ns_ at 24.051909128511 "$god_ set-dist 6 36 1"
$ns_ at 24.162268447683 "$god_ set-dist 31 47 2"
$ns_ at 24.162268447683 "$god_ set-dist 40 47 1"
$ns_ at 24.440223332115 "$god_ set-dist 0 42 2"
$ns_ at 24.440223332115 "$god_ set-dist 1 42 1"
$ns_ at 24.440223332115 "$god_ set-dist 3 42 2"
$ns_ at 24.440223332115 "$god_ set-dist 4 42 2"
$ns_ at 24.440223332115 "$god_ set-dist 7 42 2"
$ns_ at 24.440223332115 "$god_ set-dist 9 42 3"
$ns_ at 24.440223332115 "$god_ set-dist 10 42 3"
$ns_ at 24.440223332115 "$god_ set-dist 11 42 3"
$ns_ at 24.440223332115 "$god_ set-dist 12 42 3"
$ns_ at 24.440223332115 "$god_ set-dist 13 42 3"
$ns_ at 24.440223332115 "$god_ set-dist 17 42 2"
$ns_ at 24.440223332115 "$god_ set-dist 19 42 3"
$ns_ at 24.440223332115 "$god_ set-dist 21 42 3"
$ns_ at 24.440223332115 "$god_ set-dist 25 42 3"
$ns_ at 24.440223332115 "$god_ set-dist 26 42 2"
$ns_ at 24.440223332115 "$god_ set-dist 28 42 3"
$ns_ at 24.440223332115 "$god_ set-dist 30 42 3"
$ns_ at 24.440223332115 "$god_ set-dist 33 42 2"
$ns_ at 24.440223332115 "$god_ set-dist 37 42 2"
$ns_ at 24.440223332115 "$god_ set-dist 38 42 3"
$ns_ at 24.440223332115 "$god_ set-dist 39 42 2"
$ns_ at 24.440223332115 "$god_ set-dist 41 42 2"
$ns_ at 24.440223332115 "$god_ set-dist 42 43 2"
$ns_ at 24.440223332115 "$god_ set-dist 42 46 3"
$ns_ at 24.440223332115 "$god_ set-dist 42 47 2"
$ns_ at 24.440223332115 "$god_ set-dist 42 49 3"
$ns_ at 24.455388437921 "$god_ set-dist 1 32 1"
$ns_ at 24.455388437921 "$god_ set-dist 32 39 2"
$ns_ at 24.601419819199 "$god_ set-dist 25 34 1"
$ns_ at 24.606072529909 "$god_ set-dist 1 2 1"
$ns_ at 24.606072529909 "$god_ set-dist 1 14 2"
$ns_ at 24.694020539124 "$god_ set-dist 6 26 3"
$ns_ at 24.694020539124 "$god_ set-dist 15 26 2"
$ns_ at 24.694020539124 "$god_ set-dist 16 26 3"
$ns_ at 24.694020539124 "$god_ set-dist 24 26 3"
$ns_ at 24.694020539124 "$god_ set-dist 26 35 3"
$ns_ at 25.047933133163 "$god_ set-dist 20 27 2"
$ns_ at 25.047933133163 "$god_ set-dist 20 45 1"
$ns_ at 25.236667292365 "$god_ set-dist 1 6 1"
$ns_ at 25.236667292365 "$god_ set-dist 6 26 2"
$ns_ at 25.236667292365 "$god_ set-dist 6 39 2"
$ns_ at 25.298879864046 "$god_ set-dist 0 9 1"
$ns_ at 25.298879864046 "$god_ set-dist 9 26 2"
$ns_ at 25.298879864046 "$god_ set-dist 9 28 2"
$ns_ at 25.298879864046 "$god_ set-dist 9 33 2"
$ns_ at 25.359269662116 "$god_ set-dist 11 17 1"
$ns_ at 25.685311935613 "$god_ set-dist 1 24 1"
$ns_ at 25.685311935613 "$god_ set-dist 24 26 2"
$ns_ at 25.685311935613 "$god_ set-dist 24 39 2"
$ns_ at 25.685931129912 "$god_ set-dist 0 17 1"
$ns_ at 25.685931129912 "$god_ set-dist 9 17 2"
$ns_ at 25.685931129912 "$god_ set-dist 12 17 2"
$ns_ at 25.685931129912 "$god_ set-dist 17 22 2"
$ns_ at 25.777116659597 "$god_ set-dist 5 31 1"
$ns_ at 25.777116659597 "$god_ set-dist 31 33 2"
$ns_ at 25.777116659597 "$god_ set-dist 31 37 2"
$ns_ at 25.953725908381 "$god_ set-dist 31 41 1"
$ns_ at 26.001196349032 "$god_ set-dist 4 23 1"
$ns_ at 26.001196349032 "$god_ set-dist 23 30 2"
$ns_ at 26.001196349032 "$god_ set-dist 23 38 2"
$ns_ at 26.098453782049 "$god_ set-dist 5 45 1"
$ns_ at 26.098453782049 "$god_ set-dist 29 45 2"
$ns_ at 26.098453782049 "$god_ set-dist 44 45 2"
$ns_ at 26.710669723005 "$god_ set-dist 6 9 2"
$ns_ at 26.710669723005 "$god_ set-dist 9 24 2"
$ns_ at 26.710669723005 "$god_ set-dist 9 35 1"
$ns_ at 27.049066700498 "$god_ set-dist 7 34 1"
$ns_ at 27.049066700498 "$god_ set-dist 34 39 2"
$ns_ at 27.128641331560 "$god_ set-dist 15 23 1"
$ns_ at 27.128641331560 "$god_ set-dist 17 23 2"
$ns_ at 27.191463171040 "$god_ set-dist 12 27 3"
$ns_ at 27.191463171040 "$god_ set-dist 19 27 3"
$ns_ at 27.191463171040 "$god_ set-dist 20 27 3"
$ns_ at 27.191463171040 "$god_ set-dist 27 45 2"
$ns_ at 27.191463171040 "$god_ set-dist 27 46 3"
$ns_ at 27.397405077140 "$god_ set-dist 22 36 2"
$ns_ at 27.397405077140 "$god_ set-dist 22 40 1"
$ns_ at 27.437255403411 "$god_ set-dist 17 31 2"
$ns_ at 27.437255403411 "$god_ set-dist 17 41 1"
$ns_ at 27.437255403411 "$god_ set-dist 17 45 2"
$ns_ at 27.486836053624 "$god_ set-dist 0 2 2"
$ns_ at 27.622818072505 "$god_ set-dist 34 43 1"
$ns_ at 27.723771074162 "$god_ set-dist 13 27 2"
$ns_ at 27.723771074162 "$god_ set-dist 17 27 2"
$ns_ at 27.723771074162 "$god_ set-dist 25 27 2"
$ns_ at 27.723771074162 "$god_ set-dist 27 41 1"
$ns_ at 28.041943676308 "$god_ set-dist 16 21 2"
$ns_ at 28.041943676308 "$god_ set-dist 16 22 1"
$ns_ at 28.097759185714 "$god_ set-dist 15 39 1"
$ns_ at 28.097759185714 "$god_ set-dist 16 39 2"
$ns_ at 28.097759185714 "$god_ set-dist 23 39 2"
$ns_ at 28.097759185714 "$god_ set-dist 35 39 2"
$ns_ at 28.302456326301 "$god_ set-dist 21 34 1"
$ns_ at 28.311849639136 "$god_ set-dist 13 43 1"
$ns_ at 28.361912464645 "$god_ set-dist 1 26 2"
$ns_ at 28.361912464645 "$god_ set-dist 6 26 3"
$ns_ at 28.361912464645 "$god_ set-dist 8 26 3"
$ns_ at 28.361912464645 "$god_ set-dist 18 26 3"
$ns_ at 28.361912464645 "$god_ set-dist 24 26 3"
$ns_ at 28.361912464645 "$god_ set-dist 26 29 3"
$ns_ at 28.361912464645 "$god_ set-dist 26 32 3"
$ns_ at 28.361912464645 "$god_ set-dist 26 36 3"
$ns_ at 28.361912464645 "$god_ set-dist 26 42 3"
$ns_ at 28.361912464645 "$god_ set-dist 26 44 3"
$ns_ at 28.361912464645 "$god_ set-dist 26 48 4"
$ns_ at 28.626483504647 "$god_ set-dist 1 20 2"
$ns_ at 28.626483504647 "$god_ set-dist 4 20 1"
$ns_ at 28.626483504647 "$god_ set-dist 18 20 3"
$ns_ at 28.626483504647 "$god_ set-dist 20 42 3"
$ns_ at 28.772004709490 "$god_ set-dist 13 29 2"
$ns_ at 28.772004709490 "$god_ set-dist 13 48 3"
$ns_ at 28.772004709490 "$god_ set-dist 25 29 2"
$ns_ at 28.772004709490 "$god_ set-dist 25 48 3"
$ns_ at 28.772004709490 "$god_ set-dist 29 41 1"
$ns_ at 28.772004709490 "$god_ set-dist 41 48 2"
$ns_ at 28.961431133299 "$god_ set-dist 14 20 1"
$ns_ at 29.120787634121 "$god_ set-dist 6 12 2"
$ns_ at 29.120787634121 "$god_ set-dist 12 24 2"
$ns_ at 29.120787634121 "$god_ set-dist 12 27 2"
$ns_ at 29.120787634121 "$god_ set-dist 12 35 1"
$ns_ at 29.295029783335 "$god_ set-dist 8 14 3"
$ns_ at 29.295029783335 "$god_ set-dist 8 16 2"
$ns_ at 29.295029783335 "$god_ set-dist 14 48 4"
$ns_ at 29.295029783335 "$god_ set-dist 16 48 3"
$ns_ at 29.297806849679 "$god_ set-dist 24 36 1"
$ns_ at 29.317305269648 "$god_ set-dist 3 14 2"
$ns_ at 29.317305269648 "$god_ set-dist 4 14 1"
$ns_ at 29.317305269648 "$god_ set-dist 14 30 2"
$ns_ at 29.317305269648 "$god_ set-dist 14 37 2"
$ns_ at 29.317305269648 "$god_ set-dist 14 47 2"
$ns_ at 29.480573900863 "$god_ set-dist 13 44 2"
$ns_ at 29.480573900863 "$god_ set-dist 25 44 2"
$ns_ at 29.480573900863 "$god_ set-dist 41 44 1"
$ns_ at 29.518299628334 "$god_ set-dist 1 37 2"
$ns_ at 29.518299628334 "$god_ set-dist 18 37 3"
$ns_ at 29.518299628334 "$god_ set-dist 37 42 3"
$ns_ at 29.559537354742 "$god_ set-dist 4 31 1"
$ns_ at 29.559537354742 "$god_ set-dist 30 31 2"
$ns_ at 29.559537354742 "$god_ set-dist 31 38 2"
$ns_ at 29.826955851676 "$god_ set-dist 15 22 1"
$ns_ at 29.826955851676 "$god_ set-dist 22 39 2"
$ns_ at 30.067983095393 "$god_ set-dist 5 17 1"
$ns_ at 30.205262752630 "$god_ set-dist 7 30 1"
$ns_ at 30.480051132064 "$god_ set-dist 21 29 2"
$ns_ at 30.480051132064 "$god_ set-dist 21 48 3"
$ns_ at 30.480051132064 "$god_ set-dist 26 29 2"
$ns_ at 30.480051132064 "$god_ set-dist 26 48 3"
$ns_ at 30.480051132064 "$god_ set-dist 28 29 2"
$ns_ at 30.480051132064 "$god_ set-dist 28 48 3"
$ns_ at 30.480051132064 "$god_ set-dist 29 43 1"
$ns_ at 30.480051132064 "$god_ set-dist 29 49 2"
$ns_ at 30.480051132064 "$god_ set-dist 43 48 2"
$ns_ at 30.480051132064 "$god_ set-dist 48 49 3"
$ns_ at 30.515376638834 "$god_ set-dist 13 32 2"
$ns_ at 30.515376638834 "$god_ set-dist 25 32 2"
$ns_ at 30.515376638834 "$god_ set-dist 32 41 1"
$ns_ at 30.727725534313 "$god_ set-dist 13 47 1"
$ns_ at 30.844450532022 "$god_ set-dist 34 37 1"
$ns_ at 30.985183289463 "$god_ set-dist 22 37 1"
$ns_ at 31.353431546442 "$god_ set-dist 7 22 1"
$ns_ at 31.831612681303 "$god_ set-dist 20 21 2"
$ns_ at 31.849448737117 "$god_ set-dist 27 29 1"
$ns_ at 32.427786956614 "$god_ set-dist 27 44 1"
$ns_ at 32.726806608682 "$god_ set-dist 13 49 1"
$ns_ at 32.784731706550 "$god_ set-dist 22 43 1"
$ns_ at 33.035929038603 "$god_ set-dist 0 1 2"
$ns_ at 33.035929038603 "$god_ set-dist 0 18 3"
$ns_ at 33.035929038603 "$god_ set-dist 0 42 3"
$ns_ at 33.234435479511 "$god_ set-dist 5 36 1"
$ns_ at 33.234435479511 "$god_ set-dist 36 45 2"
$ns_ at 33.406229495856 "$god_ set-dist 9 31 1"
$ns_ at 33.625152880821 "$god_ set-dist 13 36 2"
$ns_ at 33.625152880821 "$god_ set-dist 21 36 2"
$ns_ at 33.625152880821 "$god_ set-dist 25 36 2"
$ns_ at 33.625152880821 "$god_ set-dist 26 36 2"
$ns_ at 33.625152880821 "$god_ set-dist 28 36 2"
$ns_ at 33.625152880821 "$god_ set-dist 36 43 1"
$ns_ at 33.625152880821 "$god_ set-dist 36 49 2"
$ns_ at 33.702780434163 "$god_ set-dist 18 27 1"
$ns_ at 33.991951096406 "$god_ set-dist 1 27 1"
$ns_ at 33.991951096406 "$god_ set-dist 27 39 2"
$ns_ at 34.045331328227 "$god_ set-dist 0 40 2"
$ns_ at 34.081125177243 "$god_ set-dist 8 13 2"
$ns_ at 34.081125177243 "$god_ set-dist 8 25 2"
$ns_ at 34.081125177243 "$god_ set-dist 8 41 1"
$ns_ at 34.169983382552 "$god_ set-dist 36 41 1"
$ns_ at 34.349721391615 "$god_ set-dist 6 19 2"
$ns_ at 34.349721391615 "$god_ set-dist 19 24 2"
$ns_ at 34.349721391615 "$god_ set-dist 19 27 2"
$ns_ at 34.349721391615 "$god_ set-dist 19 35 1"
$ns_ at 34.550639168406 "$god_ set-dist 15 16 2"
$ns_ at 34.550639168406 "$god_ set-dist 16 39 3"
$ns_ at 35.277590707030 "$god_ set-dist 1 23 1"
$ns_ at 35.355171095308 "$god_ set-dist 23 32 2"
$ns_ at 35.548597076554 "$god_ set-dist 14 19 1"
$ns_ at 35.809700341628 "$god_ set-dist 10 45 1"
$ns_ at 36.002105840915 "$god_ set-dist 17 40 1"
$ns_ at 36.085756546527 "$god_ set-dist 5 14 1"
$ns_ at 36.085756546527 "$god_ set-dist 8 14 2"
$ns_ at 36.085756546527 "$god_ set-dist 14 17 2"
$ns_ at 36.085756546527 "$god_ set-dist 14 29 2"
$ns_ at 36.085756546527 "$god_ set-dist 14 33 2"
$ns_ at 36.085756546527 "$god_ set-dist 14 36 2"
$ns_ at 36.085756546527 "$god_ set-dist 14 44 2"
$ns_ at 36.085756546527 "$god_ set-dist 14 48 3"
$ns_ at 36.332591017091 "$god_ set-dist 33 40 1"
$ns_ at 36.447445105766 "$god_ set-dist 12 31 1"
$ns_ at 36.534822274187 "$god_ set-dist 1 35 1"
$ns_ at 36.534822274187 "$god_ set-dist 35 42 2"
$ns_ at 36.614537188917 "$god_ set-dist 2 48 2"
$ns_ at 36.614537188917 "$god_ set-dist 16 48 2"
$ns_ at 36.614537188917 "$god_ set-dist 32 48 1"
$ns_ at 36.767197106585 "$god_ set-dist 21 44 2"
$ns_ at 36.767197106585 "$god_ set-dist 26 44 2"
$ns_ at 36.767197106585 "$god_ set-dist 28 44 2"
$ns_ at 36.767197106585 "$god_ set-dist 43 44 1"
$ns_ at 36.767197106585 "$god_ set-dist 44 49 2"
$ns_ at 36.810261798599 "$god_ set-dist 1 34 1"
$ns_ at 36.810261798599 "$god_ set-dist 18 34 2"
$ns_ at 36.810261798599 "$god_ set-dist 34 42 2"
$ns_ at 36.991811696387 "$god_ set-dist 9 23 1"
$ns_ at 37.071309594898 "$god_ set-dist 26 35 2"
$ns_ at 37.071309594898 "$god_ set-dist 28 35 2"
$ns_ at 37.071309594898 "$god_ set-dist 35 43 1"
$ns_ at 37.071309594898 "$god_ set-dist 35 49 2"
$ns_ at 37.492432435227 "$god_ set-dist 26 30 1"
$ns_ at 37.541423216821 "$god_ set-dist 0 39 1"
$ns_ at 37.541423216821 "$god_ set-dist 9 39 2"
$ns_ at 37.541423216821 "$god_ set-dist 12 39 2"
$ns_ at 37.615892404801 "$god_ set-dist 16 39 2"
$ns_ at 37.615892404801 "$god_ set-dist 31 39 2"
$ns_ at 37.615892404801 "$god_ set-dist 39 41 1"
$ns_ at 37.615892404801 "$god_ set-dist 39 45 2"
$ns_ at 37.617885142186 "$god_ set-dist 4 16 1"
$ns_ at 37.617885142186 "$god_ set-dist 16 30 2"
$ns_ at 37.617885142186 "$god_ set-dist 16 38 2"
$ns_ at 37.688946795917 "$god_ set-dist 3 40 2"
$ns_ at 38.181837922769 "$god_ set-dist 3 34 1"
$ns_ at 38.247961107417 "$god_ set-dist 26 38 1"
$ns_ at 38.298709042887 "$god_ set-dist 14 46 1"
$ns_ at 38.301723940843 "$god_ set-dist 6 46 2"
$ns_ at 38.301723940843 "$god_ set-dist 24 46 2"
$ns_ at 38.301723940843 "$god_ set-dist 27 46 2"
$ns_ at 38.301723940843 "$god_ set-dist 35 46 1"
$ns_ at 38.393095697537 "$god_ set-dist 12 38 2"
$ns_ at 38.584932071875 "$god_ set-dist 20 25 2"
$ns_ at 38.640076553037 "$god_ set-dist 23 26 2"
$ns_ at 38.640076553037 "$god_ set-dist 23 28 2"
$ns_ at 38.640076553037 "$god_ set-dist 23 43 1"
$ns_ at 38.640076553037 "$god_ set-dist 23 49 2"
$ns_ at 38.692461754331 "$god_ set-dist 3 10 1"
$ns_ at 38.879373922043 "$god_ set-dist 40 45 1"
$ns_ at 39.050872711136 "$god_ set-dist 27 36 1"
$ns_ at 39.990923920821 "$god_ set-dist 6 20 2"
$ns_ at 39.990923920821 "$god_ set-dist 20 24 2"
$ns_ at 39.990923920821 "$god_ set-dist 20 27 2"
$ns_ at 39.990923920821 "$god_ set-dist 20 31 1"
$ns_ at 40.046050084921 "$god_ set-dist 12 23 1"
$ns_ at 40.576914278733 "$god_ set-dist 6 10 2"
$ns_ at 40.576914278733 "$god_ set-dist 10 24 2"
$ns_ at 40.576914278733 "$god_ set-dist 10 27 2"
$ns_ at 40.576914278733 "$god_ set-dist 10 35 1"
$ns_ at 40.660445962501 "$god_ set-dist 25 33 1"
$ns_ at 40.751438782408 "$god_ set-dist 6 21 2"
$ns_ at 40.751438782408 "$god_ set-dist 6 34 1"
$ns_ at 40.938734817589 "$god_ set-dist 11 36 2"
$ns_ at 40.938734817589 "$god_ set-dist 11 48 3"
$ns_ at 40.938734817589 "$god_ set-dist 17 36 1"
$ns_ at 40.938734817589 "$god_ set-dist 17 48 2"
$ns_ at 41.124865875203 "$god_ set-dist 16 32 2"
$ns_ at 41.124865875203 "$god_ set-dist 16 42 3"
$ns_ at 41.124865875203 "$god_ set-dist 16 48 3"
$ns_ at 41.209645169312 "$god_ set-dist 4 17 1"
$ns_ at 41.209645169312 "$god_ set-dist 17 20 2"
$ns_ at 41.314106770873 "$god_ set-dist 4 33 1"
$ns_ at 41.314106770873 "$god_ set-dist 20 33 2"
$ns_ at 41.545381693746 "$node_(16) setdest 186.120675674896 515.360144063577 0.000000000000"
$ns_ at 41.565964940611 "$god_ set-dist 33 38 1"
$ns_ at 41.577761698371 "$god_ set-dist 1 22 1"
$ns_ at 41.577761698371 "$god_ set-dist 18 22 2"
$ns_ at 41.577761698371 "$god_ set-dist 22 42 2"
$ns_ at 41.619885550151 "$god_ set-dist 20 35 1"
$ns_ at 41.701469337126 "$god_ set-dist 19 31 1"
$ns_ at 41.820577689306 "$god_ set-dist 8 13 3"
$ns_ at 41.820577689306 "$god_ set-dist 13 24 3"
$ns_ at 41.820577689306 "$god_ set-dist 13 27 3"
$ns_ at 41.820577689306 "$god_ set-dist 13 32 3"
$ns_ at 41.820577689306 "$god_ set-dist 13 41 2"
$ns_ at 42.354554004226 "$god_ set-dist 7 35 1"
$ns_ at 42.354554004226 "$god_ set-dist 11 35 2"
$ns_ at 42.449237873489 "$god_ set-dist 4 30 2"
$ns_ at 42.449237873489 "$god_ set-dist 16 30 3"
$ns_ at 42.449237873489 "$god_ set-dist 23 30 3"
$ns_ at 42.545381693746 "$node_(16) setdest 656.899195864106 231.911352439216 2.314265295017"
$ns_ at 42.640843538606 "$god_ set-dist 7 23 1"
$ns_ at 42.640843538606 "$god_ set-dist 11 23 2"
$ns_ at 42.640843538606 "$god_ set-dist 23 30 2"
$ns_ at 42.842274210390 "$god_ set-dist 7 10 1"
$ns_ at 42.853926638617 "$god_ set-dist 2 9 1"
$ns_ at 42.853926638617 "$god_ set-dist 9 32 2"
$ns_ at 42.853926638617 "$god_ set-dist 9 48 3"
$ns_ at 42.859622364847 "$god_ set-dist 31 46 1"
$ns_ at 42.873079128801 "$god_ set-dist 19 23 1"
$ns_ at 42.903687168848 "$god_ set-dist 1 3 2"
$ns_ at 42.903687168848 "$god_ set-dist 3 18 3"
$ns_ at 42.903687168848 "$god_ set-dist 3 42 3"
$ns_ at 43.061239538318 "$god_ set-dist 3 19 1"
$ns_ at 43.341238940755 "$god_ set-dist 1 16 1"
$ns_ at 43.341238940755 "$god_ set-dist 16 42 2"
$ns_ at 43.437674139548 "$god_ set-dist 6 22 1"
$ns_ at 43.466777530001 "$god_ set-dist 13 24 2"
$ns_ at 43.466777530001 "$god_ set-dist 21 24 2"
$ns_ at 43.466777530001 "$god_ set-dist 24 34 1"
$ns_ at 43.768335841732 "$god_ set-dist 10 14 1"
$ns_ at 43.816320147930 "$god_ set-dist 10 31 1"
$ns_ at 43.884098035287 "$god_ set-dist 17 25 1"
$ns_ at 44.003176285947 "$god_ set-dist 10 23 1"
$ns_ at 44.415168786283 "$god_ set-dist 36 39 1"
$ns_ at 44.415168786283 "$god_ set-dist 39 48 2"
$ns_ at 44.476539093246 "$god_ set-dist 15 27 1"
$ns_ at 44.643808579941 "$god_ set-dist 15 25 1"
$ns_ at 44.705084127893 "$god_ set-dist 21 33 1"
$ns_ at 44.837568806001 "$node_(18) setdest 517.458013440778 647.956017252255 0.000000000000"
$ns_ at 44.852597014866 "$god_ set-dist 13 33 1"
$ns_ at 44.916728111499 "$god_ set-dist 34 47 1"
$ns_ at 45.045404184599 "$god_ set-dist 27 31 2"
$ns_ at 45.258060564040 "$god_ set-dist 23 46 1"
$ns_ at 45.301873177293 "$god_ set-dist 3 5 2"
$ns_ at 45.583850138344 "$god_ set-dist 11 20 3"
$ns_ at 45.583850138344 "$god_ set-dist 13 20 2"
$ns_ at 45.583850138344 "$god_ set-dist 20 49 3"
$ns_ at 45.807368718964 "$god_ set-dist 26 29 3"
$ns_ at 45.807368718964 "$god_ set-dist 26 43 2"
$ns_ at 45.807368718964 "$god_ set-dist 26 44 3"
$ns_ at 45.837568806001 "$node_(18) setdest 163.981217741522 307.443507033924 1.102302623745"
$ns_ at 45.873743372475 "$god_ set-dist 29 38 2"
$ns_ at 45.873743372475 "$god_ set-dist 36 38 2"
$ns_ at 45.873743372475 "$god_ set-dist 38 43 1"
$ns_ at 45.873743372475 "$god_ set-dist 38 44 2"
$ns_ at 45.873743372475 "$god_ set-dist 38 48 3"
$ns_ at 46.115139076391 "$god_ set-dist 17 34 1"
$ns_ at 46.193111736686 "$node_(0) setdest 308.994980438369 166.881085760255 0.000000000000"
$ns_ at 46.309495187697 "$god_ set-dist 22 24 1"
$ns_ at 46.468926080123 "$god_ set-dist 15 16 1"
$ns_ at 46.489054676123 "$god_ set-dist 6 14 1"
$ns_ at 46.489054676123 "$god_ set-dist 14 18 2"
$ns_ at 46.679331830288 "$god_ set-dist 13 17 1"
$ns_ at 46.712960824095 "$god_ set-dist 17 38 1"
$ns_ at 47.193111736686 "$node_(0) setdest 572.083748395885 574.797522839598 3.054050288685"
$ns_ at 47.335889520942 "$god_ set-dist 25 35 1"
$ns_ at 47.350603523635 "$god_ set-dist 5 10 1"
$ns_ at 47.350603523635 "$god_ set-dist 8 10 2"
$ns_ at 47.350603523635 "$god_ set-dist 10 29 2"
$ns_ at 47.350603523635 "$god_ set-dist 10 32 2"
$ns_ at 47.350603523635 "$god_ set-dist 10 36 2"
$ns_ at 47.350603523635 "$god_ set-dist 10 44 2"
$ns_ at 47.350603523635 "$god_ set-dist 10 48 3"
$ns_ at 47.691551001511 "$god_ set-dist 31 42 2"
$ns_ at 47.691551001511 "$god_ set-dist 40 42 1"
$ns_ at 47.691551001511 "$god_ set-dist 42 45 2"
$ns_ at 47.823301470088 "$god_ set-dist 7 36 1"
$ns_ at 47.823301470088 "$god_ set-dist 7 48 2"
$ns_ at 47.823301470088 "$god_ set-dist 30 36 2"
$ns_ at 47.823301470088 "$god_ set-dist 30 48 3"
$ns_ at 48.075331242529 "$god_ set-dist 2 36 1"
$ns_ at 48.075331242529 "$god_ set-dist 9 36 2"
$ns_ at 48.106318554255 "$god_ set-dist 33 34 1"
$ns_ at 48.141622194091 "$god_ set-dist 10 43 1"
$ns_ at 48.199013900896 "$god_ set-dist 2 10 1"
$ns_ at 48.353599736607 "$god_ set-dist 0 35 1"
$ns_ at 48.589511249380 "$god_ set-dist 0 23 1"
$ns_ at 48.602284839862 "$god_ set-dist 6 45 1"
$ns_ at 48.602284839862 "$god_ set-dist 18 45 2"
$ns_ at 48.799271212450 "$god_ set-dist 39 40 1"
$ns_ at 48.934751230459 "$god_ set-dist 23 25 1"
$ns_ at 48.948955760457 "$god_ set-dist 17 21 1"
$ns_ at 49.357265951219 "$god_ set-dist 2 29 1"
$ns_ at 49.357265951219 "$god_ set-dist 9 29 2"
$ns_ at 49.376311490664 "$god_ set-dist 20 23 1"
$ns_ at 49.412136313121 "$god_ set-dist 30 33 1"
$ns_ at 49.439501298767 "$god_ set-dist 5 37 2"
$ns_ at 49.506767450800 "$god_ set-dist 10 41 1"
$ns_ at 49.826492591497 "$god_ set-dist 17 22 1"
$ns_ at 50.084118607659 "$god_ set-dist 15 31 1"
$ns_ at 50.334210969222 "$god_ set-dist 33 36 1"
$ns_ at 50.334210969222 "$god_ set-dist 33 48 2"
$ns_ at 50.355917019244 "$god_ set-dist 2 17 1"
$ns_ at 50.382674256689 "$god_ set-dist 24 31 2"
$ns_ at 50.481730455165 "$god_ set-dist 26 44 2"
$ns_ at 50.481730455165 "$god_ set-dist 39 44 1"
$ns_ at 50.955917590677 "$god_ set-dist 11 44 2"
$ns_ at 50.955917590677 "$god_ set-dist 17 44 1"
$ns_ at 51.055205976387 "$god_ set-dist 11 17 2"
$ns_ at 51.055205976387 "$god_ set-dist 11 44 3"
$ns_ at 51.237056381840 "$god_ set-dist 17 23 1"
$ns_ at 51.288304878131 "$god_ set-dist 5 9 1"
$ns_ at 51.288304878131 "$god_ set-dist 8 9 2"
$ns_ at 51.288304878131 "$god_ set-dist 9 44 2"
$ns_ at 51.365255176184 "$god_ set-dist 27 35 2"
$ns_ at 51.583699447724 "$god_ set-dist 14 39 2"
$ns_ at 51.583699447724 "$god_ set-dist 14 40 1"
$ns_ at 51.583699447724 "$god_ set-dist 14 42 2"
$ns_ at 51.808961675870 "$god_ set-dist 0 42 2"
$ns_ at 51.808961675870 "$god_ set-dist 3 42 2"
$ns_ at 51.808961675870 "$god_ set-dist 26 42 2"
$ns_ at 51.808961675870 "$god_ set-dist 28 42 2"
$ns_ at 51.808961675870 "$god_ set-dist 37 42 2"
$ns_ at 51.808961675870 "$god_ set-dist 39 42 1"
$ns_ at 51.808961675870 "$god_ set-dist 42 49 2"
$ns_ at 51.856553288033 "$god_ set-dist 10 15 1"
$ns_ at 51.946520322782 "$god_ set-dist 7 19 1"
$ns_ at 51.946520322782 "$god_ set-dist 19 36 2"
$ns_ at 51.946520322782 "$god_ set-dist 19 48 3"
$ns_ at 52.087156232124 "$god_ set-dist 13 35 1"
$ns_ at 52.233892739317 "$god_ set-dist 6 28 2"
$ns_ at 52.233892739317 "$god_ set-dist 8 28 2"
$ns_ at 52.233892739317 "$god_ set-dist 15 28 1"
$ns_ at 52.233892739317 "$god_ set-dist 16 28 2"
$ns_ at 52.233892739317 "$god_ set-dist 24 28 2"
$ns_ at 52.233892739317 "$god_ set-dist 27 28 2"
$ns_ at 52.233892739317 "$god_ set-dist 28 31 2"
$ns_ at 52.233892739317 "$god_ set-dist 28 32 2"
$ns_ at 52.261576153257 "$god_ set-dist 13 23 1"
$ns_ at 52.261576153257 "$god_ set-dist 13 27 2"
$ns_ at 52.499941737735 "$god_ set-dist 8 13 2"
$ns_ at 52.499941737735 "$god_ set-dist 13 15 1"
$ns_ at 52.499941737735 "$god_ set-dist 13 32 2"
$ns_ at 52.662855318421 "$god_ set-dist 6 38 2"
$ns_ at 52.662855318421 "$god_ set-dist 6 43 1"
$ns_ at 52.662855318421 "$god_ set-dist 6 49 2"
$ns_ at 52.669297154260 "$god_ set-dist 11 45 2"
$ns_ at 52.669297154260 "$god_ set-dist 25 45 1"
$ns_ at 52.669297154260 "$god_ set-dist 45 49 2"
$ns_ at 52.693479178300 "$god_ set-dist 4 6 1"
$ns_ at 52.925007356936 "$god_ set-dist 11 31 2"
$ns_ at 52.925007356936 "$god_ set-dist 25 31 1"
$ns_ at 52.925007356936 "$god_ set-dist 31 49 2"
$ns_ at 53.141267396180 "$god_ set-dist 22 47 1"
$ns_ at 53.165855396889 "$god_ set-dist 23 37 1"
$ns_ at 53.547214133919 "$god_ set-dist 10 47 1"
$ns_ at 53.587801337786 "$god_ set-dist 14 41 1"
$ns_ at 53.808444157524 "$god_ set-dist 17 35 1"
$ns_ at 53.866522441080 "$god_ set-dist 22 33 1"
$ns_ at 53.988706678359 "$god_ set-dist 20 34 2"
$ns_ at 54.363451087151 "$god_ set-dist 2 8 1"
$ns_ at 54.563174270302 "$god_ set-dist 0 2 1"
$ns_ at 54.592367257861 "$god_ set-dist 10 17 1"
$ns_ at 54.907909087207 "$god_ set-dist 18 40 1"
$ns_ at 55.086925203873 "$god_ set-dist 12 27 3"
$ns_ at 55.086925203873 "$god_ set-dist 19 27 3"
$ns_ at 55.086925203873 "$god_ set-dist 20 27 3"
$ns_ at 55.086925203873 "$god_ set-dist 23 27 2"
$ns_ at 55.086925203873 "$god_ set-dist 27 46 3"
$ns_ at 55.181050687222 "$god_ set-dist 17 26 2"
$ns_ at 55.319281571809 "$god_ set-dist 23 33 1"
$ns_ at 55.324154472667 "$god_ set-dist 5 44 2"
$ns_ at 55.324154472667 "$god_ set-dist 9 44 3"
$ns_ at 55.668629801167 "$god_ set-dist 23 47 1"
$ns_ at 55.708950948724 "$god_ set-dist 7 26 2"
$ns_ at 55.736570711779 "$god_ set-dist 24 38 2"
$ns_ at 55.736570711779 "$god_ set-dist 24 43 1"
$ns_ at 55.736570711779 "$god_ set-dist 24 49 2"
$ns_ at 56.006392836485 "$god_ set-dist 12 36 2"
$ns_ at 56.006392836485 "$god_ set-dist 12 48 3"
$ns_ at 56.006392836485 "$god_ set-dist 34 36 1"
$ns_ at 56.006392836485 "$god_ set-dist 34 48 2"
$ns_ at 56.006392836485 "$god_ set-dist 36 46 2"
$ns_ at 56.006392836485 "$god_ set-dist 46 48 3"
$ns_ at 56.111595954966 "$god_ set-dist 10 33 1"
$ns_ at 56.221756283162 "$god_ set-dist 17 29 1"
$ns_ at 56.673802556254 "$god_ set-dist 21 23 1"
$ns_ at 56.758586014416 "$god_ set-dist 35 37 1"
$ns_ at 56.940847830312 "$god_ set-dist 0 18 2"
$ns_ at 56.940847830312 "$god_ set-dist 0 40 1"
$ns_ at 57.176540940468 "$god_ set-dist 0 26 2"
$ns_ at 57.176540940468 "$god_ set-dist 2 26 3"
$ns_ at 57.176540940468 "$god_ set-dist 9 26 3"
$ns_ at 57.176540940468 "$god_ set-dist 12 26 3"
$ns_ at 57.298062743960 "$god_ set-dist 34 39 1"
$ns_ at 57.443167332926 "$god_ set-dist 26 29 2"
$ns_ at 57.443167332926 "$god_ set-dist 29 39 1"
$ns_ at 57.453298730050 "$god_ set-dist 20 36 2"
$ns_ at 57.453298730050 "$god_ set-dist 20 48 3"
$ns_ at 57.453298730050 "$god_ set-dist 22 36 1"
$ns_ at 57.453298730050 "$god_ set-dist 22 48 2"
$ns_ at 57.845659885764 "$god_ set-dist 5 47 2"
$ns_ at 57.971528550347 "$god_ set-dist 9 26 2"
$ns_ at 57.971528550347 "$god_ set-dist 9 37 1"
$ns_ at 58.152593012450 "$god_ set-dist 23 36 1"
$ns_ at 58.152593012450 "$god_ set-dist 23 48 2"
$ns_ at 58.227863600331 "$god_ set-dist 16 36 1"
$ns_ at 58.227863600331 "$god_ set-dist 16 48 2"
$ns_ at 58.316979416802 "$god_ set-dist 13 28 1"
$ns_ at 58.452521843910 "$god_ set-dist 10 42 2"
$ns_ at 58.452521843910 "$god_ set-dist 13 42 2"
$ns_ at 58.452521843910 "$god_ set-dist 15 42 1"
$ns_ at 58.452521843910 "$god_ set-dist 25 42 2"
$ns_ at 58.784866699245 "$god_ set-dist 41 42 1"
$ns_ at 58.822750432598 "$god_ set-dist 2 26 2"
$ns_ at 58.822750432598 "$god_ set-dist 2 33 1"
$ns_ at 58.891315452201 "$god_ set-dist 4 38 2"
$ns_ at 58.891315452201 "$god_ set-dist 16 38 3"
$ns_ at 58.980795989461 "$god_ set-dist 21 32 2"
$ns_ at 58.980795989461 "$god_ set-dist 32 38 2"
$ns_ at 58.980795989461 "$god_ set-dist 32 43 1"
$ns_ at 58.980795989461 "$god_ set-dist 32 49 2"
$ns_ at 58.981184845131 "$god_ set-dist 21 35 1"
$ns_ at 59.109252517285 "$god_ set-dist 7 48 3"
$ns_ at 59.109252517285 "$god_ set-dist 11 48 4"
$ns_ at 59.109252517285 "$god_ set-dist 12 48 4"
$ns_ at 59.109252517285 "$god_ set-dist 16 48 3"
$ns_ at 59.109252517285 "$god_ set-dist 19 48 4"
$ns_ at 59.109252517285 "$god_ set-dist 20 48 4"
$ns_ at 59.109252517285 "$god_ set-dist 22 48 3"
$ns_ at 59.109252517285 "$god_ set-dist 23 48 3"
$ns_ at 59.109252517285 "$god_ set-dist 30 48 4"
$ns_ at 59.109252517285 "$god_ set-dist 33 48 3"
$ns_ at 59.109252517285 "$god_ set-dist 34 48 3"
$ns_ at 59.109252517285 "$god_ set-dist 36 48 2"
$ns_ at 59.109252517285 "$god_ set-dist 46 48 4"
$ns_ at 59.218510131567 "$god_ set-dist 0 31 1"
$ns_ at 59.243525063195 "$god_ set-dist 26 29 3"
$ns_ at 59.243525063195 "$god_ set-dist 26 39 2"
$ns_ at 59.243525063195 "$god_ set-dist 26 42 3"
$ns_ at 59.243525063195 "$god_ set-dist 26 44 3"
$ns_ at 59.243525063195 "$god_ set-dist 26 48 4"
$ns_ at 59.255532423733 "$god_ set-dist 1 14 1"
$ns_ at 59.547067165373 "$god_ set-dist 6 17 1"
$ns_ at 59.614448453238 "$god_ set-dist 32 39 1"
$ns_ at 59.869543058059 "$god_ set-dist 33 35 1"
$ns_ at 59.916095662884 "$god_ set-dist 36 47 1"
$ns_ at 60.124493403464 "$god_ set-dist 1 47 2"
$ns_ at 60.166201912196 "$node_(26) setdest 523.109680995534 30.456721180817 0.000000000000"
$ns_ at 60.185735408354 "$god_ set-dist 17 32 1"
$ns_ at 60.260555662601 "$god_ set-dist 3 41 2"
$ns_ at 60.311484474079 "$god_ set-dist 17 24 1"
$ns_ at 60.333187101572 "$god_ set-dist 14 24 1"
$ns_ at 60.747684863939 "$god_ set-dist 10 16 1"
$ns_ at 60.747684863939 "$god_ set-dist 16 30 2"
$ns_ at 60.747684863939 "$god_ set-dist 16 38 2"
$ns_ at 60.866787769908 "$god_ set-dist 21 22 2"
$ns_ at 61.035552677116 "$god_ set-dist 20 22 2"
$ns_ at 61.112176492989 "$god_ set-dist 16 29 1"
$ns_ at 61.112176492989 "$god_ set-dist 16 48 2"
$ns_ at 61.166201912196 "$node_(26) setdest 624.853288647599 470.388945508958 0.286315552554"
$ns_ at 61.335969742754 "$god_ set-dist 13 31 1"
$ns_ at 62.183572264987 "$god_ set-dist 10 18 2"
$ns_ at 62.183572264987 "$god_ set-dist 10 40 1"
$ns_ at 62.308368532709 "$god_ set-dist 35 47 1"
$ns_ at 62.461334732770 "$god_ set-dist 3 27 3"
$ns_ at 62.461334732770 "$god_ set-dist 13 27 3"
$ns_ at 62.461334732770 "$god_ set-dist 15 27 2"
$ns_ at 62.461334732770 "$god_ set-dist 27 28 3"
$ns_ at 62.476910731517 "$god_ set-dist 9 16 1"
$ns_ at 62.485104028950 "$god_ set-dist 21 31 1"
$ns_ at 62.531403107231 "$god_ set-dist 3 4 2"
$ns_ at 62.854861957396 "$god_ set-dist 12 27 2"
$ns_ at 62.854861957396 "$god_ set-dist 13 27 2"
$ns_ at 62.854861957396 "$god_ set-dist 19 27 2"
$ns_ at 62.854861957396 "$god_ set-dist 22 27 1"
$ns_ at 62.854861957396 "$god_ set-dist 27 46 2"
$ns_ at 62.974631640059 "$god_ set-dist 11 14 2"
$ns_ at 62.974631640059 "$god_ set-dist 14 25 1"
$ns_ at 62.974631640059 "$god_ set-dist 14 49 2"
$ns_ at 63.364933982830 "$god_ set-dist 14 15 1"
$ns_ at 63.364933982830 "$god_ set-dist 14 28 2"
$ns_ at 63.761028697978 "$god_ set-dist 22 39 1"
$ns_ at 63.833303320217 "$god_ set-dist 12 29 2"
$ns_ at 63.833303320217 "$god_ set-dist 12 48 3"
$ns_ at 63.833303320217 "$god_ set-dist 19 29 2"
$ns_ at 63.833303320217 "$god_ set-dist 19 48 3"
$ns_ at 63.833303320217 "$god_ set-dist 22 29 1"
$ns_ at 63.833303320217 "$god_ set-dist 22 48 2"
$ns_ at 63.833303320217 "$god_ set-dist 29 46 2"
$ns_ at 63.833303320217 "$god_ set-dist 46 48 3"
$ns_ at 63.883095603061 "$god_ set-dist 16 17 1"
$ns_ at 63.883095603061 "$god_ set-dist 16 49 2"
$ns_ at 63.972663114084 "$god_ set-dist 15 45 1"
$ns_ at 63.972663114084 "$god_ set-dist 28 45 2"
$ns_ at 64.327778225866 "$god_ set-dist 8 39 1"
$ns_ at 64.327778225866 "$god_ set-dist 8 49 2"
$ns_ at 64.373814250517 "$god_ set-dist 35 36 1"
$ns_ at 64.495717876806 "$god_ set-dist 20 39 2"
$ns_ at 64.495717876806 "$god_ set-dist 23 39 1"
$ns_ at 64.578750384007 "$god_ set-dist 2 47 1"
$ns_ at 64.608166616245 "$god_ set-dist 17 19 1"
$ns_ at 64.608166616245 "$god_ set-dist 19 32 2"
$ns_ at 64.608166616245 "$god_ set-dist 19 44 2"
$ns_ at 64.714523092759 "$god_ set-dist 31 40 2"
$ns_ at 64.847268864966 "$god_ set-dist 17 31 1"
$ns_ at 65.027252244007 "$god_ set-dist 2 25 1"
$ns_ at 65.661123081234 "$god_ set-dist 6 10 1"
$ns_ at 65.661123081234 "$god_ set-dist 6 30 2"
$ns_ at 65.774080972210 "$god_ set-dist 1 45 1"
$ns_ at 65.809784388385 "$god_ set-dist 16 43 1"
$ns_ at 65.955260744570 "$god_ set-dist 2 39 1"
$ns_ at 66.070517618926 "$god_ set-dist 3 23 1"
$ns_ at 66.509020102098 "$god_ set-dist 29 34 1"
$ns_ at 66.509020102098 "$god_ set-dist 34 48 2"
$ns_ at 66.630720104307 "$god_ set-dist 15 49 1"
$ns_ at 66.730468868260 "$god_ set-dist 2 44 1"
$ns_ at 66.730468868260 "$god_ set-dist 9 44 2"
$ns_ at 66.763209183274 "$god_ set-dist 19 43 1"
$ns_ at 66.909972070326 "$god_ set-dist 17 45 1"
$ns_ at 67.047672296064 "$god_ set-dist 14 17 1"
$ns_ at 67.323571569964 "$god_ set-dist 19 33 1"
$ns_ at 67.410088704046 "$god_ set-dist 6 18 2"
$ns_ at 67.410088704046 "$god_ set-dist 18 31 3"
$ns_ at 67.413445691510 "$god_ set-dist 9 17 1"
$ns_ at 67.782389165340 "$god_ set-dist 0 12 2"
$ns_ at 67.957484231373 "$god_ set-dist 13 22 2"
$ns_ at 67.957484231373 "$god_ set-dist 13 27 3"
$ns_ at 68.254927797280 "$god_ set-dist 12 32 2"
$ns_ at 68.254927797280 "$god_ set-dist 22 32 1"
$ns_ at 68.254927797280 "$god_ set-dist 32 46 2"
$ns_ at 68.648883947670 "$god_ set-dist 1 42 2"
$ns_ at 68.765377139897 "$god_ set-dist 1 10 1"
$ns_ at 68.789816842890 "$god_ set-dist 24 39 1"
$ns_ at 68.791359334131 "$god_ set-dist 5 32 2"
$ns_ at 68.805394245594 "$god_ set-dist 23 38 1"
$ns_ at 68.849266870073 "$god_ set-dist 5 8 2"
$ns_ at 68.854341261272 "$god_ set-dist 5 12 1"
$ns_ at 68.871103861043 "$god_ set-dist 1 26 3"
$ns_ at 68.871103861043 "$god_ set-dist 1 33 2"
$ns_ at 69.035191368141 "$god_ set-dist 31 41 2"
$ns_ at 69.078662097196 "$god_ set-dist 20 23 2"
$ns_ at 69.078662097196 "$god_ set-dist 20 39 3"
$ns_ at 69.679702351595 "$god_ set-dist 0 36 1"
$ns_ at 69.913584019693 "$god_ set-dist 0 45 1"
$ns_ at 70.312231937764 "$god_ set-dist 8 12 2"
$ns_ at 70.312231937764 "$god_ set-dist 8 19 2"
$ns_ at 70.312231937764 "$god_ set-dist 8 22 1"
$ns_ at 70.312231937764 "$god_ set-dist 8 46 2"
$ns_ at 70.820957100934 "$god_ set-dist 26 31 2"
$ns_ at 70.820957100934 "$god_ set-dist 31 37 1"
$ns_ at 71.033314858891 "$god_ set-dist 12 44 2"
$ns_ at 71.033314858891 "$god_ set-dist 22 44 1"
$ns_ at 71.033314858891 "$god_ set-dist 44 46 2"
$ns_ at 71.113553504938 "$god_ set-dist 19 42 2"
$ns_ at 71.113553504938 "$god_ set-dist 21 42 2"
$ns_ at 71.113553504938 "$god_ set-dist 38 42 2"
$ns_ at 71.113553504938 "$god_ set-dist 42 43 1"
$ns_ at 71.179124874679 "$god_ set-dist 5 26 3"
$ns_ at 71.179124874679 "$god_ set-dist 26 33 2"
$ns_ at 71.292979142446 "$god_ set-dist 3 39 2"
$ns_ at 71.446800694736 "$god_ set-dist 23 30 1"
$ns_ at 71.446800694736 "$god_ set-dist 24 30 2"
$ns_ at 71.485631830361 "$god_ set-dist 8 16 1"
$ns_ at 71.758954288238 "$god_ set-dist 17 46 1"
$ns_ at 71.956253439233 "$god_ set-dist 32 34 1"
$ns_ at 72.020484046820 "$god_ set-dist 2 19 1"
$ns_ at 72.042322981452 "$god_ set-dist 3 8 3"
$ns_ at 72.042322981452 "$god_ set-dist 3 15 2"
$ns_ at 72.122810919972 "$god_ set-dist 38 46 2"
$ns_ at 72.399691185294 "$god_ set-dist 7 9 1"
$ns_ at 72.428757122351 "$god_ set-dist 10 36 1"
$ns_ at 72.452548837945 "$god_ set-dist 34 44 1"
$ns_ at 72.890487393516 "$god_ set-dist 28 34 1"
$ns_ at 72.994331380922 "$god_ set-dist 1 7 2"
$ns_ at 72.994331380922 "$god_ set-dist 1 11 3"
$ns_ at 73.102238089690 "$god_ set-dist 9 15 1"
$ns_ at 73.102238089690 "$god_ set-dist 9 42 2"
$ns_ at 73.285586261872 "$god_ set-dist 34 38 1"
$ns_ at 73.339877086200 "$god_ set-dist 10 39 1"
$ns_ at 73.339877086200 "$god_ set-dist 20 39 2"
$ns_ at 73.521537406522 "$god_ set-dist 9 33 1"
$ns_ at 73.541753614883 "$god_ set-dist 6 9 1"
$ns_ at 73.603420998702 "$god_ set-dist 9 43 1"
$ns_ at 73.997573325140 "$god_ set-dist 8 21 2"
$ns_ at 73.997573325140 "$god_ set-dist 15 21 1"
$ns_ at 74.001081237487 "$god_ set-dist 34 49 1"
$ns_ at 74.007291602422 "$god_ set-dist 14 43 1"
$ns_ at 74.055308793970 "$god_ set-dist 35 39 1"
$ns_ at 74.069835154813 "$god_ set-dist 6 7 1"
$ns_ at 74.069835154813 "$god_ set-dist 6 11 2"
$ns_ at 74.166055428341 "$god_ set-dist 19 47 1"
$ns_ at 74.193796530655 "$god_ set-dist 8 12 3"
$ns_ at 74.193796530655 "$god_ set-dist 12 22 2"
$ns_ at 74.283646074210 "$god_ set-dist 4 36 1"
$ns_ at 74.482321208110 "$god_ set-dist 6 39 1"
$ns_ at 74.606269332850 "$god_ set-dist 12 32 3"
$ns_ at 74.606269332850 "$god_ set-dist 12 34 2"
$ns_ at 74.606269332850 "$god_ set-dist 12 44 3"
$ns_ at 74.629111756991 "$god_ set-dist 14 36 1"
$ns_ at 74.647419310483 "$god_ set-dist 0 14 1"
$ns_ at 74.683355308943 "$god_ set-dist 5 20 1"
$ns_ at 74.683355308943 "$god_ set-dist 20 27 2"
$ns_ at 74.683355308943 "$god_ set-dist 20 29 2"
$ns_ at 74.683355308943 "$god_ set-dist 20 48 3"
$ns_ at 74.727395474146 "$god_ set-dist 10 24 1"
$ns_ at 75.213932910911 "$god_ set-dist 31 33 1"
$ns_ at 75.336764501552 "$god_ set-dist 12 26 2"
$ns_ at 75.336764501552 "$god_ set-dist 13 26 1"
$ns_ at 75.481305488263 "$god_ set-dist 8 46 3"
$ns_ at 75.481305488263 "$god_ set-dist 22 46 2"
$ns_ at 75.481305488263 "$god_ set-dist 27 46 3"
$ns_ at 75.508668450698 "$god_ set-dist 23 49 1"
$ns_ at 75.806483926842 "$god_ set-dist 3 10 2"
$ns_ at 75.867755610298 "$god_ set-dist 6 33 1"
$ns_ at 76.044472077648 "$god_ set-dist 27 48 1"
$ns_ at 76.204599257957 "$god_ set-dist 0 6 1"
$ns_ at 76.262351532022 "$god_ set-dist 21 45 1"
$ns_ at 76.648304963550 "$god_ set-dist 3 17 2"
$ns_ at 76.881574698827 "$god_ set-dist 33 46 1"
$ns_ at 77.232445996515 "$god_ set-dist 15 19 1"
$ns_ at 77.313277064544 "$god_ set-dist 17 38 2"
$ns_ at 77.402416741587 "$god_ set-dist 3 34 2"
$ns_ at 77.444789934834 "$god_ set-dist 4 24 1"
$ns_ at 77.450185619481 "$god_ set-dist 27 28 2"
$ns_ at 77.450185619481 "$god_ set-dist 28 41 1"
$ns_ at 77.554946687712 "$god_ set-dist 10 30 2"
$ns_ at 77.625786215007 "$god_ set-dist 12 17 1"
$ns_ at 77.625786215007 "$god_ set-dist 12 32 2"
$ns_ at 77.625786215007 "$god_ set-dist 12 44 2"
$ns_ at 77.740219803039 "$god_ set-dist 17 49 2"
$ns_ at 77.885942228078 "$god_ set-dist 0 16 1"
$ns_ at 77.885942228078 "$god_ set-dist 11 16 2"
$ns_ at 77.988229030327 "$god_ set-dist 16 33 1"
$ns_ at 78.106189802159 "$god_ set-dist 29 30 2"
$ns_ at 78.106189802159 "$god_ set-dist 30 32 2"
$ns_ at 78.106189802159 "$god_ set-dist 30 42 2"
$ns_ at 78.106189802159 "$god_ set-dist 30 43 1"
$ns_ at 78.106189802159 "$god_ set-dist 30 44 2"
$ns_ at 78.106189802159 "$god_ set-dist 30 48 3"
$ns_ at 78.197603820503 "$god_ set-dist 5 7 2"
$ns_ at 78.210129043468 "$god_ set-dist 14 33 1"
$ns_ at 78.289209585834 "$god_ set-dist 16 39 1"
$ns_ at 78.510081807495 "$god_ set-dist 8 34 1"
$ns_ at 78.510081807495 "$god_ set-dist 8 38 2"
$ns_ at 78.510081807495 "$god_ set-dist 8 46 2"
$ns_ at 78.689701168801 "$god_ set-dist 43 45 1"
$ns_ at 78.906351024167 "$god_ set-dist 6 32 2"
$ns_ at 78.940837647876 "$god_ set-dist 33 45 1"
$ns_ at 78.965191818619 "$god_ set-dist 10 38 2"
$ns_ at 78.969514219039 "$god_ set-dist 18 25 2"
$ns_ at 78.969514219039 "$god_ set-dist 18 28 2"
$ns_ at 78.969514219039 "$god_ set-dist 18 37 2"
$ns_ at 78.969514219039 "$god_ set-dist 18 41 1"
$ns_ at 79.075087868348 "$god_ set-dist 7 16 1"
$ns_ at 79.096761778683 "$god_ set-dist 23 24 2"
$ns_ at 79.177741250689 "$god_ set-dist 24 42 1"
$ns_ at 79.271373203908 "$god_ set-dist 15 31 2"
$ns_ at 79.271373203908 "$god_ set-dist 31 42 3"
$ns_ at 79.451072403889 "$god_ set-dist 1 23 2"
$ns_ at 79.486461220646 "$god_ set-dist 17 28 2"
$ns_ at 79.599510197163 "$god_ set-dist 7 31 1"
$ns_ at 79.650312535922 "$god_ set-dist 18 25 3"
$ns_ at 79.650312535922 "$god_ set-dist 25 41 2"
$ns_ at 79.723937256166 "$god_ set-dist 11 42 2"
$ns_ at 79.723937256166 "$god_ set-dist 11 48 3"
$ns_ at 79.723937256166 "$god_ set-dist 26 42 2"
$ns_ at 79.723937256166 "$god_ set-dist 26 48 3"
$ns_ at 79.723937256166 "$god_ set-dist 28 42 1"
$ns_ at 79.723937256166 "$god_ set-dist 28 48 2"
$ns_ at 79.860844579675 "$god_ set-dist 10 20 2"
$ns_ at 80.107881788341 "$god_ set-dist 19 22 2"
$ns_ at 80.798494090526 "$god_ set-dist 31 42 2"
$ns_ at 80.798494090526 "$god_ set-dist 34 42 1"
$ns_ at 80.798494090526 "$god_ set-dist 42 46 2"
$ns_ at 81.004269559692 "$god_ set-dist 12 32 3"
$ns_ at 81.004269559692 "$god_ set-dist 17 32 2"
$ns_ at 81.230410765678 "$god_ set-dist 23 28 1"
$ns_ at 81.415788189880 "$god_ set-dist 11 23 1"
$ns_ at 81.417492487033 "$god_ set-dist 7 14 1"
$ns_ at 81.439081834998 "$god_ set-dist 6 44 2"
$ns_ at 81.516716858611 "$god_ set-dist 41 45 2"
$ns_ at 81.815134985455 "$god_ set-dist 27 39 1"
$ns_ at 81.815134985455 "$god_ set-dist 27 49 2"
$ns_ at 81.945482757422 "$god_ set-dist 11 24 2"
$ns_ at 81.945482757422 "$god_ set-dist 24 33 1"
$ns_ at 82.260262417863 "$god_ set-dist 8 46 3"
$ns_ at 82.260262417863 "$god_ set-dist 32 46 3"
$ns_ at 82.260262417863 "$god_ set-dist 34 46 2"
$ns_ at 82.260262417863 "$god_ set-dist 42 46 3"
$ns_ at 82.475875041154 "$god_ set-dist 0 24 1"
$ns_ at 82.598574913186 "$god_ set-dist 36 45 1"
$ns_ at 82.601002637946 "$god_ set-dist 7 24 1"
$ns_ at 82.666379442812 "$god_ set-dist 0 5 2"
$ns_ at 82.860280639062 "$god_ set-dist 22 37 2"
$ns_ at 82.965583887290 "$god_ set-dist 30 31 1"
$ns_ at 83.010291465703 "$god_ set-dist 22 31 2"
$ns_ at 83.029652699535 "$god_ set-dist 30 35 1"
$ns_ at 83.059538129990 "$god_ set-dist 42 47 1"
$ns_ at 83.059538129990 "$god_ set-dist 47 48 2"
$ns_ at 83.064330286410 "$god_ set-dist 5 27 2"
$ns_ at 83.064330286410 "$god_ set-dist 12 27 3"
$ns_ at 83.064330286410 "$god_ set-dist 20 27 3"
$ns_ at 83.172344749628 "$god_ set-dist 12 13 2"
$ns_ at 83.172344749628 "$god_ set-dist 12 26 3"
$ns_ at 83.721846237930 "$god_ set-dist 16 44 1"
$ns_ at 83.944724632248 "$god_ set-dist 9 18 2"
$ns_ at 83.944724632248 "$god_ set-dist 18 22 1"
$ns_ at 83.944724632248 "$god_ set-dist 18 25 2"
$ns_ at 83.998001516201 "$god_ set-dist 35 38 1"
$ns_ at 84.028919099957 "$god_ set-dist 9 47 1"
$ns_ at 84.084411505454 "$god_ set-dist 6 25 1"
$ns_ at 84.247497675539 "$god_ set-dist 20 35 2"
$ns_ at 84.247497675539 "$god_ set-dist 20 39 3"
$ns_ at 84.355206642499 "$god_ set-dist 3 20 3"
$ns_ at 84.355206642499 "$god_ set-dist 19 20 2"
$ns_ at 84.355206642499 "$god_ set-dist 20 38 3"
$ns_ at 84.699945460733 "$god_ set-dist 1 3 3"
$ns_ at 84.699945460733 "$god_ set-dist 1 43 2"
$ns_ at 84.749989964879 "$god_ set-dist 16 31 2"
$ns_ at 85.120715513542 "$god_ set-dist 27 49 3"
$ns_ at 85.120715513542 "$god_ set-dist 39 49 2"
$ns_ at 85.198729924615 "$god_ set-dist 7 42 1"
$ns_ at 85.198729924615 "$god_ set-dist 7 48 2"
$ns_ at 85.328272939469 "$god_ set-dist 6 12 1"
$ns_ at 85.328272939469 "$god_ set-dist 8 12 2"
$ns_ at 85.328272939469 "$god_ set-dist 12 27 2"
$ns_ at 85.400071001717 "$god_ set-dist 31 34 2"
$ns_ at 85.494768909023 "$god_ set-dist 12 44 3"
$ns_ at 85.494768909023 "$god_ set-dist 17 44 2"
$ns_ at 85.494768909023 "$god_ set-dist 44 46 3"
$ns_ at 85.641289941614 "$god_ set-dist 18 39 1"
$ns_ at 86.409504762702 "$god_ set-dist 22 42 1"
$ns_ at 86.521000732238 "$god_ set-dist 16 25 1"
$ns_ at 86.660506351518 "$god_ set-dist 10 29 1"
$ns_ at 86.660506351518 "$god_ set-dist 10 48 2"
$ns_ at 86.692932829622 "$god_ set-dist 5 48 3"
$ns_ at 86.692932829622 "$god_ set-dist 10 48 3"
$ns_ at 86.692932829622 "$god_ set-dist 17 48 3"
$ns_ at 86.692932829622 "$god_ set-dist 20 48 4"
$ns_ at 86.692932829622 "$god_ set-dist 29 48 2"
$ns_ at 86.692932829622 "$god_ set-dist 46 48 4"
$ns_ at 87.134283609169 "$god_ set-dist 1 32 2"
$ns_ at 87.197695282583 "$god_ set-dist 6 46 1"
$ns_ at 87.197695282583 "$god_ set-dist 8 46 2"
$ns_ at 87.197695282583 "$god_ set-dist 27 46 2"
$ns_ at 87.197695282583 "$god_ set-dist 46 48 3"
$ns_ at 87.340511358441 "$god_ set-dist 9 36 1"
$ns_ at 87.389579440425 "$god_ set-dist 6 19 1"
$ns_ at 87.503867223381 "$god_ set-dist 0 42 1"
$ns_ at 87.503867223381 "$god_ set-dist 0 48 2"
$ns_ at 87.503867223381 "$god_ set-dist 42 46 2"
$ns_ at 87.710099220015 "$god_ set-dist 7 45 1"
$ns_ at 87.903362448668 "$god_ set-dist 7 31 2"
$ns_ at 87.917867554207 "$god_ set-dist 1 30 3"
$ns_ at 87.917867554207 "$god_ set-dist 1 35 2"
$ns_ at 87.995236390156 "$god_ set-dist 5 33 2"
$ns_ at 88.043057690289 "$god_ set-dist 5 31 2"
$ns_ at 88.111604428238 "$god_ set-dist 5 11 3"
$ns_ at 88.111604428238 "$god_ set-dist 5 23 2"
$ns_ at 88.186495068990 "$god_ set-dist 2 31 2"
$ns_ at 88.186495068990 "$god_ set-dist 31 32 3"
$ns_ at 88.186495068990 "$god_ set-dist 31 44 3"
$ns_ at 88.336317711568 "$god_ set-dist 12 33 1"
$ns_ at 88.662623240803 "$god_ set-dist 6 20 1"
$ns_ at 88.662623240803 "$god_ set-dist 8 20 2"
$ns_ at 88.662623240803 "$god_ set-dist 20 27 2"
$ns_ at 88.662623240803 "$god_ set-dist 20 39 2"
$ns_ at 88.662623240803 "$god_ set-dist 20 48 3"
$ns_ at 88.739132787839 "$god_ set-dist 6 27 2"
$ns_ at 88.739132787839 "$god_ set-dist 12 27 3"
$ns_ at 88.739132787839 "$god_ set-dist 20 27 3"
$ns_ at 88.739132787839 "$god_ set-dist 27 31 3"
$ns_ at 88.739132787839 "$god_ set-dist 27 46 3"
$ns_ at 88.841677635928 "$god_ set-dist 16 26 2"
$ns_ at 88.841677635928 "$god_ set-dist 16 47 1"
$ns_ at 88.848756508997 "$god_ set-dist 4 13 2"
$ns_ at 89.427273011976 "$god_ set-dist 15 38 1"
$ns_ at 89.557485691088 "$god_ set-dist 0 44 1"
$ns_ at 89.557485691088 "$god_ set-dist 11 44 2"
$ns_ at 89.557485691088 "$god_ set-dist 31 44 2"
$ns_ at 89.557485691088 "$god_ set-dist 44 46 2"
$ns_ at 89.635060806715 "$god_ set-dist 18 42 2"
$ns_ at 90.056751223898 "$god_ set-dist 6 8 2"
$ns_ at 90.056751223898 "$god_ set-dist 6 48 3"
$ns_ at 90.056751223898 "$god_ set-dist 8 12 3"
$ns_ at 90.056751223898 "$god_ set-dist 8 20 3"
$ns_ at 90.056751223898 "$god_ set-dist 8 31 3"
$ns_ at 90.056751223898 "$god_ set-dist 8 46 3"
$ns_ at 90.056751223898 "$god_ set-dist 12 48 4"
$ns_ at 90.056751223898 "$god_ set-dist 20 48 4"
$ns_ at 90.184696327321 "$god_ set-dist 14 26 2"
$ns_ at 90.184696327321 "$god_ set-dist 14 47 1"
$ns_ at 90.294111348114 "$god_ set-dist 6 26 2"
$ns_ at 90.294111348114 "$god_ set-dist 6 47 1"
$ns_ at 90.348870432223 "$god_ set-dist 14 39 1"
$ns_ at 90.617452882178 "$god_ set-dist 3 5 3"
$ns_ at 90.617452882178 "$god_ set-dist 5 43 2"
$ns_ at 90.653753746080 "$god_ set-dist 18 25 3"
$ns_ at 90.653753746080 "$god_ set-dist 22 25 2"
$ns_ at 90.763851689924 "$god_ set-dist 3 29 3"
$ns_ at 90.763851689924 "$god_ set-dist 3 32 3"
$ns_ at 90.763851689924 "$god_ set-dist 3 43 2"
$ns_ at 91.228506223836 "$god_ set-dist 0 31 2"
$ns_ at 91.228506223836 "$god_ set-dist 31 42 3"
$ns_ at 91.228506223836 "$god_ set-dist 31 44 3"
$ns_ at 91.228506223836 "$god_ set-dist 31 48 4"
$ns_ at 91.282063735806 "$god_ set-dist 28 30 2"
$ns_ at 91.291482724593 "$god_ set-dist 36 42 2"
$ns_ at 91.341121430786 "$god_ set-dist 2 46 1"
$ns_ at 91.341121430786 "$god_ set-dist 8 46 2"
$ns_ at 91.341121430786 "$god_ set-dist 27 46 2"
$ns_ at 91.341121430786 "$god_ set-dist 32 46 2"
$ns_ at 91.653647336604 "$god_ set-dist 18 25 2"
$ns_ at 91.653647336604 "$god_ set-dist 25 36 1"
$ns_ at 91.786092769567 "$god_ set-dist 1 34 2"
$ns_ at 91.969949773664 "$god_ set-dist 14 21 1"
$ns_ at 92.038293763089 "$god_ set-dist 6 31 2"
$ns_ at 92.131016356000 "$god_ set-dist 0 32 1"
$ns_ at 92.131016356000 "$god_ set-dist 3 32 2"
$ns_ at 92.131016356000 "$god_ set-dist 11 32 2"
$ns_ at 92.325292125078 "$node_(32) setdest 552.910465590046 465.985002698116 0.000000000000"
$ns_ at 92.331928870481 "$god_ set-dist 20 31 2"
$ns_ at 92.440326882969 "$god_ set-dist 1 45 2"
$ns_ at 92.590845931786 "$god_ set-dist 24 26 2"
$ns_ at 92.590845931786 "$god_ set-dist 24 47 1"
$ns_ at 92.603773958297 "$god_ set-dist 7 46 1"
$ns_ at 92.635626917124 "$god_ set-dist 16 18 1"
$ns_ at 92.676244358897 "$god_ set-dist 0 46 2"
$ns_ at 93.031088366525 "$god_ set-dist 13 17 2"
$ns_ at 93.192673378556 "$god_ set-dist 23 40 2"
$ns_ at 93.199529238283 "$god_ set-dist 26 45 2"
$ns_ at 93.199529238283 "$god_ set-dist 37 45 1"
$ns_ at 93.325292125078 "$node_(32) setdest 279.053052515498 209.096656311793 2.578270259844"
$ns_ at 93.326819396369 "$god_ set-dist 5 34 2"
$ns_ at 94.027776658483 "$god_ set-dist 35 49 1"
$ns_ at 94.033418825254 "$god_ set-dist 9 30 1"
$ns_ at 94.414936060161 "$god_ set-dist 19 34 2"
$ns_ at 94.557648408849 "$god_ set-dist 11 25 2"
$ns_ at 94.577567688398 "$god_ set-dist 3 19 2"
$ns_ at 94.690235511480 "$god_ set-dist 10 44 1"
$ns_ at 94.690235511480 "$god_ set-dist 10 48 2"
$ns_ at 94.690235511480 "$god_ set-dist 12 44 2"
$ns_ at 94.690235511480 "$god_ set-dist 12 48 3"
$ns_ at 94.690235511480 "$god_ set-dist 31 44 2"
$ns_ at 94.690235511480 "$god_ set-dist 31 48 3"
$ns_ at 94.772120133346 "$god_ set-dist 1 44 2"
$ns_ at 94.895995446124 "$god_ set-dist 0 3 2"
$ns_ at 94.895995446124 "$god_ set-dist 3 32 3"
$ns_ at 94.895995446124 "$god_ set-dist 3 44 3"
$ns_ at 94.923552445140 "$god_ set-dist 34 45 2"
$ns_ at 95.116347802731 "$god_ set-dist 2 18 1"
$ns_ at 95.116347802731 "$god_ set-dist 18 19 2"
$ns_ at 95.116347802731 "$god_ set-dist 18 46 2"
$ns_ at 95.638144705346 "$god_ set-dist 37 39 2"
$ns_ at 95.729642969210 "$god_ set-dist 29 42 2"
$ns_ at 95.897964747134 "$god_ set-dist 14 37 1"
$ns_ at 95.980111850713 "$god_ set-dist 8 10 1"
$ns_ at 95.980111850713 "$god_ set-dist 8 12 2"
$ns_ at 95.980111850713 "$god_ set-dist 8 31 2"
$ns_ at 96.012505791024 "$god_ set-dist 22 23 2"
$ns_ at 96.119299613213 "$god_ set-dist 10 13 2"
$ns_ at 96.137275408075 "$god_ set-dist 9 40 1"
$ns_ at 96.386337127142 "$god_ set-dist 0 11 2"
$ns_ at 96.386337127142 "$god_ set-dist 11 32 3"
$ns_ at 96.386337127142 "$god_ set-dist 11 44 3"
$ns_ at 96.770946860944 "$god_ set-dist 16 23 2"
$ns_ at 96.907585448607 "$god_ set-dist 3 48 4"
$ns_ at 96.907585448607 "$god_ set-dist 7 48 3"
$ns_ at 96.907585448607 "$god_ set-dist 11 48 4"
$ns_ at 96.907585448607 "$god_ set-dist 26 48 4"
$ns_ at 96.907585448607 "$god_ set-dist 28 48 3"
$ns_ at 96.907585448607 "$god_ set-dist 42 48 2"
$ns_ at 96.907585448607 "$god_ set-dist 47 48 3"
$ns_ at 97.045857210048 "$god_ set-dist 0 29 1"
$ns_ at 97.139649328791 "$god_ set-dist 1 13 3"
$ns_ at 97.139649328791 "$god_ set-dist 1 15 2"
$ns_ at 97.139649328791 "$god_ set-dist 1 38 3"
$ns_ at 97.139649328791 "$god_ set-dist 1 49 3"
$ns_ at 97.306333694048 "$god_ set-dist 43 46 1"
$ns_ at 97.426355626222 "$god_ set-dist 45 47 1"
$ns_ at 97.516492127122 "$god_ set-dist 4 34 2"
$ns_ at 97.536407371515 "$god_ set-dist 16 32 1"
$ns_ at 97.598674237894 "$god_ set-dist 25 49 2"
$ns_ at 97.718710188235 "$god_ set-dist 14 29 1"
$ns_ at 97.875185398332 "$god_ set-dist 3 32 2"
$ns_ at 97.875185398332 "$god_ set-dist 3 48 3"
$ns_ at 97.875185398332 "$god_ set-dist 11 32 2"
$ns_ at 97.875185398332 "$god_ set-dist 11 48 3"
$ns_ at 97.875185398332 "$god_ set-dist 26 32 2"
$ns_ at 97.875185398332 "$god_ set-dist 26 48 3"
$ns_ at 97.875185398332 "$god_ set-dist 28 32 1"
$ns_ at 97.875185398332 "$god_ set-dist 28 48 2"
$ns_ at 97.939040086742 "$god_ set-dist 8 31 3"
$ns_ at 97.939040086742 "$god_ set-dist 10 31 2"
$ns_ at 97.939040086742 "$god_ set-dist 31 44 3"
$ns_ at 97.939040086742 "$god_ set-dist 31 48 4"
$ns_ at 98.190472721767 "$god_ set-dist 4 41 2"
$ns_ at 98.196049061230 "$god_ set-dist 9 41 1"
$ns_ at 98.356297850525 "$god_ set-dist 22 45 2"
$ns_ at 98.356491335614 "$god_ set-dist 17 20 1"
$ns_ at 98.471473355908 "$node_(34) setdest 422.781461607326 331.107627558612 0.000000000000"
$ns_ at 98.625171991764 "$god_ set-dist 4 37 2"
$ns_ at 98.739451148022 "$god_ set-dist 16 19 1"
$ns_ at 99.070085421703 "$god_ set-dist 10 32 1"
$ns_ at 99.070085421703 "$god_ set-dist 12 32 2"
$ns_ at 99.088069387789 "$god_ set-dist 23 39 2"
$ns_ at 99.132268027251 "$god_ set-dist 0 8 1"
$ns_ at 99.132268027251 "$god_ set-dist 8 30 2"
$ns_ at 99.173881485591 "$god_ set-dist 19 36 1"
$ns_ at 99.222724753888 "$god_ set-dist 18 37 3"
$ns_ at 99.222724753888 "$god_ set-dist 27 37 3"
$ns_ at 99.222724753888 "$god_ set-dist 37 41 2"
$ns_ at 99.285728871838 "$god_ set-dist 3 25 2"
$ns_ at 99.336181144378 "$god_ set-dist 2 27 2"
$ns_ at 99.336181144378 "$god_ set-dist 27 46 3"
$ns_ at 99.389617247362 "$god_ set-dist 7 32 1"
$ns_ at 99.389617247362 "$god_ set-dist 7 48 2"
$ns_ at 99.471473355908 "$node_(34) setdest 445.856935276706 252.560219141311 2.446039737849"
$ns_ at 99.652384956739 "$god_ set-dist 10 21 2"
$ns_ at 99.687196872353 "$god_ set-dist 9 22 2"
$ns_ at 99.751166711723 "$god_ set-dist 32 47 1"
$ns_ at 99.751166711723 "$god_ set-dist 47 48 2"
$ns_ at 100.019748275300 "$god_ set-dist 6 23 2"
$ns_ at 100.279102837498 "$god_ set-dist 20 46 2"
$ns_ at 100.321271878756 "$god_ set-dist 3 28 2"
$ns_ at 100.638497290328 "$god_ set-dist 23 36 2"
$ns_ at 100.678528732659 "$god_ set-dist 3 33 2"
$ns_ at 100.784533582938 "$god_ set-dist 2 37 1"
$ns_ at 100.784533582938 "$god_ set-dist 18 37 2"
$ns_ at 100.902398803161 "$node_(3) setdest 353.190311175674 26.411679606798 0.000000000000"
$ns_ at 100.912855666258 "$god_ set-dist 17 21 2"
$ns_ at 101.088019074558 "$god_ set-dist 15 46 1"
$ns_ at 101.159838042631 "$god_ set-dist 4 22 2"
$ns_ at 101.201082620081 "$god_ set-dist 23 27 3"
$ns_ at 101.201082620081 "$god_ set-dist 23 41 2"
$ns_ at 101.305060772838 "$god_ set-dist 12 26 2"
$ns_ at 101.305060772838 "$god_ set-dist 23 26 1"
$ns_ at 101.326281650563 "$god_ set-dist 27 46 2"
$ns_ at 101.326281650563 "$god_ set-dist 36 46 1"
$ns_ at 101.339060315239 "$god_ set-dist 5 39 1"
$ns_ at 101.373225921982 "$god_ set-dist 4 47 2"
$ns_ at 101.442622533404 "$god_ set-dist 27 36 2"
$ns_ at 101.442622533404 "$god_ set-dist 27 46 3"
$ns_ at 101.471490776330 "$god_ set-dist 6 26 3"
$ns_ at 101.471490776330 "$god_ set-dist 16 26 3"
$ns_ at 101.471490776330 "$god_ set-dist 22 26 3"
$ns_ at 101.471490776330 "$god_ set-dist 24 26 3"
$ns_ at 101.471490776330 "$god_ set-dist 26 36 3"
$ns_ at 101.471490776330 "$god_ set-dist 26 40 3"
$ns_ at 101.471490776330 "$god_ set-dist 26 47 2"
$ns_ at 101.492571810827 "$god_ set-dist 9 20 2"
$ns_ at 101.492571810827 "$god_ set-dist 13 20 3"
$ns_ at 101.492571810827 "$god_ set-dist 20 30 3"
$ns_ at 101.548163484695 "$god_ set-dist 17 37 2"
$ns_ at 101.902398803161 "$node_(3) setdest 436.987067082271 331.768856639490 3.095656350231"
$ns_ at 101.916616875232 "$god_ set-dist 16 27 2"
$ns_ at 101.916616875232 "$god_ set-dist 19 27 3"
$ns_ at 101.916616875232 "$god_ set-dist 25 27 3"
$ns_ at 102.732938388069 "$god_ set-dist 5 11 2"
$ns_ at 102.732938388069 "$god_ set-dist 11 35 1"
$ns_ at 103.007766528247 "$god_ set-dist 5 11 3"
$ns_ at 103.007766528247 "$god_ set-dist 5 35 2"
$ns_ at 103.101024334697 "$god_ set-dist 12 18 2"
$ns_ at 103.101024334697 "$god_ set-dist 12 36 1"
$ns_ at 103.284597277886 "$god_ set-dist 3 35 1"
$ns_ at 103.296140529346 "$god_ set-dist 17 31 2"
$ns_ at 103.349466699952 "$god_ set-dist 3 33 1"
$ns_ at 103.403179343018 "$god_ set-dist 17 23 2"
$ns_ at 103.403179343018 "$god_ set-dist 17 26 3"
$ns_ at 103.530420167392 "$god_ set-dist 5 41 2"
$ns_ at 103.713910147017 "$god_ set-dist 16 46 1"
$ns_ at 103.729413043020 "$god_ set-dist 12 23 2"
$ns_ at 103.729413043020 "$god_ set-dist 12 26 3"
$ns_ at 103.799659524733 "$god_ set-dist 46 47 1"
$ns_ at 103.827176659848 "$god_ set-dist 9 24 1"
$ns_ at 103.897462737951 "$god_ set-dist 10 18 1"
$ns_ at 103.910835236905 "$god_ set-dist 2 23 2"
$ns_ at 104.122791713248 "$god_ set-dist 4 23 2"
$ns_ at 104.122791713248 "$god_ set-dist 4 26 3"
$ns_ at 104.229475955000 "$god_ set-dist 5 15 2"
$ns_ at 104.229475955000 "$god_ set-dist 5 38 3"
$ns_ at 104.229475955000 "$god_ set-dist 5 49 3"
$ns_ at 104.306367929307 "$god_ set-dist 3 28 1"
$ns_ at 104.904547733495 "$god_ set-dist 0 30 2"
$ns_ at 104.904547733495 "$god_ set-dist 8 30 3"
$ns_ at 104.954181493669 "$god_ set-dist 1 8 2"
$ns_ at 105.022916343587 "$god_ set-dist 1 27 2"
$ns_ at 105.077508723339 "$god_ set-dist 22 35 2"
$ns_ at 105.229776576550 "$god_ set-dist 10 23 2"
$ns_ at 105.229776576550 "$god_ set-dist 18 23 3"
$ns_ at 105.693129057692 "$god_ set-dist 9 39 1"
$ns_ at 105.751940874077 "$god_ set-dist 0 4 2"
$ns_ at 105.941675927730 "$god_ set-dist 10 12 2"
$ns_ at 106.045696124548 "$god_ set-dist 14 20 2"
$ns_ at 106.327530820492 "$god_ set-dist 1 41 2"
$ns_ at 106.355391151742 "$god_ set-dist 19 34 1"
$ns_ at 106.377205568658 "$god_ set-dist 3 31 1"
$ns_ at 106.646825450420 "$god_ set-dist 3 19 1"
$ns_ at 106.946108311065 "$god_ set-dist 13 46 2"
$ns_ at 107.127406325402 "$god_ set-dist 4 7 2"
$ns_ at 107.253194427320 "$god_ set-dist 1 4 2"
$ns_ at 107.291773777535 "$god_ set-dist 10 26 3"
$ns_ at 107.291773777535 "$god_ set-dist 10 37 2"
$ns_ at 107.741565179621 "$god_ set-dist 24 42 2"
$ns_ at 108.164417958768 "$node_(27) setdest 509.341692610893 611.926438904065 0.000000000000"
$ns_ at 108.192736048455 "$god_ set-dist 3 44 2"
$ns_ at 108.192736048455 "$god_ set-dist 11 44 2"
$ns_ at 108.192736048455 "$god_ set-dist 26 44 2"
$ns_ at 108.192736048455 "$god_ set-dist 28 44 1"
$ns_ at 108.235620979611 "$god_ set-dist 24 35 2"
$ns_ at 108.357354497614 "$god_ set-dist 5 22 2"
$ns_ at 108.687957449921 "$god_ set-dist 12 18 3"
$ns_ at 108.687957449921 "$god_ set-dist 18 36 2"
$ns_ at 108.738042858520 "$god_ set-dist 27 45 3"
$ns_ at 108.738042858520 "$god_ set-dist 40 45 2"
$ns_ at 108.753288902181 "$god_ set-dist 11 33 2"
$ns_ at 109.029127368697 "$god_ set-dist 17 34 2"
$ns_ at 109.132928876812 "$god_ set-dist 1 31 3"
$ns_ at 109.132928876812 "$god_ set-dist 14 31 2"
$ns_ at 109.132928876812 "$god_ set-dist 29 31 3"
$ns_ at 109.164417958768 "$node_(27) setdest 77.542878845455 516.712982083275 1.451726484103"
$ns_ at 109.292258940105 "$god_ set-dist 44 47 1"
$ns_ at 109.338805939481 "$god_ set-dist 7 44 1"
$ns_ at 109.391013554651 "$god_ set-dist 10 46 2"
$ns_ at 109.617773716972 "$god_ set-dist 42 49 1"
$ns_ at 109.919034999410 "$god_ set-dist 8 30 2"
$ns_ at 109.919034999410 "$god_ set-dist 30 34 1"
$ns_ at 110.320076912203 "$god_ set-dist 29 34 2"
$ns_ at 110.392414989911 "$god_ set-dist 6 21 1"
$ns_ at 110.502134860507 "$god_ set-dist 10 27 1"
$ns_ at 110.502134860507 "$god_ set-dist 19 27 2"
$ns_ at 110.502134860507 "$god_ set-dist 25 27 2"
$ns_ at 110.502134860507 "$god_ set-dist 27 45 2"
$ns_ at 110.736442424835 "$god_ set-dist 1 23 3"
$ns_ at 110.736442424835 "$god_ set-dist 14 23 2"
$ns_ at 110.912286610781 "$god_ set-dist 8 43 1"
$ns_ at 110.925663839749 "$god_ set-dist 1 28 3"
$ns_ at 110.925663839749 "$god_ set-dist 5 28 3"
$ns_ at 110.925663839749 "$god_ set-dist 26 39 3"
$ns_ at 110.925663839749 "$god_ set-dist 28 39 2"
$ns_ at 110.946280436869 "$god_ set-dist 3 8 2"
$ns_ at 110.946280436869 "$god_ set-dist 3 29 2"
$ns_ at 110.946280436869 "$god_ set-dist 3 43 1"
$ns_ at 111.015332214051 "$god_ set-dist 7 17 2"
$ns_ at 111.150263740390 "$god_ set-dist 25 38 2"
$ns_ at 111.190899668541 "$god_ set-dist 1 20 1"
$ns_ at 111.190899668541 "$god_ set-dist 18 20 2"
$ns_ at 111.190899668541 "$god_ set-dist 20 48 3"
$ns_ at 111.204533891272 "$god_ set-dist 17 47 2"
$ns_ at 111.582934290665 "$god_ set-dist 4 24 2"
$ns_ at 111.834610486358 "$god_ set-dist 20 23 3"
$ns_ at 111.834610486358 "$god_ set-dist 20 26 4"
$ns_ at 111.834610486358 "$god_ set-dist 20 37 3"
$ns_ at 111.834610486358 "$god_ set-dist 20 45 2"
$ns_ at 111.916541413694 "$god_ set-dist 35 39 2"
$ns_ at 111.916658432307 "$node_(1) setdest 232.022439446456 612.450663556751 0.000000000000"
$ns_ at 112.169928007336 "$god_ set-dist 10 19 2"
$ns_ at 112.169928007336 "$god_ set-dist 19 27 3"
$ns_ at 112.512554269576 "$god_ set-dist 23 45 2"
$ns_ at 112.607894971242 "$god_ set-dist 17 22 2"
$ns_ at 112.786324066882 "$god_ set-dist 22 31 3"
$ns_ at 112.786324066882 "$god_ set-dist 22 33 2"
$ns_ at 112.916658432307 "$node_(1) setdest 227.764683332074 70.652840567238 2.681457542987"
$ns_ at 112.956501960123 "$god_ set-dist 3 34 1"
$ns_ at 112.975039622838 "$god_ set-dist 12 28 3"
$ns_ at 112.975039622838 "$god_ set-dist 28 33 2"
$ns_ at 113.115273379617 "$god_ set-dist 12 28 2"
$ns_ at 113.115273379617 "$god_ set-dist 28 35 1"
$ns_ at 113.205524487449 "$god_ set-dist 35 40 2"
$ns_ at 113.437899487262 "$god_ set-dist 0 17 2"
$ns_ at 113.932157675100 "$god_ set-dist 40 42 2"
$ns_ at 113.937051416084 "$god_ set-dist 4 40 2"
$ns_ at 114.011816595187 "$god_ set-dist 1 4 1"
$ns_ at 114.011816595187 "$god_ set-dist 1 31 2"
$ns_ at 114.157204112296 "$god_ set-dist 6 26 2"
$ns_ at 114.157204112296 "$god_ set-dist 6 37 1"
$ns_ at 114.157204112296 "$god_ set-dist 20 26 3"
$ns_ at 114.157204112296 "$god_ set-dist 20 37 2"
$ns_ at 114.172267410264 "$god_ set-dist 12 44 3"
$ns_ at 114.172267410264 "$god_ set-dist 36 44 2"
$ns_ at 114.391777945020 "$god_ set-dist 1 31 3"
$ns_ at 114.391777945020 "$god_ set-dist 4 31 2"
$ns_ at 114.502144210955 "$god_ set-dist 8 12 3"
$ns_ at 114.502144210955 "$god_ set-dist 8 36 2"
$ns_ at 114.543452259252 "$god_ set-dist 8 11 2"
$ns_ at 114.543452259252 "$god_ set-dist 11 34 1"
$ns_ at 114.632692430334 "$god_ set-dist 16 27 1"
$ns_ at 114.632692430334 "$god_ set-dist 19 27 2"
$ns_ at 114.632692430334 "$god_ set-dist 27 46 2"
$ns_ at 114.814158029943 "$god_ set-dist 3 29 3"
$ns_ at 114.814158029943 "$god_ set-dist 29 30 3"
$ns_ at 114.814158029943 "$god_ set-dist 29 43 2"
$ns_ at 114.875348820607 "$god_ set-dist 6 48 2"
$ns_ at 114.875348820607 "$god_ set-dist 14 48 2"
$ns_ at 114.875348820607 "$god_ set-dist 22 48 1"
$ns_ at 114.955691676643 "$god_ set-dist 17 41 2"
$ns_ at 115.324981170552 "$god_ set-dist 19 38 2"
$ns_ at 115.706248630466 "$god_ set-dist 23 46 2"
$ns_ at 115.866409361105 "$god_ set-dist 12 32 3"
$ns_ at 115.866409361105 "$god_ set-dist 32 36 2"
$ns_ at 115.950812216773 "$god_ set-dist 6 22 2"
$ns_ at 115.950812216773 "$god_ set-dist 6 48 3"
$ns_ at 115.990098704696 "$god_ set-dist 2 27 1"
$ns_ at 115.990098704696 "$god_ set-dist 27 37 2"
$ns_ at 116.157921652203 "$god_ set-dist 0 20 3"
$ns_ at 116.157921652203 "$god_ set-dist 6 20 2"
$ns_ at 116.157921652203 "$god_ set-dist 7 20 3"
$ns_ at 116.157921652203 "$god_ set-dist 20 26 4"
$ns_ at 116.157921652203 "$god_ set-dist 20 34 3"
$ns_ at 116.157921652203 "$god_ set-dist 20 37 3"
$ns_ at 116.157921652203 "$god_ set-dist 20 41 3"
$ns_ at 116.157921652203 "$god_ set-dist 20 47 3"
$ns_ at 116.987626090295 "$god_ set-dist 0 21 2"
$ns_ at 117.042633190819 "$god_ set-dist 0 18 1"
$ns_ at 117.042633190819 "$god_ set-dist 13 18 2"
$ns_ at 117.042633190819 "$god_ set-dist 18 23 2"
$ns_ at 117.042633190819 "$god_ set-dist 18 38 2"
$ns_ at 117.042633190819 "$god_ set-dist 18 49 2"
$ns_ at 117.112480918608 "$god_ set-dist 35 41 2"
$ns_ at 117.269721278964 "$god_ set-dist 16 26 2"
$ns_ at 117.269721278964 "$god_ set-dist 16 37 1"
$ns_ at 117.329509011004 "$god_ set-dist 5 42 3"
$ns_ at 117.329509011004 "$god_ set-dist 39 42 2"
$ns_ at 117.414647221146 "$node_(22) setdest 452.469963637123 488.508524110023 0.000000000000"
$ns_ at 117.551817480198 "$god_ set-dist 0 19 2"
$ns_ at 117.851171874443 "$god_ set-dist 17 43 2"
$ns_ at 118.105559938884 "$god_ set-dist 12 20 2"
$ns_ at 118.105559938884 "$god_ set-dist 20 31 3"
$ns_ at 118.129277564164 "$god_ set-dist 0 23 2"
$ns_ at 118.129277564164 "$god_ set-dist 18 23 3"
$ns_ at 118.414647221146 "$node_(22) setdest 125.304710870464 21.884783444003 4.209827507298"
$ns_ at 118.590185674195 "$god_ set-dist 10 35 2"
$ns_ at 118.790420524127 "$god_ set-dist 15 30 1"
$ns_ at 118.790420524127 "$god_ set-dist 29 30 2"
$ns_ at 118.869586802255 "$god_ set-dist 0 45 2"
$ns_ at 119.071226528642 "$god_ set-dist 12 32 2"
$ns_ at 119.071226528642 "$god_ set-dist 14 32 1"
$ns_ at 119.116694485843 "$god_ set-dist 11 17 3"
$ns_ at 119.116694485843 "$god_ set-dist 17 35 2"
$ns_ at 119.455367285654 "$god_ set-dist 38 42 1"
$ns_ at 119.886872098935 "$god_ set-dist 5 23 3"
$ns_ at 119.886872098935 "$god_ set-dist 9 23 2"
$ns_ at 120.075945413806 "$god_ set-dist 1 28 2"
$ns_ at 120.075945413806 "$god_ set-dist 22 26 2"
$ns_ at 120.075945413806 "$god_ set-dist 22 28 1"
$ns_ at 120.666990993955 "$god_ set-dist 5 24 2"
$ns_ at 120.744281594601 "$god_ set-dist 13 31 2"
$ns_ at 120.871005852438 "$node_(20) setdest 5.353557077129 544.280811161829 0.000000000000"
$ns_ at 120.962007141523 "$god_ set-dist 10 25 2"
$ns_ at 120.981150816737 "$god_ set-dist 8 26 2"
$ns_ at 120.981150816737 "$god_ set-dist 10 26 2"
$ns_ at 120.981150816737 "$god_ set-dist 24 26 2"
$ns_ at 120.981150816737 "$god_ set-dist 26 34 1"
$ns_ at 120.981150816737 "$god_ set-dist 26 36 2"
$ns_ at 120.981150816737 "$god_ set-dist 26 39 2"
$ns_ at 120.981150816737 "$god_ set-dist 26 40 2"
$ns_ at 121.022959585435 "$god_ set-dist 2 28 1"
$ns_ at 121.022959585435 "$god_ set-dist 5 28 2"
$ns_ at 121.193329837067 "$god_ set-dist 4 21 2"
$ns_ at 121.193329837067 "$god_ set-dist 20 21 3"
$ns_ at 121.203806558815 "$god_ set-dist 6 34 2"
$ns_ at 121.416059389810 "$god_ set-dist 22 48 2"
$ns_ at 121.416059389810 "$god_ set-dist 36 48 3"
$ns_ at 121.623159910163 "$god_ set-dist 30 45 1"
$ns_ at 121.716937181825 "$god_ set-dist 9 31 2"
$ns_ at 121.871005852438 "$node_(20) setdest 600.204194277169 193.201982713307 1.645977043631"
$ns_ at 122.284059368805 "$god_ set-dist 16 28 1"
$ns_ at 122.391014358180 "$god_ set-dist 33 38 2"
$ns_ at 122.476348476087 "$god_ set-dist 5 40 2"
$ns_ at 122.500841134479 "$god_ set-dist 3 15 1"
$ns_ at 122.500841134479 "$god_ set-dist 3 29 2"
$ns_ at 122.634192435231 "$god_ set-dist 24 28 1"
$ns_ at 122.915862470646 "$god_ set-dist 15 17 2"
$ns_ at 122.915862470646 "$god_ set-dist 17 38 3"
$ns_ at 122.915862470646 "$god_ set-dist 17 42 3"
$ns_ at 122.949831887827 "$god_ set-dist 12 48 4"
$ns_ at 122.949831887827 "$god_ set-dist 14 48 3"
$ns_ at 122.949831887827 "$god_ set-dist 32 48 2"
$ns_ at 123.297255812006 "$god_ set-dist 11 31 1"
$ns_ at 123.453450240004 "$god_ set-dist 8 11 3"
$ns_ at 123.453450240004 "$god_ set-dist 8 26 3"
$ns_ at 123.453450240004 "$god_ set-dist 8 34 2"
$ns_ at 123.613626685040 "$god_ set-dist 19 49 1"
$ns_ at 123.648108243046 "$god_ set-dist 15 23 2"
$ns_ at 123.648108243046 "$god_ set-dist 23 29 3"
$ns_ at 123.656790691276 "$god_ set-dist 0 27 1"
$ns_ at 123.656790691276 "$god_ set-dist 13 27 2"
$ns_ at 123.656790691276 "$god_ set-dist 27 38 2"
$ns_ at 123.656790691276 "$god_ set-dist 27 49 2"
$ns_ at 123.664706404408 "$god_ set-dist 10 45 2"
$ns_ at 123.680017711026 "$god_ set-dist 26 36 3"
$ns_ at 123.680017711026 "$god_ set-dist 34 36 2"
$ns_ at 123.683012091745 "$god_ set-dist 9 22 1"
$ns_ at 123.805019902930 "$god_ set-dist 4 43 2"
$ns_ at 123.805019902930 "$god_ set-dist 20 43 3"
$ns_ at 124.011834727027 "$god_ set-dist 8 26 2"
$ns_ at 124.011834727027 "$god_ set-dist 26 42 1"
$ns_ at 124.036978489508 "$god_ set-dist 23 25 2"
$ns_ at 124.165611453108 "$god_ set-dist 8 11 2"
$ns_ at 124.165611453108 "$god_ set-dist 11 43 1"
$ns_ at 124.407411596618 "$god_ set-dist 4 10 2"
$ns_ at 124.641788728545 "$god_ set-dist 13 42 1"
$ns_ at 124.825774484455 "$god_ set-dist 12 20 1"
$ns_ at 124.825774484455 "$god_ set-dist 20 21 2"
$ns_ at 124.825774484455 "$god_ set-dist 20 31 2"
$ns_ at 124.884234710975 "$god_ set-dist 17 24 2"
$ns_ at 124.988358042894 "$god_ set-dist 0 38 2"
$ns_ at 124.988358042894 "$god_ set-dist 18 38 3"
$ns_ at 124.988358042894 "$god_ set-dist 27 38 3"
$ns_ at 125.646197606447 "$god_ set-dist 0 25 2"
$ns_ at 125.697952725961 "$god_ set-dist 0 20 2"
$ns_ at 125.697952725961 "$god_ set-dist 7 20 2"
$ns_ at 125.697952725961 "$god_ set-dist 20 36 1"
$ns_ at 125.697952725961 "$god_ set-dist 20 41 2"
$ns_ at 125.697952725961 "$god_ set-dist 20 43 2"
$ns_ at 125.697952725961 "$god_ set-dist 20 47 2"
$ns_ at 125.776227808239 "$god_ set-dist 17 40 2"
$ns_ at 125.830302718672 "$god_ set-dist 6 41 2"
$ns_ at 125.854681432706 "$god_ set-dist 24 45 1"
$ns_ at 126.087103592286 "$god_ set-dist 1 9 1"
$ns_ at 126.087103592286 "$god_ set-dist 1 13 2"
$ns_ at 126.087103592286 "$god_ set-dist 1 30 2"
$ns_ at 126.110489998636 "$god_ set-dist 5 16 2"
$ns_ at 126.184043323164 "$god_ set-dist 23 33 2"
$ns_ at 126.391433299610 "$god_ set-dist 21 36 1"
$ns_ at 126.596403005596 "$god_ set-dist 1 13 3"
$ns_ at 126.596403005596 "$god_ set-dist 5 13 3"
$ns_ at 126.596403005596 "$god_ set-dist 9 13 2"
$ns_ at 126.726480644349 "$god_ set-dist 2 5 2"
$ns_ at 126.726480644349 "$god_ set-dist 5 28 3"
$ns_ at 127.093999790106 "$god_ set-dist 6 22 1"
$ns_ at 127.233411209438 "$god_ set-dist 10 31 3"
$ns_ at 127.233411209438 "$god_ set-dist 31 33 2"
$ns_ at 127.233411209438 "$god_ set-dist 31 39 3"
$ns_ at 127.233411209438 "$god_ set-dist 31 40 3"
$ns_ at 127.233411209438 "$god_ set-dist 31 41 3"
$ns_ at 127.471368687956 "$god_ set-dist 13 25 2"
$ns_ at 127.505750383465 "$god_ set-dist 33 49 2"
$ns_ at 127.597191211603 "$god_ set-dist 26 39 3"
$ns_ at 127.597191211603 "$god_ set-dist 34 39 2"
$ns_ at 127.680888612421 "$god_ set-dist 8 26 3"
$ns_ at 127.680888612421 "$god_ set-dist 8 42 2"
$ns_ at 127.711429353395 "$god_ set-dist 33 39 2"
$ns_ at 127.756443101216 "$god_ set-dist 22 33 1"
$ns_ at 127.815090628297 "$god_ set-dist 12 31 2"
$ns_ at 127.815090628297 "$god_ set-dist 20 31 3"
$ns_ at 127.858660485549 "$god_ set-dist 33 41 2"
$ns_ at 127.925815448260 "$god_ set-dist 24 25 1"
$ns_ at 128.019215569704 "$god_ set-dist 10 17 2"
$ns_ at 128.310748508762 "$god_ set-dist 17 39 2"
$ns_ at 128.348400057046 "$god_ set-dist 10 26 3"
$ns_ at 128.348400057046 "$god_ set-dist 10 34 2"
$ns_ at 128.391372798231 "$god_ set-dist 10 33 2"
$ns_ at 128.511257532617 "$god_ set-dist 5 31 3"
$ns_ at 128.511257532617 "$god_ set-dist 31 45 2"
$ns_ at 128.546522309852 "$god_ set-dist 0 13 2"
$ns_ at 128.546522309852 "$god_ set-dist 13 18 3"
$ns_ at 128.546522309852 "$god_ set-dist 13 27 3"
$ns_ at 128.864120327556 "$god_ set-dist 23 28 2"
$ns_ at 128.918551832302 "$god_ set-dist 6 29 2"
$ns_ at 128.935734176734 "$god_ set-dist 5 10 2"
$ns_ at 129.065206992242 "$god_ set-dist 9 32 1"
$ns_ at 129.078643796864 "$god_ set-dist 7 39 2"
$ns_ at 129.164804796027 "$god_ set-dist 12 44 2"
$ns_ at 129.164804796027 "$god_ set-dist 12 48 3"
$ns_ at 129.164804796027 "$god_ set-dist 14 44 1"
$ns_ at 129.164804796027 "$god_ set-dist 14 48 2"
$ns_ at 129.246411419642 "$god_ set-dist 4 11 3"
$ns_ at 129.246411419642 "$god_ set-dist 4 35 2"
$ns_ at 129.436022299686 "$god_ set-dist 0 6 2"
$ns_ at 129.699271865329 "$god_ set-dist 5 45 2"
$ns_ at 129.948200570375 "$god_ set-dist 9 29 1"
$ns_ at 130.086447155242 "$god_ set-dist 7 10 2"
$ns_ at 130.128870813528 "$god_ set-dist 16 17 2"
$ns_ at 130.302606706080 "$god_ set-dist 5 9 2"
$ns_ at 130.302606706080 "$god_ set-dist 5 30 3"
$ns_ at 130.306837322570 "$god_ set-dist 17 19 2"
$ns_ at 130.306837322570 "$god_ set-dist 17 23 3"
$ns_ at 130.306837322570 "$god_ set-dist 17 49 3"
$ns_ at 130.396337264524 "$god_ set-dist 11 28 2"
$ns_ at 130.498607480214 "$god_ set-dist 1 41 1"
$ns_ at 131.040875372265 "$god_ set-dist 24 31 3"
$ns_ at 131.040875372265 "$god_ set-dist 25 31 2"
$ns_ at 131.103308268250 "$god_ set-dist 5 14 2"
$ns_ at 131.103308268250 "$god_ set-dist 5 34 3"
$ns_ at 131.152616811115 "$god_ set-dist 1 27 1"
$ns_ at 131.152616811115 "$god_ set-dist 20 27 2"
$ns_ at 131.180411674384 "$god_ set-dist 3 31 2"
$ns_ at 131.191150963539 "$god_ set-dist 2 17 2"
$ns_ at 131.191150963539 "$god_ set-dist 17 28 3"
$ns_ at 131.327394921970 "$god_ set-dist 8 23 3"
$ns_ at 131.327394921970 "$god_ set-dist 23 43 2"
$ns_ at 131.474220260194 "$god_ set-dist 6 20 1"
$ns_ at 131.474220260194 "$god_ set-dist 20 26 3"
$ns_ at 131.474220260194 "$god_ set-dist 20 37 2"
$ns_ at 131.620389468111 "$god_ set-dist 6 10 2"
$ns_ at 131.641590688235 "$node_(31) setdest 134.983946670932 49.688583182921 0.000000000000"
$ns_ at 131.679542550577 "$god_ set-dist 4 23 3"
$ns_ at 131.679542550577 "$god_ set-dist 19 23 2"
$ns_ at 132.329690749261 "$god_ set-dist 1 3 2"
$ns_ at 132.329690749261 "$god_ set-dist 3 9 1"
$ns_ at 132.412792250524 "$god_ set-dist 36 41 2"
$ns_ at 132.485567473192 "$god_ set-dist 13 17 3"
$ns_ at 132.485567473192 "$god_ set-dist 13 33 2"
$ns_ at 132.534622899082 "$god_ set-dist 0 20 3"
$ns_ at 132.534622899082 "$god_ set-dist 0 36 2"
$ns_ at 132.564345119067 "$god_ set-dist 8 26 2"
$ns_ at 132.564345119067 "$god_ set-dist 8 28 1"
$ns_ at 132.641590688235 "$node_(31) setdest 451.325277883014 300.804580596125 0.846997307654"
$ns_ at 132.782008650014 "$god_ set-dist 25 34 2"
$ns_ at 132.940594153569 "$node_(34) setdest 445.856935276707 252.560219141311 0.000000000000"
$ns_ at 133.106015330354 "$god_ set-dist 3 42 1"
$ns_ at 133.311552200490 "$god_ set-dist 0 35 2"
$ns_ at 133.840573017967 "$node_(23) setdest 377.853046039453 44.833669666062 0.000000000000"
$ns_ at 133.940594153569 "$node_(34) setdest 55.102315300908 555.919396872920 4.240943817915"
$ns_ at 134.057551268460 "$god_ set-dist 28 40 1"
$ns_ at 134.174413158668 "$god_ set-dist 8 17 3"
$ns_ at 134.174413158668 "$god_ set-dist 17 29 2"
$ns_ at 134.185835641394 "$god_ set-dist 10 23 3"
$ns_ at 134.185835641394 "$god_ set-dist 10 47 2"
$ns_ at 134.222842146810 "$god_ set-dist 3 14 1"
$ns_ at 134.229307932580 "$god_ set-dist 14 30 1"
$ns_ at 134.244407332172 "$god_ set-dist 0 33 2"
$ns_ at 134.324464393024 "$god_ set-dist 25 34 1"
$ns_ at 134.474074998338 "$god_ set-dist 23 39 3"
$ns_ at 134.474074998338 "$god_ set-dist 39 47 2"
$ns_ at 134.840573017967 "$node_(23) setdest 393.338258206928 644.547166534656 1.751111446468"
$ns_ at 134.990032258749 "$god_ set-dist 6 39 2"
$ns_ at 135.003180420126 "$god_ set-dist 14 28 1"
$ns_ at 135.003180420126 "$god_ set-dist 17 28 2"
$ns_ at 135.213531377599 "$god_ set-dist 22 25 1"
$ns_ at 135.269499367565 "$god_ set-dist 1 33 1"
$ns_ at 135.293577923060 "$god_ set-dist 32 49 1"
$ns_ at 135.330633085324 "$node_(6) setdest 186.810149489090 347.941122178862 0.000000000000"
$ns_ at 135.625952196317 "$god_ set-dist 34 45 1"
$ns_ at 135.691939417377 "$god_ set-dist 4 15 2"
$ns_ at 135.691939417377 "$god_ set-dist 4 38 3"
$ns_ at 135.691939417377 "$god_ set-dist 4 42 3"
$ns_ at 135.877422758665 "$god_ set-dist 31 32 2"
$ns_ at 135.877422758665 "$god_ set-dist 32 37 1"
$ns_ at 135.956006631528 "$god_ set-dist 0 49 2"
$ns_ at 136.016359834638 "$god_ set-dist 1 49 2"
$ns_ at 136.016359834638 "$god_ set-dist 14 49 1"
$ns_ at 136.016359834638 "$god_ set-dist 17 49 2"
$ns_ at 136.123477722874 "$god_ set-dist 22 45 1"
$ns_ at 136.192813333725 "$god_ set-dist 1 25 1"
$ns_ at 136.330633085324 "$node_(6) setdest 237.480582687063 252.108560022568 0.036775039660"
$ns_ at 136.602505199965 "$god_ set-dist 4 16 2"
$ns_ at 136.828611762682 "$god_ set-dist 10 36 2"
$ns_ at 136.944791654362 "$god_ set-dist 14 17 2"
$ns_ at 136.944791654362 "$god_ set-dist 17 28 3"
$ns_ at 136.944791654362 "$god_ set-dist 17 44 3"
$ns_ at 136.944791654362 "$god_ set-dist 17 49 3"
$ns_ at 137.263398094534 "$god_ set-dist 35 36 2"
$ns_ at 137.416584099946 "$god_ set-dist 1 13 2"
$ns_ at 137.416584099946 "$god_ set-dist 1 15 1"
$ns_ at 137.416584099946 "$god_ set-dist 1 38 2"
$ns_ at 137.485471949233 "$god_ set-dist 3 45 1"
$ns_ at 137.631569944385 "$god_ set-dist 1 45 1"
$ns_ at 137.835110868699 "$god_ set-dist 22 31 2"
$ns_ at 137.835110868699 "$god_ set-dist 22 37 1"
$ns_ at 137.849811130887 "$god_ set-dist 0 31 3"
$ns_ at 137.849811130887 "$god_ set-dist 0 37 2"
$ns_ at 138.260126428706 "$god_ set-dist 33 40 2"
$ns_ at 138.396785507916 "$god_ set-dist 1 12 1"
$ns_ at 138.396785507916 "$god_ set-dist 12 18 2"
$ns_ at 138.396785507916 "$god_ set-dist 12 27 2"
$ns_ at 138.828881522440 "$god_ set-dist 19 22 1"
$ns_ at 139.788388206032 "$god_ set-dist 1 31 2"
$ns_ at 139.788388206032 "$god_ set-dist 24 31 2"
$ns_ at 139.788388206032 "$god_ set-dist 31 45 1"
$ns_ at 139.950793188038 "$god_ set-dist 8 12 2"
$ns_ at 139.950793188038 "$god_ set-dist 8 14 1"
$ns_ at 140.099942647438 "$god_ set-dist 9 10 2"
$ns_ at 140.199286806789 "$god_ set-dist 7 36 2"
$ns_ at 140.306136654181 "$god_ set-dist 0 17 3"
$ns_ at 140.306136654181 "$god_ set-dist 9 17 2"
$ns_ at 140.306136654181 "$god_ set-dist 17 32 3"
$ns_ at 140.391956054962 "$god_ set-dist 5 34 2"
$ns_ at 140.391956054962 "$god_ set-dist 6 34 1"
$ns_ at 140.391956054962 "$god_ set-dist 20 34 2"
$ns_ at 140.723454917092 "$god_ set-dist 2 4 2"
$ns_ at 140.898639377209 "$god_ set-dist 31 42 2"
$ns_ at 140.898639377209 "$god_ set-dist 37 42 1"
$ns_ at 141.006207646928 "$god_ set-dist 1 46 1"
$ns_ at 141.021007515069 "$god_ set-dist 12 35 2"
$ns_ at 141.171061805544 "$god_ set-dist 2 35 2"
$ns_ at 141.203305242489 "$god_ set-dist 10 11 3"
$ns_ at 141.203305242489 "$god_ set-dist 10 43 2"
$ns_ at 141.222650434805 "$god_ set-dist 3 18 2"
$ns_ at 141.222650434805 "$god_ set-dist 3 27 2"
$ns_ at 141.222650434805 "$god_ set-dist 3 32 1"
$ns_ at 141.285588002477 "$god_ set-dist 16 46 2"
$ns_ at 141.314718287648 "$god_ set-dist 8 23 2"
$ns_ at 141.314718287648 "$god_ set-dist 8 34 1"
$ns_ at 141.787658181097 "$god_ set-dist 23 39 2"
$ns_ at 141.787658181097 "$god_ set-dist 23 43 1"
$ns_ at 141.940674337791 "$god_ set-dist 4 23 2"
$ns_ at 141.940674337791 "$god_ set-dist 19 23 1"
$ns_ at 141.941478168022 "$god_ set-dist 4 11 2"
$ns_ at 141.941478168022 "$god_ set-dist 11 19 1"
$ns_ at 142.026549769999 "$god_ set-dist 9 48 2"
$ns_ at 142.026549769999 "$god_ set-dist 41 48 1"
$ns_ at 142.128767970245 "$god_ set-dist 3 16 1"
$ns_ at 142.198743504025 "$god_ set-dist 17 45 2"
$ns_ at 142.487931602801 "$god_ set-dist 26 35 1"
$ns_ at 142.626723738406 "$god_ set-dist 3 17 3"
$ns_ at 142.626723738406 "$god_ set-dist 3 33 2"
$ns_ at 142.907362876241 "$god_ set-dist 16 49 1"
$ns_ at 142.975029594301 "$god_ set-dist 11 39 3"
$ns_ at 142.975029594301 "$god_ set-dist 23 39 3"
$ns_ at 142.975029594301 "$god_ set-dist 39 43 2"
$ns_ at 143.056411858476 "$god_ set-dist 26 34 2"
$ns_ at 143.148734102651 "$god_ set-dist 22 42 2"
$ns_ at 143.155256093142 "$god_ set-dist 9 49 1"
$ns_ at 143.172542983408 "$god_ set-dist 28 35 2"
$ns_ at 143.183903547281 "$god_ set-dist 22 35 1"
$ns_ at 143.204838804324 "$god_ set-dist 18 38 2"
$ns_ at 143.204838804324 "$god_ set-dist 27 38 2"
$ns_ at 143.204838804324 "$god_ set-dist 32 38 1"
$ns_ at 143.259377376316 "$god_ set-dist 10 48 1"
$ns_ at 143.496740092184 "$god_ set-dist 16 42 1"
$ns_ at 143.729531197707 "$god_ set-dist 3 22 1"
$ns_ at 144.058695493686 "$god_ set-dist 20 30 2"
$ns_ at 144.058695493686 "$god_ set-dist 20 31 2"
$ns_ at 144.058695493686 "$god_ set-dist 20 46 1"
$ns_ at 144.283269643997 "$god_ set-dist 13 18 2"
$ns_ at 144.283269643997 "$god_ set-dist 13 27 2"
$ns_ at 144.283269643997 "$god_ set-dist 13 32 1"
$ns_ at 144.328984481465 "$god_ set-dist 12 42 2"
$ns_ at 144.328984481465 "$god_ set-dist 12 47 1"
$ns_ at 144.560052339009 "$god_ set-dist 13 14 1"
$ns_ at 144.867288028042 "$god_ set-dist 22 49 1"
$ns_ at 145.099320870033 "$god_ set-dist 36 40 2"
$ns_ at 145.415370979038 "$god_ set-dist 15 18 1"
$ns_ at 145.415370979038 "$god_ set-dist 18 21 2"
$ns_ at 145.415370979038 "$god_ set-dist 18 30 2"
$ns_ at 145.436411913795 "$god_ set-dist 41 42 2"
$ns_ at 145.542557210573 "$god_ set-dist 24 36 2"
$ns_ at 145.710817660888 "$god_ set-dist 36 39 2"
$ns_ at 145.717989910297 "$god_ set-dist 22 46 1"
$ns_ at 145.722525137169 "$node_(17) setdest 53.833780774714 516.428952477226 0.000000000000"
$ns_ at 145.747315241525 "$god_ set-dist 21 22 1"
$ns_ at 145.747315241525 "$god_ set-dist 21 27 2"
$ns_ at 145.954126657897 "$god_ set-dist 19 24 1"
$ns_ at 146.332000067232 "$god_ set-dist 16 21 1"
$ns_ at 146.487049668178 "$god_ set-dist 17 31 3"
$ns_ at 146.487049668178 "$god_ set-dist 20 31 3"
$ns_ at 146.487049668178 "$god_ set-dist 31 46 2"
$ns_ at 146.700802901328 "$god_ set-dist 5 6 2"
$ns_ at 146.700802901328 "$god_ set-dist 5 7 3"
$ns_ at 146.700802901328 "$god_ set-dist 5 26 4"
$ns_ at 146.700802901328 "$god_ set-dist 5 34 3"
$ns_ at 146.700802901328 "$god_ set-dist 5 35 3"
$ns_ at 146.700802901328 "$god_ set-dist 5 37 3"
$ns_ at 146.722525137169 "$node_(17) setdest 379.144945571234 13.846363541680 2.953022282857"
$ns_ at 146.967211294240 "$god_ set-dist 10 15 2"
$ns_ at 146.988578264971 "$god_ set-dist 34 46 1"
$ns_ at 147.019885234769 "$god_ set-dist 10 14 2"
$ns_ at 147.019885234769 "$god_ set-dist 10 30 3"
$ns_ at 147.147782535230 "$god_ set-dist 9 44 1"
$ns_ at 147.723008098685 "$god_ set-dist 24 33 2"
$ns_ at 147.840122689037 "$god_ set-dist 20 25 1"
$ns_ at 147.882978334724 "$god_ set-dist 14 18 1"
$ns_ at 148.028797538321 "$god_ set-dist 2 3 1"
$ns_ at 148.038992357411 "$god_ set-dist 20 33 1"
$ns_ at 148.146943508100 "$god_ set-dist 16 36 2"
$ns_ at 148.164918032237 "$god_ set-dist 1 11 2"
$ns_ at 148.164918032237 "$god_ set-dist 1 23 2"
$ns_ at 148.164918032237 "$god_ set-dist 1 43 1"
$ns_ at 148.381262445794 "$god_ set-dist 0 48 1"
$ns_ at 148.420099976442 "$god_ set-dist 11 42 1"
$ns_ at 148.496580592819 "$god_ set-dist 19 32 1"
$ns_ at 148.732536562603 "$node_(8) setdest 502.109253161756 504.931767800778 0.000000000000"
$ns_ at 148.967599393702 "$node_(25) setdest 191.033547365800 324.072911694452 0.000000000000"
$ns_ at 149.013752237754 "$god_ set-dist 23 42 1"
$ns_ at 149.087791506279 "$node_(33) setdest 177.185990918587 314.615376926958 0.000000000000"
$ns_ at 149.374744022336 "$god_ set-dist 12 15 1"
$ns_ at 149.732536562603 "$node_(8) setdest 311.655436201098 303.386838413883 0.049955102240"
$ns_ at 149.855247220877 "$god_ set-dist 24 37 1"
$ns_ at 149.967599393702 "$node_(25) setdest 197.593605853494 34.151626339540 2.680628403921"
$ns_ at 150.083377975724 "$god_ set-dist 16 35 2"
$ns_ at 150.087791506279 "$node_(33) setdest 135.018846996576 486.598052906896 2.101632588808"
$ns_ at 150.570593407912 "$god_ set-dist 15 39 2"
$ns_ at 150.653368535378 "$god_ set-dist 13 19 2"
$ns_ at 150.853530932490 "$god_ set-dist 29 36 2"
$ns_ at 151.018129853766 "$god_ set-dist 42 44 2"
$ns_ at 151.020258727278 "$god_ set-dist 32 45 1"
$ns_ at 151.022824403411 "$god_ set-dist 1 47 1"
$ns_ at 151.023762853979 "$god_ set-dist 3 24 1"
$ns_ at 151.136669970984 "$god_ set-dist 32 35 1"
$ns_ at 151.316804137012 "$god_ set-dist 3 17 2"
$ns_ at 151.316804137012 "$god_ set-dist 3 20 2"
$ns_ at 151.316804137012 "$god_ set-dist 3 25 1"
$ns_ at 151.324828453078 "$god_ set-dist 9 28 1"
$ns_ at 151.614342376938 "$god_ set-dist 30 46 2"
$ns_ at 151.697817818960 "$god_ set-dist 32 39 2"
$ns_ at 151.697817818960 "$god_ set-dist 38 39 3"
$ns_ at 151.899435807494 "$god_ set-dist 1 19 1"
$ns_ at 151.970445715223 "$god_ set-dist 2 36 2"
$ns_ at 152.114000464071 "$god_ set-dist 5 12 2"
$ns_ at 152.484363651294 "$god_ set-dist 5 32 3"
$ns_ at 152.484363651294 "$god_ set-dist 29 32 2"
$ns_ at 152.946860765441 "$god_ set-dist 36 43 2"
$ns_ at 153.446046280626 "$god_ set-dist 1 34 1"
$ns_ at 153.446046280626 "$god_ set-dist 5 34 2"
$ns_ at 153.541400011778 "$god_ set-dist 0 42 2"
$ns_ at 153.541400011778 "$god_ set-dist 42 48 3"
$ns_ at 153.614318248379 "$god_ set-dist 10 30 2"
$ns_ at 153.614318248379 "$god_ set-dist 22 30 1"
$ns_ at 153.614318248379 "$god_ set-dist 27 30 2"
$ns_ at 153.669368563370 "$god_ set-dist 15 42 2"
$ns_ at 153.672034563186 "$god_ set-dist 21 32 1"
$ns_ at 153.818624538509 "$node_(36) setdest 125.314627570436 388.630423998723 0.000000000000"
$ns_ at 153.830980930924 "$god_ set-dist 0 17 2"
$ns_ at 153.830980930924 "$god_ set-dist 8 17 2"
$ns_ at 153.830980930924 "$god_ set-dist 17 29 1"
$ns_ at 153.830980930924 "$god_ set-dist 17 44 2"
$ns_ at 154.185071281129 "$god_ set-dist 10 22 2"
$ns_ at 154.185071281129 "$god_ set-dist 10 30 3"
$ns_ at 154.282904864795 "$god_ set-dist 13 39 3"
$ns_ at 154.282904864795 "$god_ set-dist 14 39 2"
$ns_ at 154.567930099993 "$god_ set-dist 9 18 1"
$ns_ at 154.640218634845 "$god_ set-dist 4 8 3"
$ns_ at 154.640218634845 "$god_ set-dist 4 13 3"
$ns_ at 154.640218634845 "$god_ set-dist 4 14 2"
$ns_ at 154.818624538509 "$node_(36) setdest 587.181381858822 77.331984784699 3.830352420153"
$ns_ at 154.988355755474 "$god_ set-dist 17 32 2"
$ns_ at 154.988355755474 "$god_ set-dist 20 32 2"
$ns_ at 154.988355755474 "$god_ set-dist 25 32 1"
$ns_ at 154.999168351499 "$god_ set-dist 6 32 1"
$ns_ at 155.032656247504 "$god_ set-dist 4 8 2"
$ns_ at 155.032656247504 "$god_ set-dist 4 29 1"
$ns_ at 155.093665893653 "$god_ set-dist 10 13 3"
$ns_ at 155.093665893653 "$god_ set-dist 10 32 2"
$ns_ at 155.093665893653 "$god_ set-dist 10 35 3"
$ns_ at 155.093665893653 "$god_ set-dist 10 38 3"
$ns_ at 155.131580558659 "$god_ set-dist 1 32 1"
$ns_ at 155.131580558659 "$god_ set-dist 5 32 2"
$ns_ at 155.320638015109 "$god_ set-dist 36 43 1"
$ns_ at 155.369201626308 "$god_ set-dist 45 49 1"
$ns_ at 155.446140475166 "$god_ set-dist 22 27 2"
$ns_ at 155.446140475166 "$god_ set-dist 27 30 3"
$ns_ at 155.677783646919 "$god_ set-dist 12 22 1"
$ns_ at 155.707352521602 "$god_ set-dist 13 22 1"
$ns_ at 155.707352521602 "$god_ set-dist 13 39 2"
$ns_ at 155.784883161453 "$god_ set-dist 17 31 2"
$ns_ at 155.784883161453 "$god_ set-dist 20 31 2"
$ns_ at 155.784883161453 "$god_ set-dist 25 31 1"
$ns_ at 156.097969755310 "$god_ set-dist 6 35 2"
$ns_ at 156.231548110805 "$god_ set-dist 15 23 1"
$ns_ at 156.231548110805 "$god_ set-dist 18 23 2"
$ns_ at 156.231548110805 "$god_ set-dist 23 29 2"
$ns_ at 156.596515693894 "$god_ set-dist 34 36 1"
$ns_ at 156.624793852650 "$god_ set-dist 15 29 2"
$ns_ at 156.624793852650 "$god_ set-dist 23 29 3"
$ns_ at 156.624793852650 "$god_ set-dist 29 38 3"
$ns_ at 156.683468380359 "$god_ set-dist 12 42 3"
$ns_ at 156.683468380359 "$god_ set-dist 42 47 2"
$ns_ at 156.826370210890 "$god_ set-dist 6 40 2"
$ns_ at 156.900367984108 "$god_ set-dist 3 20 3"
$ns_ at 156.900367984108 "$god_ set-dist 20 25 2"
$ns_ at 156.900367984108 "$god_ set-dist 20 31 3"
$ns_ at 157.047628084835 "$god_ set-dist 13 39 3"
$ns_ at 157.047628084835 "$god_ set-dist 22 39 2"
$ns_ at 157.133988578652 "$god_ set-dist 0 20 2"
$ns_ at 157.133988578652 "$god_ set-dist 8 20 2"
$ns_ at 157.133988578652 "$god_ set-dist 20 29 1"
$ns_ at 157.133988578652 "$god_ set-dist 20 44 2"
$ns_ at 157.171567354577 "$god_ set-dist 8 9 1"
$ns_ at 157.216362266744 "$god_ set-dist 1 10 2"
$ns_ at 157.216362266744 "$god_ set-dist 10 12 3"
$ns_ at 157.216362266744 "$god_ set-dist 10 36 3"
$ns_ at 157.256278753594 "$god_ set-dist 35 46 2"
$ns_ at 158.131484048492 "$god_ set-dist 20 35 3"
$ns_ at 158.131484048492 "$god_ set-dist 33 35 2"
$ns_ at 158.237486793166 "$god_ set-dist 20 30 3"
$ns_ at 158.237486793166 "$god_ set-dist 30 33 2"
$ns_ at 158.251384839732 "$god_ set-dist 16 39 2"
$ns_ at 158.251384839732 "$god_ set-dist 39 42 3"
$ns_ at 158.301459483070 "$god_ set-dist 14 38 1"
$ns_ at 158.301459483070 "$god_ set-dist 29 38 2"
$ns_ at 158.840245683761 "$god_ set-dist 0 26 3"
$ns_ at 158.840245683761 "$god_ set-dist 8 26 3"
$ns_ at 158.840245683761 "$god_ set-dist 26 28 2"
$ns_ at 158.840245683761 "$god_ set-dist 26 40 3"
$ns_ at 158.840245683761 "$god_ set-dist 26 41 3"
$ns_ at 158.840245683761 "$god_ set-dist 26 44 3"
$ns_ at 158.840245683761 "$god_ set-dist 26 48 4"
$ns_ at 158.965998609452 "$god_ set-dist 10 38 2"
$ns_ at 158.965998609452 "$god_ set-dist 16 38 1"
$ns_ at 159.050324131597 "$god_ set-dist 12 34 1"
$ns_ at 159.050324131597 "$god_ set-dist 12 42 2"
$ns_ at 159.111075047059 "$god_ set-dist 11 34 2"
$ns_ at 159.114455440303 "$god_ set-dist 27 30 2"
$ns_ at 159.114455440303 "$god_ set-dist 30 32 1"
$ns_ at 159.245661338695 "$god_ set-dist 10 36 2"
$ns_ at 159.245661338695 "$god_ set-dist 29 36 1"
$ns_ at 159.319115233259 "$god_ set-dist 10 16 2"
$ns_ at 159.319115233259 "$god_ set-dist 10 21 3"
$ns_ at 159.319115233259 "$god_ set-dist 10 38 3"
$ns_ at 159.319115233259 "$god_ set-dist 10 42 3"
$ns_ at 159.319115233259 "$god_ set-dist 10 49 3"
$ns_ at 159.336935896090 "$god_ set-dist 12 42 3"
$ns_ at 159.336935896090 "$god_ set-dist 34 42 2"
$ns_ at 159.344912080263 "$god_ set-dist 39 44 2"
$ns_ at 159.436589357186 "$god_ set-dist 17 45 1"
$ns_ at 159.436589357186 "$god_ set-dist 17 49 2"
$ns_ at 159.810072665849 "$god_ set-dist 9 39 2"
$ns_ at 159.810072665849 "$god_ set-dist 21 39 3"
$ns_ at 159.810072665849 "$god_ set-dist 30 39 3"
$ns_ at 159.810072665849 "$god_ set-dist 35 39 3"
$ns_ at 159.810072665849 "$god_ set-dist 39 49 3"
$ns_ at 159.931527659798 "$god_ set-dist 18 34 1"
$ns_ at 159.981652190709 "$god_ set-dist 16 33 2"
$ns_ at 159.984311784877 "$god_ set-dist 17 23 2"
$ns_ at 159.984311784877 "$god_ set-dist 23 45 1"
$ns_ at 160.015426617450 "$god_ set-dist 2 46 2"
$ns_ at 160.015426617450 "$god_ set-dist 10 46 3"
$ns_ at 160.260654365958 "$node_(10) setdest 457.437688702959 626.772105509554 0.000000000000"
$ns_ at 160.575716217152 "$god_ set-dist 2 36 1"
$ns_ at 160.701364192780 "$god_ set-dist 22 38 1"
$ns_ at 160.721744791949 "$god_ set-dist 14 23 1"
$ns_ at 160.721744791949 "$god_ set-dist 23 29 2"
$ns_ at 161.260654365958 "$node_(10) setdest 249.751374322988 505.823915906105 4.681295461187"
$ns_ at 161.463297316786 "$god_ set-dist 13 27 3"
$ns_ at 161.463297316786 "$god_ set-dist 27 30 3"
$ns_ at 161.463297316786 "$god_ set-dist 27 32 2"
$ns_ at 161.463297316786 "$god_ set-dist 27 35 3"
$ns_ at 161.504449900359 "$god_ set-dist 1 41 2"
$ns_ at 161.578955410190 "$god_ set-dist 22 23 1"
$ns_ at 161.625842906708 "$god_ set-dist 10 49 2"
$ns_ at 161.625842906708 "$god_ set-dist 24 49 1"
$ns_ at 161.625842906708 "$god_ set-dist 39 49 2"
$ns_ at 161.882164024542 "$god_ set-dist 24 25 2"
$ns_ at 162.173561196020 "$god_ set-dist 5 44 3"
$ns_ at 162.173561196020 "$god_ set-dist 17 44 3"
$ns_ at 162.173561196020 "$god_ set-dist 20 44 3"
$ns_ at 162.173561196020 "$god_ set-dist 29 44 2"
$ns_ at 162.174239268682 "$god_ set-dist 5 21 3"
$ns_ at 162.174239268682 "$god_ set-dist 5 36 2"
$ns_ at 162.556410599140 "$god_ set-dist 0 39 2"
$ns_ at 162.613849391547 "$god_ set-dist 13 16 1"
$ns_ at 162.613849391547 "$god_ set-dist 13 27 2"
$ns_ at 163.194457295470 "$god_ set-dist 14 29 2"
$ns_ at 163.273259915549 "$god_ set-dist 22 29 2"
$ns_ at 163.273259915549 "$god_ set-dist 23 29 3"
$ns_ at 163.398681284205 "$god_ set-dist 36 42 3"
$ns_ at 163.398681284205 "$god_ set-dist 42 43 2"
$ns_ at 163.564515963311 "$god_ set-dist 7 36 1"
$ns_ at 163.564515963311 "$god_ set-dist 36 42 2"
$ns_ at 163.687304738591 "$god_ set-dist 23 32 1"
$ns_ at 163.783934058688 "$god_ set-dist 13 29 3"
$ns_ at 163.783934058688 "$god_ set-dist 16 29 2"
$ns_ at 163.783934058688 "$god_ set-dist 29 38 3"
$ns_ at 163.783934058688 "$god_ set-dist 29 42 3"
$ns_ at 163.847748848844 "$god_ set-dist 32 33 1"
$ns_ at 164.187706775314 "$god_ set-dist 16 25 2"
$ns_ at 164.361130602936 "$god_ set-dist 35 42 1"
$ns_ at 164.435993232006 "$god_ set-dist 10 13 2"
$ns_ at 164.435993232006 "$god_ set-dist 10 16 1"
$ns_ at 164.435993232006 "$god_ set-dist 10 21 2"
$ns_ at 164.435993232006 "$god_ set-dist 10 38 2"
$ns_ at 164.435993232006 "$god_ set-dist 10 42 2"
$ns_ at 164.782604230450 "$god_ set-dist 9 35 2"
$ns_ at 164.782604230450 "$god_ set-dist 29 35 3"
$ns_ at 164.969447188084 "$god_ set-dist 34 38 2"
$ns_ at 165.058251727639 "$god_ set-dist 24 39 2"
$ns_ at 165.058251727639 "$god_ set-dist 39 49 3"
$ns_ at 165.351345005862 "$god_ set-dist 12 43 1"
$ns_ at 165.558642208201 "$god_ set-dist 3 44 1"
$ns_ at 165.558642208201 "$god_ set-dist 3 48 2"
$ns_ at 165.558642208201 "$god_ set-dist 26 44 2"
$ns_ at 165.558642208201 "$god_ set-dist 26 48 3"
$ns_ at 165.650125978750 "$god_ set-dist 13 29 2"
$ns_ at 165.650125978750 "$god_ set-dist 23 29 2"
$ns_ at 165.650125978750 "$god_ set-dist 29 34 1"
$ns_ at 165.650125978750 "$god_ set-dist 29 35 2"
$ns_ at 165.658872430749 "$god_ set-dist 2 49 1"
$ns_ at 165.658872430749 "$god_ set-dist 39 49 2"
$ns_ at 165.815855675209 "$god_ set-dist 26 36 2"
$ns_ at 165.815855675209 "$god_ set-dist 36 37 1"
$ns_ at 165.967931321205 "$node_(39) setdest 298.288118998502 630.630690348611 0.000000000000"
$ns_ at 166.165628534975 "$god_ set-dist 13 29 3"
$ns_ at 166.165628534975 "$god_ set-dist 13 34 2"
$ns_ at 166.967931321205 "$node_(39) setdest 387.013357793628 249.985491744471 2.374148291727"
$ns_ at 167.037935224230 "$god_ set-dist 0 5 3"
$ns_ at 167.037935224230 "$god_ set-dist 0 17 3"
$ns_ at 167.037935224230 "$god_ set-dist 0 20 3"
$ns_ at 167.037935224230 "$god_ set-dist 0 29 2"
$ns_ at 167.070794058868 "$god_ set-dist 1 10 1"
$ns_ at 167.070794058868 "$god_ set-dist 10 12 2"
$ns_ at 167.070794058868 "$god_ set-dist 10 46 2"
$ns_ at 167.121793923127 "$god_ set-dist 18 22 2"
$ns_ at 167.348225688917 "$god_ set-dist 32 36 1"
$ns_ at 167.383186794463 "$god_ set-dist 12 14 2"
$ns_ at 167.443969879010 "$god_ set-dist 5 39 2"
$ns_ at 167.461701904014 "$god_ set-dist 9 27 1"
$ns_ at 167.461701904014 "$god_ set-dist 27 30 2"
$ns_ at 167.530945859029 "$god_ set-dist 11 17 2"
$ns_ at 167.530945859029 "$god_ set-dist 17 19 1"
$ns_ at 167.584745208791 "$god_ set-dist 8 22 2"
$ns_ at 167.722218056017 "$god_ set-dist 0 7 2"
$ns_ at 168.044153083100 "$god_ set-dist 1 7 1"
$ns_ at 168.044153083100 "$god_ set-dist 5 7 2"
$ns_ at 168.059821083537 "$god_ set-dist 6 29 1"
$ns_ at 168.073444640553 "$god_ set-dist 11 22 1"
$ns_ at 168.370611753112 "$god_ set-dist 6 30 1"
$ns_ at 168.370611753112 "$god_ set-dist 20 30 2"
$ns_ at 168.407757798878 "$god_ set-dist 0 17 2"
$ns_ at 168.407757798878 "$god_ set-dist 9 17 1"
$ns_ at 168.407757798878 "$god_ set-dist 17 28 2"
$ns_ at 168.407757798878 "$god_ set-dist 17 44 2"
$ns_ at 168.958445392582 "$god_ set-dist 6 16 2"
$ns_ at 169.046020445925 "$god_ set-dist 2 25 2"
$ns_ at 169.088079550719 "$god_ set-dist 24 36 1"
$ns_ at 169.162307662308 "$god_ set-dist 0 4 3"
$ns_ at 169.162307662308 "$god_ set-dist 4 9 2"
$ns_ at 169.162307662308 "$god_ set-dist 4 28 3"
$ns_ at 169.162307662308 "$god_ set-dist 4 44 3"
$ns_ at 169.258823241843 "$god_ set-dist 21 38 2"
$ns_ at 169.470553469683 "$node_(15) setdest 356.543177855430 329.070090466780 0.000000000000"
$ns_ at 169.573076074283 "$god_ set-dist 0 47 2"
$ns_ at 169.617839961423 "$god_ set-dist 23 25 1"
$ns_ at 169.629299833308 "$god_ set-dist 32 46 1"
$ns_ at 169.693365772702 "$god_ set-dist 11 18 2"
$ns_ at 169.693365772702 "$god_ set-dist 18 43 1"
$ns_ at 169.745701015251 "$god_ set-dist 0 22 2"
$ns_ at 169.927094879813 "$god_ set-dist 29 33 1"
$ns_ at 170.470553469683 "$node_(15) setdest 511.485181771898 293.751671947620 0.943569592494"
$ns_ at 170.643501162076 "$god_ set-dist 1 5 2"
$ns_ at 170.643501162076 "$god_ set-dist 5 7 3"
$ns_ at 170.643501162076 "$god_ set-dist 5 13 4"
$ns_ at 170.643501162076 "$god_ set-dist 5 14 3"
$ns_ at 170.643501162076 "$god_ set-dist 5 15 3"
$ns_ at 170.643501162076 "$god_ set-dist 5 16 3"
$ns_ at 170.643501162076 "$god_ set-dist 5 22 3"
$ns_ at 170.643501162076 "$god_ set-dist 5 32 3"
$ns_ at 170.643501162076 "$god_ set-dist 5 38 4"
$ns_ at 170.643501162076 "$god_ set-dist 5 42 4"
$ns_ at 170.643501162076 "$god_ set-dist 5 43 3"
$ns_ at 170.643501162076 "$god_ set-dist 5 47 3"
$ns_ at 170.947380761208 "$god_ set-dist 3 6 1"
$ns_ at 170.947380761208 "$god_ set-dist 3 20 2"
$ns_ at 170.984691908200 "$god_ set-dist 9 10 1"
$ns_ at 170.984691908200 "$god_ set-dist 10 30 2"
$ns_ at 171.168933220210 "$node_(5) setdest 41.016405034208 622.611626808816 0.000000000000"
$ns_ at 171.259595319944 "$god_ set-dist 9 39 1"
$ns_ at 171.259595319944 "$god_ set-dist 21 39 2"
$ns_ at 171.259595319944 "$god_ set-dist 30 39 2"
$ns_ at 171.342417128793 "$god_ set-dist 11 45 1"
$ns_ at 171.347282552160 "$god_ set-dist 29 35 3"
$ns_ at 171.347282552160 "$god_ set-dist 34 35 2"
$ns_ at 171.425194332201 "$god_ set-dist 17 34 1"
$ns_ at 172.168933220210 "$node_(5) setdest 575.196768993262 498.768003856238 2.185212502844"
$ns_ at 172.431828620577 "$god_ set-dist 23 29 3"
$ns_ at 172.431828620577 "$god_ set-dist 23 34 2"
$ns_ at 172.685788155937 "$god_ set-dist 25 49 1"
$ns_ at 173.008997736979 "$god_ set-dist 10 48 2"
$ns_ at 173.180705377468 "$god_ set-dist 0 39 1"
$ns_ at 173.351781239744 "$god_ set-dist 18 28 1"
$ns_ at 173.544261938079 "$god_ set-dist 30 36 1"
$ns_ at 173.607714046697 "$god_ set-dist 24 39 1"
$ns_ at 173.617553050215 "$god_ set-dist 11 32 1"
$ns_ at 173.634562997219 "$god_ set-dist 22 41 2"
$ns_ at 173.800873275864 "$god_ set-dist 3 41 1"
$ns_ at 173.800873275864 "$god_ set-dist 26 41 2"
$ns_ at 173.908367108997 "$god_ set-dist 3 36 1"
$ns_ at 174.112730384838 "$god_ set-dist 0 20 2"
$ns_ at 174.112730384838 "$god_ set-dist 20 39 1"
$ns_ at 174.250135355954 "$god_ set-dist 22 38 2"
$ns_ at 174.302511196884 "$god_ set-dist 4 41 3"
$ns_ at 174.302511196884 "$god_ set-dist 5 41 3"
$ns_ at 174.302511196884 "$god_ set-dist 29 41 2"
$ns_ at 174.560741567297 "$god_ set-dist 0 34 2"
$ns_ at 174.908323720799 "$god_ set-dist 3 40 1"
$ns_ at 174.908323720799 "$god_ set-dist 26 40 2"
$ns_ at 174.932594586144 "$god_ set-dist 4 28 2"
$ns_ at 174.932594586144 "$god_ set-dist 4 34 1"
$ns_ at 174.932594586144 "$god_ set-dist 4 41 2"
$ns_ at 174.932594586144 "$god_ set-dist 4 44 2"
$ns_ at 175.236090479730 "$god_ set-dist 29 36 2"
$ns_ at 175.557936330650 "$god_ set-dist 34 39 1"
$ns_ at 175.615551907064 "$god_ set-dist 10 34 1"
$ns_ at 175.640967942475 "$god_ set-dist 38 47 2"
$ns_ at 175.676817664492 "$god_ set-dist 21 24 1"
$ns_ at 175.680786555448 "$god_ set-dist 1 21 1"
$ns_ at 175.773373566636 "$god_ set-dist 10 23 2"
$ns_ at 175.773373566636 "$god_ set-dist 16 23 1"
$ns_ at 175.773373566636 "$god_ set-dist 23 27 2"
$ns_ at 176.010738347540 "$god_ set-dist 5 8 3"
$ns_ at 176.010738347540 "$god_ set-dist 8 29 2"
$ns_ at 176.408069506314 "$god_ set-dist 0 43 2"
$ns_ at 176.487487511259 "$god_ set-dist 4 19 2"
$ns_ at 176.754701000044 "$god_ set-dist 5 24 3"
$ns_ at 176.754701000044 "$god_ set-dist 24 29 2"
$ns_ at 176.860395384857 "$god_ set-dist 32 42 2"
$ns_ at 176.977437972627 "$god_ set-dist 2 33 2"
$ns_ at 177.243572961266 "$god_ set-dist 28 31 3"
$ns_ at 177.243572961266 "$god_ set-dist 28 37 2"
$ns_ at 177.412550763223 "$god_ set-dist 11 14 1"
$ns_ at 177.613304759013 "$god_ set-dist 18 48 2"
$ns_ at 177.692273535835 "$god_ set-dist 13 47 2"
$ns_ at 177.772983387731 "$god_ set-dist 4 11 3"
$ns_ at 177.772983387731 "$god_ set-dist 4 45 2"
$ns_ at 177.971708236644 "$god_ set-dist 26 33 3"
$ns_ at 177.971708236644 "$god_ set-dist 33 37 2"
$ns_ at 177.987040098167 "$god_ set-dist 20 28 2"
$ns_ at 177.987040098167 "$god_ set-dist 20 34 1"
$ns_ at 177.987040098167 "$god_ set-dist 20 44 2"
$ns_ at 177.987040098167 "$god_ set-dist 20 49 2"
$ns_ at 178.264779122183 "$god_ set-dist 27 34 1"
$ns_ at 178.425160941555 "$god_ set-dist 22 44 2"
$ns_ at 178.425160941555 "$god_ set-dist 22 48 3"
$ns_ at 178.641921878042 "$god_ set-dist 12 15 2"
$ns_ at 178.644593842973 "$god_ set-dist 7 41 2"
$ns_ at 178.744803881135 "$god_ set-dist 18 47 1"
$ns_ at 178.778681683233 "$god_ set-dist 22 31 1"
$ns_ at 178.778681683233 "$god_ set-dist 28 31 2"
$ns_ at 178.778681683233 "$god_ set-dist 31 40 2"
$ns_ at 178.833579493549 "$god_ set-dist 0 5 2"
$ns_ at 178.833579493549 "$god_ set-dist 5 8 2"
$ns_ at 178.833579493549 "$god_ set-dist 5 24 2"
$ns_ at 178.833579493549 "$god_ set-dist 5 39 1"
$ns_ at 178.833579493549 "$god_ set-dist 5 41 2"
$ns_ at 179.691981146181 "$god_ set-dist 1 48 3"
$ns_ at 179.691981146181 "$god_ set-dist 27 48 2"
$ns_ at 179.691981146181 "$god_ set-dist 29 48 3"
$ns_ at 180.015162495700 "$god_ set-dist 5 47 2"
$ns_ at 180.015162495700 "$god_ set-dist 17 47 1"
$ns_ at 180.053808324439 "$god_ set-dist 16 30 1"
$ns_ at 180.236760922993 "$god_ set-dist 11 15 1"
$ns_ at 180.567622164236 "$god_ set-dist 4 28 3"
$ns_ at 180.567622164236 "$god_ set-dist 20 28 3"
$ns_ at 180.567622164236 "$god_ set-dist 28 34 2"
$ns_ at 180.748934884645 "$god_ set-dist 5 13 3"
$ns_ at 180.748934884645 "$god_ set-dist 5 22 2"
$ns_ at 180.748934884645 "$god_ set-dist 13 17 2"
$ns_ at 180.748934884645 "$god_ set-dist 17 22 1"
$ns_ at 180.819372609902 "$god_ set-dist 4 23 3"
$ns_ at 180.819372609902 "$god_ set-dist 4 25 2"
$ns_ at 180.819372609902 "$god_ set-dist 4 31 3"
$ns_ at 180.819372609902 "$god_ set-dist 4 35 3"
$ns_ at 180.845511522145 "$god_ set-dist 14 35 2"
$ns_ at 181.048340946680 "$god_ set-dist 15 35 2"
$ns_ at 181.399281380064 "$god_ set-dist 1 3 1"
$ns_ at 181.399281380064 "$god_ set-dist 1 26 2"
$ns_ at 181.583783545570 "$god_ set-dist 11 25 1"
$ns_ at 181.764564924880 "$god_ set-dist 22 28 2"
$ns_ at 181.764564924880 "$god_ set-dist 28 31 3"
$ns_ at 181.808436583691 "$god_ set-dist 4 8 3"
$ns_ at 181.808436583691 "$god_ set-dist 8 34 2"
$ns_ at 181.827762272916 "$god_ set-dist 5 13 4"
$ns_ at 181.827762272916 "$god_ set-dist 13 17 3"
$ns_ at 181.827762272916 "$god_ set-dist 13 22 2"
$ns_ at 181.842945018192 "$god_ set-dist 22 40 2"
$ns_ at 181.842945018192 "$god_ set-dist 31 40 3"
$ns_ at 181.883546715252 "$god_ set-dist 5 44 2"
$ns_ at 181.883546715252 "$god_ set-dist 39 44 1"
$ns_ at 181.949577235203 "$god_ set-dist 0 32 2"
$ns_ at 181.949577235203 "$god_ set-dist 0 35 3"
$ns_ at 182.071500947378 "$god_ set-dist 30 42 1"
$ns_ at 182.469098911378 "$god_ set-dist 0 15 2"
$ns_ at 182.598645162804 "$god_ set-dist 10 11 2"
$ns_ at 182.598645162804 "$god_ set-dist 10 15 1"
$ns_ at 182.642584168842 "$god_ set-dist 3 8 1"
$ns_ at 182.642584168842 "$god_ set-dist 8 26 2"
$ns_ at 182.690866967068 "$god_ set-dist 5 12 1"
$ns_ at 182.690866967068 "$god_ set-dist 5 13 3"
$ns_ at 182.690866967068 "$god_ set-dist 5 21 2"
$ns_ at 182.690866967068 "$god_ set-dist 5 38 3"
$ns_ at 182.690866967068 "$god_ set-dist 5 43 2"
$ns_ at 182.912375262380 "$god_ set-dist 4 49 3"
$ns_ at 182.912375262380 "$god_ set-dist 20 49 3"
$ns_ at 182.912375262380 "$god_ set-dist 34 49 2"
$ns_ at 183.074333870664 "$god_ set-dist 13 21 2"
$ns_ at 183.464135114169 "$god_ set-dist 16 36 1"
$ns_ at 183.896848955627 "$god_ set-dist 13 27 3"
$ns_ at 183.896848955627 "$god_ set-dist 16 27 2"
$ns_ at 183.896848955627 "$god_ set-dist 23 27 3"
$ns_ at 183.896848955627 "$god_ set-dist 27 38 3"
$ns_ at 183.896848955627 "$god_ set-dist 27 42 3"
$ns_ at 183.921516459720 "$god_ set-dist 41 47 2"
$ns_ at 183.922760037243 "$god_ set-dist 12 29 1"
$ns_ at 184.293078559032 "$god_ set-dist 4 41 3"
$ns_ at 184.293078559032 "$god_ set-dist 34 41 2"
$ns_ at 184.357849676679 "$god_ set-dist 5 7 2"
$ns_ at 184.357849676679 "$god_ set-dist 5 14 2"
$ns_ at 184.357849676679 "$god_ set-dist 5 15 2"
$ns_ at 184.357849676679 "$god_ set-dist 5 32 2"
$ns_ at 184.357849676679 "$god_ set-dist 5 33 1"
$ns_ at 184.357849676679 "$god_ set-dist 5 42 3"
$ns_ at 184.445555059610 "$god_ set-dist 16 45 2"
$ns_ at 184.715460616666 "$god_ set-dist 5 14 3"
$ns_ at 184.715460616666 "$god_ set-dist 14 33 2"
$ns_ at 184.754500166349 "$god_ set-dist 4 23 2"
$ns_ at 184.754500166349 "$god_ set-dist 20 23 2"
$ns_ at 184.754500166349 "$god_ set-dist 23 36 1"
$ns_ at 184.884059169753 "$god_ set-dist 4 49 2"
$ns_ at 184.884059169753 "$god_ set-dist 20 49 2"
$ns_ at 184.884059169753 "$god_ set-dist 36 49 1"
$ns_ at 184.913278230571 "$god_ set-dist 35 47 2"
$ns_ at 185.088112162140 "$god_ set-dist 1 37 1"
$ns_ at 185.093591895283 "$god_ set-dist 29 46 1"
$ns_ at 185.195542529154 "$god_ set-dist 10 16 2"
$ns_ at 185.195542529154 "$god_ set-dist 10 42 3"
$ns_ at 185.199725927044 "$god_ set-dist 2 29 2"
$ns_ at 185.499519024823 "$god_ set-dist 33 39 1"
$ns_ at 185.509199893579 "$god_ set-dist 1 16 2"
$ns_ at 185.882299275530 "$god_ set-dist 23 24 1"
$ns_ at 185.882299275530 "$god_ set-dist 23 27 2"
$ns_ at 185.882299275530 "$god_ set-dist 23 39 2"
$ns_ at 185.926759240402 "$god_ set-dist 5 7 3"
$ns_ at 185.926759240402 "$god_ set-dist 5 42 4"
$ns_ at 185.926759240402 "$god_ set-dist 7 33 2"
$ns_ at 185.926759240402 "$god_ set-dist 33 42 3"
$ns_ at 185.957103016178 "$node_(42) setdest 569.568779529144 114.992475434775 0.000000000000"
$ns_ at 185.993167032505 "$god_ set-dist 4 31 2"
$ns_ at 185.993167032505 "$god_ set-dist 20 31 2"
$ns_ at 185.993167032505 "$god_ set-dist 31 36 1"
$ns_ at 186.348618428673 "$node_(12) setdest 119.161125078219 377.470796176681 0.000000000000"
$ns_ at 186.590704424114 "$god_ set-dist 24 38 1"
$ns_ at 186.590704424114 "$god_ set-dist 27 38 2"
$ns_ at 186.590704424114 "$god_ set-dist 38 39 2"
$ns_ at 186.957103016178 "$node_(42) setdest 245.216933699586 55.080486861230 4.548952603057"
$ns_ at 187.129763178033 "$god_ set-dist 35 43 2"
$ns_ at 187.266674604928 "$god_ set-dist 10 47 1"
$ns_ at 187.348618428673 "$node_(12) setdest 595.064739641609 654.591107891163 1.263512585501"
$ns_ at 187.604356751636 "$god_ set-dist 30 34 2"
$ns_ at 187.930996912786 "$node_(21) setdest 266.995379606970 204.404276680688 0.000000000000"
$ns_ at 188.374701108194 "$god_ set-dist 10 43 1"
$ns_ at 188.542012991146 "$god_ set-dist 12 13 3"
$ns_ at 188.542012991146 "$god_ set-dist 13 43 2"
$ns_ at 188.722827727565 "$god_ set-dist 0 11 3"
$ns_ at 188.722827727565 "$god_ set-dist 0 14 2"
$ns_ at 188.930996912786 "$node_(21) setdest 459.047597318865 557.572725565435 2.150739180472"
$ns_ at 189.094909621393 "$god_ set-dist 24 30 1"
$ns_ at 189.242278977431 "$god_ set-dist 10 33 1"
$ns_ at 189.500444879639 "$god_ set-dist 14 46 2"
$ns_ at 189.502446767209 "$god_ set-dist 17 38 2"
$ns_ at 189.502446767209 "$god_ set-dist 17 43 1"
$ns_ at 189.776983269018 "$god_ set-dist 17 21 1"
$ns_ at 189.805937522517 "$god_ set-dist 3 18 1"
$ns_ at 189.805937522517 "$god_ set-dist 18 26 2"
$ns_ at 189.860391795468 "$god_ set-dist 9 23 1"
$ns_ at 189.860391795468 "$god_ set-dist 23 29 2"
$ns_ at 189.962560254250 "$god_ set-dist 10 20 1"
$ns_ at 190.014826945043 "$god_ set-dist 14 42 1"
$ns_ at 190.730081680005 "$god_ set-dist 19 35 2"
$ns_ at 191.405465831248 "$god_ set-dist 12 38 3"
$ns_ at 191.405465831248 "$god_ set-dist 17 38 3"
$ns_ at 191.405465831248 "$god_ set-dist 38 43 2"
$ns_ at 191.433050290120 "$god_ set-dist 3 26 2"
$ns_ at 191.433050290120 "$god_ set-dist 8 26 3"
$ns_ at 191.433050290120 "$god_ set-dist 18 26 3"
$ns_ at 191.433050290120 "$god_ set-dist 26 40 3"
$ns_ at 191.433050290120 "$god_ set-dist 26 41 3"
$ns_ at 191.433050290120 "$god_ set-dist 26 44 3"
$ns_ at 191.433050290120 "$god_ set-dist 26 48 4"
$ns_ at 191.500909190336 "$god_ set-dist 3 35 2"
$ns_ at 191.663401917134 "$god_ set-dist 6 29 2"
$ns_ at 191.744851235940 "$god_ set-dist 28 42 2"
$ns_ at 192.010512707450 "$god_ set-dist 8 32 2"
$ns_ at 192.010512707450 "$god_ set-dist 8 35 3"
$ns_ at 192.111348589799 "$god_ set-dist 4 23 3"
$ns_ at 192.111348589799 "$god_ set-dist 4 31 3"
$ns_ at 192.111348589799 "$god_ set-dist 4 36 2"
$ns_ at 192.111348589799 "$god_ set-dist 4 49 3"
$ns_ at 192.164591753266 "$node_(14) setdest 417.593107516729 316.047529514852 0.000000000000"
$ns_ at 192.194834344913 "$god_ set-dist 0 25 3"
$ns_ at 192.194834344913 "$god_ set-dist 9 25 2"
$ns_ at 192.308921032233 "$god_ set-dist 32 41 2"
$ns_ at 192.308921032233 "$god_ set-dist 35 41 3"
$ns_ at 192.378581870939 "$god_ set-dist 4 44 3"
$ns_ at 192.378581870939 "$god_ set-dist 4 48 4"
$ns_ at 192.378581870939 "$god_ set-dist 34 44 2"
$ns_ at 192.378581870939 "$god_ set-dist 34 48 3"
$ns_ at 192.510037341099 "$god_ set-dist 11 39 2"
$ns_ at 192.510037341099 "$god_ set-dist 39 47 1"
$ns_ at 192.728355230301 "$god_ set-dist 3 25 2"
$ns_ at 192.734479491027 "$god_ set-dist 17 39 1"
$ns_ at 192.928245014916 "$god_ set-dist 6 10 1"
$ns_ at 193.041132100810 "$god_ set-dist 10 46 1"
$ns_ at 193.164591753266 "$node_(14) setdest 140.779307005484 179.048205060425 0.285005144375"
$ns_ at 193.187463836519 "$god_ set-dist 5 10 1"
$ns_ at 193.210705745733 "$god_ set-dist 10 17 1"
$ns_ at 193.234992518924 "$god_ set-dist 10 13 3"
$ns_ at 193.234992518924 "$god_ set-dist 13 15 2"
$ns_ at 193.361450292024 "$god_ set-dist 2 21 1"
$ns_ at 193.538150602994 "$god_ set-dist 4 16 3"
$ns_ at 193.538150602994 "$god_ set-dist 16 34 2"
$ns_ at 193.672282433788 "$god_ set-dist 13 48 2"
$ns_ at 193.672282433788 "$god_ set-dist 26 48 3"
$ns_ at 193.672282433788 "$god_ set-dist 28 48 1"
$ns_ at 193.672282433788 "$god_ set-dist 38 48 2"
$ns_ at 193.672282433788 "$god_ set-dist 48 49 2"
$ns_ at 193.691279557196 "$god_ set-dist 2 6 2"
$ns_ at 194.049729905323 "$god_ set-dist 5 42 3"
$ns_ at 194.049729905323 "$god_ set-dist 32 42 1"
$ns_ at 194.049729905323 "$god_ set-dist 33 42 2"
$ns_ at 194.675984386388 "$god_ set-dist 39 46 1"
$ns_ at 194.861381748778 "$god_ set-dist 11 39 3"
$ns_ at 194.861381748778 "$god_ set-dist 11 47 2"
$ns_ at 194.931828228861 "$god_ set-dist 14 25 2"
$ns_ at 194.959430340243 "$god_ set-dist 18 32 2"
$ns_ at 194.959430340243 "$god_ set-dist 18 35 3"
$ns_ at 195.174907856397 "$god_ set-dist 3 5 2"
$ns_ at 195.174907856397 "$god_ set-dist 5 7 2"
$ns_ at 195.174907856397 "$god_ set-dist 5 14 2"
$ns_ at 195.174907856397 "$god_ set-dist 5 26 3"
$ns_ at 195.174907856397 "$god_ set-dist 5 34 1"
$ns_ at 195.174907856397 "$god_ set-dist 5 37 2"
$ns_ at 195.340664062197 "$god_ set-dist 11 39 2"
$ns_ at 195.340664062197 "$god_ set-dist 15 39 1"
$ns_ at 195.390030533629 "$god_ set-dist 11 20 2"
$ns_ at 195.390030533629 "$god_ set-dist 19 20 1"
$ns_ at 195.721173051288 "$god_ set-dist 10 12 1"
$ns_ at 195.737033462874 "$god_ set-dist 16 22 2"
$ns_ at 196.050915356610 "$god_ set-dist 2 22 2"
$ns_ at 196.172035644774 "$god_ set-dist 10 13 2"
$ns_ at 196.172035644774 "$god_ set-dist 10 14 1"
$ns_ at 196.172035644774 "$god_ set-dist 10 42 2"
$ns_ at 196.219080943787 "$god_ set-dist 1 27 2"
$ns_ at 196.363998588015 "$god_ set-dist 11 36 1"
$ns_ at 196.557448889728 "$god_ set-dist 13 17 2"
$ns_ at 196.557448889728 "$god_ set-dist 17 32 1"
$ns_ at 196.557448889728 "$god_ set-dist 17 38 2"
$ns_ at 196.557448889728 "$god_ set-dist 17 42 2"
$ns_ at 196.659819420394 "$god_ set-dist 12 13 2"
$ns_ at 196.659819420394 "$god_ set-dist 12 32 1"
$ns_ at 196.659819420394 "$god_ set-dist 12 38 2"
$ns_ at 196.659819420394 "$god_ set-dist 12 42 2"
$ns_ at 196.827867672535 "$god_ set-dist 6 39 1"
$ns_ at 196.875188905826 "$god_ set-dist 39 43 1"
$ns_ at 196.903455490416 "$god_ set-dist 1 30 1"
$ns_ at 196.981161946516 "$god_ set-dist 2 45 2"
$ns_ at 197.030034080982 "$god_ set-dist 10 31 2"
$ns_ at 197.030034080982 "$god_ set-dist 10 36 1"
$ns_ at 197.517606140292 "$god_ set-dist 41 43 2"
$ns_ at 197.640019842215 "$god_ set-dist 13 28 2"
$ns_ at 197.640019842215 "$god_ set-dist 13 48 3"
$ns_ at 197.968396132847 "$god_ set-dist 0 10 2"
$ns_ at 198.222506634183 "$god_ set-dist 20 28 2"
$ns_ at 198.222506634183 "$god_ set-dist 20 47 1"
$ns_ at 198.891288991441 "$god_ set-dist 5 26 4"
$ns_ at 198.891288991441 "$god_ set-dist 5 37 3"
$ns_ at 198.891288991441 "$god_ set-dist 26 34 3"
$ns_ at 198.891288991441 "$god_ set-dist 34 37 2"
$ns_ at 199.002974110494 "$god_ set-dist 5 26 3"
$ns_ at 199.002974110494 "$god_ set-dist 5 37 2"
$ns_ at 199.002974110494 "$god_ set-dist 5 46 1"
$ns_ at 199.183826952285 "$god_ set-dist 9 29 2"
$ns_ at 199.183826952285 "$god_ set-dist 23 29 3"
$ns_ at 199.183826952285 "$god_ set-dist 29 49 3"
$ns_ at 199.587600917126 "$god_ set-dist 12 39 1"
$ns_ at 199.816840654471 "$god_ set-dist 10 19 1"
#
# Destination Unreachables: 0
#
# Route Changes: 2485
#
# Link Changes: 1233
#
# Node | Route Changes | Link Changes
#    0 |            93 |           67
#    1 |           101 |           67
#    2 |            52 |           43
#    3 |            99 |           59
#    4 |            87 |           50
#    5 |           136 |           58
#    6 |            93 |           60
#    7 |            59 |           39
#    8 |           100 |           28
#    9 |            97 |           53
#   10 |           160 |           85
#   11 |            78 |           28
#   12 |           108 |           35
#   13 |           107 |           40
#   14 |           101 |           56
#   15 |            59 |           54
#   16 |           104 |           65
#   17 |           150 |           81
#   18 |            84 |           25
#   19 |            69 |           40
#   20 |           154 |           41
#   21 |            62 |           32
#   22 |           113 |           85
#   23 |           148 |           77
#   24 |            78 |           46
#   25 |            77 |           51
#   26 |           146 |           22
#   27 |           129 |           36
#   28 |           100 |           39
#   29 |           101 |           45
#   30 |            75 |           29
#   31 |           139 |           55
#   32 |           112 |           63
#   33 |            92 |           64
#   34 |           116 |           88
#   35 |           104 |           64
#   36 |           146 |           73
#   37 |            59 |           33
#   38 |            83 |           33
#   39 |           131 |           69
#   40 |            43 |           32
#   41 |            66 |           51
#   42 |           147 |           47
#   43 |            69 |           55
#   44 |            95 |           29
#   45 |            84 |           52
#   46 |            87 |           38
#   47 |            62 |           44
#   48 |           139 |           15
#   49 |            76 |           25
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
    exec nam dsdvms_5.nam &
    exit 0
}
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns_ at $val(stop) "\$node_($i) reset"
}
$ns_ at $val(stop) "$ns_ nam-end-wireless $val(stop)"
$ns_ at $val(stop) "finish"
$ns_ at $val(stop) "puts \"done\" ; $ns_ halt"
$ns_ run
