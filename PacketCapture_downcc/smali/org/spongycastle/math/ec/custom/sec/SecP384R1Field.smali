.class public Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;
.super Ljava/lang/Object;
.source "SecP384R1Field.java"


# static fields
.field static final P:[I

.field static final PExt:[I

.field private static final PExtInv:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    .line 15
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->PExt:[I

    .line 18
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    return-void

    .line 13
    :array_0
    .array-data 4
        -0x1
        0x0
        0x0
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 15
    :array_1
    .array-data 4
        0x1
        -0x2
        0x0
        0x2
        0x0
        -0x2
        0x0
        0x2
        0x1
        0x0
        0x0
        0x0
        -0x2
        0x1
        0x0
        -0x2
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 18
    :array_2
    .array-data 4
        -0x1
        0x1
        -0x1
        -0x3
        -0x1
        0x1
        -0x1
        -0x3
        -0x2
        -0x1
        -0x1
        -0x1
        0x1
        -0x2
        -0x1
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    const/16 v3, 0xc

    .line 26
    invoke-static {v3, p0, p1, p2}, Lorg/spongycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v0

    .line 27
    .local v0, "c":I
    if-nez v0, :cond_0

    const/16 v1, 0xb

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v3, p2, v1}, Lorg/spongycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    :cond_0
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 31
    :cond_1
    return-void
.end method

.method public static addExt([I[I[I)V
    .locals 4
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .prologue
    const/16 v3, 0x18

    .line 35
    invoke-static {v3, p0, p1, p2}, Lorg/spongycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v0

    .line 36
    .local v0, "c":I
    if-nez v0, :cond_0

    const/16 v1, 0x17

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->PExt:[I

    invoke-static {v3, p2, v1}, Lorg/spongycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length v1, v1

    sget-object v2, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    invoke-static {v1, v2, p2}, Lorg/spongycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length v1, v1

    invoke-static {v3, p2, v1}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    .line 43
    :cond_1
    return-void
.end method

.method public static addOne([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/16 v3, 0xc

    .line 47
    invoke-static {v3, p0, p1}, Lorg/spongycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    .line 48
    .local v0, "c":I
    if-nez v0, :cond_0

    const/16 v1, 0xb

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v3, p1, v1}, Lorg/spongycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 52
    :cond_1
    return-void
.end method

.method private static addPInvTo([I)V
    .locals 11
    .param p0, "z"    # [I

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const-wide/16 v8, 0x1

    const-wide v6, 0xffffffffL

    const/16 v4, 0x20

    .line 246
    aget v2, p0, v5

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-long v0, v2, v8

    .line 247
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p0, v5

    .line 248
    shr-long/2addr v0, v4

    .line 249
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 250
    long-to-int v2, v0

    aput v2, p0, v10

    .line 251
    shr-long/2addr v0, v4

    .line 252
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 254
    const/4 v2, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 255
    const/4 v2, 0x2

    long-to-int v3, v0

    aput v3, p0, v2

    .line 256
    shr-long/2addr v0, v4

    .line 258
    :cond_0
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 259
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p0, v2

    .line 260
    shr-long/2addr v0, v4

    .line 261
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 262
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p0, v2

    .line 263
    shr-long/2addr v0, v4

    .line 264
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 266
    const/16 v2, 0xc

    const/4 v3, 0x5

    invoke-static {v2, p0, v3}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    .line 268
    :cond_1
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 4
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    const/16 v3, 0xc

    .line 56
    const/16 v1, 0x180

    invoke-static {v1, p0}, Lorg/spongycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v0

    .line 57
    .local v0, "z":[I
    const/16 v1, 0xb

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v3, v0, v1}, Lorg/spongycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v3, v1, v0}, Lorg/spongycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 61
    :cond_0
    return-object v0
.end method

.method public static multiply([I[I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 79
    const/16 v1, 0x18

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 80
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/raw/Nat384;->mul([I[I[I)V

    .line 81
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 82
    return-void
.end method

.method public static negate([I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/16 v1, 0xc

    .line 86
    invoke-static {v1, p0}, Lorg/spongycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {v1, p1}, Lorg/spongycastle/math/raw/Nat;->zero(I[I)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v1, v0, p0, p1}, Lorg/spongycastle/math/raw/Nat;->sub(I[I[I[I)I

    goto :goto_0
.end method

.method public static reduce([I[I)V
    .locals 40
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 98
    const/16 v36, 0x10

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v20, v36, v38

    .local v20, "xx16":J
    const/16 v36, 0x11

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v22, v36, v38

    .local v22, "xx17":J
    const/16 v36, 0x12

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v24, v36, v38

    .local v24, "xx18":J
    const/16 v36, 0x13

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v26, v36, v38

    .line 99
    .local v26, "xx19":J
    const/16 v36, 0x14

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v28, v36, v38

    .local v28, "xx20":J
    const/16 v36, 0x15

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v30, v36, v38

    .local v30, "xx21":J
    const/16 v36, 0x16

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v32, v36, v38

    .local v32, "xx22":J
    const/16 v36, 0x17

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v34, v36, v38

    .line 101
    .local v34, "xx23":J
    const-wide/16 v4, 0x1

    .line 103
    .local v4, "n":J
    const/16 v36, 0xc

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    add-long v36, v36, v28

    const-wide/16 v38, 0x1

    sub-long v6, v36, v38

    .line 104
    .local v6, "t0":J
    const/16 v36, 0xd

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    add-long v8, v36, v32

    .line 105
    .local v8, "t1":J
    const/16 v36, 0xe

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    add-long v36, v36, v32

    add-long v10, v36, v34

    .line 106
    .local v10, "t2":J
    const/16 v36, 0xf

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    add-long v12, v36, v34

    .line 107
    .local v12, "t3":J
    add-long v14, v22, v30

    .line 108
    .local v14, "t4":J
    sub-long v16, v30, v34

    .line 109
    .local v16, "t5":J
    sub-long v18, v32, v34

    .line 111
    .local v18, "t6":J
    const-wide/16 v2, 0x0

    .line 112
    .local v2, "cc":J
    const/16 v36, 0x0

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    add-long v36, v36, v6

    add-long v36, v36, v16

    add-long v2, v2, v36

    .line 113
    const/16 v36, 0x0

    long-to-int v0, v2

    move/from16 v37, v0

    aput v37, p1, v36

    .line 114
    const/16 v36, 0x20

    shr-long v2, v2, v36

    .line 115
    const/16 v36, 0x1

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    add-long v36, v36, v34

    sub-long v36, v36, v6

    add-long v36, v36, v8

    add-long v2, v2, v36

    .line 116
    const/16 v36, 0x1

    long-to-int v0, v2

    move/from16 v37, v0

    aput v37, p1, v36

    .line 117
    const/16 v36, 0x20

    shr-long v2, v2, v36

    .line 118
    const/16 v36, 0x2

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    sub-long v36, v36, v30

    sub-long v36, v36, v8

    add-long v36, v36, v10

    add-long v2, v2, v36

    .line 119
    const/16 v36, 0x2

    long-to-int v0, v2

    move/from16 v37, v0

    aput v37, p1, v36

    .line 120
    const/16 v36, 0x20

    shr-long v2, v2, v36

    .line 121
    const/16 v36, 0x3

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    add-long v36, v36, v6

    sub-long v36, v36, v10

    add-long v36, v36, v12

    add-long v36, v36, v16

    add-long v2, v2, v36

    .line 122
    const/16 v36, 0x3

    long-to-int v0, v2

    move/from16 v37, v0

    aput v37, p1, v36

    .line 123
    const/16 v36, 0x20

    shr-long v2, v2, v36

    .line 124
    const/16 v36, 0x4

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    add-long v36, v36, v20

    add-long v36, v36, v30

    add-long v36, v36, v6

    add-long v36, v36, v8

    sub-long v36, v36, v12

    add-long v36, v36, v16

    add-long v2, v2, v36

    .line 125
    const/16 v36, 0x4

    long-to-int v0, v2

    move/from16 v37, v0

    aput v37, p1, v36

    .line 126
    const/16 v36, 0x20

    shr-long v2, v2, v36

    .line 127
    const/16 v36, 0x5

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    sub-long v36, v36, v20

    add-long v36, v36, v8

    add-long v36, v36, v10

    add-long v36, v36, v14

    add-long v2, v2, v36

    .line 128
    const/16 v36, 0x5

    long-to-int v0, v2

    move/from16 v37, v0

    aput v37, p1, v36

    .line 129
    const/16 v36, 0x20

    shr-long v2, v2, v36

    .line 130
    const/16 v36, 0x6

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    add-long v36, v36, v24

    sub-long v36, v36, v22

    add-long v36, v36, v10

    add-long v36, v36, v12

    add-long v2, v2, v36

    .line 131
    const/16 v36, 0x6

    long-to-int v0, v2

    move/from16 v37, v0

    aput v37, p1, v36

    .line 132
    const/16 v36, 0x20

    shr-long v2, v2, v36

    .line 133
    const/16 v36, 0x7

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    add-long v36, v36, v20

    add-long v36, v36, v26

    sub-long v36, v36, v24

    add-long v36, v36, v12

    add-long v2, v2, v36

    .line 134
    const/16 v36, 0x7

    long-to-int v0, v2

    move/from16 v37, v0

    aput v37, p1, v36

    .line 135
    const/16 v36, 0x20

    shr-long v2, v2, v36

    .line 136
    const/16 v36, 0x8

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    add-long v36, v36, v20

    add-long v36, v36, v22

    add-long v36, v36, v28

    sub-long v36, v36, v26

    add-long v2, v2, v36

    .line 137
    const/16 v36, 0x8

    long-to-int v0, v2

    move/from16 v37, v0

    aput v37, p1, v36

    .line 138
    const/16 v36, 0x20

    shr-long v2, v2, v36

    .line 139
    const/16 v36, 0x9

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    add-long v36, v36, v24

    sub-long v36, v36, v28

    add-long v36, v36, v14

    add-long v2, v2, v36

    .line 140
    const/16 v36, 0x9

    long-to-int v0, v2

    move/from16 v37, v0

    aput v37, p1, v36

    .line 141
    const/16 v36, 0x20

    shr-long v2, v2, v36

    .line 142
    const/16 v36, 0xa

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    add-long v36, v36, v24

    add-long v36, v36, v26

    sub-long v36, v36, v16

    add-long v36, v36, v18

    add-long v2, v2, v36

    .line 143
    const/16 v36, 0xa

    long-to-int v0, v2

    move/from16 v37, v0

    aput v37, p1, v36

    .line 144
    const/16 v36, 0x20

    shr-long v2, v2, v36

    .line 145
    const/16 v36, 0xb

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    add-long v36, v36, v26

    add-long v36, v36, v28

    sub-long v36, v36, v18

    add-long v2, v2, v36

    .line 146
    const/16 v36, 0xb

    long-to-int v0, v2

    move/from16 v37, v0

    aput v37, p1, v36

    .line 147
    const/16 v36, 0x20

    shr-long v2, v2, v36

    .line 148
    const-wide/16 v36, 0x1

    add-long v2, v2, v36

    .line 152
    long-to-int v0, v2

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    .line 153
    return-void
.end method

.method public static reduce32(I[I)V
    .locals 12
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 157
    const-wide/16 v0, 0x0

    .line 159
    .local v0, "cc":J
    if-eqz p0, :cond_1

    .line 161
    int-to-long v4, p0

    and-long v2, v4, v6

    .line 163
    .local v2, "xx12":J
    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 164
    long-to-int v4, v0

    aput v4, p1, v9

    .line 165
    shr-long/2addr v0, v8

    .line 166
    aget v4, p1, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 167
    long-to-int v4, v0

    aput v4, p1, v10

    .line 168
    shr-long/2addr v0, v8

    .line 169
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 171
    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 172
    long-to-int v4, v0

    aput v4, p1, v11

    .line 173
    shr-long/2addr v0, v8

    .line 175
    :cond_0
    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 176
    const/4 v4, 0x3

    long-to-int v5, v0

    aput v5, p1, v4

    .line 177
    shr-long/2addr v0, v8

    .line 178
    const/4 v4, 0x4

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 179
    const/4 v4, 0x4

    long-to-int v5, v0

    aput v5, p1, v4

    .line 180
    shr-long/2addr v0, v8

    .line 185
    .end local v2    # "xx12":J
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2

    const/16 v4, 0xc

    const/4 v5, 0x5

    invoke-static {v4, p1, v5}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const/16 v4, 0xb

    aget v4, p1, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    const/16 v4, 0xc

    sget-object v5, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v4, p1, v5}, Lorg/spongycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 188
    :cond_3
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 190
    :cond_4
    return-void
.end method

.method public static square([I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 194
    const/16 v1, 0x18

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 195
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat384;->square([I[I)V

    .line 196
    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 197
    return-void
.end method

.method public static squareN([II[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .prologue
    .line 203
    const/16 v1, 0x18

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 204
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat384;->square([I[I)V

    .line 205
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 207
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 209
    invoke-static {p2, v0}, Lorg/spongycastle/math/raw/Nat384;->square([I[I)V

    .line 210
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method

.method private static subPInvFrom([I)V
    .locals 11
    .param p0, "z"    # [I

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const-wide/16 v8, 0x1

    const-wide v6, 0xffffffffL

    const/16 v4, 0x20

    .line 272
    aget v2, p0, v5

    int-to-long v2, v2

    and-long/2addr v2, v6

    sub-long v0, v2, v8

    .line 273
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p0, v5

    .line 274
    shr-long/2addr v0, v4

    .line 275
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 276
    long-to-int v2, v0

    aput v2, p0, v10

    .line 277
    shr-long/2addr v0, v4

    .line 278
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 280
    const/4 v2, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 281
    const/4 v2, 0x2

    long-to-int v3, v0

    aput v3, p0, v2

    .line 282
    shr-long/2addr v0, v4

    .line 284
    :cond_0
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 285
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p0, v2

    .line 286
    shr-long/2addr v0, v4

    .line 287
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 288
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p0, v2

    .line 289
    shr-long/2addr v0, v4

    .line 290
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 292
    const/16 v2, 0xc

    const/4 v3, 0x5

    invoke-static {v2, p0, v3}, Lorg/spongycastle/math/raw/Nat;->decAt(I[II)I

    .line 294
    :cond_1
    return-void
.end method

.method public static subtract([I[I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 216
    const/16 v1, 0xc

    invoke-static {v1, p0, p1, p2}, Lorg/spongycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v0

    .line 217
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 219
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->subPInvFrom([I)V

    .line 221
    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/16 v3, 0xc

    .line 237
    const/4 v1, 0x0

    invoke-static {v3, p0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 238
    .local v0, "c":I
    if-nez v0, :cond_0

    const/16 v1, 0xb

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v3, p1, v1}, Lorg/spongycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 242
    :cond_1
    return-void
.end method
