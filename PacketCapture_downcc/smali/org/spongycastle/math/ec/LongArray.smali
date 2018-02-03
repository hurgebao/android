.class Lorg/spongycastle/math/ec/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"


# static fields
.field private static final INTERLEAVE2_TABLE:[I

.field private static final INTERLEAVE3_TABLE:[I

.field private static final INTERLEAVE4_TABLE:[I

.field private static final INTERLEAVE5_TABLE:[I

.field private static final INTERLEAVE7_TABLE:[J

.field static final bitLengths:[B


# instance fields
.field private m_ints:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x80

    const/16 v1, 0x100

    .line 15
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[I

    .line 54
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/math/ec/LongArray;->INTERLEAVE3_TABLE:[I

    .line 77
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/math/ec/LongArray;->INTERLEAVE4_TABLE:[I

    .line 116
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/spongycastle/math/ec/LongArray;->INTERLEAVE5_TABLE:[I

    .line 138
    const/16 v0, 0x200

    new-array v0, v0, [J

    fill-array-data v0, :array_4

    sput-object v0, Lorg/spongycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    .line 273
    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Lorg/spongycastle/math/ec/LongArray;->bitLengths:[B

    return-void

    .line 15
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x4
        0x5
        0x10
        0x11
        0x14
        0x15
        0x40
        0x41
        0x44
        0x45
        0x50
        0x51
        0x54
        0x55
        0x100
        0x101
        0x104
        0x105
        0x110
        0x111
        0x114
        0x115
        0x140
        0x141
        0x144
        0x145
        0x150
        0x151
        0x154
        0x155
        0x400
        0x401
        0x404
        0x405
        0x410
        0x411
        0x414
        0x415
        0x440
        0x441
        0x444
        0x445
        0x450
        0x451
        0x454
        0x455
        0x500
        0x501
        0x504
        0x505
        0x510
        0x511
        0x514
        0x515
        0x540
        0x541
        0x544
        0x545
        0x550
        0x551
        0x554
        0x555
        0x1000
        0x1001
        0x1004
        0x1005
        0x1010
        0x1011
        0x1014
        0x1015
        0x1040
        0x1041
        0x1044
        0x1045
        0x1050
        0x1051
        0x1054
        0x1055
        0x1100
        0x1101
        0x1104
        0x1105
        0x1110
        0x1111
        0x1114
        0x1115
        0x1140
        0x1141
        0x1144
        0x1145
        0x1150
        0x1151
        0x1154
        0x1155
        0x1400
        0x1401
        0x1404
        0x1405
        0x1410
        0x1411
        0x1414
        0x1415
        0x1440
        0x1441
        0x1444
        0x1445
        0x1450
        0x1451
        0x1454
        0x1455
        0x1500
        0x1501
        0x1504
        0x1505
        0x1510
        0x1511
        0x1514
        0x1515
        0x1540
        0x1541
        0x1544
        0x1545
        0x1550
        0x1551
        0x1554
        0x1555
        0x4000
        0x4001
        0x4004
        0x4005
        0x4010
        0x4011
        0x4014
        0x4015
        0x4040
        0x4041
        0x4044
        0x4045
        0x4050
        0x4051
        0x4054
        0x4055
        0x4100
        0x4101
        0x4104
        0x4105
        0x4110
        0x4111
        0x4114
        0x4115
        0x4140
        0x4141
        0x4144
        0x4145
        0x4150
        0x4151
        0x4154
        0x4155
        0x4400
        0x4401
        0x4404
        0x4405
        0x4410
        0x4411
        0x4414
        0x4415
        0x4440
        0x4441
        0x4444
        0x4445
        0x4450
        0x4451
        0x4454
        0x4455
        0x4500
        0x4501
        0x4504
        0x4505
        0x4510
        0x4511
        0x4514
        0x4515
        0x4540
        0x4541
        0x4544
        0x4545
        0x4550
        0x4551
        0x4554
        0x4555
        0x5000
        0x5001
        0x5004
        0x5005
        0x5010
        0x5011
        0x5014
        0x5015
        0x5040
        0x5041
        0x5044
        0x5045
        0x5050
        0x5051
        0x5054
        0x5055
        0x5100
        0x5101
        0x5104
        0x5105
        0x5110
        0x5111
        0x5114
        0x5115
        0x5140
        0x5141
        0x5144
        0x5145
        0x5150
        0x5151
        0x5154
        0x5155
        0x5400
        0x5401
        0x5404
        0x5405
        0x5410
        0x5411
        0x5414
        0x5415
        0x5440
        0x5441
        0x5444
        0x5445
        0x5450
        0x5451
        0x5454
        0x5455
        0x5500
        0x5501
        0x5504
        0x5505
        0x5510
        0x5511
        0x5514
        0x5515
        0x5540
        0x5541
        0x5544
        0x5545
        0x5550
        0x5551
        0x5554
        0x5555
    .end array-data

    .line 54
    :array_1
    .array-data 4
        0x0
        0x1
        0x8
        0x9
        0x40
        0x41
        0x48
        0x49
        0x200
        0x201
        0x208
        0x209
        0x240
        0x241
        0x248
        0x249
        0x1000
        0x1001
        0x1008
        0x1009
        0x1040
        0x1041
        0x1048
        0x1049
        0x1200
        0x1201
        0x1208
        0x1209
        0x1240
        0x1241
        0x1248
        0x1249
        0x8000
        0x8001
        0x8008
        0x8009
        0x8040
        0x8041
        0x8048
        0x8049
        0x8200
        0x8201
        0x8208
        0x8209
        0x8240
        0x8241
        0x8248
        0x8249
        0x9000
        0x9001
        0x9008
        0x9009
        0x9040
        0x9041
        0x9048
        0x9049
        0x9200
        0x9201
        0x9208
        0x9209
        0x9240
        0x9241
        0x9248
        0x9249
        0x40000
        0x40001
        0x40008
        0x40009
        0x40040
        0x40041
        0x40048
        0x40049
        0x40200
        0x40201
        0x40208
        0x40209
        0x40240
        0x40241
        0x40248
        0x40249
        0x41000
        0x41001
        0x41008
        0x41009
        0x41040
        0x41041
        0x41048
        0x41049
        0x41200
        0x41201
        0x41208
        0x41209
        0x41240
        0x41241
        0x41248
        0x41249
        0x48000
        0x48001
        0x48008
        0x48009
        0x48040
        0x48041
        0x48048
        0x48049
        0x48200
        0x48201
        0x48208
        0x48209
        0x48240
        0x48241
        0x48248
        0x48249
        0x49000    # 4.19E-40f
        0x49001    # 4.19001E-40f
        0x49008
        0x49009
        0x49040
        0x49041
        0x49048
        0x49049
        0x49200
        0x49201
        0x49208
        0x49209
        0x49240
        0x49241
        0x49248
        0x49249
    .end array-data

    .line 77
    :array_2
    .array-data 4
        0x0
        0x1
        0x10
        0x11
        0x100
        0x101
        0x110
        0x111
        0x1000
        0x1001
        0x1010
        0x1011
        0x1100
        0x1101
        0x1110
        0x1111
        0x10000
        0x10001
        0x10010
        0x10011
        0x10100
        0x10101
        0x10110
        0x10111
        0x11000
        0x11001
        0x11010
        0x11011
        0x11100
        0x11101
        0x11110
        0x11111
        0x100000
        0x100001
        0x100010
        0x100011
        0x100100
        0x100101
        0x100110
        0x100111
        0x101000
        0x101001
        0x101010
        0x101011
        0x101100
        0x101101
        0x101110
        0x101111
        0x110000
        0x110001
        0x110010
        0x110011
        0x110100
        0x110101
        0x110110
        0x110111
        0x111000
        0x111001
        0x111010
        0x111011
        0x111100
        0x111101
        0x111110
        0x111111
        0x1000000
        0x1000001
        0x1000010
        0x1000011
        0x1000100
        0x1000101
        0x1000110
        0x1000111
        0x1001000
        0x1001001
        0x1001010
        0x1001011
        0x1001100
        0x1001101
        0x1001110
        0x1001111
        0x1010000
        0x1010001
        0x1010010
        0x1010011
        0x1010100
        0x1010101
        0x1010110
        0x1010111
        0x1011000
        0x1011001
        0x1011010
        0x1011011
        0x1011100
        0x1011101
        0x1011110
        0x1011111
        0x1100000
        0x1100001
        0x1100010
        0x1100011
        0x1100100
        0x1100101
        0x1100110
        0x1100111
        0x1101000
        0x1101001
        0x1101010
        0x1101011
        0x1101100
        0x1101101
        0x1101110
        0x1101111
        0x1110000
        0x1110001
        0x1110010
        0x1110011
        0x1110100
        0x1110101
        0x1110110
        0x1110111
        0x1111000
        0x1111001
        0x1111010
        0x1111011
        0x1111100
        0x1111101
        0x1111110
        0x1111111
        0x10000000
        0x10000001
        0x10000010
        0x10000011
        0x10000100
        0x10000101
        0x10000110
        0x10000111
        0x10001000
        0x10001001
        0x10001010
        0x10001011
        0x10001100
        0x10001101
        0x10001110
        0x10001111
        0x10010000
        0x10010001
        0x10010010
        0x10010011
        0x10010100
        0x10010101
        0x10010110
        0x10010111
        0x10011000
        0x10011001
        0x10011010
        0x10011011
        0x10011100
        0x10011101
        0x10011110
        0x10011111
        0x10100000
        0x10100001
        0x10100010
        0x10100011
        0x10100100
        0x10100101
        0x10100110
        0x10100111
        0x10101000
        0x10101001
        0x10101010
        0x10101011
        0x10101100
        0x10101101
        0x10101110
        0x10101111
        0x10110000
        0x10110001
        0x10110010
        0x10110011
        0x10110100
        0x10110101
        0x10110110
        0x10110111
        0x10111000
        0x10111001
        0x10111010
        0x10111011
        0x10111100
        0x10111101
        0x10111110
        0x10111111
        0x11000000
        0x11000001
        0x11000010
        0x11000011
        0x11000100
        0x11000101
        0x11000110
        0x11000111
        0x11001000
        0x11001001
        0x11001010
        0x11001011
        0x11001100
        0x11001101
        0x11001110
        0x11001111
        0x11010000
        0x11010001
        0x11010010
        0x11010011
        0x11010100
        0x11010101
        0x11010110
        0x11010111
        0x11011000
        0x11011001
        0x11011010
        0x11011011
        0x11011100
        0x11011101
        0x11011110
        0x11011111
        0x11100000
        0x11100001
        0x11100010
        0x11100011
        0x11100100
        0x11100101
        0x11100110
        0x11100111
        0x11101000
        0x11101001
        0x11101010
        0x11101011
        0x11101100
        0x11101101
        0x11101110
        0x11101111
        0x11110000
        0x11110001
        0x11110010
        0x11110011
        0x11110100
        0x11110101
        0x11110110
        0x11110111
        0x11111000
        0x11111001
        0x11111010
        0x11111011
        0x11111100
        0x11111101
        0x11111110
        0x11111111
    .end array-data

    .line 116
    :array_3
    .array-data 4
        0x0
        0x1
        0x20
        0x21
        0x400
        0x401
        0x420
        0x421
        0x8000
        0x8001
        0x8020
        0x8021
        0x8400
        0x8401
        0x8420
        0x8421
        0x100000
        0x100001
        0x100020
        0x100021
        0x100400
        0x100401
        0x100420
        0x100421
        0x108000
        0x108001
        0x108020
        0x108021
        0x108400
        0x108401
        0x108420
        0x108421
        0x2000000
        0x2000001
        0x2000020
        0x2000021
        0x2000400
        0x2000401
        0x2000420
        0x2000421
        0x2008000
        0x2008001
        0x2008020
        0x2008021
        0x2008400
        0x2008401
        0x2008420
        0x2008421
        0x2100000
        0x2100001
        0x2100020
        0x2100021
        0x2100400
        0x2100401
        0x2100420
        0x2100421
        0x2108000
        0x2108001
        0x2108020
        0x2108021
        0x2108400
        0x2108401
        0x2108420
        0x2108421
        0x40000000    # 2.0f
        0x40000001    # 2.0000002f
        0x40000020    # 2.0000076f
        0x40000021    # 2.0000079f
        0x40000400    # 2.0002441f
        0x40000401    # 2.0002444f
        0x40000420    # 2.0002518f
        0x40000421    # 2.000252f
        0x40008000    # 2.0078125f
        0x40008001
        0x40008020
        0x40008021
        0x40008400
        0x40008401
        0x40008420
        0x40008421
        0x40100000    # 2.25f
        0x40100001    # 2.2500002f
        0x40100020    # 2.2500076f
        0x40100021    # 2.2500079f
        0x40100400
        0x40100401
        0x40100420
        0x40100421
        0x40108000    # 2.2578125f
        0x40108001
        0x40108020
        0x40108021
        0x40108400
        0x40108401
        0x40108420
        0x40108421
        0x42000000    # 32.0f
        0x42000001    # 32.000004f
        0x42000020    # 32.000122f
        0x42000021    # 32.000126f
        0x42000400
        0x42000401
        0x42000420
        0x42000421
        0x42008000    # 32.125f
        0x42008001
        0x42008020
        0x42008021
        0x42008400
        0x42008401
        0x42008420
        0x42008421
        0x42100000    # 36.0f
        0x42100001    # 36.000004f
        0x42100020    # 36.000122f
        0x42100021    # 36.000126f
        0x42100400
        0x42100401
        0x42100420
        0x42100421
        0x42108000    # 36.125f
        0x42108001
        0x42108020
        0x42108021
        0x42108400
        0x42108401
        0x42108420
        0x42108421
    .end array-data

    .line 138
    :array_4
    .array-data 8
        0x0
        0x1
        0x80
        0x81
        0x4000
        0x4001
        0x4080
        0x4081
        0x200000
        0x200001
        0x200080
        0x200081
        0x204000
        0x204001
        0x204080
        0x204081
        0x10000000
        0x10000001
        0x10000080
        0x10000081
        0x10004000
        0x10004001
        0x10004080
        0x10004081
        0x10200000
        0x10200001
        0x10200080
        0x10200081
        0x10204000
        0x10204001
        0x10204080
        0x10204081
        0x800000000L
        0x800000001L
        0x800000080L
        0x800000081L
        0x800004000L
        0x800004001L
        0x800004080L
        0x800004081L
        0x800200000L
        0x800200001L
        0x800200080L
        0x800200081L
        0x800204000L
        0x800204001L
        0x800204080L
        0x800204081L
        0x810000000L
        0x810000001L
        0x810000080L
        0x810000081L
        0x810004000L
        0x810004001L
        0x810004080L
        0x810004081L
        0x810200000L
        0x810200001L
        0x810200080L
        0x810200081L
        0x810204000L
        0x810204001L
        0x810204080L
        0x810204081L
        0x40000000000L
        0x40000000001L
        0x40000000080L
        0x40000000081L
        0x40000004000L
        0x40000004001L
        0x40000004080L
        0x40000004081L
        0x40000200000L
        0x40000200001L
        0x40000200080L
        0x40000200081L
        0x40000204000L
        0x40000204001L
        0x40000204080L
        0x40000204081L
        0x40010000000L
        0x40010000001L
        0x40010000080L
        0x40010000081L
        0x40010004000L
        0x40010004001L
        0x40010004080L
        0x40010004081L
        0x40010200000L
        0x40010200001L
        0x40010200080L
        0x40010200081L
        0x40010204000L
        0x40010204001L
        0x40010204080L
        0x40010204081L
        0x40800000000L
        0x40800000001L
        0x40800000080L
        0x40800000081L
        0x40800004000L
        0x40800004001L
        0x40800004080L
        0x40800004081L
        0x40800200000L
        0x40800200001L
        0x40800200080L
        0x40800200081L
        0x40800204000L
        0x40800204001L
        0x40800204080L
        0x40800204081L
        0x40810000000L
        0x40810000001L
        0x40810000080L
        0x40810000081L
        0x40810004000L
        0x40810004001L
        0x40810004080L
        0x40810004081L
        0x40810200000L
        0x40810200001L
        0x40810200080L
        0x40810200081L
        0x40810204000L
        0x40810204001L
        0x40810204080L
        0x40810204081L
        0x2000000000000L
        0x2000000000001L
        0x2000000000080L
        0x2000000000081L
        0x2000000004000L
        0x2000000004001L
        0x2000000004080L
        0x2000000004081L
        0x2000000200000L
        0x2000000200001L
        0x2000000200080L
        0x2000000200081L
        0x2000000204000L
        0x2000000204001L
        0x2000000204080L
        0x2000000204081L
        0x2000010000000L
        0x2000010000001L
        0x2000010000080L
        0x2000010000081L
        0x2000010004000L
        0x2000010004001L
        0x2000010004080L
        0x2000010004081L
        0x2000010200000L
        0x2000010200001L
        0x2000010200080L
        0x2000010200081L
        0x2000010204000L
        0x2000010204001L
        0x2000010204080L
        0x2000010204081L
        0x2000800000000L
        0x2000800000001L
        0x2000800000080L
        0x2000800000081L
        0x2000800004000L
        0x2000800004001L
        0x2000800004080L
        0x2000800004081L
        0x2000800200000L
        0x2000800200001L
        0x2000800200080L
        0x2000800200081L
        0x2000800204000L
        0x2000800204001L
        0x2000800204080L
        0x2000800204081L
        0x2000810000000L
        0x2000810000001L
        0x2000810000080L
        0x2000810000081L
        0x2000810004000L
        0x2000810004001L
        0x2000810004080L
        0x2000810004081L
        0x2000810200000L
        0x2000810200001L
        0x2000810200080L
        0x2000810200081L
        0x2000810204000L
        0x2000810204001L
        0x2000810204080L
        0x2000810204081L
        0x2040000000000L
        0x2040000000001L
        0x2040000000080L
        0x2040000000081L
        0x2040000004000L
        0x2040000004001L
        0x2040000004080L
        0x2040000004081L
        0x2040000200000L
        0x2040000200001L
        0x2040000200080L
        0x2040000200081L
        0x2040000204000L
        0x2040000204001L
        0x2040000204080L
        0x2040000204081L
        0x2040010000000L
        0x2040010000001L
        0x2040010000080L
        0x2040010000081L
        0x2040010004000L
        0x2040010004001L
        0x2040010004080L
        0x2040010004081L
        0x2040010200000L
        0x2040010200001L
        0x2040010200080L
        0x2040010200081L
        0x2040010204000L
        0x2040010204001L
        0x2040010204080L
        0x2040010204081L
        0x2040800000000L
        0x2040800000001L
        0x2040800000080L
        0x2040800000081L
        0x2040800004000L
        0x2040800004001L
        0x2040800004080L
        0x2040800004081L
        0x2040800200000L
        0x2040800200001L
        0x2040800200080L
        0x2040800200081L
        0x2040800204000L
        0x2040800204001L
        0x2040800204080L
        0x2040800204081L
        0x2040810000000L
        0x2040810000001L
        0x2040810000080L
        0x2040810000081L
        0x2040810004000L
        0x2040810004001L
        0x2040810004080L
        0x2040810004081L
        0x2040810200000L
        0x2040810200001L
        0x2040810200080L
        0x2040810200081L
        0x2040810204000L
        0x2040810204001L
        0x2040810204080L
        0x2040810204081L
        0x100000000000000L
        0x100000000000001L
        0x100000000000080L
        0x100000000000081L
        0x100000000004000L
        0x100000000004001L
        0x100000000004080L
        0x100000000004081L
        0x100000000200000L
        0x100000000200001L
        0x100000000200080L
        0x100000000200081L    # 7.2911220229518E-304
        0x100000000204000L
        0x100000000204001L
        0x100000000204080L
        0x100000000204081L
        0x100000010000000L
        0x100000010000001L
        0x100000010000080L
        0x100000010000081L
        0x100000010004000L
        0x100000010004001L
        0x100000010004080L
        0x100000010004081L
        0x100000010200000L
        0x100000010200001L
        0x100000010200080L
        0x100000010200081L
        0x100000010204000L
        0x100000010204001L
        0x100000010204080L
        0x100000010204081L
        0x100000800000000L
        0x100000800000001L
        0x100000800000080L
        0x100000800000081L
        0x100000800004000L
        0x100000800004001L
        0x100000800004080L
        0x100000800004081L
        0x100000800200000L
        0x100000800200001L
        0x100000800200080L
        0x100000800200081L
        0x100000800204000L
        0x100000800204001L
        0x100000800204080L
        0x100000800204081L
        0x100000810000000L
        0x100000810000001L    # 7.2911780809876E-304
        0x100000810000080L
        0x100000810000081L
        0x100000810004000L
        0x100000810004001L
        0x100000810004080L
        0x100000810004081L
        0x100000810200000L
        0x100000810200001L
        0x100000810200080L    # 7.291178084382999E-304
        0x100000810200081L    # 7.291178084383E-304
        0x100000810204000L
        0x100000810204001L
        0x100000810204080L
        0x100000810204081L
        0x100040000000000L
        0x100040000000001L
        0x100040000000080L
        0x100040000000081L
        0x100040000004000L
        0x100040000004001L
        0x100040000004080L
        0x100040000004081L
        0x100040000200000L
        0x100040000200001L
        0x100040000200080L
        0x100040000200081L
        0x100040000204000L
        0x100040000204001L
        0x100040000204080L
        0x100040000204081L
        0x100040010000000L
        0x100040010000001L
        0x100040010000080L
        0x100040010000081L
        0x100040010004000L
        0x100040010004001L
        0x100040010004080L
        0x100040010004081L
        0x100040010200000L
        0x100040010200001L
        0x100040010200080L
        0x100040010200081L
        0x100040010204000L
        0x100040010204001L
        0x100040010204080L
        0x100040010204081L
        0x100040800000000L
        0x100040800000001L
        0x100040800000080L
        0x100040800000081L
        0x100040800004000L
        0x100040800004001L
        0x100040800004080L
        0x100040800004081L
        0x100040800200000L
        0x100040800200001L
        0x100040800200080L
        0x100040800200081L
        0x100040800204000L
        0x100040800204001L
        0x100040800204080L
        0x100040800204081L
        0x100040810000000L
        0x100040810000001L
        0x100040810000080L
        0x100040810000081L
        0x100040810004000L
        0x100040810004001L
        0x100040810004080L
        0x100040810004081L
        0x100040810200000L
        0x100040810200001L
        0x100040810200080L
        0x100040810200081L
        0x100040810204000L
        0x100040810204001L
        0x100040810204080L
        0x100040810204081L
        0x102000000000000L    # 8.202512272000947E-304
        0x102000000000001L    # 8.202512272000949E-304
        0x102000000000080L
        0x102000000000081L
        0x102000000004000L
        0x102000000004001L
        0x102000000004080L
        0x102000000004081L
        0x102000000200000L
        0x102000000200001L
        0x102000000200080L
        0x102000000200081L
        0x102000000204000L
        0x102000000204001L
        0x102000000204080L
        0x102000000204081L
        0x102000010000000L
        0x102000010000001L
        0x102000010000080L
        0x102000010000081L
        0x102000010004000L
        0x102000010004001L
        0x102000010004080L
        0x102000010004081L
        0x102000010200000L
        0x102000010200001L
        0x102000010200080L
        0x102000010200081L
        0x102000010204000L    # 8.202512710007403E-304
        0x102000010204001L    # 8.202512710007405E-304
        0x102000010204080L    # 8.20251271000761E-304
        0x102000010204081L    # 8.202512710007612E-304
        0x102000800000000L
        0x102000800000001L
        0x102000800000080L
        0x102000800000081L
        0x102000800004000L
        0x102000800004001L
        0x102000800004080L
        0x102000800004081L
        0x102000800200000L
        0x102000800200001L
        0x102000800200080L
        0x102000800200081L
        0x102000800204000L
        0x102000800204001L
        0x102000800204080L
        0x102000800204081L
        0x102000810000000L
        0x102000810000001L
        0x102000810000080L
        0x102000810000081L
        0x102000810004000L
        0x102000810004001L
        0x102000810004080L
        0x102000810004081L
        0x102000810200000L
        0x102000810200001L
        0x102000810200080L
        0x102000810200081L
        0x102000810204000L
        0x102000810204001L
        0x102000810204080L
        0x102000810204081L
        0x102040000000000L
        0x102040000000001L
        0x102040000000080L
        0x102040000000081L
        0x102040000004000L
        0x102040000004001L
        0x102040000004080L
        0x102040000004081L
        0x102040000200000L
        0x102040000200001L
        0x102040000200080L
        0x102040000200081L
        0x102040000204000L
        0x102040000204001L
        0x102040000204080L
        0x102040000204081L
        0x102040010000000L
        0x102040010000001L
        0x102040010000080L
        0x102040010000081L
        0x102040010004000L
        0x102040010004001L
        0x102040010004080L
        0x102040010004081L
        0x102040010200000L
        0x102040010200001L
        0x102040010200080L
        0x102040010200081L
        0x102040010204000L
        0x102040010204001L
        0x102040010204080L
        0x102040010204081L
        0x102040800000000L
        0x102040800000001L
        0x102040800000080L
        0x102040800000081L
        0x102040800004000L
        0x102040800004001L
        0x102040800004080L
        0x102040800004081L
        0x102040800200000L
        0x102040800200001L
        0x102040800200080L
        0x102040800200081L
        0x102040800204000L
        0x102040800204001L
        0x102040800204080L
        0x102040800204081L
        0x102040810000000L
        0x102040810000001L
        0x102040810000080L
        0x102040810000081L
        0x102040810004000L
        0x102040810004001L
        0x102040810004080L
        0x102040810004081L
        0x102040810200000L
        0x102040810200001L
        0x102040810200080L
        0x102040810200081L
        0x102040810204000L
        0x102040810204001L
        0x102040810204080L
        0x102040810204081L
    .end array-data

    .line 273
    :array_5
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x2t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "intLen"    # I

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    new-array v0, p1, [J

    iput-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    .line 300
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 20
    .param p1, "bigInt"    # Ljava/math/BigInteger;

    .prologue
    .line 321
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 322
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v13

    if-gez v13, :cond_1

    .line 324
    :cond_0
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v16, "invalid F2m field value"

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 327
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v13

    if-nez v13, :cond_3

    .line 329
    const/4 v13, 0x1

    new-array v13, v13, [J

    const/16 v16, 0x0

    const-wide/16 v18, 0x0

    aput-wide v18, v13, v16

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    .line 372
    :cond_2
    return-void

    .line 333
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 334
    .local v2, "barr":[B
    array-length v6, v2

    .line 335
    .local v6, "barrLen":I
    const/4 v7, 0x0

    .line 336
    .local v7, "barrStart":I
    const/4 v13, 0x0

    aget-byte v13, v2, v13

    if-nez v13, :cond_4

    .line 340
    add-int/lit8 v6, v6, -0x1

    .line 341
    const/4 v7, 0x1

    .line 343
    :cond_4
    add-int/lit8 v13, v6, 0x7

    div-int/lit8 v11, v13, 0x8

    .line 344
    .local v11, "intLen":I
    new-array v13, v11, [J

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    .line 346
    add-int/lit8 v9, v11, -0x1

    .line 347
    .local v9, "iarrJ":I
    rem-int/lit8 v13, v6, 0x8

    add-int v12, v13, v7

    .line 348
    .local v12, "rem":I
    const-wide/16 v14, 0x0

    .line 349
    .local v14, "temp":J
    move v4, v7

    .line 350
    .local v4, "barrI":I
    if-ge v7, v12, :cond_6

    .line 352
    :goto_0
    if-ge v4, v12, :cond_5

    .line 354
    const/16 v13, 0x8

    shl-long/2addr v14, v13

    .line 355
    aget-byte v13, v2, v4

    and-int/lit16 v3, v13, 0xff

    .line 356
    .local v3, "barrBarrI":I
    int-to-long v0, v3

    move-wide/from16 v16, v0

    or-long v14, v14, v16

    .line 352
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 358
    .end local v3    # "barrBarrI":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v10, v9, -0x1

    .end local v9    # "iarrJ":I
    .local v10, "iarrJ":I
    aput-wide v14, v13, v9

    move v9, v10

    .line 361
    .end local v10    # "iarrJ":I
    .restart local v9    # "iarrJ":I
    :cond_6
    :goto_1
    if-ltz v9, :cond_2

    .line 363
    const-wide/16 v14, 0x0

    .line 364
    const/4 v8, 0x0

    .local v8, "i":I
    move v5, v4

    .end local v4    # "barrI":I
    .local v5, "barrI":I
    :goto_2
    const/16 v13, 0x8

    if-ge v8, v13, :cond_7

    .line 366
    const/16 v13, 0x8

    shl-long/2addr v14, v13

    .line 367
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "barrI":I
    .restart local v4    # "barrI":I
    aget-byte v13, v2, v5

    and-int/lit16 v3, v13, 0xff

    .line 368
    .restart local v3    # "barrBarrI":I
    int-to-long v0, v3

    move-wide/from16 v16, v0

    or-long v14, v14, v16

    .line 364
    add-int/lit8 v8, v8, 0x1

    move v5, v4

    .end local v4    # "barrI":I
    .restart local v5    # "barrI":I
    goto :goto_2

    .line 370
    .end local v3    # "barrBarrI":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    aput-wide v14, v13, v9

    .line 361
    add-int/lit8 v9, v9, -0x1

    move v4, v5

    .end local v5    # "barrI":I
    .restart local v4    # "barrI":I
    goto :goto_1
.end method

.method public constructor <init>([J)V
    .locals 0
    .param p1, "ints"    # [J

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    .line 305
    return-void
.end method

.method public constructor <init>([JII)V
    .locals 2
    .param p1, "ints"    # [J
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    if-nez p2, :cond_0

    array-length v0, p1

    if-ne p3, v0, :cond_0

    .line 311
    iput-object p1, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    .line 318
    :goto_0
    return-void

    .line 315
    :cond_0
    new-array v0, p3, [J

    iput-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    .line 316
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static add([JI[JII)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "count"    # I

    .prologue
    .line 718
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 720
    add-int v1, p1, v0

    aget-wide v2, p0, v1

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, p0, v1

    .line 718
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 722
    :cond_0
    return-void
.end method

.method private static add([JI[JI[JII)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "z"    # [J
    .param p5, "zOff"    # I
    .param p6, "count"    # I

    .prologue
    .line 726
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p6, :cond_0

    .line 728
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, p4, v1

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 730
    :cond_0
    return-void
.end method

.method private static addBoth([JI[JI[JII)V
    .locals 8
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y1"    # [J
    .param p3, "y1Off"    # I
    .param p4, "y2"    # [J
    .param p5, "y2Off"    # I
    .param p6, "count"    # I

    .prologue
    .line 734
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p6, :cond_0

    .line 736
    add-int v1, p1, v0

    aget-wide v2, p0, v1

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    add-int v6, p5, v0

    aget-wide v6, p4, v6

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v1

    .line 734
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 738
    :cond_0
    return-void
.end method

.method private addShiftedByBitsSafe(Lorg/spongycastle/math/ec/LongArray;II)V
    .locals 10
    .param p1, "other"    # Lorg/spongycastle/math/ec/LongArray;
    .param p2, "otherDegree"    # I
    .param p3, "bits"    # I

    .prologue
    const/4 v3, 0x0

    .line 654
    add-int/lit8 v0, p2, 0x3f

    ushr-int/lit8 v4, v0, 0x6

    .line 656
    .local v4, "otherLen":I
    ushr-int/lit8 v1, p3, 0x6

    .line 657
    .local v1, "words":I
    and-int/lit8 v5, p3, 0x3f

    .line 659
    .local v5, "shift":I
    if-nez v5, :cond_1

    .line 661
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    iget-object v2, p1, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/math/ec/LongArray;->add([JI[JII)V

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    iget-object v2, p1, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move-result-wide v6

    .line 666
    .local v6, "carry":J
    const-wide/16 v2, 0x0

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    add-int v2, v4, v1

    aget-wide v8, v0, v2

    xor-long/2addr v8, v6

    aput-wide v8, v0, v2

    goto :goto_0
.end method

.method private static addShiftedDown([JI[JIII)J
    .locals 12
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "count"    # I
    .param p5, "shift"    # I

    .prologue
    .line 687
    rsub-int/lit8 v1, p5, 0x40

    .line 688
    .local v1, "shiftInv":I
    const-wide/16 v4, 0x0

    .line 689
    .local v4, "prev":J
    move/from16 v0, p4

    .line 690
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 692
    add-int v6, p3, v0

    aget-wide v2, p2, v6

    .line 693
    .local v2, "next":J
    add-int v6, p1, v0

    aget-wide v8, p0, v6

    ushr-long v10, v2, p5

    or-long/2addr v10, v4

    xor-long/2addr v8, v10

    aput-wide v8, p0, v6

    .line 694
    shl-long v4, v2, v1

    .line 695
    goto :goto_0

    .line 696
    .end local v2    # "next":J
    :cond_0
    return-wide v4
.end method

.method private static addShiftedUp([JI[JIII)J
    .locals 14
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "count"    # I
    .param p5, "shift"    # I

    .prologue
    .line 674
    rsub-int/lit8 v3, p5, 0x40

    .line 675
    .local v3, "shiftInv":I
    const-wide/16 v6, 0x0

    .line 676
    .local v6, "prev":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move/from16 v0, p4

    if-ge v2, v0, :cond_0

    .line 678
    add-int v8, p3, v2

    aget-wide v4, p2, v8

    .line 679
    .local v4, "next":J
    add-int v8, p1, v2

    aget-wide v10, p0, v8

    shl-long v12, v4, p5

    or-long/2addr v12, v6

    xor-long/2addr v10, v12

    aput-wide v10, p0, v8

    .line 680
    ushr-long v6, v4, v3

    .line 676
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 682
    .end local v4    # "next":J
    :cond_0
    return-wide v6
.end method

.method private static bitLength(J)I
    .locals 8
    .param p0, "w"    # J

    .prologue
    .line 500
    const/16 v5, 0x20

    ushr-long v6, p0, v5

    long-to-int v3, v6

    .line 501
    .local v3, "u":I
    if-nez v3, :cond_0

    .line 503
    long-to-int v3, p0

    .line 504
    const/4 v0, 0x0

    .line 511
    .local v0, "b":I
    :goto_0
    ushr-int/lit8 v2, v3, 0x10

    .line 512
    .local v2, "t":I
    if-nez v2, :cond_2

    .line 514
    ushr-int/lit8 v2, v3, 0x8

    .line 515
    if-nez v2, :cond_1

    sget-object v5, Lorg/spongycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte v1, v5, v3

    .line 523
    .local v1, "k":I
    :goto_1
    add-int v5, v0, v1

    return v5

    .line 508
    .end local v0    # "b":I
    .end local v1    # "k":I
    .end local v2    # "t":I
    :cond_0
    const/16 v0, 0x20

    .restart local v0    # "b":I
    goto :goto_0

    .line 515
    .restart local v2    # "t":I
    :cond_1
    sget-object v5, Lorg/spongycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte v5, v5, v2

    add-int/lit8 v1, v5, 0x8

    goto :goto_1

    .line 519
    :cond_2
    ushr-int/lit8 v4, v2, 0x8

    .line 520
    .local v4, "v":I
    if-nez v4, :cond_3

    sget-object v5, Lorg/spongycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte v5, v5, v2

    add-int/lit8 v1, v5, 0x10

    .restart local v1    # "k":I
    :goto_2
    goto :goto_1

    .end local v1    # "k":I
    :cond_3
    sget-object v5, Lorg/spongycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte v5, v5, v4

    add-int/lit8 v1, v5, 0x18

    goto :goto_2
.end method

.method private degreeFrom(I)I
    .locals 6
    .param p1, "limit"    # I

    .prologue
    .line 459
    add-int/lit8 v1, p1, 0x3e

    ushr-int/lit8 v0, v1, 0x6

    .line 463
    .local v0, "i":I
    :cond_0
    if-nez v0, :cond_1

    .line 465
    const/4 v1, 0x0

    .line 471
    :goto_0
    return v1

    .line 467
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v2, v1, v0

    .line 469
    .local v2, "w":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 471
    shl-int/lit8 v1, v0, 0x6

    invoke-static {v2, v3}, Lorg/spongycastle/math/ec/LongArray;->bitLength(J)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0
.end method

.method private static flipBit([JII)V
    .locals 8
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "n"    # I

    .prologue
    .line 808
    ushr-int/lit8 v3, p2, 0x6

    .line 810
    .local v3, "theInt":I
    and-int/lit8 v2, p2, 0x3f

    .line 811
    .local v2, "theBit":I
    const-wide/16 v4, 0x1

    shl-long v0, v4, v2

    .line 812
    .local v0, "flipper":J
    add-int v4, p1, v3

    aget-wide v6, p0, v4

    xor-long/2addr v6, v0

    aput-wide v6, p0, v4

    .line 813
    return-void
.end method

.method private static flipVector([JI[JIII)V
    .locals 8
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "yLen"    # I
    .param p5, "bits"    # I

    .prologue
    .line 1643
    ushr-int/lit8 v0, p5, 0x6

    add-int/2addr p1, v0

    .line 1644
    and-int/lit8 p5, p5, 0x3f

    .line 1646
    if-nez p5, :cond_0

    .line 1648
    invoke-static {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/LongArray;->add([JI[JII)V

    .line 1655
    :goto_0
    return-void

    .line 1652
    :cond_0
    add-int/lit8 v1, p1, 0x1

    rsub-int/lit8 v5, p5, 0x40

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->addShiftedDown([JI[JIII)J

    move-result-wide v6

    .line 1653
    .local v6, "carry":J
    aget-wide v0, p0, p1

    xor-long/2addr v0, v6

    aput-wide v0, p0, p1

    goto :goto_0
.end method

.method private static flipWord([JIIJ)V
    .locals 7
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "bit"    # I
    .param p3, "word"    # J

    .prologue
    .line 757
    ushr-int/lit8 v2, p2, 0x6

    add-int v0, p1, v2

    .line 758
    .local v0, "n":I
    and-int/lit8 v1, p2, 0x3f

    .line 759
    .local v1, "shift":I
    if-nez v1, :cond_1

    .line 761
    aget-wide v2, p0, v0

    xor-long/2addr v2, p3

    aput-wide v2, p0, v0

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    aget-wide v2, p0, v0

    shl-long v4, p3, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    .line 766
    rsub-int/lit8 v2, v1, 0x40

    ushr-long/2addr p3, v2

    .line 767
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_0

    .line 769
    add-int/lit8 v0, v0, 0x1

    aget-wide v2, p0, v0

    xor-long/2addr v2, p3

    aput-wide v2, p0, v0

    goto :goto_0
.end method

.method private static interleave2_32to64(I)J
    .locals 8
    .param p0, "x"    # I

    .prologue
    const-wide v6, 0xffffffffL

    .line 1900
    sget-object v2, Lorg/spongycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[I

    and-int/lit16 v3, p0, 0xff

    aget v2, v2, v3

    sget-object v3, Lorg/spongycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[I

    ushr-int/lit8 v4, p0, 0x8

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    shl-int/lit8 v3, v3, 0x10

    or-int v0, v2, v3

    .line 1901
    .local v0, "r00":I
    sget-object v2, Lorg/spongycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[I

    ushr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    sget-object v3, Lorg/spongycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[I

    ushr-int/lit8 v4, p0, 0x18

    aget v3, v3, v4

    shl-int/lit8 v3, v3, 0x10

    or-int v1, v2, v3

    .line 1902
    .local v1, "r32":I
    int-to-long v2, v1

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    int-to-long v4, v0

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method private static multiplyWord(J[JI[JI)V
    .locals 8
    .param p0, "a"    # J
    .param p2, "b"    # [J
    .param p3, "bLen"    # I
    .param p4, "c"    # [J
    .param p5, "cOff"    # I

    .prologue
    .line 837
    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 839
    const/4 v0, 0x0

    invoke-static {p4, p5, p2, v0, p3}, Lorg/spongycastle/math/ec/LongArray;->add([JI[JII)V

    .line 841
    :cond_0
    const/4 v5, 0x1

    .line 842
    .local v5, "k":I
    :goto_0
    const/4 v0, 0x1

    ushr-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_2

    .line 844
    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 846
    const/4 v3, 0x0

    move-object v0, p4

    move v1, p5

    move-object v2, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move-result-wide v6

    .line 847
    .local v6, "carry":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-eqz v0, :cond_1

    .line 849
    add-int v0, p5, p3

    aget-wide v2, p4, v0

    xor-long/2addr v2, v6

    aput-wide v2, p4, v0

    .line 852
    .end local v6    # "carry":J
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 854
    :cond_2
    return-void
.end method

.method private static reduceBit([JIII[I)V
    .locals 3
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "bit"    # I
    .param p3, "m"    # I
    .param p4, "ks"    # [I

    .prologue
    .line 1579
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/ec/LongArray;->flipBit([JII)V

    .line 1580
    sub-int v1, p2, p3

    .line 1581
    .local v1, "n":I
    array-length v0, p4

    .line 1582
    .local v0, "j":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 1584
    aget v2, p4, v0

    add-int/2addr v2, v1

    invoke-static {p0, p1, v2}, Lorg/spongycastle/math/ec/LongArray;->flipBit([JII)V

    goto :goto_0

    .line 1586
    :cond_0
    invoke-static {p0, p1, v1}, Lorg/spongycastle/math/ec/LongArray;->flipBit([JII)V

    .line 1587
    return-void
.end method

.method private static reduceBitWise([JIII[I)V
    .locals 1
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "bitlength"    # I
    .param p3, "m"    # I
    .param p4, "ks"    # [I

    .prologue
    .line 1568
    :cond_0
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p3, :cond_1

    .line 1570
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/ec/LongArray;->testBit([JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1572
    invoke-static {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/LongArray;->reduceBit([JIII[I)V

    goto :goto_0

    .line 1575
    :cond_1
    return-void
.end method

.method private static reduceInPlace([JIII[I)I
    .locals 23
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "m"    # I
    .param p4, "ks"    # [I

    .prologue
    .line 1524
    add-int/lit8 v6, p3, 0x3f

    ushr-int/lit8 v20, v6, 0x6

    .line 1525
    .local v20, "mLen":I
    move/from16 v0, p2

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    move/from16 v20, p2

    .line 1563
    .end local v20    # "mLen":I
    :cond_0
    :goto_0
    return v20

    .line 1530
    .restart local v20    # "mLen":I
    :cond_1
    shl-int/lit8 v6, p2, 0x6

    shl-int/lit8 v7, p3, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 1531
    .local v21, "numBits":I
    shl-int/lit8 v6, p2, 0x6

    sub-int v16, v6, v21

    .line 1532
    .local v16, "excessBits":I
    :goto_1
    const/16 v6, 0x40

    move/from16 v0, v16

    if-lt v0, v6, :cond_2

    .line 1534
    add-int/lit8 p2, p2, -0x1

    .line 1535
    add-int/lit8 v16, v16, -0x40

    goto :goto_1

    .line 1538
    :cond_2
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v17, v0

    .local v17, "kLen":I
    add-int/lit8 v6, v17, -0x1

    aget v18, p4, v6

    .local v18, "kMax":I
    const/4 v6, 0x1

    move/from16 v0, v17

    if-le v0, v6, :cond_3

    add-int/lit8 v6, v17, -0x2

    aget v19, p4, v6

    .line 1539
    .local v19, "kNext":I
    :goto_2
    add-int/lit8 v6, v18, 0x40

    move/from16 v0, p3

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1540
    .local v13, "wordWiseLimit":I
    sub-int v6, v21, v13

    sub-int v7, p3, v19

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v6, v6, v16

    shr-int/lit8 v22, v6, 0x6

    .line 1541
    .local v22, "vectorableWords":I
    const/4 v6, 0x1

    move/from16 v0, v22

    if-le v0, v6, :cond_5

    .line 1543
    sub-int v9, p2, v22

    .local v9, "vectorWiseWords":I
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    .line 1544
    invoke-static/range {v6 .. v11}, Lorg/spongycastle/math/ec/LongArray;->reduceVectorWise([JIIII[I)V

    .line 1545
    :goto_3
    move/from16 v0, p2

    if-le v0, v9, :cond_4

    .line 1547
    add-int/lit8 p2, p2, -0x1

    add-int v6, p1, p2

    const-wide/16 v10, 0x0

    aput-wide v10, p0, v6

    goto :goto_3

    .line 1538
    .end local v9    # "vectorWiseWords":I
    .end local v13    # "wordWiseLimit":I
    .end local v19    # "kNext":I
    .end local v22    # "vectorableWords":I
    :cond_3
    const/16 v19, 0x0

    goto :goto_2

    .line 1549
    .restart local v9    # "vectorWiseWords":I
    .restart local v13    # "wordWiseLimit":I
    .restart local v19    # "kNext":I
    .restart local v22    # "vectorableWords":I
    :cond_4
    shl-int/lit8 v21, v9, 0x6

    .line 1552
    .end local v9    # "vectorWiseWords":I
    :cond_5
    move/from16 v0, v21

    if-le v0, v13, :cond_6

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v14, p3

    move-object/from16 v15, p4

    .line 1554
    invoke-static/range {v10 .. v15}, Lorg/spongycastle/math/ec/LongArray;->reduceWordWise([JIIII[I)V

    .line 1555
    move/from16 v21, v13

    .line 1558
    :cond_6
    move/from16 v0, v21

    move/from16 v1, p3

    if-le v0, v1, :cond_0

    .line 1560
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/math/ec/LongArray;->reduceBitWise([JIII[I)V

    goto/16 :goto_0
.end method

.method private static reduceResult([JIII[I)Lorg/spongycastle/math/ec/LongArray;
    .locals 2
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "m"    # I
    .param p4, "ks"    # [I

    .prologue
    .line 1491
    invoke-static {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result v0

    .line 1492
    .local v0, "rLen":I
    new-instance v1, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v1, p0, p1, v0}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    return-object v1
.end method

.method private static reduceVectorWise([JIIII[I)V
    .locals 8
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "words"    # I
    .param p4, "m"    # I
    .param p5, "ks"    # [I

    .prologue
    .line 1632
    shl-int/lit8 v0, p3, 0x6

    sub-int v6, v0, p4

    .line 1633
    .local v6, "baseBit":I
    array-length v7, p5

    .line 1634
    .local v7, "j":I
    :goto_0
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_0

    .line 1636
    add-int v3, p1, p3

    sub-int v4, p2, p3

    aget v0, p5, v7

    add-int v5, v6, v0

    move-object v0, p0

    move v1, p1

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->flipVector([JI[JIII)V

    goto :goto_0

    .line 1638
    :cond_0
    add-int v3, p1, p3

    sub-int v4, p2, p3

    move-object v0, p0

    move v1, p1

    move-object v2, p0

    move v5, v6

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/LongArray;->flipVector([JI[JIII)V

    .line 1639
    return-void
.end method

.method private static reduceWord([JIIJI[I)V
    .locals 3
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "bit"    # I
    .param p3, "word"    # J
    .param p5, "m"    # I
    .param p6, "ks"    # [I

    .prologue
    .line 1616
    sub-int v1, p2, p5

    .line 1617
    .local v1, "offset":I
    array-length v0, p6

    .line 1618
    .local v0, "j":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 1620
    aget v2, p6, v0

    add-int/2addr v2, v1

    invoke-static {p0, p1, v2, p3, p4}, Lorg/spongycastle/math/ec/LongArray;->flipWord([JIIJ)V

    goto :goto_0

    .line 1622
    :cond_0
    invoke-static {p0, p1, v1, p3, p4}, Lorg/spongycastle/math/ec/LongArray;->flipWord([JIIJ)V

    .line 1623
    return-void
.end method

.method private static reduceWordWise([JIIII[I)V
    .locals 9
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "toBit"    # I
    .param p4, "m"    # I
    .param p5, "ks"    # [I

    .prologue
    .line 1591
    ushr-int/lit8 v8, p3, 0x6

    .line 1593
    .local v8, "toPos":I
    :cond_0
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-le p2, v8, :cond_1

    .line 1595
    add-int v1, p1, p2

    aget-wide v4, p0, v1

    .line 1596
    .local v4, "word":J
    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 1598
    add-int v1, p1, p2

    const-wide/16 v2, 0x0

    aput-wide v2, p0, v1

    .line 1599
    shl-int/lit8 v3, p2, 0x6

    move-object v1, p0

    move v2, p1

    move v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lorg/spongycastle/math/ec/LongArray;->reduceWord([JIIJI[I)V

    goto :goto_0

    .line 1604
    .end local v4    # "word":J
    :cond_1
    and-int/lit8 v0, p3, 0x3f

    .line 1605
    .local v0, "partial":I
    add-int v1, p1, v8

    aget-wide v2, p0, v1

    ushr-long v4, v2, v0

    .line 1606
    .restart local v4    # "word":J
    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    .line 1608
    add-int v1, p1, v8

    aget-wide v2, p0, v1

    shl-long v6, v4, v0

    xor-long/2addr v2, v6

    aput-wide v2, p0, v1

    move-object v1, p0

    move v2, p1

    move v3, p3

    move v6, p4

    move-object v7, p5

    .line 1609
    invoke-static/range {v1 .. v7}, Lorg/spongycastle/math/ec/LongArray;->reduceWord([JIIJI[I)V

    .line 1612
    :cond_2
    return-void
.end method

.method private resizedInts(I)[J
    .locals 4
    .param p1, "newLen"    # I

    .prologue
    const/4 v3, 0x0

    .line 528
    new-array v0, p1, [J

    .line 529
    .local v0, "newInts":[J
    iget-object v1, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    iget-object v2, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    array-length v2, v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    return-object v0
.end method

.method private static shiftUp([JI[JIII)J
    .locals 10
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I
    .param p4, "count"    # I
    .param p5, "shift"    # I

    .prologue
    .line 601
    rsub-int/lit8 v1, p5, 0x40

    .line 602
    .local v1, "shiftInv":I
    const-wide/16 v4, 0x0

    .line 603
    .local v4, "prev":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 605
    add-int v6, p1, v0

    aget-wide v2, p0, v6

    .line 606
    .local v2, "next":J
    add-int v6, p3, v0

    shl-long v8, v2, p5

    or-long/2addr v8, v4

    aput-wide v8, p2, v6

    .line 607
    ushr-long v4, v2, v1

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 609
    .end local v2    # "next":J
    :cond_0
    return-wide v4
.end method

.method private static squareInPlace([JII[I)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "xLen"    # I
    .param p2, "m"    # I
    .param p3, "ks"    # [I

    .prologue
    .line 1724
    shl-int/lit8 v0, p1, 0x1

    .line 1725
    .local v0, "pos":I
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 1727
    aget-wide v2, p0, p1

    .line 1728
    .local v2, "xVal":J
    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x20

    ushr-long v4, v2, v1

    long-to-int v1, v4

    invoke-static {v1}, Lorg/spongycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v4

    aput-wide v4, p0, v0

    .line 1729
    add-int/lit8 v0, v0, -0x1

    long-to-int v1, v2

    invoke-static {v1}, Lorg/spongycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v4

    aput-wide v4, p0, v0

    goto :goto_0

    .line 1731
    .end local v2    # "xVal":J
    :cond_0
    return-void
.end method

.method private static testBit([JII)Z
    .locals 8
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "n"    # I

    .prologue
    .line 798
    ushr-int/lit8 v3, p2, 0x6

    .line 800
    .local v3, "theInt":I
    and-int/lit8 v2, p2, 0x3f

    .line 801
    .local v2, "theBit":I
    const-wide/16 v4, 0x1

    shl-long v0, v4, v2

    .line 802
    .local v0, "tester":J
    add-int v4, p1, v3

    aget-wide v4, p0, v4

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addOne()Lorg/spongycastle/math/ec/LongArray;
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 614
    iget-object v2, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    array-length v2, v2

    if-nez v2, :cond_0

    .line 616
    new-instance v2, Lorg/spongycastle/math/ec/LongArray;

    new-array v3, v3, [J

    aput-wide v6, v3, v4

    invoke-direct {v2, v3}, Lorg/spongycastle/math/ec/LongArray;-><init>([J)V

    .line 622
    :goto_0
    return-object v2

    .line 619
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->getUsedLength()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 620
    .local v1, "resultLen":I
    invoke-direct {p0, v1}, Lorg/spongycastle/math/ec/LongArray;->resizedInts(I)[J

    move-result-object v0

    .line 621
    .local v0, "ints":[J
    aget-wide v2, v0, v4

    xor-long/2addr v2, v6

    aput-wide v2, v0, v4

    .line 622
    new-instance v2, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v2, v0}, Lorg/spongycastle/math/ec/LongArray;-><init>([J)V

    goto :goto_0
.end method

.method public addShiftedByWords(Lorg/spongycastle/math/ec/LongArray;I)V
    .locals 5
    .param p1, "other"    # Lorg/spongycastle/math/ec/LongArray;
    .param p2, "words"    # I

    .prologue
    .line 701
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/LongArray;->getUsedLength()I

    move-result v1

    .line 702
    .local v1, "otherUsedLen":I
    if-nez v1, :cond_0

    .line 714
    :goto_0
    return-void

    .line 707
    :cond_0
    add-int v0, v1, p2

    .line 708
    .local v0, "minLen":I
    iget-object v2, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    array-length v2, v2

    if-le v0, v2, :cond_1

    .line 710
    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/LongArray;->resizedInts(I)[J

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    .line 713
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    iget-object v3, p1, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    const/4 v4, 0x0

    invoke-static {v2, p2, v3, v4, v1}, Lorg/spongycastle/math/ec/LongArray;->add([JI[JII)V

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2168
    new-instance v0, Lorg/spongycastle/math/ec/LongArray;

    iget-object v1, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->clone([J)[J

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/LongArray;-><init>([J)V

    return-object v0
.end method

.method public degree()I
    .locals 6

    .prologue
    .line 442
    iget-object v1, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v1

    .line 446
    .local v0, "i":I
    :cond_0
    if-nez v0, :cond_1

    .line 448
    const/4 v1, 0x0

    .line 454
    :goto_0
    return v1

    .line 450
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v2, v1, v0

    .line 452
    .local v2, "w":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 454
    shl-int/lit8 v1, v0, 0x6

    invoke-static {v2, v3}, Lorg/spongycastle/math/ec/LongArray;->bitLength(J)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 2131
    instance-of v4, p1, Lorg/spongycastle/math/ec/LongArray;

    if-nez v4, :cond_1

    .line 2148
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v1, p1

    .line 2135
    check-cast v1, Lorg/spongycastle/math/ec/LongArray;

    .line 2136
    .local v1, "other":Lorg/spongycastle/math/ec/LongArray;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->getUsedLength()I

    move-result v2

    .line 2137
    .local v2, "usedLen":I
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/LongArray;->getUsedLength()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 2141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 2143
    iget-object v4, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v4, v4, v0

    iget-object v6, v1, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v6, v6, v0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 2141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2148
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getUsedLength()I
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/LongArray;->getUsedLengthFrom(I)I

    move-result v0

    return v0
.end method

.method public getUsedLengthFrom(I)I
    .locals 6
    .param p1, "from"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 411
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    .line 412
    .local v0, "a":[J
    array-length v2, v0

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 414
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 437
    :goto_0
    return v1

    .line 420
    :cond_0
    aget-wide v2, v0, v1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 422
    :cond_1
    add-int/lit8 p1, p1, -0x1

    aget-wide v2, v0, p1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 425
    add-int/lit8 v1, p1, 0x1

    goto :goto_0

    .line 430
    :cond_2
    add-int/lit8 p1, p1, -0x1

    aget-wide v2, v0, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 432
    add-int/lit8 v1, p1, 0x1

    goto :goto_0

    .line 435
    :cond_3
    if-gtz p1, :cond_2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 2153
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->getUsedLength()I

    move-result v4

    .line 2154
    .local v4, "usedLen":I
    const/4 v0, 0x1

    .line 2155
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 2157
    iget-object v5, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v2, v5, v1

    .line 2158
    .local v2, "mi":J
    mul-int/lit8 v0, v0, 0x1f

    .line 2159
    long-to-int v5, v2

    xor-int/2addr v0, v5

    .line 2160
    mul-int/lit8 v0, v0, 0x1f

    .line 2161
    const/16 v5, 0x20

    ushr-long v6, v2, v5

    long-to-int v5, v6

    xor-int/2addr v0, v5

    .line 2155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2163
    .end local v2    # "mi":J
    :cond_0
    return v0
.end method

.method public isOne()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 376
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    .line 377
    .local v0, "a":[J
    aget-wide v4, v0, v2

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 388
    :cond_0
    :goto_0
    return v2

    .line 381
    :cond_1
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 383
    aget-wide v4, v0, v1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 388
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isZero()Z
    .locals 6

    .prologue
    .line 393
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    .line 394
    .local v0, "a":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 396
    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 398
    const/4 v2, 0x0

    .line 401
    :goto_1
    return v2

    .line 394
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public modInverse(I[I)Lorg/spongycastle/math/ec/LongArray;
    .locals 26
    .param p1, "m"    # I
    .param p2, "ks"    # [I

    .prologue
    .line 2054
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/LongArray;->degree()I

    move-result v20

    .line 2055
    .local v20, "uzDegree":I
    if-nez v20, :cond_0

    .line 2057
    new-instance v22, Ljava/lang/IllegalStateException;

    invoke-direct/range {v22 .. v22}, Ljava/lang/IllegalStateException;-><init>()V

    throw v22

    .line 2059
    :cond_0
    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 2106
    .end local p0    # "this":Lorg/spongycastle/math/ec/LongArray;
    :goto_0
    return-object p0

    .line 2065
    .restart local p0    # "this":Lorg/spongycastle/math/ec/LongArray;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/spongycastle/math/ec/LongArray;

    .line 2067
    .local v19, "uz":Lorg/spongycastle/math/ec/LongArray;
    add-int/lit8 v22, p1, 0x3f

    ushr-int/lit8 v16, v22, 0x6

    .line 2070
    .local v16, "t":I
    new-instance v21, Lorg/spongycastle/math/ec/LongArray;

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/LongArray;-><init>(I)V

    .line 2071
    .local v21, "vz":Lorg/spongycastle/math/ec/LongArray;
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, p1

    move/from16 v3, p1

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/math/ec/LongArray;->reduceBit([JIII[I)V

    .line 2074
    new-instance v11, Lorg/spongycastle/math/ec/LongArray;

    move/from16 v0, v16

    invoke-direct {v11, v0}, Lorg/spongycastle/math/ec/LongArray;-><init>(I)V

    .line 2075
    .local v11, "g1z":Lorg/spongycastle/math/ec/LongArray;
    iget-object v0, v11, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-wide/16 v24, 0x1

    aput-wide v24, v22, v23

    .line 2076
    new-instance v12, Lorg/spongycastle/math/ec/LongArray;

    move/from16 v0, v16

    invoke-direct {v12, v0}, Lorg/spongycastle/math/ec/LongArray;-><init>(I)V

    .line 2078
    .local v12, "g2z":Lorg/spongycastle/math/ec/LongArray;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v22, 0x0

    aput v20, v18, v22

    const/16 v22, 0x1

    add-int/lit8 v23, p1, 0x1

    aput v23, v18, v22

    .line 2079
    .local v18, "uvDeg":[I
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Lorg/spongycastle/math/ec/LongArray;

    move-object/from16 v17, v0

    const/16 v22, 0x0

    aput-object v19, v17, v22

    const/16 v22, 0x1

    aput-object v21, v17, v22

    .line 2081
    .local v17, "uv":[Lorg/spongycastle/math/ec/LongArray;
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v14, v0, [I

    fill-array-data v14, :array_0

    .line 2082
    .local v14, "ggDeg":[I
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v13, v0, [Lorg/spongycastle/math/ec/LongArray;

    const/16 v22, 0x0

    aput-object v11, v13, v22

    const/16 v22, 0x1

    aput-object v12, v13, v22

    .line 2084
    .local v13, "gg":[Lorg/spongycastle/math/ec/LongArray;
    const/4 v6, 0x1

    .line 2085
    .local v6, "b":I
    aget v9, v18, v6

    .line 2086
    .local v9, "duv1":I
    aget v7, v14, v6

    .line 2087
    .local v7, "dgg1":I
    const/16 v22, 0x0

    aget v22, v18, v22

    sub-int v15, v9, v22

    .line 2091
    .local v15, "j":I
    :goto_1
    if-gez v15, :cond_2

    .line 2093
    neg-int v15, v15

    .line 2094
    aput v9, v18, v6

    .line 2095
    aput v7, v14, v6

    .line 2096
    rsub-int/lit8 v6, v6, 0x1

    .line 2097
    aget v9, v18, v6

    .line 2098
    aget v7, v14, v6

    .line 2101
    :cond_2
    aget-object v22, v17, v6

    rsub-int/lit8 v23, v6, 0x1

    aget-object v23, v17, v23

    rsub-int/lit8 v24, v6, 0x1

    aget v24, v18, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v15}, Lorg/spongycastle/math/ec/LongArray;->addShiftedByBitsSafe(Lorg/spongycastle/math/ec/LongArray;II)V

    .line 2103
    aget-object v22, v17, v6

    move-object/from16 v0, v22

    invoke-direct {v0, v9}, Lorg/spongycastle/math/ec/LongArray;->degreeFrom(I)I

    move-result v10

    .line 2104
    .local v10, "duv2":I
    if-nez v10, :cond_3

    .line 2106
    rsub-int/lit8 v22, v6, 0x1

    aget-object p0, v13, v22

    goto/16 :goto_0

    .line 2110
    :cond_3
    rsub-int/lit8 v22, v6, 0x1

    aget v8, v14, v22

    .line 2111
    .local v8, "dgg2":I
    aget-object v22, v13, v6

    rsub-int/lit8 v23, v6, 0x1

    aget-object v23, v13, v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v8, v15}, Lorg/spongycastle/math/ec/LongArray;->addShiftedByBitsSafe(Lorg/spongycastle/math/ec/LongArray;II)V

    .line 2112
    add-int/2addr v8, v15

    .line 2114
    if-le v8, v7, :cond_5

    .line 2116
    move v7, v8

    .line 2124
    :cond_4
    :goto_2
    sub-int v22, v10, v9

    add-int v15, v15, v22

    .line 2125
    move v9, v10

    .line 2126
    goto :goto_1

    .line 2118
    :cond_5
    if-ne v8, v7, :cond_4

    .line 2120
    aget-object v22, v13, v6

    move-object/from16 v0, v22

    invoke-direct {v0, v7}, Lorg/spongycastle/math/ec/LongArray;->degreeFrom(I)I

    move-result v7

    goto :goto_2

    .line 2081
    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public modMultiply(Lorg/spongycastle/math/ec/LongArray;I[I)Lorg/spongycastle/math/ec/LongArray;
    .locals 41
    .param p1, "other"    # Lorg/spongycastle/math/ec/LongArray;
    .param p2, "m"    # I
    .param p3, "ks"    # [I

    .prologue
    .line 993
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/LongArray;->degree()I

    move-result v29

    .line 994
    .local v29, "aDeg":I
    if-nez v29, :cond_0

    .line 1117
    .end local p0    # "this":Lorg/spongycastle/math/ec/LongArray;
    :goto_0
    return-object p0

    .line 998
    .restart local p0    # "this":Lorg/spongycastle/math/ec/LongArray;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/LongArray;->degree()I

    move-result v34

    .line 999
    .local v34, "bDeg":I
    if-nez v34, :cond_1

    move-object/from16 p0, p1

    .line 1001
    goto :goto_0

    .line 1007
    :cond_1
    move-object/from16 v25, p0

    .local v25, "A":Lorg/spongycastle/math/ec/LongArray;
    move-object/from16 v26, p1

    .line 1008
    .local v26, "B":Lorg/spongycastle/math/ec/LongArray;
    move/from16 v0, v29

    move/from16 v1, v34

    if-le v0, v1, :cond_2

    .line 1010
    move-object/from16 v25, p1

    move-object/from16 v26, p0

    .line 1011
    move/from16 v38, v29

    .local v38, "tmp":I
    move/from16 v29, v34

    move/from16 v34, v38

    .line 1017
    .end local v38    # "tmp":I
    :cond_2
    add-int/lit8 v6, v29, 0x3f

    ushr-int/lit8 v30, v6, 0x6

    .line 1018
    .local v30, "aLen":I
    add-int/lit8 v6, v34, 0x3f

    ushr-int/lit8 v7, v6, 0x6

    .line 1019
    .local v7, "bLen":I
    add-int v6, v29, v34

    add-int/lit8 v6, v6, 0x3e

    ushr-int/lit8 v35, v6, 0x6

    .line 1021
    .local v35, "cLen":I
    const/4 v6, 0x1

    move/from16 v0, v30

    if-ne v0, v6, :cond_4

    .line 1023
    move-object/from16 v0, v25

    iget-object v6, v0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    const/4 v10, 0x0

    aget-wide v4, v6, v10

    .line 1024
    .local v4, "a0":J
    const-wide/16 v10, 0x1

    cmp-long v6, v4, v10

    if-nez v6, :cond_3

    move-object/from16 p0, v26

    .line 1026
    goto :goto_0

    .line 1032
    :cond_3
    move/from16 v0, v35

    new-array v8, v0, [J

    .line 1033
    .local v8, "c0":[J
    move-object/from16 v0, v26

    iget-object v6, v0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    .line 1038
    const/4 v6, 0x0

    move/from16 v0, v35

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v8, v6, v0, v1, v2}, Lorg/spongycastle/math/ec/LongArray;->reduceResult([JIII[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object p0

    goto :goto_0

    .line 1044
    .end local v4    # "a0":J
    .end local v8    # "c0":[J
    :cond_4
    add-int/lit8 v6, v34, 0x7

    add-int/lit8 v6, v6, 0x3f

    ushr-int/lit8 v13, v6, 0x6

    .line 1049
    .local v13, "bMax":I
    const/16 v6, 0x10

    new-array v0, v6, [I

    move-object/from16 v37, v0

    .line 1054
    .local v37, "ti":[I
    shl-int/lit8 v6, v13, 0x4

    new-array v9, v6, [J

    .line 1055
    .local v9, "T0":[J
    move v12, v13

    .line 1056
    .local v12, "tOff":I
    const/4 v6, 0x1

    aput v12, v37, v6

    .line 1057
    move-object/from16 v0, v26

    iget-object v6, v0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    const/4 v10, 0x0

    invoke-static {v6, v10, v9, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1058
    const/16 v36, 0x2

    .local v36, "i":I
    :goto_1
    const/16 v6, 0x10

    move/from16 v0, v36

    if-ge v0, v6, :cond_6

    .line 1060
    add-int/2addr v12, v13

    aput v12, v37, v36

    .line 1061
    and-int/lit8 v6, v36, 0x1

    if-nez v6, :cond_5

    .line 1063
    ushr-int/lit8 v10, v12, 0x1

    const/4 v14, 0x1

    move-object v11, v9

    invoke-static/range {v9 .. v14}, Lorg/spongycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    .line 1058
    :goto_2
    add-int/lit8 v36, v36, 0x1

    goto :goto_1

    .line 1067
    :cond_5
    sub-int v17, v12, v13

    move-object v14, v9

    move v15, v13

    move-object/from16 v16, v9

    move-object/from16 v18, v9

    move/from16 v19, v12

    move/from16 v20, v13

    invoke-static/range {v14 .. v20}, Lorg/spongycastle/math/ec/LongArray;->add([JI[JI[JII)V

    goto :goto_2

    .line 1074
    :cond_6
    array-length v6, v9

    new-array v0, v6, [J

    move-object/from16 v16, v0

    .line 1075
    .local v16, "T1":[J
    const/4 v15, 0x0

    const/16 v17, 0x0

    array-length v0, v9

    move/from16 v18, v0

    const/16 v19, 0x4

    move-object v14, v9

    invoke-static/range {v14 .. v19}, Lorg/spongycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    .line 1078
    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    move-object/from16 v28, v0

    .line 1079
    .local v28, "a":[J
    shl-int/lit8 v6, v35, 0x3

    new-array v0, v6, [J

    move-object/from16 v17, v0

    .line 1081
    .local v17, "c":[J
    const/16 v27, 0xf

    .line 1087
    .local v27, "MASK":I
    const/16 v31, 0x0

    .local v31, "aPos":I
    :goto_3
    move/from16 v0, v31

    move/from16 v1, v30

    if-ge v0, v1, :cond_8

    .line 1089
    aget-wide v32, v28, v31

    .line 1090
    .local v32, "aVal":J
    move/from16 v18, v31

    .line 1093
    .local v18, "cOff":I
    :goto_4
    move-wide/from16 v0, v32

    long-to-int v6, v0

    and-int v39, v6, v27

    .line 1094
    .local v39, "u":I
    const/4 v6, 0x4

    ushr-long v32, v32, v6

    .line 1095
    move-wide/from16 v0, v32

    long-to-int v6, v0

    and-int v40, v6, v27

    .line 1096
    .local v40, "v":I
    aget v20, v37, v39

    aget v22, v37, v40

    move-object/from16 v19, v9

    move-object/from16 v21, v16

    move/from16 v23, v13

    invoke-static/range {v17 .. v23}, Lorg/spongycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    .line 1097
    const/4 v6, 0x4

    ushr-long v32, v32, v6

    .line 1098
    const-wide/16 v10, 0x0

    cmp-long v6, v32, v10

    if-nez v6, :cond_7

    .line 1087
    add-int/lit8 v31, v31, 0x1

    goto :goto_3

    .line 1102
    :cond_7
    add-int v18, v18, v35

    .line 1103
    goto :goto_4

    .line 1107
    .end local v18    # "cOff":I
    .end local v32    # "aVal":J
    .end local v39    # "u":I
    .end local v40    # "v":I
    :cond_8
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    .line 1108
    .restart local v18    # "cOff":I
    :goto_5
    sub-int v18, v18, v35

    if-eqz v18, :cond_9

    .line 1110
    sub-int v20, v18, v35

    const/16 v24, 0x8

    move-object/from16 v19, v17

    move-object/from16 v21, v17

    move/from16 v22, v18

    move/from16 v23, v35

    invoke-static/range {v19 .. v24}, Lorg/spongycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    goto :goto_5

    .line 1117
    :cond_9
    const/4 v6, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v35

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v6, v1, v2, v3}, Lorg/spongycastle/math/ec/LongArray;->reduceResult([JIII[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public modSquare(I[I)Lorg/spongycastle/math/ec/LongArray;
    .locals 11
    .param p1, "m"    # I
    .param p2, "ks"    # [I

    .prologue
    const/4 v10, 0x0

    .line 1659
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->getUsedLength()I

    move-result v1

    .line 1660
    .local v1, "len":I
    if-nez v1, :cond_0

    .line 1676
    .end local p0    # "this":Lorg/spongycastle/math/ec/LongArray;
    :goto_0
    return-object p0

    .line 1665
    .restart local p0    # "this":Lorg/spongycastle/math/ec/LongArray;
    :cond_0
    shl-int/lit8 v0, v1, 0x1

    .line 1666
    .local v0, "_2len":I
    new-array v6, v0, [J

    .line 1668
    .local v6, "r":[J
    const/4 v4, 0x0

    .local v4, "pos":I
    move v5, v4

    .line 1669
    .end local v4    # "pos":I
    .local v5, "pos":I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 1671
    iget-object v7, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    ushr-int/lit8 v8, v5, 0x1

    aget-wide v2, v7, v8

    .line 1672
    .local v2, "mi":J
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    long-to-int v7, v2

    invoke-static {v7}, Lorg/spongycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v8

    aput-wide v8, v6, v5

    .line 1673
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    const/16 v7, 0x20

    ushr-long v8, v2, v7

    long-to-int v7, v8

    invoke-static {v7}, Lorg/spongycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v8

    aput-wide v8, v6, v4

    goto :goto_1

    .line 1676
    .end local v2    # "mi":J
    :cond_1
    new-instance p0, Lorg/spongycastle/math/ec/LongArray;

    .end local p0    # "this":Lorg/spongycastle/math/ec/LongArray;
    array-length v7, v6

    invoke-static {v6, v10, v7, p1, p2}, Lorg/spongycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result v7

    invoke-direct {p0, v6, v10, v7}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    goto :goto_0
.end method

.method public modSquareN(II[I)Lorg/spongycastle/math/ec/LongArray;
    .locals 5
    .param p1, "n"    # I
    .param p2, "m"    # I
    .param p3, "ks"    # [I

    .prologue
    const/4 v4, 0x0

    .line 1681
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 1682
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 1697
    .end local p0    # "this":Lorg/spongycastle/math/ec/LongArray;
    :goto_0
    return-object p0

    .line 1687
    .restart local p0    # "this":Lorg/spongycastle/math/ec/LongArray;
    :cond_0
    add-int/lit8 v3, p2, 0x3f

    ushr-int/lit8 v1, v3, 0x6

    .line 1688
    .local v1, "mLen":I
    shl-int/lit8 v3, v1, 0x1

    new-array v2, v3, [J

    .line 1689
    .local v2, "r":[J
    iget-object v3, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1691
    :goto_1
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 1693
    invoke-static {v2, v0, p2, p3}, Lorg/spongycastle/math/ec/LongArray;->squareInPlace([JII[I)V

    .line 1694
    array-length v3, v2

    invoke-static {v2, v4, v3, p2, p3}, Lorg/spongycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result v0

    goto :goto_1

    .line 1697
    :cond_1
    new-instance p0, Lorg/spongycastle/math/ec/LongArray;

    .end local p0    # "this":Lorg/spongycastle/math/ec/LongArray;
    invoke-direct {p0, v2, v4, v0}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    goto :goto_0
.end method

.method public multiply(Lorg/spongycastle/math/ec/LongArray;I[I)Lorg/spongycastle/math/ec/LongArray;
    .locals 39
    .param p1, "other"    # Lorg/spongycastle/math/ec/LongArray;
    .param p2, "m"    # I
    .param p3, "ks"    # [I

    .prologue
    .line 1349
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/LongArray;->degree()I

    move-result v27

    .line 1350
    .local v27, "aDeg":I
    if-nez v27, :cond_0

    .line 1475
    .end local p0    # "this":Lorg/spongycastle/math/ec/LongArray;
    :goto_0
    return-object p0

    .line 1354
    .restart local p0    # "this":Lorg/spongycastle/math/ec/LongArray;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/LongArray;->degree()I

    move-result v32

    .line 1355
    .local v32, "bDeg":I
    if-nez v32, :cond_1

    move-object/from16 p0, p1

    .line 1357
    goto :goto_0

    .line 1363
    :cond_1
    move-object/from16 v23, p0

    .local v23, "A":Lorg/spongycastle/math/ec/LongArray;
    move-object/from16 v24, p1

    .line 1364
    .local v24, "B":Lorg/spongycastle/math/ec/LongArray;
    move/from16 v0, v27

    move/from16 v1, v32

    if-le v0, v1, :cond_2

    .line 1366
    move-object/from16 v23, p1

    move-object/from16 v24, p0

    .line 1367
    move/from16 v36, v27

    .local v36, "tmp":I
    move/from16 v27, v32

    move/from16 v32, v36

    .line 1373
    .end local v36    # "tmp":I
    :cond_2
    add-int/lit8 v4, v27, 0x3f

    ushr-int/lit8 v28, v4, 0x6

    .line 1374
    .local v28, "aLen":I
    add-int/lit8 v4, v32, 0x3f

    ushr-int/lit8 v5, v4, 0x6

    .line 1375
    .local v5, "bLen":I
    add-int v4, v27, v32

    add-int/lit8 v4, v4, 0x3e

    ushr-int/lit8 v33, v4, 0x6

    .line 1377
    .local v33, "cLen":I
    const/4 v4, 0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_4

    .line 1379
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    const/4 v8, 0x0

    aget-wide v2, v4, v8

    .line 1380
    .local v2, "a0":J
    const-wide/16 v8, 0x1

    cmp-long v4, v2, v8

    if-nez v4, :cond_3

    move-object/from16 p0, v24

    .line 1382
    goto :goto_0

    .line 1388
    :cond_3
    move/from16 v0, v33

    new-array v6, v0, [J

    .line 1389
    .local v6, "c0":[J
    move-object/from16 v0, v24

    iget-object v4, v0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    .line 1395
    new-instance p0, Lorg/spongycastle/math/ec/LongArray;

    .end local p0    # "this":Lorg/spongycastle/math/ec/LongArray;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v6, v4, v1}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    goto :goto_0

    .line 1401
    .end local v2    # "a0":J
    .end local v6    # "c0":[J
    .restart local p0    # "this":Lorg/spongycastle/math/ec/LongArray;
    :cond_4
    add-int/lit8 v4, v32, 0x7

    add-int/lit8 v4, v4, 0x3f

    ushr-int/lit8 v11, v4, 0x6

    .line 1406
    .local v11, "bMax":I
    const/16 v4, 0x10

    new-array v0, v4, [I

    move-object/from16 v35, v0

    .line 1411
    .local v35, "ti":[I
    shl-int/lit8 v4, v11, 0x4

    new-array v7, v4, [J

    .line 1412
    .local v7, "T0":[J
    move v10, v11

    .line 1413
    .local v10, "tOff":I
    const/4 v4, 0x1

    aput v10, v35, v4

    .line 1414
    move-object/from16 v0, v24

    iget-object v4, v0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    const/4 v8, 0x0

    invoke-static {v4, v8, v7, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1415
    const/16 v34, 0x2

    .local v34, "i":I
    :goto_1
    const/16 v4, 0x10

    move/from16 v0, v34

    if-ge v0, v4, :cond_6

    .line 1417
    add-int/2addr v10, v11

    aput v10, v35, v34

    .line 1418
    and-int/lit8 v4, v34, 0x1

    if-nez v4, :cond_5

    .line 1420
    ushr-int/lit8 v8, v10, 0x1

    const/4 v12, 0x1

    move-object v9, v7

    invoke-static/range {v7 .. v12}, Lorg/spongycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    .line 1415
    :goto_2
    add-int/lit8 v34, v34, 0x1

    goto :goto_1

    .line 1424
    :cond_5
    sub-int v15, v10, v11

    move-object v12, v7

    move v13, v11

    move-object v14, v7

    move-object/from16 v16, v7

    move/from16 v17, v10

    move/from16 v18, v11

    invoke-static/range {v12 .. v18}, Lorg/spongycastle/math/ec/LongArray;->add([JI[JI[JII)V

    goto :goto_2

    .line 1431
    :cond_6
    array-length v4, v7

    new-array v14, v4, [J

    .line 1432
    .local v14, "T1":[J
    const/4 v13, 0x0

    const/4 v15, 0x0

    array-length v0, v7

    move/from16 v16, v0

    const/16 v17, 0x4

    move-object v12, v7

    invoke-static/range {v12 .. v17}, Lorg/spongycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    .line 1435
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    move-object/from16 v26, v0

    .line 1436
    .local v26, "a":[J
    shl-int/lit8 v4, v33, 0x3

    new-array v15, v4, [J

    .line 1438
    .local v15, "c":[J
    const/16 v25, 0xf

    .line 1444
    .local v25, "MASK":I
    const/16 v29, 0x0

    .local v29, "aPos":I
    :goto_3
    move/from16 v0, v29

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    .line 1446
    aget-wide v30, v26, v29

    .line 1447
    .local v30, "aVal":J
    move/from16 v16, v29

    .line 1450
    .local v16, "cOff":I
    :goto_4
    move-wide/from16 v0, v30

    long-to-int v4, v0

    and-int v37, v4, v25

    .line 1451
    .local v37, "u":I
    const/4 v4, 0x4

    ushr-long v30, v30, v4

    .line 1452
    move-wide/from16 v0, v30

    long-to-int v4, v0

    and-int v38, v4, v25

    .line 1453
    .local v38, "v":I
    aget v18, v35, v37

    aget v20, v35, v38

    move-object/from16 v17, v7

    move-object/from16 v19, v14

    move/from16 v21, v11

    invoke-static/range {v15 .. v21}, Lorg/spongycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    .line 1454
    const/4 v4, 0x4

    ushr-long v30, v30, v4

    .line 1455
    const-wide/16 v8, 0x0

    cmp-long v4, v30, v8

    if-nez v4, :cond_7

    .line 1444
    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    .line 1459
    :cond_7
    add-int v16, v16, v33

    .line 1460
    goto :goto_4

    .line 1464
    .end local v16    # "cOff":I
    .end local v30    # "aVal":J
    .end local v37    # "u":I
    .end local v38    # "v":I
    :cond_8
    array-length v0, v15

    move/from16 v16, v0

    .line 1465
    .restart local v16    # "cOff":I
    :goto_5
    sub-int v16, v16, v33

    if-eqz v16, :cond_9

    .line 1467
    sub-int v18, v16, v33

    const/16 v22, 0x8

    move-object/from16 v17, v15

    move-object/from16 v19, v15

    move/from16 v20, v16

    move/from16 v21, v33

    invoke-static/range {v17 .. v22}, Lorg/spongycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    goto :goto_5

    .line 1475
    :cond_9
    new-instance p0, Lorg/spongycastle/math/ec/LongArray;

    .end local p0    # "this":Lorg/spongycastle/math/ec/LongArray;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v15, v4, v1}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    goto/16 :goto_0
.end method

.method public reduce(I[I)V
    .locals 4
    .param p1, "m"    # I
    .param p2, "ks"    # [I

    .prologue
    const/4 v3, 0x0

    .line 1480
    iget-object v0, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    .line 1481
    .local v0, "buf":[J
    array-length v2, v0

    invoke-static {v0, v3, v2, p1, p2}, Lorg/spongycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result v1

    .line 1482
    .local v1, "rLen":I
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1484
    new-array v2, v1, [J

    iput-object v2, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    .line 1485
    iget-object v2, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1487
    :cond_0
    return-void
.end method

.method public square(I[I)Lorg/spongycastle/math/ec/LongArray;
    .locals 10
    .param p1, "m"    # I
    .param p2, "ks"    # [I

    .prologue
    .line 1702
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->getUsedLength()I

    move-result v1

    .line 1703
    .local v1, "len":I
    if-nez v1, :cond_0

    .line 1719
    .end local p0    # "this":Lorg/spongycastle/math/ec/LongArray;
    :goto_0
    return-object p0

    .line 1708
    .restart local p0    # "this":Lorg/spongycastle/math/ec/LongArray;
    :cond_0
    shl-int/lit8 v0, v1, 0x1

    .line 1709
    .local v0, "_2len":I
    new-array v6, v0, [J

    .line 1711
    .local v6, "r":[J
    const/4 v4, 0x0

    .local v4, "pos":I
    move v5, v4

    .line 1712
    .end local v4    # "pos":I
    .local v5, "pos":I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 1714
    iget-object v7, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    ushr-int/lit8 v8, v5, 0x1

    aget-wide v2, v7, v8

    .line 1715
    .local v2, "mi":J
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    long-to-int v7, v2

    invoke-static {v7}, Lorg/spongycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v8

    aput-wide v8, v6, v5

    .line 1716
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    const/16 v7, 0x20

    ushr-long v8, v2, v7

    long-to-int v7, v8

    invoke-static {v7}, Lorg/spongycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v8

    aput-wide v8, v6, v4

    goto :goto_1

    .line 1719
    .end local v2    # "mi":J
    :cond_1
    new-instance p0, Lorg/spongycastle/math/ec/LongArray;

    .end local p0    # "this":Lorg/spongycastle/math/ec/LongArray;
    const/4 v7, 0x0

    array-length v8, v6

    invoke-direct {p0, v6, v7, v8}, Lorg/spongycastle/math/ec/LongArray;-><init>([JII)V

    goto :goto_0
.end method

.method public testBitZero()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 792
    iget-object v1, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 18

    .prologue
    .line 535
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/LongArray;->getUsedLength()I

    move-result v15

    .line 536
    .local v15, "usedLen":I
    if-nez v15, :cond_0

    .line 538
    sget-object v16, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 571
    :goto_0
    return-object v16

    .line 541
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    move-object/from16 v16, v0

    add-int/lit8 v17, v15, -0x1

    aget-wide v6, v16, v17

    .line 542
    .local v6, "highestInt":J
    const/16 v16, 0x8

    move/from16 v0, v16

    new-array v12, v0, [B

    .line 543
    .local v12, "temp":[B
    const/4 v3, 0x0

    .line 544
    .local v3, "barrI":I
    const/4 v14, 0x0

    .line 545
    .local v14, "trailingZeroBytesDone":Z
    const/4 v9, 0x7

    .local v9, "j":I
    move v4, v3

    .end local v3    # "barrI":I
    .local v4, "barrI":I
    :goto_1
    if-ltz v9, :cond_2

    .line 547
    mul-int/lit8 v16, v9, 0x8

    ushr-long v16, v6, v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v13, v0

    .line 548
    .local v13, "thisByte":B
    if-nez v14, :cond_1

    if-eqz v13, :cond_6

    .line 550
    :cond_1
    const/4 v14, 0x1

    .line 551
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "barrI":I
    .restart local v3    # "barrI":I
    aput-byte v13, v12, v4

    .line 545
    :goto_2
    add-int/lit8 v9, v9, -0x1

    move v4, v3

    .end local v3    # "barrI":I
    .restart local v4    # "barrI":I
    goto :goto_1

    .line 555
    .end local v13    # "thisByte":B
    :cond_2
    add-int/lit8 v16, v15, -0x1

    mul-int/lit8 v16, v16, 0x8

    add-int v5, v16, v4

    .line 556
    .local v5, "barrLen":I
    new-array v2, v5, [B

    .line 557
    .local v2, "barr":[B
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v4, :cond_3

    .line 559
    aget-byte v16, v12, v9

    aput-byte v16, v2, v9

    .line 557
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 563
    :cond_3
    add-int/lit8 v8, v15, -0x2

    .local v8, "iarrJ":I
    move v3, v4

    .end local v4    # "barrI":I
    .restart local v3    # "barrI":I
    :goto_4
    if-ltz v8, :cond_5

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    move-object/from16 v16, v0

    aget-wide v10, v16, v8

    .line 566
    .local v10, "mi":J
    const/4 v9, 0x7

    move v4, v3

    .end local v3    # "barrI":I
    .restart local v4    # "barrI":I
    :goto_5
    if-ltz v9, :cond_4

    .line 568
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "barrI":I
    .restart local v3    # "barrI":I
    mul-int/lit8 v16, v9, 0x8

    ushr-long v16, v10, v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v2, v4

    .line 566
    add-int/lit8 v9, v9, -0x1

    move v4, v3

    .end local v3    # "barrI":I
    .restart local v4    # "barrI":I
    goto :goto_5

    .line 563
    :cond_4
    add-int/lit8 v8, v8, -0x1

    move v3, v4

    .end local v4    # "barrI":I
    .restart local v3    # "barrI":I
    goto :goto_4

    .line 571
    .end local v10    # "mi":J
    :cond_5
    new-instance v16, Ljava/math/BigInteger;

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_0

    .end local v2    # "barr":[B
    .end local v3    # "barrI":I
    .end local v5    # "barrLen":I
    .end local v8    # "iarrJ":I
    .restart local v4    # "barrI":I
    .restart local v13    # "thisByte":B
    :cond_6
    move v3, v4

    .end local v4    # "barrI":I
    .restart local v3    # "barrI":I
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2173
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 2174
    .local v0, "i":I
    if-nez v0, :cond_0

    .line 2176
    const-string v4, "0"

    .line 2193
    :goto_0
    return-object v4

    .line 2179
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2180
    .local v3, "sb":Ljava/lang/StringBuffer;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 2182
    iget-object v4, p0, Lorg/spongycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    .line 2185
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 2186
    .local v1, "len":I
    const/16 v4, 0x40

    if-ge v1, v4, :cond_1

    .line 2188
    const-string v4, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2191
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2193
    .end local v1    # "len":I
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
