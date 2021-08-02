; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Optimized, only quadrants with rotation. Still not ideal
; Made of agipd_0201_v1.geom - just shifted previous one
; Made of agipd_2450_v9.geom and 0201_v1 
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Optimized panel offsets can be found at the end of the file
; Made of agipd_2480_v5.geom  
; Manually optimized with hdfsee
; OY: this is reasonable for Aug'19 SPB-AGIPD. 4 edge panels are not refined - no data.
; OY: Made from 2166 experiment. Detector was rebuit !
; OY: movement od det by approx. 70mm shited center by 0.3px in both x and y
; OY: After instalation of KB (Sep'18) it looks like the beam is not parall. to the detector rails
; OY: detector center was shifted by -11px in x and -1px in y
; OY: This geometry originated from well callibrated Mar'18 geometry
; OY: I think this is a very well optimized geometry!

adu_per_eV = 0.0075  ; no idea
clen = 0.1220 ;0.1202 ;0.1222 ;0.1212
;clen = /CONTROL/SPB_IRU_AGIPD1M/MOTOR/Z_STEPPER/actualPosition/value
;19.57mm per 100ADDU
;photon_energy = 9310
photon_energy = 9300
res = 5000 ; 200 um pixels

dim0 = %
dim1 = ss
dim2 = fs

data = /entry_1/instrument_1/detector_1/detector_corrected/data
;data = /data/data

;mask = /entry_1/instrument_1/detector_1/mask
mask = /entry_1/instrument_1/detector_1/detector_corrected/mask
;mask_file = /gpfs/exfel/u/scratch/SPB/202001/p002450/yefanov/masks/mask_lyso_new_edges2.h5
;mask_file = /gpfs/cfel/cxi/scratch/data/2020/EXFEL-2019-Schmidt-Mar-p002450/scratch/galchenm/mask/mask_mar_new.h5
mask_bad = 0x0001
mask_good = 0x0000

bad_vert1/min_x = -445
bad_vert1/max_x = -400
bad_vert1/min_y = -700
bad_vert1/max_y =  700

bad_vert2/min_x =  420
bad_vert2/max_x =  470
bad_vert2/min_y = -700
bad_vert2/max_y =  700

rigid_group_q0 = p0a0,p0a1,p0a2,p0a3,p0a4,p0a5,p0a6,p0a7,p1a0,p1a1,p1a2,p1a3,p1a4,p1a5,p1a6,p1a7,p2a0,p2a1,p2a2,p2a3,p2a4,p2a5,p2a6,p2a7,p3a0,p3a1,p3a2,p3a3,p3a4,p3a5,p3a6,p3a7
rigid_group_q1 = p4a0,p4a1,p4a2,p4a3,p4a4,p4a5,p4a6,p4a7,p5a0,p5a1,p5a2,p5a3,p5a4,p5a5,p5a6,p5a7,p6a0,p6a1,p6a2,p6a3,p6a4,p6a5,p6a6,p6a7,p7a0,p7a1,p7a2,p7a3,p7a4,p7a5,p7a6,p7a7
rigid_group_q2 = p8a0,p8a1,p8a2,p8a3,p8a4,p8a5,p8a6,p8a7,p9a0,p9a1,p9a2,p9a3,p9a4,p9a5,p9a6,p9a7,p10a0,p10a1,p10a2,p10a3,p10a4,p10a5,p10a6,p10a7,p11a0,p11a1,p11a2,p11a3,p11a4,p11a5,p11a6,p11a7
rigid_group_q3 = p12a0,p12a1,p12a2,p12a3,p12a4,p12a5,p12a6,p12a7,p13a0,p13a1,p13a2,p13a3,p13a4,p13a5,p13a6,p13a7,p14a0,p14a1,p14a2,p14a3,p14a4,p14a5,p14a6,p14a7,p15a0,p15a1,p15a2,p15a3,p15a4,p15a5,p15a6,p15a7

rigid_group_p0 = p0a0,p0a1,p0a2,p0a3,p0a4,p0a5,p0a6,p0a7
rigid_group_p1 = p1a0,p1a1,p1a2,p1a3,p1a4,p1a5,p1a6,p1a7
rigid_group_p2 = p2a0,p2a1,p2a2,p2a3,p2a4,p2a5,p2a6,p2a7
rigid_group_p3 = p3a0,p3a1,p3a2,p3a3,p3a4,p3a5,p3a6,p3a7
rigid_group_p4 = p4a0,p4a1,p4a2,p4a3,p4a4,p4a5,p4a6,p4a7
rigid_group_p5 = p5a0,p5a1,p5a2,p5a3,p5a4,p5a5,p5a6,p5a7
rigid_group_p6 = p6a0,p6a1,p6a2,p6a3,p6a4,p6a5,p6a6,p6a7
rigid_group_p7 = p7a0,p7a1,p7a2,p7a3,p7a4,p7a5,p7a6,p7a7
rigid_group_p8 = p8a0,p8a1,p8a2,p8a3,p8a4,p8a5,p8a6,p8a7
rigid_group_p9 = p9a0,p9a1,p9a2,p9a3,p9a4,p9a5,p9a6,p9a7
rigid_group_p10 = p10a0,p10a1,p10a2,p10a3,p10a4,p10a5,p10a6,p10a7
rigid_group_p11 = p11a0,p11a1,p11a2,p11a3,p11a4,p11a5,p11a6,p11a7
rigid_group_p12 = p12a0,p12a1,p12a2,p12a3,p12a4,p12a5,p12a6,p12a7
rigid_group_p13 = p13a0,p13a1,p13a2,p13a3,p13a4,p13a5,p13a6,p13a7
rigid_group_p14 = p14a0,p14a1,p14a2,p14a3,p14a4,p14a5,p14a6,p14a7
rigid_group_p15 = p15a0,p15a1,p15a2,p15a3,p15a4,p15a5,p15a6,p15a7

rigid_group_collection_quadrants = q0,q1,q2,q3
rigid_group_collection_asics = p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15

p0a0/min_fs = 0
p0a0/min_ss = 0
p0a0/max_fs = 127
p0a0/max_ss = 63
p0a0/fs = -0.003556x -0.999990y
p0a0/ss = +0.999990x -0.003556y
p0a0/corner_x = -521.203
p0a0/corner_y = 637.973

p0a1/min_fs = 0
p0a1/min_ss = 64
p0a1/max_fs = 127
p0a1/max_ss = 127
p0a1/fs = -0.003556x -0.999990y
p0a1/ss = +0.999990x -0.003556y
p0a1/corner_x = -455.203
p0a1/corner_y = 637.717

p0a2/min_fs = 0
p0a2/min_ss = 128
p0a2/max_fs = 127
p0a2/max_ss = 191
p0a2/fs = -0.003556x -0.999990y
p0a2/ss = +0.999990x -0.003556y
p0a2/corner_x = -389.208
p0a2/corner_y = 637.461

p0a3/min_fs = 0
p0a3/min_ss = 192
p0a3/max_fs = 127
p0a3/max_ss = 255
p0a3/fs = -0.003556x -0.999990y
p0a3/ss = +0.999990x -0.003556y
p0a3/corner_x = -323.207
p0a3/corner_y = 637.204

p0a4/min_fs = 0
p0a4/min_ss = 256
p0a4/max_fs = 127
p0a4/max_ss = 319
p0a4/fs = -0.003556x -0.999990y
p0a4/ss = +0.999990x -0.003556y
p0a4/corner_x = -257.208
p0a4/corner_y = 636.946

p0a5/min_fs = 0
p0a5/min_ss = 320
p0a5/max_fs = 127
p0a5/max_ss = 383
p0a5/fs = -0.003556x -0.999990y
p0a5/ss = +0.999990x -0.003556y
p0a5/corner_x = -191.207
p0a5/corner_y = 636.799

p0a6/min_fs = 0
p0a6/min_ss = 384
p0a6/max_fs = 127
p0a6/max_ss = 447
p0a6/fs = -0.003556x -0.999990y
p0a6/ss = +0.999990x -0.003556y
p0a6/corner_x = -125.206
p0a6/corner_y = 636.564

p0a7/min_fs = 0
p0a7/min_ss = 448
p0a7/max_fs = 127
p0a7/max_ss = 511
p0a7/fs = -0.003556x -0.999990y
p0a7/ss = +0.999990x -0.003556y
p0a7/corner_x = -59.2078
p0a7/corner_y = 636.33

p1a0/min_fs = 0
p1a0/min_ss = 512
p1a0/max_fs = 127
p1a0/max_ss = 575
p1a0/fs = -0.005226x -0.999988y
p1a0/ss = +0.999988x -0.005226y
p1a0/corner_x = -521.945
p1a0/corner_y = 481.395

p1a1/min_fs = 0
p1a1/min_ss = 576
p1a1/max_fs = 127
p1a1/max_ss = 639
p1a1/fs = -0.005226x -0.999988y
p1a1/ss = +0.999988x -0.005226y
p1a1/corner_x = -455.948
p1a1/corner_y = 481.063

p1a2/min_fs = 0
p1a2/min_ss = 640
p1a2/max_fs = 127
p1a2/max_ss = 703
p1a2/fs = -0.005226x -0.999988y
p1a2/ss = +0.999988x -0.005226y
p1a2/corner_x = -389.952
p1a2/corner_y = 480.73

p1a3/min_fs = 0
p1a3/min_ss = 704
p1a3/max_fs = 127
p1a3/max_ss = 767
p1a3/fs = -0.005226x -0.999988y
p1a3/ss = +0.999988x -0.005226y
p1a3/corner_x = -323.956
p1a3/corner_y = 480.395

p1a4/min_fs = 0
p1a4/min_ss = 768
p1a4/max_fs = 127
p1a4/max_ss = 831
p1a4/fs = -0.005226x -0.999988y
p1a4/ss = +0.999988x -0.005226y
p1a4/corner_x = -257.957
p1a4/corner_y = 480.066

p1a5/min_fs = 0
p1a5/min_ss = 832
p1a5/max_fs = 127
p1a5/max_ss = 895
p1a5/fs = -0.005226x -0.999988y
p1a5/ss = +0.999988x -0.005226y
p1a5/corner_x = -191.962
p1a5/corner_y = 479.731

p1a6/min_fs = 0
p1a6/min_ss = 896
p1a6/max_fs = 127
p1a6/max_ss = 959
p1a6/fs = -0.005226x -0.999988y
p1a6/ss = +0.999988x -0.005226y
p1a6/corner_x = -125.947
p1a6/corner_y = 479.397

p1a7/min_fs = 0
p1a7/min_ss = 960
p1a7/max_fs = 127
p1a7/max_ss = 1023
p1a7/fs = -0.005226x -0.999988y
p1a7/ss = +0.999988x -0.005226y
p1a7/corner_x = -59.9456
p1a7/corner_y = 479.065

p2a0/min_fs = 0
p2a0/min_ss = 1024
p2a0/max_fs = 127
p2a0/max_ss = 1087
p2a0/fs = -0.004576x -0.999991y
p2a0/ss = +0.999991x -0.004576y
p2a0/corner_x = -522.523
p2a0/corner_y = 324.641

p2a1/min_fs = 0
p2a1/min_ss = 1088
p2a1/max_fs = 127
p2a1/max_ss = 1151
p2a1/fs = -0.004576x -0.999991y
p2a1/ss = +0.999991x -0.004576y
p2a1/corner_x = -456.524
p2a1/corner_y = 324.332

p2a2/min_fs = 0
p2a2/min_ss = 1152
p2a2/max_fs = 127
p2a2/max_ss = 1215
p2a2/fs = -0.004576x -0.999991y
p2a2/ss = +0.999991x -0.004576y
p2a2/corner_x = -390.525
p2a2/corner_y = 324.023

p2a3/min_fs = 0
p2a3/min_ss = 1216
p2a3/max_fs = 127
p2a3/max_ss = 1279
p2a3/fs = -0.004576x -0.999991y
p2a3/ss = +0.999991x -0.004576y
p2a3/corner_x = -324.526
p2a3/corner_y = 323.711

p2a4/min_fs = 0
p2a4/min_ss = 1280
p2a4/max_fs = 127
p2a4/max_ss = 1343
p2a4/fs = -0.004576x -0.999991y
p2a4/ss = +0.999991x -0.004576y
p2a4/corner_x = -258.528
p2a4/corner_y = 323.399

p2a5/min_fs = 0
p2a5/min_ss = 1344
p2a5/max_fs = 127
p2a5/max_ss = 1407
p2a5/fs = -0.004576x -0.999991y
p2a5/ss = +0.999991x -0.004576y
p2a5/corner_x = -192.532
p2a5/corner_y = 323.092

p2a6/min_fs = 0
p2a6/min_ss = 1408
p2a6/max_fs = 127
p2a6/max_ss = 1471
p2a6/fs = -0.004576x -0.999991y
p2a6/ss = +0.999991x -0.004576y
p2a6/corner_x = -126.518
p2a6/corner_y = 322.779

p2a7/min_fs = 0
p2a7/min_ss = 1472
p2a7/max_fs = 127
p2a7/max_ss = 1535
p2a7/fs = -0.004576x -0.999991y
p2a7/ss = +0.999991x -0.004576y
p2a7/corner_x = -60.5166
p2a7/corner_y = 322.468

p3a0/min_fs = 0
p3a0/min_ss = 1536
p3a0/max_fs = 127
p3a0/max_ss = 1599
p3a0/fs = -0.004543x -0.999988y
p3a0/ss = +0.999988x -0.004543y
p3a0/corner_x = -523.846
p3a0/corner_y = 167.751

p3a1/min_fs = 0
p3a1/min_ss = 1600
p3a1/max_fs = 127
p3a1/max_ss = 1663
p3a1/fs = -0.004543x -0.999988y
p3a1/ss = +0.999988x -0.004543y
p3a1/corner_x = -457.851
p3a1/corner_y = 167.455

p3a2/min_fs = 0
p3a2/min_ss = 1664
p3a2/max_fs = 127
p3a2/max_ss = 1727
p3a2/fs = -0.004543x -0.999988y
p3a2/ss = +0.999988x -0.004543y
p3a2/corner_x = -391.852
p3a2/corner_y = 167.155

p3a3/min_fs = 0
p3a3/min_ss = 1728
p3a3/max_fs = 127
p3a3/max_ss = 1791
p3a3/fs = -0.004543x -0.999988y
p3a3/ss = +0.999988x -0.004543y
p3a3/corner_x = -325.854
p3a3/corner_y = 166.856

p3a4/min_fs = 0
p3a4/min_ss = 1792
p3a4/max_fs = 127
p3a4/max_ss = 1855
p3a4/fs = -0.004543x -0.999988y
p3a4/ss = +0.999988x -0.004543y
p3a4/corner_x = -259.857
p3a4/corner_y = 166.558

p3a5/min_fs = 0
p3a5/min_ss = 1856
p3a5/max_fs = 127
p3a5/max_ss = 1919
p3a5/fs = -0.004543x -0.999988y
p3a5/ss = +0.999988x -0.004543y
p3a5/corner_x = -193.843
p3a5/corner_y = 166.26

p3a6/min_fs = 0
p3a6/min_ss = 1920
p3a6/max_fs = 127
p3a6/max_ss = 1983
p3a6/fs = -0.004543x -0.999988y
p3a6/ss = +0.999988x -0.004543y
p3a6/corner_x = -127.842
p3a6/corner_y = 165.963

p3a7/min_fs = 0
p3a7/min_ss = 1984
p3a7/max_fs = 127
p3a7/max_ss = 2047
p3a7/fs = -0.004543x -0.999988y
p3a7/ss = +0.999988x -0.004543y
p3a7/corner_x = -61.8414
p3a7/corner_y = 165.664

p4a0/min_fs = 0
p4a0/min_ss = 2048
p4a0/max_fs = 127
p4a0/max_ss = 2111
p4a0/fs = -0.005458x -0.999986y
p4a0/ss = +0.999986x -0.005458y
p4a0/corner_x = -557.242
p4a0/corner_y = 2.78682

p4a1/min_fs = 0
p4a1/min_ss = 2112
p4a1/max_fs = 127
p4a1/max_ss = 2175
p4a1/fs = -0.005458x -0.999986y
p4a1/ss = +0.999986x -0.005458y
p4a1/corner_x = -491.247
p4a1/corner_y = 2.43501

p4a2/min_fs = 0
p4a2/min_ss = 2176
p4a2/max_fs = 127
p4a2/max_ss = 2239
p4a2/fs = -0.005458x -0.999986y
p4a2/ss = +0.999986x -0.005458y
p4a2/corner_x = -425.25
p4a2/corner_y = 2.08304

p4a3/min_fs = 0
p4a3/min_ss = 2240
p4a3/max_fs = 127
p4a3/max_ss = 2303
p4a3/fs = -0.005458x -0.999986y
p4a3/ss = +0.999986x -0.005458y
p4a3/corner_x = -359.254
p4a3/corner_y = 1.73111

p4a4/min_fs = 0
p4a4/min_ss = 2304
p4a4/max_fs = 127
p4a4/max_ss = 2367
p4a4/fs = -0.005458x -0.999986y
p4a4/ss = +0.999986x -0.005458y
p4a4/corner_x = -293.256
p4a4/corner_y = 1.3792

p4a5/min_fs = 0
p4a5/min_ss = 2368
p4a5/max_fs = 127
p4a5/max_ss = 2431
p4a5/fs = -0.005458x -0.999986y
p4a5/ss = +0.999986x -0.005458y
p4a5/corner_x = -227.258
p4a5/corner_y = 1.02724

p4a6/min_fs = 0
p4a6/min_ss = 2432
p4a6/max_fs = 127
p4a6/max_ss = 2495
p4a6/fs = -0.005458x -0.999986y
p4a6/ss = +0.999986x -0.005458y
p4a6/corner_x = -161.261
p4a6/corner_y = 0.675396

p4a7/min_fs = 0
p4a7/min_ss = 2496
p4a7/max_fs = 127
p4a7/max_ss = 2559
p4a7/fs = -0.005458x -0.999986y
p4a7/ss = +0.999986x -0.005458y
p4a7/corner_x = -95.2678
p4a7/corner_y = 0.323387

p5a0/min_fs = 0
p5a0/min_ss = 2560
p5a0/max_fs = 127
p5a0/max_ss = 2623
p5a0/fs = -0.003094x -0.999994y
p5a0/ss = +0.999994x -0.003094y
p5a0/corner_x = -558.345
p5a0/corner_y = -155.97

p5a1/min_fs = 0
p5a1/min_ss = 2624
p5a1/max_fs = 127
p5a1/max_ss = 2687
p5a1/fs = -0.003094x -0.999994y
p5a1/ss = +0.999994x -0.003094y
p5a1/corner_x = -492.349
p5a1/corner_y = -156.18

p5a2/min_fs = 0
p5a2/min_ss = 2688
p5a2/max_fs = 127
p5a2/max_ss = 2751
p5a2/fs = -0.003094x -0.999994y
p5a2/ss = +0.999994x -0.003094y
p5a2/corner_x = -426.351
p5a2/corner_y = -156.392

p5a3/min_fs = 0
p5a3/min_ss = 2752
p5a3/max_fs = 127
p5a3/max_ss = 2815
p5a3/fs = -0.003094x -0.999994y
p5a3/ss = +0.999994x -0.003094y
p5a3/corner_x = -360.353
p5a3/corner_y = -156.604

p5a4/min_fs = 0
p5a4/min_ss = 2816
p5a4/max_fs = 127
p5a4/max_ss = 2879
p5a4/fs = -0.003094x -0.999994y
p5a4/ss = +0.999994x -0.003094y
p5a4/corner_x = -294.355
p5a4/corner_y = -156.817

p5a5/min_fs = 0
p5a5/min_ss = 2880
p5a5/max_fs = 127
p5a5/max_ss = 2943
p5a5/fs = -0.003094x -0.999994y
p5a5/ss = +0.999994x -0.003094y
p5a5/corner_x = -228.341
p5a5/corner_y = -157.032

p5a6/min_fs = 0
p5a6/min_ss = 2944
p5a6/max_fs = 127
p5a6/max_ss = 3007
p5a6/fs = -0.003094x -0.999994y
p5a6/ss = +0.999994x -0.003094y
p5a6/corner_x = -162.341
p5a6/corner_y = -157.242

p5a7/min_fs = 0
p5a7/min_ss = 3008
p5a7/max_fs = 127
p5a7/max_ss = 3071
p5a7/fs = -0.003094x -0.999994y
p5a7/ss = +0.999994x -0.003094y
p5a7/corner_x = -96.3403
p5a7/corner_y = -157.452

p6a0/min_fs = 0
p6a0/min_ss = 3072
p6a0/max_fs = 127
p6a0/max_ss = 3135
p6a0/fs = -0.006874x -0.999979y
p6a0/ss = +0.999979x -0.006874y
p6a0/corner_x = -558.922
p6a0/corner_y = -311.539

p6a1/min_fs = 0
p6a1/min_ss = 3136
p6a1/max_fs = 127
p6a1/max_ss = 3199
p6a1/fs = -0.006874x -0.999979y
p6a1/ss = +0.999979x -0.006874y
p6a1/corner_x = -492.925
p6a1/corner_y = -311.996

p6a2/min_fs = 0
p6a2/min_ss = 3200
p6a2/max_fs = 127
p6a2/max_ss = 3263
p6a2/fs = -0.006874x -0.999979y
p6a2/ss = +0.999979x -0.006874y
p6a2/corner_x = -426.93
p6a2/corner_y = -312.462

p6a3/min_fs = 0
p6a3/min_ss = 3264
p6a3/max_fs = 127
p6a3/max_ss = 3327
p6a3/fs = -0.006874x -0.999979y
p6a3/ss = +0.999979x -0.006874y
p6a3/corner_x = -360.933
p6a3/corner_y = -312.924

p6a4/min_fs = 0
p6a4/min_ss = 3328
p6a4/max_fs = 127
p6a4/max_ss = 3391
p6a4/fs = -0.006874x -0.999979y
p6a4/ss = +0.999979x -0.006874y
p6a4/corner_x = -294.939
p6a4/corner_y = -313.387

p6a5/min_fs = 0
p6a5/min_ss = 3392
p6a5/max_fs = 127
p6a5/max_ss = 3455
p6a5/fs = -0.006874x -0.999979y
p6a5/ss = +0.999979x -0.006874y
p6a5/corner_x = -228.942
p6a5/corner_y = -313.849

p6a6/min_fs = 0
p6a6/min_ss = 3456
p6a6/max_fs = 127
p6a6/max_ss = 3519
p6a6/fs = -0.006874x -0.999979y
p6a6/ss = +0.999979x -0.006874y
p6a6/corner_x = -162.947
p6a6/corner_y = -314.312

p6a7/min_fs = 0
p6a7/min_ss = 3520
p6a7/max_fs = 127
p6a7/max_ss = 3583
p6a7/fs = -0.006874x -0.999979y
p6a7/ss = +0.999979x -0.006874y
p6a7/corner_x = -96.9482
p6a7/corner_y = -314.774

p7a0/min_fs = 0
p7a0/min_ss = 3584
p7a0/max_fs = 127
p7a0/max_ss = 3647
p7a0/fs = -0.003982x -0.999991y
p7a0/ss = +0.999991x -0.003982y
p7a0/corner_x = -558.894
p7a0/corner_y = -468.743

p7a1/min_fs = 0
p7a1/min_ss = 3648
p7a1/max_fs = 127
p7a1/max_ss = 3711
p7a1/fs = -0.003982x -0.999991y
p7a1/ss = +0.999991x -0.003982y
p7a1/corner_x = -492.901
p7a1/corner_y = -469.007

p7a2/min_fs = 0
p7a2/min_ss = 3712
p7a2/max_fs = 127
p7a2/max_ss = 3775
p7a2/fs = -0.003982x -0.999991y
p7a2/ss = +0.999991x -0.003982y
p7a2/corner_x = -426.905
p7a2/corner_y = -469.272

p7a3/min_fs = 0
p7a3/min_ss = 3776
p7a3/max_fs = 127
p7a3/max_ss = 3839
p7a3/fs = -0.003982x -0.999991y
p7a3/ss = +0.999991x -0.003982y
p7a3/corner_x = -360.909
p7a3/corner_y = -469.539

p7a4/min_fs = 0
p7a4/min_ss = 3840
p7a4/max_fs = 127
p7a4/max_ss = 3903
p7a4/fs = -0.003982x -0.999991y
p7a4/ss = +0.999991x -0.003982y
p7a4/corner_x = -294.913
p7a4/corner_y = -469.805

p7a5/min_fs = 0
p7a5/min_ss = 3904
p7a5/max_fs = 127
p7a5/max_ss = 3967
p7a5/fs = -0.003982x -0.999991y
p7a5/ss = +0.999991x -0.003982y
p7a5/corner_x = -228.917
p7a5/corner_y = -470.07

p7a6/min_fs = 0
p7a6/min_ss = 3968
p7a6/max_fs = 127
p7a6/max_ss = 4031
p7a6/fs = -0.003982x -0.999991y
p7a6/ss = +0.999991x -0.003982y
p7a6/corner_x = -162.917
p7a6/corner_y = -470.334

p7a7/min_fs = 0
p7a7/min_ss = 4032
p7a7/max_fs = 127
p7a7/max_ss = 4095
p7a7/fs = -0.003982x -0.999991y
p7a7/ss = +0.999991x -0.003982y
p7a7/corner_x = -96.9225
p7a7/corner_y = -470.599

p8a0/min_fs = 0
p8a0/min_ss = 4096
p8a0/max_fs = 127
p8a0/max_ss = 4159
p8a0/fs = +0.003437x +0.999994y
p8a0/ss = -0.999994x +0.003437y
p8a0/corner_x = 514.538
p8a0/corner_y = -160.598

p8a1/min_fs = 0
p8a1/min_ss = 4160
p8a1/max_fs = 127
p8a1/max_ss = 4223
p8a1/fs = +0.003437x +0.999994y
p8a1/ss = -0.999994x +0.003437y
p8a1/corner_x = 448.541
p8a1/corner_y = -160.376

p8a2/min_fs = 0
p8a2/min_ss = 4224
p8a2/max_fs = 127
p8a2/max_ss = 4287
p8a2/fs = +0.003437x +0.999994y
p8a2/ss = -0.999994x +0.003437y
p8a2/corner_x = 382.542
p8a2/corner_y = -160.154

p8a3/min_fs = 0
p8a3/min_ss = 4288
p8a3/max_fs = 127
p8a3/max_ss = 4351
p8a3/fs = +0.003437x +0.999994y
p8a3/ss = -0.999994x +0.003437y
p8a3/corner_x = 316.545
p8a3/corner_y = -159.931

p8a4/min_fs = 0
p8a4/min_ss = 4352
p8a4/max_fs = 127
p8a4/max_ss = 4415
p8a4/fs = +0.003437x +0.999994y
p8a4/ss = -0.999994x +0.003437y
p8a4/corner_x = 250.547
p8a4/corner_y = -159.707

p8a5/min_fs = 0
p8a5/min_ss = 4416
p8a5/max_fs = 127
p8a5/max_ss = 4479
p8a5/fs = +0.003437x +0.999994y
p8a5/ss = -0.999994x +0.003437y
p8a5/corner_x = 184.549
p8a5/corner_y = -159.489

p8a6/min_fs = 0
p8a6/min_ss = 4480
p8a6/max_fs = 127
p8a6/max_ss = 4543
p8a6/fs = +0.003437x +0.999994y
p8a6/ss = -0.999994x +0.003437y
p8a6/corner_x = 118.552
p8a6/corner_y = -159.265

p8a7/min_fs = 0
p8a7/min_ss = 4544
p8a7/max_fs = 127
p8a7/max_ss = 4607
p8a7/fs = +0.003437x +0.999994y
p8a7/ss = -0.999994x +0.003437y
p8a7/corner_x = 52.5554
p8a7/corner_y = -159.044

p9a0/min_fs = 0
p9a0/min_ss = 4608
p9a0/max_fs = 127
p9a0/max_ss = 4671
p9a0/fs = +0.004667x +0.999989y
p9a0/ss = -0.999989x +0.004667y
p9a0/corner_x = 513.699
p9a0/corner_y = -318.017

p9a1/min_fs = 0
p9a1/min_ss = 4672
p9a1/max_fs = 127
p9a1/max_ss = 4735
p9a1/fs = +0.004667x +0.999989y
p9a1/ss = -0.999989x +0.004667y
p9a1/corner_x = 447.703
p9a1/corner_y = -317.711

p9a2/min_fs = 0
p9a2/min_ss = 4736
p9a2/max_fs = 127
p9a2/max_ss = 4799
p9a2/fs = +0.004667x +0.999989y
p9a2/ss = -0.999989x +0.004667y
p9a2/corner_x = 381.707
p9a2/corner_y = -317.408

p9a3/min_fs = 0
p9a3/min_ss = 4800
p9a3/max_fs = 127
p9a3/max_ss = 4863
p9a3/fs = +0.004667x +0.999989y
p9a3/ss = -0.999989x +0.004667y
p9a3/corner_x = 315.711
p9a3/corner_y = -317.101

p9a4/min_fs = 0
p9a4/min_ss = 4864
p9a4/max_fs = 127
p9a4/max_ss = 4927
p9a4/fs = +0.004667x +0.999989y
p9a4/ss = -0.999989x +0.004667y
p9a4/corner_x = 249.714
p9a4/corner_y = -316.798

p9a5/min_fs = 0
p9a5/min_ss = 4928
p9a5/max_fs = 127
p9a5/max_ss = 4991
p9a5/fs = +0.004667x +0.999989y
p9a5/ss = -0.999989x +0.004667y
p9a5/corner_x = 183.717
p9a5/corner_y = -316.495

p9a6/min_fs = 0
p9a6/min_ss = 4992
p9a6/max_fs = 127
p9a6/max_ss = 5055
p9a6/fs = +0.004667x +0.999989y
p9a6/ss = -0.999989x +0.004667y
p9a6/corner_x = 117.699
p9a6/corner_y = -316.186

p9a7/min_fs = 0
p9a7/min_ss = 5056
p9a7/max_fs = 127
p9a7/max_ss = 5119
p9a7/fs = +0.004667x +0.999989y
p9a7/ss = -0.999989x +0.004667y
p9a7/corner_x = 51.6971
p9a7/corner_y = -315.884

p10a0/min_fs = 0
p10a0/min_ss = 5120
p10a0/max_fs = 127
p10a0/max_ss = 5183
p10a0/fs = +0.003215x +0.999993y
p10a0/ss = -0.999993x +0.003215y
p10a0/corner_x = 513.133
p10a0/corner_y = -474.844

p10a1/min_fs = 0
p10a1/min_ss = 5184
p10a1/max_fs = 127
p10a1/max_ss = 5247
p10a1/fs = +0.003215x +0.999993y
p10a1/ss = -0.999993x +0.003215y
p10a1/corner_x = 447.138
p10a1/corner_y = -474.642

p10a2/min_fs = 0
p10a2/min_ss = 5248
p10a2/max_fs = 127
p10a2/max_ss = 5311
p10a2/fs = +0.003215x +0.999993y
p10a2/ss = -0.999993x +0.003215y
p10a2/corner_x = 381.14
p10a2/corner_y = -474.437

p10a3/min_fs = 0
p10a3/min_ss = 5312
p10a3/max_fs = 127
p10a3/max_ss = 5375
p10a3/fs = +0.003215x +0.999993y
p10a3/ss = -0.999993x +0.003215y
p10a3/corner_x = 315.143
p10a3/corner_y = -474.234

p10a4/min_fs = 0
p10a4/min_ss = 5376
p10a4/max_fs = 127
p10a4/max_ss = 5439
p10a4/fs = +0.003215x +0.999993y
p10a4/ss = -0.999993x +0.003215y
p10a4/corner_x = 249.146
p10a4/corner_y = -474.028

p10a5/min_fs = 0
p10a5/min_ss = 5440
p10a5/max_fs = 127
p10a5/max_ss = 5503
p10a5/fs = +0.003215x +0.999993y
p10a5/ss = -0.999993x +0.003215y
p10a5/corner_x = 183.148
p10a5/corner_y = -473.826

p10a6/min_fs = 0
p10a6/min_ss = 5504
p10a6/max_fs = 127
p10a6/max_ss = 5567
p10a6/fs = +0.003215x +0.999993y
p10a6/ss = -0.999993x +0.003215y
p10a6/corner_x = 117.153
p10a6/corner_y = -473.624

p10a7/min_fs = 0
p10a7/min_ss = 5568
p10a7/max_fs = 127
p10a7/max_ss = 5631
p10a7/fs = +0.003215x +0.999993y
p10a7/ss = -0.999993x +0.003215y
p10a7/corner_x = 51.1562
p10a7/corner_y = -473.421

p11a0/min_fs = 0
p11a0/min_ss = 5632
p11a0/max_fs = 127
p11a0/max_ss = 5695
p11a0/fs = +0.000715x +1.000000y
p11a0/ss = -1.000000x +0.000715y
p11a0/corner_x = 512.661
p11a0/corner_y = -629.685

p11a1/min_fs = 0
p11a1/min_ss = 5696
p11a1/max_fs = 127
p11a1/max_ss = 5759
p11a1/fs = +0.000715x +1.000000y
p11a1/ss = -1.000000x +0.000715y
p11a1/corner_x = 446.66
p11a1/corner_y = -629.643

p11a2/min_fs = 0
p11a2/min_ss = 5760
p11a2/max_fs = 127
p11a2/max_ss = 5823
p11a2/fs = +0.000715x +1.000000y
p11a2/ss = -1.000000x +0.000715y
p11a2/corner_x = 380.664
p11a2/corner_y = -629.602

p11a3/min_fs = 0
p11a3/min_ss = 5824
p11a3/max_fs = 127
p11a3/max_ss = 5887
p11a3/fs = +0.000715x +1.000000y
p11a3/ss = -1.000000x +0.000715y
p11a3/corner_x = 314.665
p11a3/corner_y = -629.559

p11a4/min_fs = 0
p11a4/min_ss = 5888
p11a4/max_fs = 127
p11a4/max_ss = 5951
p11a4/fs = +0.000715x +1.000000y
p11a4/ss = -1.000000x +0.000715y
p11a4/corner_x = 248.669
p11a4/corner_y = -629.518

p11a5/min_fs = 0
p11a5/min_ss = 5952
p11a5/max_fs = 127
p11a5/max_ss = 6015
p11a5/fs = +0.000715x +1.000000y
p11a5/ss = -1.000000x +0.000715y
p11a5/corner_x = 182.67
p11a5/corner_y = -629.481

p11a6/min_fs = 0
p11a6/min_ss = 6016
p11a6/max_fs = 127
p11a6/max_ss = 6079
p11a6/fs = +0.000715x +1.000000y
p11a6/ss = -1.000000x +0.000715y
p11a6/corner_x = 116.674
p11a6/corner_y = -629.436

p11a7/min_fs = 0
p11a7/min_ss = 6080
p11a7/max_fs = 127
p11a7/max_ss = 6143
p11a7/fs = +0.000715x +1.000000y
p11a7/ss = -1.000000x +0.000715y
p11a7/corner_x = 50.6743
p11a7/corner_y = -629.396

p12a0/min_fs = 0
p12a0/min_ss = 6144
p12a0/max_fs = 127
p12a0/max_ss = 6207
p12a0/fs = -0.000496x +1.000001y
p12a0/ss = -1.000001x -0.000496y
p12a0/corner_x = 547.165
p12a0/corner_y = 473.885

p12a1/min_fs = 0
p12a1/min_ss = 6208
p12a1/max_fs = 127
p12a1/max_ss = 6271
p12a1/fs = -0.000496x +1.000001y
p12a1/ss = -1.000001x -0.000496y
p12a1/corner_x = 481.165
p12a1/corner_y = 473.805

p12a2/min_fs = 0
p12a2/min_ss = 6272
p12a2/max_fs = 127
p12a2/max_ss = 6335
p12a2/fs = -0.000496x +1.000001y
p12a2/ss = -1.000001x -0.000496y
p12a2/corner_x = 415.169
p12a2/corner_y = 473.724

p12a3/min_fs = 0
p12a3/min_ss = 6336
p12a3/max_fs = 127
p12a3/max_ss = 6399
p12a3/fs = -0.000496x +1.000001y
p12a3/ss = -1.000001x -0.000496y
p12a3/corner_x = 349.166
p12a3/corner_y = 473.787

p12a4/min_fs = 0
p12a4/min_ss = 6400
p12a4/max_fs = 127
p12a4/max_ss = 6463
p12a4/fs = -0.000496x +1.000001y
p12a4/ss = -1.000001x -0.000496y
p12a4/corner_x = 283.163
p12a4/corner_y = 473.753

p12a5/min_fs = 0
p12a5/min_ss = 6464
p12a5/max_fs = 127
p12a5/max_ss = 6527
p12a5/fs = -0.000496x +1.000001y
p12a5/ss = -1.000001x -0.000496y
p12a5/corner_x = 217.164
p12a5/corner_y = 473.718

p12a6/min_fs = 0
p12a6/min_ss = 6528
p12a6/max_fs = 127
p12a6/max_ss = 6591
p12a6/fs = -0.000496x +1.000001y
p12a6/ss = -1.000001x -0.000496y
p12a6/corner_x = 151.165
p12a6/corner_y = 473.689

p12a7/min_fs = 0
p12a7/min_ss = 6592
p12a7/max_fs = 127
p12a7/max_ss = 6655
p12a7/fs = -0.000496x +1.000001y
p12a7/ss = -1.000001x -0.000496y
p12a7/corner_x = 85.1637
p12a7/corner_y = 473.652

p13a0/min_fs = 0
p13a0/min_ss = 6656
p13a0/max_fs = 127
p13a0/max_ss = 6719
p13a0/fs = +0.005087x +0.999988y
p13a0/ss = -0.999988x +0.005087y
p13a0/corner_x = 544.292
p13a0/corner_y = 314.719

p13a1/min_fs = 0
p13a1/min_ss = 6720
p13a1/max_fs = 127
p13a1/max_ss = 6783
p13a1/fs = +0.005087x +0.999988y
p13a1/ss = -0.999988x +0.005087y
p13a1/corner_x = 478.294
p13a1/corner_y = 315.04

p13a2/min_fs = 0
p13a2/min_ss = 6784
p13a2/max_fs = 127
p13a2/max_ss = 6847
p13a2/fs = +0.005087x +0.999988y
p13a2/ss = -0.999988x +0.005087y
p13a2/corner_x = 412.301
p13a2/corner_y = 315.366

p13a3/min_fs = 0
p13a3/min_ss = 6848
p13a3/max_fs = 127
p13a3/max_ss = 6911
p13a3/fs = +0.005087x +0.999988y
p13a3/ss = -0.999988x +0.005087y
p13a3/corner_x = 346.304
p13a3/corner_y = 315.689

p13a4/min_fs = 0
p13a4/min_ss = 6912
p13a4/max_fs = 127
p13a4/max_ss = 6975
p13a4/fs = +0.005087x +0.999988y
p13a4/ss = -0.999988x +0.005087y
p13a4/corner_x = 280.308
p13a4/corner_y = 316.012

p13a5/min_fs = 0
p13a5/min_ss = 6976
p13a5/max_fs = 127
p13a5/max_ss = 7039
p13a5/fs = +0.005087x +0.999988y
p13a5/ss = -0.999988x +0.005087y
p13a5/corner_x = 214.293
p13a5/corner_y = 316.336

p13a6/min_fs = 0
p13a6/min_ss = 7040
p13a6/max_fs = 127
p13a6/max_ss = 7103
p13a6/fs = +0.005087x +0.999988y
p13a6/ss = -0.999988x +0.005087y
p13a6/corner_x = 148.291
p13a6/corner_y = 316.663

p13a7/min_fs = 0
p13a7/min_ss = 7104
p13a7/max_fs = 127
p13a7/max_ss = 7167
p13a7/fs = +0.005087x +0.999988y
p13a7/ss = -0.999988x +0.005087y
p13a7/corner_x = 82.2944
p13a7/corner_y = 316.984

p14a0/min_fs = 0
p14a0/min_ss = 7168
p14a0/max_fs = 127
p14a0/max_ss = 7231
p14a0/fs = +0.002097x +0.999998y
p14a0/ss = -0.999998x +0.002097y
p14a0/corner_x = 544.97
p14a0/corner_y = 158.588

p14a1/min_fs = 0
p14a1/min_ss = 7232
p14a1/max_fs = 127
p14a1/max_ss = 7295
p14a1/fs = +0.002097x +0.999998y
p14a1/ss = -0.999998x +0.002097y
p14a1/corner_x = 478.972
p14a1/corner_y = 158.724

p14a2/min_fs = 0
p14a2/min_ss = 7296
p14a2/max_fs = 127
p14a2/max_ss = 7359
p14a2/fs = +0.002097x +0.999998y
p14a2/ss = -0.999998x +0.002097y
p14a2/corner_x = 412.976
p14a2/corner_y = 158.858

p14a3/min_fs = 0
p14a3/min_ss = 7360
p14a3/max_fs = 127
p14a3/max_ss = 7423
p14a3/fs = +0.002097x +0.999998y
p14a3/ss = -0.999998x +0.002097y
p14a3/corner_x = 346.978
p14a3/corner_y = 158.993

p14a4/min_fs = 0
p14a4/min_ss = 7424
p14a4/max_fs = 127
p14a4/max_ss = 7487
p14a4/fs = +0.002097x +0.999998y
p14a4/ss = -0.999998x +0.002097y
p14a4/corner_x = 280.981
p14a4/corner_y = 159.129

p14a5/min_fs = 0
p14a5/min_ss = 7488
p14a5/max_fs = 127
p14a5/max_ss = 7551
p14a5/fs = +0.002097x +0.999998y
p14a5/ss = -0.999998x +0.002097y
p14a5/corner_x = 214.967
p14a5/corner_y = 159.264

p14a6/min_fs = 0
p14a6/min_ss = 7552
p14a6/max_fs = 127
p14a6/max_ss = 7615
p14a6/fs = +0.002097x +0.999998y
p14a6/ss = -0.999998x +0.002097y
p14a6/corner_x = 148.967
p14a6/corner_y = 159.399

p14a7/min_fs = 0
p14a7/min_ss = 7616
p14a7/max_fs = 127
p14a7/max_ss = 7679
p14a7/fs = +0.002097x +0.999998y
p14a7/ss = -0.999998x +0.002097y
p14a7/corner_x = 82.9634
p14a7/corner_y = 159.535

p15a0/min_fs = 0
p15a0/min_ss = 7680
p15a0/max_fs = 127
p15a0/max_ss = 7743
p15a0/fs = +0.004033x +0.999995y
p15a0/ss = -0.999995x +0.004033y
p15a0/corner_x = 544.12
p15a0/corner_y = 1.19521

p15a1/min_fs = 0
p15a1/min_ss = 7744
p15a1/max_fs = 127
p15a1/max_ss = 7807
p15a1/fs = +0.004033x +0.999995y
p15a1/ss = -0.999995x +0.004033y
p15a1/corner_x = 478.123
p15a1/corner_y = 1.45506

p15a2/min_fs = 0
p15a2/min_ss = 7808
p15a2/max_fs = 127
p15a2/max_ss = 7871
p15a2/fs = +0.004033x +0.999995y
p15a2/ss = -0.999995x +0.004033y
p15a2/corner_x = 412.127
p15a2/corner_y = 1.71513

p15a3/min_fs = 0
p15a3/min_ss = 7872
p15a3/max_fs = 127
p15a3/max_ss = 7935
p15a3/fs = +0.004033x +0.999995y
p15a3/ss = -0.999995x +0.004033y
p15a3/corner_x = 346.129
p15a3/corner_y = 1.97517

p15a4/min_fs = 0
p15a4/min_ss = 7936
p15a4/max_fs = 127
p15a4/max_ss = 7999
p15a4/fs = +0.004033x +0.999995y
p15a4/ss = -0.999995x +0.004033y
p15a4/corner_x = 280.13
p15a4/corner_y = 2.23529

p15a5/min_fs = 0
p15a5/min_ss = 8000
p15a5/max_fs = 127
p15a5/max_ss = 8063
p15a5/fs = +0.004033x +0.999995y
p15a5/ss = -0.999995x +0.004033y
p15a5/corner_x = 214.114
p15a5/corner_y = 2.4953

p15a6/min_fs = 0
p15a6/min_ss = 8064
p15a6/max_fs = 127
p15a6/max_ss = 8127
p15a6/fs = +0.004033x +0.999995y
p15a6/ss = -0.999995x +0.004033y
p15a6/corner_x = 148.113
p15a6/corner_y = 2.75538

p15a7/min_fs = 0
p15a7/min_ss = 8128
p15a7/max_fs = 127
p15a7/max_ss = 8191
p15a7/fs = +0.004033x +0.999995y
p15a7/ss = -0.999995x +0.004033y
p15a7/corner_x = 82.1135
p15a7/corner_y = 3.01535









p0a0/coffset = 0.000672
p0a1/coffset = 0.000672
p0a2/coffset = 0.000672
p0a3/coffset = 0.000672
p0a4/coffset = 0.000672
p0a5/coffset = 0.000672
p0a6/coffset = 0.000672
p0a7/coffset = 0.000672
p1a0/coffset = 0.000511
p1a1/coffset = 0.000511
p1a2/coffset = 0.000511
p1a3/coffset = 0.000511
p1a4/coffset = 0.000511
p1a5/coffset = 0.000511
p1a6/coffset = 0.000511
p1a7/coffset = 0.000511
p2a0/coffset = 0.000197
p2a1/coffset = 0.000197
p2a2/coffset = 0.000197
p2a3/coffset = 0.000197
p2a4/coffset = 0.000197
p2a5/coffset = 0.000197
p2a6/coffset = 0.000197
p2a7/coffset = 0.000197
p3a0/coffset = 0.000414
p3a1/coffset = 0.000414
p3a2/coffset = 0.000414
p3a3/coffset = 0.000414
p3a4/coffset = 0.000414
p3a5/coffset = 0.000414
p3a6/coffset = 0.000414
p3a7/coffset = 0.000414
p4a0/coffset = 0.000161
p4a1/coffset = 0.000161
p4a2/coffset = 0.000161
p4a3/coffset = 0.000161
p4a4/coffset = 0.000161
p4a5/coffset = 0.000161
p4a6/coffset = 0.000161
p4a7/coffset = 0.000161
p5a0/coffset = 0.000214
p5a1/coffset = 0.000214
p5a2/coffset = 0.000214
p5a3/coffset = 0.000214
p5a4/coffset = 0.000214
p5a5/coffset = 0.000214
p5a6/coffset = 0.000214
p5a7/coffset = 0.000214
p6a0/coffset = 0.000245
p6a1/coffset = 0.000245
p6a2/coffset = 0.000245
p6a3/coffset = 0.000245
p6a4/coffset = 0.000245
p6a5/coffset = 0.000245
p6a6/coffset = 0.000245
p6a7/coffset = 0.000245
p7a0/coffset = 0.000242
p7a1/coffset = 0.000242
p7a2/coffset = 0.000242
p7a3/coffset = 0.000242
p7a4/coffset = 0.000242
p7a5/coffset = 0.000242
p7a6/coffset = 0.000242
p7a7/coffset = 0.000242
p8a0/coffset = 0.000013
p8a1/coffset = 0.000013
p8a2/coffset = 0.000013
p8a3/coffset = 0.000013
p8a4/coffset = 0.000013
p8a5/coffset = 0.000013
p8a6/coffset = 0.000013
p8a7/coffset = 0.000013
p9a0/coffset = 0.000140
p9a1/coffset = 0.000140
p9a2/coffset = 0.000140
p9a3/coffset = 0.000140
p9a4/coffset = 0.000140
p9a5/coffset = 0.000140
p9a6/coffset = 0.000140
p9a7/coffset = 0.000140
p10a0/coffset = 0.000286
p10a1/coffset = 0.000286
p10a2/coffset = 0.000286
p10a3/coffset = 0.000286
p10a4/coffset = 0.000286
p10a5/coffset = 0.000286
p10a6/coffset = 0.000286
p10a7/coffset = 0.000286
p11a0/coffset = -0.000027
p11a1/coffset = -0.000027
p11a2/coffset = -0.000027
p11a3/coffset = -0.000027
p11a4/coffset = -0.000027
p11a5/coffset = -0.000027
p11a6/coffset = -0.000027
p11a7/coffset = -0.000027
p12a0/coffset = 0.000601
p12a1/coffset = 0.000601
p12a2/coffset = 0.000601
p12a3/coffset = 0.000601
p12a4/coffset = 0.000601
p12a5/coffset = 0.000601
p12a6/coffset = 0.000601
p12a7/coffset = 0.000601
p13a0/coffset = 0.000382
p13a1/coffset = 0.000382
p13a2/coffset = 0.000382
p13a3/coffset = 0.000382
p13a4/coffset = 0.000382
p13a5/coffset = 0.000382
p13a6/coffset = 0.000382
p13a7/coffset = 0.000382
p14a0/coffset = 0.000270
p14a1/coffset = 0.000270
p14a2/coffset = 0.000270
p14a3/coffset = 0.000270
p14a4/coffset = 0.000270
p14a5/coffset = 0.000270
p14a6/coffset = 0.000270
p14a7/coffset = 0.000270
p15a0/coffset = -0.000032
p15a1/coffset = -0.000032
p15a2/coffset = -0.000032
p15a3/coffset = -0.000032
p15a4/coffset = -0.000032
p15a5/coffset = -0.000032
p15a6/coffset = -0.000032
p15a7/coffset = -0.000032
