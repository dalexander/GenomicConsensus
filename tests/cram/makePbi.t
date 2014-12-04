
Run makePbi.py on the lil' BAM in pbcore, make sure output is as
expected.  We have to copy it and the bam.bai locally because we can't
write to the pbcore directory.

  $ export REMOTE_BAM=`python -c "import pbcore.data as D; print D.getBamAndCmpH5()[0]"`
  $ cp $REMOTE_BAM* .
  $ export BAM=`echo *.bam`
  $ export REF=`python -c "import pbcore.data as D; print D.getLambdaFasta()"`

  $ makePbi.py $BAM $REF

  $ h5dump *.bam.pbi
  HDF5 "bam_mapping.bam.pbi" {
  GROUP "/" {
     GROUP "PacBioBamIndex" {
        ATTRIBUTE "Version" {
           DATATYPE  H5T_STRING {
              STRSIZE H5T_VARIABLE;
              STRPAD H5T_STR_NULLTERM;
              CSET H5T_CSET_ASCII;
              CTYPE H5T_C_S1;
           }
           DATASPACE  SCALAR
           DATA {
           (0): "0.1"
           }
        }
        GROUP "Columns" {
           DATASET "HoleNumber" {
              DATATYPE  H5T_STD_U32LE
              DATASPACE  SIMPLE { ( 115 ) / ( 115 ) }
              DATA {
              (0): 49050, 32328, 32328, 6469, 6469, 30983, 13473, 13473, 19915,
              (9): 30983, 19915, 7247, 7247, 38025, 13473, 36363, 36363, 31174,
              (18): 31174, 38025, 50257, 50257, 14743, 14743, 39571, 39571,
              (26): 39571, 32901, 24494, 24494, 24962, 14743, 14743, 42165,
              (34): 35858, 35858, 42827, 35858, 42827, 32861, 32861, 32861,
              (42): 32861, 32861, 32861, 12736, 12736, 38754, 32861, 32861,
              (50): 45203, 2771, 7670, 2771, 36628, 45203, 49194, 49194, 47698,
              (59): 47698, 47698, 44356, 19837, 50621, 50621, 20211, 20211,
              (67): 32560, 32560, 32560, 7957, 7957, 26262, 52206, 6251, 6251,
              (76): 6251, 6251, 6251, 6251, 6251, 6251, 6251, 6251, 54396,
              (85): 16996, 16996, 46835, 46835, 49521, 46835, 16996, 1650,
              (93): 1650, 37134, 37134, 37134, 37134, 37134, 37134, 37134,
              (101): 37134, 37134, 37134, 37134, 37134, 37134, 37134, 51534,
              (109): 29843, 23454, 23454, 19360, 15641, 49050
              }
           }
           DATASET "MapQV" {
              DATATYPE  H5T_STD_U8LE
              DATASPACE  SIMPLE { ( 115 ) / ( 115 ) }
              DATA {
              (0): 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254,
              (12): 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254,
              (24): 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254,
              (36): 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254,
              (48): 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254,
              (60): 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254,
              (72): 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254,
              (84): 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254,
              (96): 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254, 254,
              (108): 254, 254, 254, 254, 254, 254, 254
              }
           }
           DATASET "ReadGroupID" {
              DATATYPE  H5T_STD_U32LE
              DATASPACE  SIMPLE { ( 115 ) / ( 115 ) }
              DATA {
              (0): 3771511568, 3771511568, 3771511568, 3771511568, 3771511568,
              (5): 3771511568, 3771511568, 3771511568, 3771511568, 3771511568,
              (10): 3771511568, 3771511568, 3771511568, 3771511568, 3771511568,
              (15): 3771511568, 3771511568, 3771511568, 3771511568, 3771511568,
              (20): 3771511568, 3771511568, 3771511568, 3771511568, 3771511568,
              (25): 3771511568, 3771511568, 3771511568, 3771511568, 3771511568,
              (30): 3771511568, 3771511568, 3771511568, 3771511568, 3771511568,
              (35): 3771511568, 3771511568, 3771511568, 3771511568, 3771511568,
              (40): 3771511568, 3771511568, 3771511568, 3771511568, 3771511568,
              (45): 3771511568, 3771511568, 3771511568, 3771511568, 3771511568,
              (50): 3771511568, 3771511568, 3771511568, 3771511568, 3771511568,
              (55): 3771511568, 3771511568, 3771511568, 3771511568, 3771511568,
              (60): 3771511568, 3771511568, 3771511568, 3771511568, 3771511568,
              (65): 3771511568, 3771511568, 3771511568, 3771511568, 3771511568,
              (70): 3771511568, 3771511568, 3771511568, 3771511568, 3771511568,
              (75): 3771511568, 3771511568, 3771511568, 3771511568, 3771511568,
              (80): 3771511568, 3771511568, 3771511568, 3771511568, 3771511568,
              (85): 3771511568, 3771511568, 3771511568, 3771511568, 3771511568,
              (90): 3771511568, 3771511568, 3771511568, 3771511568, 3771511568,
              (95): 3771511568, 3771511568, 3771511568, 3771511568, 3771511568,
              (100): 3771511568, 3771511568, 3771511568, 3771511568,
              (104): 3771511568, 3771511568, 3771511568, 3771511568,
              (108): 3771511568, 3771511568, 3771511568, 3771511568,
              (112): 3771511568, 3771511568, 3771511568
              }
           }
           DATASET "isReverseStrand" {
              DATATYPE  H5T_STD_U8LE
              DATASPACE  SIMPLE { ( 115 ) / ( 115 ) }
              DATA {
              (0): 0, 1, 0, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0,
              (20): 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 0,
              (40): 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1,
              (60): 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 1,
              (80): 0, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1,
              (100): 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0
              }
           }
           DATASET "nDel" {
              DATATYPE  H5T_STD_U32LE
              DATASPACE  SIMPLE { ( 115 ) / ( 115 ) }
              DATA {
              (0): 11, 15, 12, 7, 11, 51, 38, 37, 29, 11, 13, 21, 20, 37, 5,
              (15): 11, 9, 9, 16, 12, 15, 10, 41, 46, 13, 36, 26, 30, 11, 8,
              (30): 12, 14, 13, 20, 36, 39, 32, 7, 30, 19, 14, 15, 8, 14, 10,
              (45): 14, 0, 19, 6, 11, 4, 14, 24, 5, 9, 6, 19, 8, 5, 13, 5, 3,
              (62): 1, 26, 16, 4, 3, 0, 26, 12, 1, 3, 16, 12, 6, 11, 9, 12, 5,
              (79): 18, 13, 8, 10, 7, 21, 19, 12, 5, 15, 2, 4, 1, 25, 4, 10, 9,
              (96): 16, 13, 8, 11, 10, 10, 7, 10, 7, 6, 8, 5, 2, 20, 10, 6, 3,
              (113): 3, 13
              }
           }
           DATASET "nIns" {
              DATATYPE  H5T_STD_U32LE
              DATASPACE  SIMPLE { ( 115 ) / ( 115 ) }
              DATA {
              (0): 16, 37, 4, 9, 9, 46, 80, 56, 17, 10, 15, 16, 6, 63, 5, 5, 9,
              (17): 6, 35, 46, 12, 13, 66, 67, 14, 72, 50, 9, 17, 9, 14, 25,
              (32): 18, 21, 8, 23, 32, 11, 44, 26, 47, 35, 25, 40, 40, 26, 5,
              (47): 19, 18, 25, 19, 22, 8, 2, 10, 28, 32, 33, 8, 10, 0, 19, 5,
              (63): 17, 6, 3, 1, 2, 67, 27, 0, 2, 25, 11, 26, 25, 30, 32, 35,
              (79): 23, 27, 21, 27, 6, 28, 25, 12, 7, 31, 16, 10, 1, 44, 15,
              (94): 26, 27, 13, 14, 16, 8, 19, 17, 17, 17, 15, 28, 26, 14, 10,
              (109): 41, 25, 16, 16, 11, 29
              }
           }
           DATASET "nM" {
              DATATYPE  H5T_STD_U32LE
              DATASPACE  SIMPLE { ( 115 ) / ( 115 ) }
              DATA {
              (0): 460, 699, 337, 151, 216, 1385, 1578, 1313, 580, 341, 359,
              (11): 448, 233, 1574, 185, 281, 236, 181, 990, 419, 378, 341,
              (22): 1405, 1398, 430, 1345, 1272, 399, 323, 173, 380, 582, 383,
              (33): 636, 512, 954, 1019, 217, 937, 737, 738, 741, 748, 739,
              (44): 741, 614, 74, 803, 454, 403, 325, 514, 269, 131, 210, 492,
              (56): 755, 661, 222, 633, 146, 411, 71, 594, 258, 115, 62, 67,
              (68): 1412, 656, 53, 56, 516, 366, 596, 591, 589, 586, 594, 582,
              (80): 585, 593, 451, 130, 692, 535, 402, 129, 601, 113, 217, 88,
              (92): 1046, 219, 432, 427, 425, 427, 432, 430, 431, 427, 425,
              (103): 429, 427, 429, 428, 288, 189, 701, 281, 424, 354, 96, 569
              }
           }
           DATASET "nMM" {
              DATATYPE  H5T_STD_U32LE
              DATASPACE  SIMPLE { ( 115 ) / ( 115 ) }
              DATA {
              (0): 0, 3, 2, 0, 0, 7, 3, 3, 2, 1, 1, 8, 0, 2, 2, 1, 1, 0, 4, 3,
              (20): 4, 3, 3, 4, 0, 3, 3, 0, 1, 0, 4, 1, 0, 3, 0, 1, 2, 0, 1, 0,
              (40): 3, 0, 0, 2, 0, 2, 0, 4, 1, 2, 0, 2, 1, 0, 0, 0, 4, 2, 1, 1,
              (60): 0, 0, 0, 4, 0, 1, 1, 0, 3, 0, 0, 0, 1, 0, 1, 0, 1, 2, 1, 2,
              (80): 2, 0, 0, 1, 5, 1, 0, 0, 0, 1, 1, 0, 6, 1, 0, 0, 0, 0, 1, 0,
              (100): 0, 0, 1, 0, 1, 1, 0, 1, 0, 5, 1, 1, 1, 3, 2
              }
           }
           DATASET "rEnd" {
              DATATYPE  H5T_STD_U32LE
              DATASPACE  SIMPLE { ( 115 ) / ( 115 ) }
              DATA {
              (0): 1129, 1134, 344, 10394, 10185, 8906, 7235, 8657, 1040, 7418,
              (10): 382, 7820, 7290, 7894, 5505, 1194, 853, 1262, 1029, 6211,
              (20): 7351, 6903, 4055, 5571, 445, 1918, 3290, 11588, 570, 185,
              (30): 407, 6227, 2531, 661, 1822, 1259, 1053, 228, 2107, 2064,
              (40): 3718, 1255, 2884, 4549, 5389, 763, 79, 827, 5908, 431, 357,
              (51): 9480, 5699, 8874, 1925, 888, 798, 1541, 10609, 10332, 9628,
              (61): 4803, 5653, 3208, 3516, 9443, 9552, 2356, 2213, 684, 9734,
              (71): 9619, 546, 380, 3818, 1808, 4484, 1145, 2488, 5139, 3146,
              (81): 5805, 479, 5993, 733, 11857, 11253, 4868, 4684, 134, 4005,
              (91): 11992, 3296, 2155, 1318, 3325, 5293, 6271, 1816, 3812,
              (100): 4805, 5785, 6766, 4306, 2823, 2330, 808, 308, 200, 756,
              (110): 2211, 2705, 371, 3562, 653
              }
           }
           DATASET "rStart" {
              DATATYPE  H5T_STD_U32LE
              DATASPACE  SIMPLE { ( 115 ) / ( 115 ) }
              DATA {
              (0): 653, 395, 1, 10234, 9960, 7468, 5574, 7285, 441, 7066, 7,
              (11): 7348, 7051, 6255, 5313, 907, 607, 1075, 0, 5743, 6957,
              (21): 6546, 2581, 4102, 1, 498, 1965, 11180, 229, 3, 9, 5619,
              (32): 2130, 1, 1302, 281, 0, 0, 1125, 1301, 2930, 479, 2111,
              (43): 3768, 4608, 121, 0, 1, 5435, 1, 13, 8942, 5421, 8741, 1705,
              (55): 368, 7, 845, 10378, 9688, 9482, 4373, 5577, 2593, 3252,
              (65): 9324, 9488, 2287, 731, 1, 9681, 9561, 4, 3, 3195, 1192,
              (76): 3864, 525, 1858, 4532, 2532, 5191, 1, 5856, 8, 11296,
              (86): 10839, 4732, 4052, 4, 3777, 11903, 2200, 1920, 860, 2871,
              (96): 4855, 5830, 1367, 3374, 4355, 5341, 6323, 3860, 2380, 1872,
              (106): 354, 5, 1, 9, 1904, 2264, 0, 3452, 53
              }
           }
           DATASET "tEnd" {
              DATATYPE  H5T_STD_U32LE
              DATASPACE  SIMPLE { ( 115 ) / ( 115 ) }
              DATA {
              (0): 471, 1019, 1026, 2326, 2397, 5015, 6125, 5860, 5203, 5011,
              (10): 5215, 5380, 5388, 7039, 6134, 6550, 6557, 6676, 7496, 7039,
              (20): 7338, 7352, 9902, 9903, 8962, 9909, 9909, 9160, 9316, 9162,
              (30): 9631, 9900, 9903, 10847, 10830, 11277, 12062, 11286, 12083,
              (39): 14130, 14129, 14130, 14130, 14131, 14130, 14039, 13483,
              (47): 14494, 14130, 14130, 14480, 16490, 16359, 16477, 18449,
              (55): 18989, 20659, 20659, 21954, 22375, 22386, 25815, 25627,
              (63): 28077, 28077, 28300, 28300, 28865, 30239, 30238, 29805,
              (71): 29823, 32290, 33539, 33947, 33947, 33944, 33945, 33945,
              (79): 33947, 33946, 33947, 33947, 33945, 34651, 34524, 34384,
              (87): 34170, 34653, 34455, 34653, 34524, 41729, 40876, 41668,
              (95): 41662, 41667, 41666, 41667, 41667, 41667, 41663, 41659,
              (103): 41667, 41663, 41667, 41667, 41667, 42245, 43431, 43707,
              (111): 43852, 46021, 47300, 48502
              }
           }
           DATASET "tId" {
              DATATYPE  H5T_STD_U32LE
              DATASPACE  SIMPLE { ( 115 ) / ( 115 ) }
              DATA {
              (0): 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
              (20): 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
              (40): 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
              (60): 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
              (80): 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
              (100): 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
              }
           }
           DATASET "tStart" {
              DATATYPE  H5T_STD_U32LE
              DATASPACE  SIMPLE { ( 115 ) / ( 115 ) }
              DATA {
              (0): 0, 302, 675, 2168, 2170, 3572, 4506, 4507, 4592, 4658, 4842,
              (11): 4903, 5135, 5426, 5942, 6257, 6311, 6486, 6486, 6605, 6941,
              (21): 6998, 8453, 8455, 8519, 8525, 8608, 8731, 8981, 8981, 9235,
              (31): 9303, 9507, 10188, 10282, 10283, 11009, 11062, 11115,
              (39): 13374, 13374, 13374, 13374, 13376, 13379, 13409, 13409,
              (47): 13668, 13669, 13714, 14151, 15960, 16065, 16341, 18230,
              (55): 18491, 19881, 19988, 21726, 21728, 22235, 25401, 25555,
              (63): 27453, 27803, 28180, 28234, 28798, 28798, 29570, 29751,
              (71): 29764, 31757, 33161, 33344, 33345, 33345, 33345, 33345,
              (79): 33345, 33346, 33346, 33486, 33807, 33933, 33969, 33970,
              (87): 34036, 34037, 34339, 34431, 34435, 40652, 40652, 41226,
              (95): 41226, 41226, 41226, 41226, 41226, 41226, 41226, 41226,
              (103): 41228, 41228, 41231, 41231, 41373, 42054, 42705, 43415,
              (111): 43421, 45663, 47198, 47918
              }
           }
           DATASET "virtualFileOffset" {
              DATATYPE  H5T_STD_U64LE
              DATASPACE  SIMPLE { ( 115 ) / ( 115 ) }
              DATA {
              (0): 37289984, 37297464, 37302901, 37305464, 37306835, 37308840,
              (6): 37319177, 37331170, 37340990, 37345579, 37348282, 37351180,
              (12): 1400766464, 1400768474, 1400780090, 1400781672, 1400783950,
              (17): 1400785921, 1400787532, 1400794809, 1400798441, 1400801586,
              (22): 1400804273, 1400814861, 1400825478, 2693922816, 2693933061,
              (27): 2693942476, 2693945620, 2693948306, 2693949849, 2693953028,
              (32): 2693957573, 2693960750, 2693965565, 2693969455, 2693976553,
              (37): 2693984256, 4005036032, 4005043189, 4005048711, 4005054536,
              (42): 4005060173, 4005065686, 4005071343, 4005077071, 4005081765,
              (47): 4005082502, 4005088435, 4005091906, 5185470464, 5185476664,
              (52): 5185480882, 5185483212, 5185484548, 5185486594, 5185492867,
              (57): 5185498641, 5185503674, 5185505475, 5185510163, 5185511365,
              (62): 5185514585, 5185516413, 5185520969, 5185523099, 5185524146,
              (67): 5185524807, 6259802112, 6259812658, 6259817624, 6259818185,
              (72): 6259818965, 6259822993, 6259825854, 6259830337, 6259834829,
              (77): 6259839381, 6259843935, 6259848543, 6259852994, 6259857544,
              (82): 6259861981, 6259865591, 7562395648, 7562401014, 7562405209,
              (87): 7562408308, 7562409500, 7562414175, 7562415337, 7562417257,
              (92): 7562418063, 7562425937, 7562427821, 7562431267, 7562434728,
              (97): 7562438021, 7562441318, 7562444627, 7562447840, 7562451195,
              (102): 7562454497, 8838053888, 8838057225, 8838060537,
              (106): 8838064023, 8838067483, 8838069828, 8838071554,
              (110): 8838077140, 8838079550, 8838082848, 8838085829, 8838086898
              }
           }
        }
     }
  }
  }
