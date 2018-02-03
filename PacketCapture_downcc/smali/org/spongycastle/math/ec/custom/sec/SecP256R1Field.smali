.class public Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;
.super Ljava/lang/Object;
.source "SecP256R1Field.java"


# static fields
.field static final P:[I

.field static final PExt:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    .line 15
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    return-void

    .line 13
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x0
        0x0
        0x0
        0x1
        -0x1
    .end array-data

    .line 15
    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        -0x2
        -0x1
        -0x1
        -0x2
        0x1
        -0x2
        0x1
        -0x2
        0x1
        0x1
        -0x2
        0x2
        -0x2
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
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    .line 24
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x7

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p2, v1}, Lorg/spongycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    :cond_0
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 28
    :cond_1
    return-void
.end method

.method public static addOne([I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 41
    const/16 v1, 0x8

    invoke-static {v1, p0, p1}, Lorg/spongycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    .line 42
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x7

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, v1}, Lorg/spongycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 46
    :cond_1
    return-void
.end method

.method private static addPInvTo([I)V
    .locals 11
    .param p0, "z"    # [I

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    const/16 v6, 0x20

    const-wide v4, 0xffffffffL

    .line 247
    aget v2, p0, v7

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long v0, v2, v8

    .line 248
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p0, v7

    .line 249
    shr-long/2addr v0, v6

    .line 250
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 252
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 253
    long-to-int v2, v0

    aput v2, p0, v10

    .line 254
    shr-long/2addr v0, v6

    .line 255
    const/4 v2, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 256
    const/4 v2, 0x2

    long-to-int v3, v0

    aput v3, p0, v2

    .line 257
    shr-long/2addr v0, v6

    .line 259
    :cond_0
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 260
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p0, v2

    .line 261
    shr-long/2addr v0, v6

    .line 262
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 264
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 265
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p0, v2

    .line 266
    shr-long/2addr v0, v6

    .line 267
    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 268
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p0, v2

    .line 269
    shr-long/2addr v0, v6

    .line 271
    :cond_1
    const/4 v2, 0x6

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 272
    const/4 v2, 0x6

    long-to-int v3, v0

    aput v3, p0, v2

    .line 273
    shr-long/2addr v0, v6

    .line 274
    const/4 v2, 0x7

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 275
    const/4 v2, 0x7

    long-to-int v3, v0

    aput v3, p0, v2

    .line 277
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 50
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 51
    .local v0, "z":[I
    const/4 v1, 0x7

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v1, v0}, Lorg/spongycastle/math/raw/Nat256;->subFrom([I[I)I

    .line 55
    :cond_0
    return-object v0
.end method

.method public static multiply([I[I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 73
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 74
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 75
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 76
    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .prologue
    const/16 v3, 0x10

    .line 80
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    move-result v0

    .line 81
    .local v0, "c":I
    if-nez v0, :cond_0

    const/16 v1, 0xf

    aget v1, p2, v1

    and-int/lit8 v1, v1, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v3, p2, v1}, Lorg/spongycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    :cond_0
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v3, v1, p2}, Lorg/spongycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 85
    :cond_1
    return-void
.end method

.method public static negate([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 89
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->isZero([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p1}, Lorg/spongycastle/math/raw/Nat256;->zero([I)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat256;->sub([I[I[I)I

    goto :goto_0
.end method

.method public static reduce([I[I)V
    .locals 40
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 101
    const/16 v36, 0x8

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v20, v36, v38

    .local v20, "xx08":J
    const/16 v36, 0x9

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v22, v36, v38

    .local v22, "xx09":J
    const/16 v36, 0xa

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v24, v36, v38

    .local v24, "xx10":J
    const/16 v36, 0xb

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v26, v36, v38

    .line 102
    .local v26, "xx11":J
    const/16 v36, 0xc

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v28, v36, v38

    .local v28, "xx12":J
    const/16 v36, 0xd

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v30, v36, v38

    .local v30, "xx13":J
    const/16 v36, 0xe

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v32, v36, v38

    .local v32, "xx14":J
    const/16 v36, 0xf

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v34, v36, v38

    .line 104
    .local v34, "xx15":J
    const-wide/16 v4, 0x6

    .line 106
    .local v4, "n":J
    const-wide/16 v36, 0x6

    sub-long v20, v20, v36

    .line 108
    add-long v6, v20, v22

    .line 109
    .local v6, "t0":J
    add-long v8, v22, v24

    .line 110
    .local v8, "t1":J
    add-long v36, v24, v26

    sub-long v10, v36, v34

    .line 111
    .local v10, "t2":J
    add-long v12, v26, v28

    .line 112
    .local v12, "t3":J
    add-long v14, v28, v30

    .line 113
    .local v14, "t4":J
    add-long v16, v30, v32

    .line 114
    .local v16, "t5":J
    add-long v18, v32, v34

    .line 116
    .local v18, "t6":J
    const-wide/16 v2, 0x0

    .line 117
    .local v2, "cc":J
    const/16 v36, 0x0

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    add-long v36, v36, v6

    sub-long v36, v36, v12

    sub-long v36, v36, v16

    add-long v2, v2, v36

    .line 118
    const/16 v36, 0x0

    long-to-int v0, v2

    move/from16 v37, v0

    aput v37, p1, v36

    .line 119
    const/16 v36, 0x20

    shr-long v2, v2, v36

    .line 120
    const/16 v36, 0x1

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    add-long v36, v36, v8

    sub-long v36, v36, v14

    sub-long v36, v36, v18

    add-long v2, v2, v36

    .line 121
    const/16 v36, 0x1

    long-to-int v0, v2

    move/from16 v37, v0

    aput v37, p1, v36

    .line 122
    const/16 v36, 0x20

    shr-long v2, v2, v36

    .line 123
    const/16 v36, 0x2

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    add-long v36, v36, v10

    sub-long v36, v36, v16

    add-long v2, v2, v36

    .line 124
    const/16 v36, 0x2

    long-to-int v0, v2

    move/from16 v37, v0

    aput v37, p1, v36

    .line 125
    const/16 v36, 0x20

    shr-long v2, v2, v36

    .line 126
    const/16 v36, 0x3

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    const/16 v38, 0x1

    shl-long v38, v12, v38

    add-long v36, v36, v38

    add-long v36, v36, v30

    sub-long v36, v36, v34

    sub-long v36, v36, v6

    add-long v2, v2, v36

    .line 127
    const/16 v36, 0x3

    long-to-int v0, v2

    move/from16 v37, v0

    aput v37, p1, v36

    .line 128
    const/16 v36, 0x20

    shr-long v2, v2, v36

    .line 129
    const/16 v36, 0x4

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    const/16 v38, 0x1

    shl-long v38, v14, v38

    add-long v36, v36, v38

    add-long v36, v36, v32

    sub-long v36, v36, v8

    add-long v2, v2, v36

    .line 130
    const/16 v36, 0x4

    long-to-int v0, v2

    move/from16 v37, v0

    aput v37, p1, v36

    .line 131
    const/16 v36, 0x20

    shr-long v2, v2, v36

    .line 132
    const/16 v36, 0x5

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    const/16 v38, 0x1

    shl-long v38, v16, v38

    add-long v36, v36, v38

    sub-long v36, v36, v10

    add-long v2, v2, v36

    .line 133
    const/16 v36, 0x5

    long-to-int v0, v2

    move/from16 v37, v0

    aput v37, p1, v36

    .line 134
    const/16 v36, 0x20

    shr-long v2, v2, v36

    .line 135
    const/16 v36, 0x6

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    const/16 v38, 0x1

    shl-long v38, v18, v38

    add-long v36, v36, v38

    add-long v36, v36, v16

    sub-long v36, v36, v6

    add-long v2, v2, v36

    .line 136
    const/16 v36, 0x6

    long-to-int v0, v2

    move/from16 v37, v0

    aput v37, p1, v36

    .line 137
    const/16 v36, 0x20

    shr-long v2, v2, v36

    .line 138
    const/16 v36, 0x7

    aget v36, p0, v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    const/16 v38, 0x1

    shl-long v38, v34, v38

    add-long v36, v36, v38

    add-long v36, v36, v20

    sub-long v36, v36, v10

    sub-long v36, v36, v14

    add-long v2, v2, v36

    .line 139
    const/16 v36, 0x7

    long-to-int v0, v2

    move/from16 v37, v0

    aput v37, p1, v36

    .line 140
    const/16 v36, 0x20

    shr-long v2, v2, v36

    .line 141
    const-wide/16 v36, 0x6

    add-long v2, v2, v36

    .line 145
    long-to-int v0, v2

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    .line 146
    return-void
.end method

.method public static reduce32(I[I)V
    .locals 13
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    const/4 v9, 0x7

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 150
    const-wide/16 v0, 0x0

    .line 152
    .local v0, "cc":J
    if-eqz p0, :cond_2

    .line 154
    int-to-long v4, p0

    and-long v2, v4, v6

    .line 156
    .local v2, "xx08":J
    aget v4, p1, v12

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 157
    long-to-int v4, v0

    aput v4, p1, v12

    .line 158
    shr-long/2addr v0, v8

    .line 159
    cmp-long v4, v0, v10

    if-eqz v4, :cond_0

    .line 161
    const/4 v4, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 162
    const/4 v4, 0x1

    long-to-int v5, v0

    aput v5, p1, v4

    .line 163
    shr-long/2addr v0, v8

    .line 164
    const/4 v4, 0x2

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 165
    const/4 v4, 0x2

    long-to-int v5, v0

    aput v5, p1, v4

    .line 166
    shr-long/2addr v0, v8

    .line 168
    :cond_0
    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 169
    const/4 v4, 0x3

    long-to-int v5, v0

    aput v5, p1, v4

    .line 170
    shr-long/2addr v0, v8

    .line 171
    cmp-long v4, v0, v10

    if-eqz v4, :cond_1

    .line 173
    const/4 v4, 0x4

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 174
    const/4 v4, 0x4

    long-to-int v5, v0

    aput v5, p1, v4

    .line 175
    shr-long/2addr v0, v8

    .line 176
    const/4 v4, 0x5

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 177
    const/4 v4, 0x5

    long-to-int v5, v0

    aput v5, p1, v4

    .line 178
    shr-long/2addr v0, v8

    .line 180
    :cond_1
    const/4 v4, 0x6

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 181
    const/4 v4, 0x6

    long-to-int v5, v0

    aput v5, p1, v4

    .line 182
    shr-long/2addr v0, v8

    .line 183
    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 184
    long-to-int v4, v0

    aput v4, p1, v9

    .line 185
    shr-long/2addr v0, v8

    .line 190
    .end local v2    # "xx08":J
    :cond_2
    cmp-long v4, v0, v10

    if-nez v4, :cond_3

    aget v4, p1, v9

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    sget-object v4, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, v4}, Lorg/spongycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 192
    :cond_3
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 194
    :cond_4
    return-void
.end method

.method public static square([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 198
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 199
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat256;->square([I[I)V

    .line 200
    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 201
    return-void
.end method

.method public static squareN([II[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .prologue
    .line 207
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 208
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat256;->square([I[I)V

    .line 209
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 211
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 213
    invoke-static {p2, v0}, Lorg/spongycastle/math/raw/Nat256;->square([I[I)V

    .line 214
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    goto :goto_0

    .line 216
    :cond_0
    return-void
.end method

.method private static subPInvFrom([I)V
    .locals 11
    .param p0, "z"    # [I

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    const/16 v6, 0x20

    const-wide v4, 0xffffffffL

    .line 281
    aget v2, p0, v7

    int-to-long v2, v2

    and-long/2addr v2, v4

    sub-long v0, v2, v8

    .line 282
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p0, v7

    .line 283
    shr-long/2addr v0, v6

    .line 284
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 286
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 287
    long-to-int v2, v0

    aput v2, p0, v10

    .line 288
    shr-long/2addr v0, v6

    .line 289
    const/4 v2, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 290
    const/4 v2, 0x2

    long-to-int v3, v0

    aput v3, p0, v2

    .line 291
    shr-long/2addr v0, v6

    .line 293
    :cond_0
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 294
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p0, v2

    .line 295
    shr-long/2addr v0, v6

    .line 296
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 298
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 299
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p0, v2

    .line 300
    shr-long/2addr v0, v6

    .line 301
    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 302
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p0, v2

    .line 303
    shr-long/2addr v0, v6

    .line 305
    :cond_1
    const/4 v2, 0x6

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 306
    const/4 v2, 0x6

    long-to-int v3, v0

    aput v3, p0, v2

    .line 307
    shr-long/2addr v0, v6

    .line 308
    const/4 v2, 0x7

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 309
    const/4 v2, 0x7

    long-to-int v3, v0

    aput v3, p0, v2

    .line 311
    return-void
.end method

.method public static subtract([I[I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 220
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result v0

    .line 221
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 223
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->subPInvFrom([I)V

    .line 225
    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 238
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, p1}, Lorg/spongycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 239
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x7

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, v1}, Lorg/spongycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 243
    :cond_1
    return-void
.end method
