.class public abstract Lorg/spongycastle/math/raw/Nat224;
.super Ljava/lang/Object;
.source "Nat224.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .local v0, "c":J
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 15
    long-to-int v2, v0

    aput v2, p2, v9

    .line 16
    ushr-long/2addr v0, v8

    .line 17
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 18
    long-to-int v2, v0

    aput v2, p2, v10

    .line 19
    ushr-long/2addr v0, v8

    .line 20
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 21
    long-to-int v2, v0

    aput v2, p2, v11

    .line 22
    ushr-long/2addr v0, v8

    .line 23
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 24
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 25
    ushr-long/2addr v0, v8

    .line 26
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x4

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 27
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 28
    ushr-long/2addr v0, v8

    .line 29
    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x5

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 30
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 31
    ushr-long/2addr v0, v8

    .line 32
    const/4 v2, 0x6

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x6

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 33
    const/4 v2, 0x6

    long-to-int v3, v0

    aput v3, p2, v2

    .line 34
    ushr-long/2addr v0, v8

    .line 35
    long-to-int v2, v0

    return v2
.end method

.method public static addBothTo([I[I[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 67
    const-wide/16 v0, 0x0

    .line 68
    .local v0, "c":J
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    aget v4, p2, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 69
    long-to-int v2, v0

    aput v2, p2, v9

    .line 70
    ushr-long/2addr v0, v8

    .line 71
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    aget v4, p2, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 72
    long-to-int v2, v0

    aput v2, p2, v10

    .line 73
    ushr-long/2addr v0, v8

    .line 74
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    aget v4, p2, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 75
    long-to-int v2, v0

    aput v2, p2, v11

    .line 76
    ushr-long/2addr v0, v8

    .line 77
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    const/4 v4, 0x3

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 78
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 79
    ushr-long/2addr v0, v8

    .line 80
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x4

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    const/4 v4, 0x4

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 81
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 82
    ushr-long/2addr v0, v8

    .line 83
    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x5

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    const/4 v4, 0x5

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 84
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 85
    ushr-long/2addr v0, v8

    .line 86
    const/4 v2, 0x6

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x6

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    const/4 v4, 0x6

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 87
    const/4 v2, 0x6

    long-to-int v3, v0

    aput v3, p2, v2

    .line 88
    ushr-long/2addr v0, v8

    .line 89
    long-to-int v2, v0

    return v2
.end method

.method public static copy([I[I)V
    .locals 6
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 209
    aget v0, p0, v1

    aput v0, p1, v1

    .line 210
    aget v0, p0, v2

    aput v0, p1, v2

    .line 211
    aget v0, p0, v3

    aput v0, p1, v3

    .line 212
    aget v0, p0, v4

    aput v0, p1, v4

    .line 213
    aget v0, p0, v5

    aput v0, p1, v5

    .line 214
    const/4 v0, 0x5

    const/4 v1, 0x5

    aget v1, p0, v1

    aput v1, p1, v0

    .line 215
    const/4 v0, 0x6

    const/4 v1, 0x6

    aget v1, p0, v1

    aput v1, p1, v0

    .line 216
    return-void
.end method

.method public static create()[I
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x7

    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    .prologue
    .line 225
    const/16 v0, 0xe

    new-array v0, v0, [I

    return-object v0
.end method

.method public static eq([I[I)Z
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .prologue
    .line 244
    const/4 v0, 0x6

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 246
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 248
    const/4 v1, 0x0

    .line 251
    :goto_1
    return v1

    .line 244
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 251
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 5
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 256
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/16 v4, 0xe0

    if-le v3, v4, :cond_1

    .line 258
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 261
    :cond_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v2

    .line 262
    .local v2, "z":[I
    const/4 v0, 0x0

    .line 263
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-eqz v3, :cond_2

    .line 265
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 266
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 268
    :cond_2
    return-object v2
.end method

.method public static getBit([II)I
    .locals 4
    .param p0, "x"    # [I
    .param p1, "bit"    # I

    .prologue
    const/4 v2, 0x0

    .line 273
    if-nez p1, :cond_1

    .line 275
    aget v2, p0, v2

    and-int/lit8 v2, v2, 0x1

    .line 283
    :cond_0
    :goto_0
    return v2

    .line 277
    :cond_1
    shr-int/lit8 v1, p1, 0x5

    .line 278
    .local v1, "w":I
    if-ltz v1, :cond_0

    const/4 v3, 0x7

    if-ge v1, v3, :cond_0

    .line 282
    and-int/lit8 v0, p1, 0x1f

    .line 283
    .local v0, "b":I
    aget v2, p0, v1

    ushr-int/2addr v2, v0

    and-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static gte([I[I)Z
    .locals 6
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .prologue
    const/4 v3, 0x1

    const/high16 v5, -0x80000000

    .line 288
    const/4 v0, 0x6

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 290
    aget v4, p0, v0

    xor-int v1, v4, v5

    .line 291
    .local v1, "x_i":I
    aget v4, p1, v0

    xor-int v2, v4, v5

    .line 292
    .local v2, "y_i":I
    if-ge v1, v2, :cond_1

    .line 293
    const/4 v3, 0x0

    .line 297
    .end local v1    # "x_i":I
    .end local v2    # "y_i":I
    :cond_0
    return v3

    .line 294
    .restart local v1    # "x_i":I
    .restart local v2    # "y_i":I
    :cond_1
    if-gt v1, v2, :cond_0

    .line 288
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static isOne([I)Z
    .locals 4
    .param p0, "x"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 316
    aget v3, p0, v1

    if-eq v3, v2, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v1

    .line 320
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x7

    if-ge v0, v3, :cond_2

    .line 322
    aget v3, p0, v0

    if-nez v3, :cond_0

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 327
    goto :goto_0
.end method

.method public static isZero([I)Z
    .locals 2
    .param p0, "x"    # [I

    .prologue
    .line 332
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 334
    aget v1, p0, v0

    if-eqz v1, :cond_0

    .line 336
    const/4 v1, 0x0

    .line 339
    :goto_1
    return v1

    .line 332
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static mul([I[I[I)V
    .locals 30
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .prologue
    .line 344
    const/4 v5, 0x0

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v10, v24, v26

    .line 345
    .local v10, "y_0":J
    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v12, v24, v26

    .line 346
    .local v12, "y_1":J
    const/4 v5, 0x2

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v14, v24, v26

    .line 347
    .local v14, "y_2":J
    const/4 v5, 0x3

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v16, v24, v26

    .line 348
    .local v16, "y_3":J
    const/4 v5, 0x4

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v18, v24, v26

    .line 349
    .local v18, "y_4":J
    const/4 v5, 0x5

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v20, v24, v26

    .line 350
    .local v20, "y_5":J
    const/4 v5, 0x6

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v22, v24, v26

    .line 353
    .local v22, "y_6":J
    const-wide/16 v2, 0x0

    .local v2, "c":J
    const/4 v5, 0x0

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v6, v24, v26

    .line 354
    .local v6, "x_0":J
    mul-long v24, v6, v10

    add-long v2, v2, v24

    .line 355
    const/4 v5, 0x0

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 356
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 357
    mul-long v24, v6, v12

    add-long v2, v2, v24

    .line 358
    const/4 v5, 0x1

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 359
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 360
    mul-long v24, v6, v14

    add-long v2, v2, v24

    .line 361
    const/4 v5, 0x2

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 362
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 363
    mul-long v24, v6, v16

    add-long v2, v2, v24

    .line 364
    const/4 v5, 0x3

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 365
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 366
    mul-long v24, v6, v18

    add-long v2, v2, v24

    .line 367
    const/4 v5, 0x4

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 368
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 369
    mul-long v24, v6, v20

    add-long v2, v2, v24

    .line 370
    const/4 v5, 0x5

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 371
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 372
    mul-long v24, v6, v22

    add-long v2, v2, v24

    .line 373
    const/4 v5, 0x6

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 374
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 375
    const/4 v5, 0x7

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 378
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x7

    if-ge v4, v5, :cond_0

    .line 380
    const-wide/16 v2, 0x0

    aget v5, p0, v4

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v8, v24, v26

    .line 381
    .local v8, "x_i":J
    mul-long v24, v8, v10

    add-int/lit8 v5, v4, 0x0

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v24, v24, v26

    add-long v2, v2, v24

    .line 382
    add-int/lit8 v5, v4, 0x0

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 383
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 384
    mul-long v24, v8, v12

    add-int/lit8 v5, v4, 0x1

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v24, v24, v26

    add-long v2, v2, v24

    .line 385
    add-int/lit8 v5, v4, 0x1

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 386
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 387
    mul-long v24, v8, v14

    add-int/lit8 v5, v4, 0x2

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v24, v24, v26

    add-long v2, v2, v24

    .line 388
    add-int/lit8 v5, v4, 0x2

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 389
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 390
    mul-long v24, v8, v16

    add-int/lit8 v5, v4, 0x3

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v24, v24, v26

    add-long v2, v2, v24

    .line 391
    add-int/lit8 v5, v4, 0x3

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 392
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 393
    mul-long v24, v8, v18

    add-int/lit8 v5, v4, 0x4

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v24, v24, v26

    add-long v2, v2, v24

    .line 394
    add-int/lit8 v5, v4, 0x4

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 395
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 396
    mul-long v24, v8, v20

    add-int/lit8 v5, v4, 0x5

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v24, v24, v26

    add-long v2, v2, v24

    .line 397
    add-int/lit8 v5, v4, 0x5

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 398
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 399
    mul-long v24, v8, v22

    add-int/lit8 v5, v4, 0x6

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v24, v24, v26

    add-long v2, v2, v24

    .line 400
    add-int/lit8 v5, v4, 0x6

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 401
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 402
    add-int/lit8 v5, v4, 0x7

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 378
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 404
    .end local v8    # "x_i":J
    :cond_0
    return-void
.end method

.method public static mul33Add(I[II[II[II)J
    .locals 26
    .param p0, "w"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .prologue
    .line 560
    const-wide/16 v2, 0x0

    .local v2, "c":J
    move/from16 v0, p0

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v4, v20, v22

    .line 561
    .local v4, "wVal":J
    add-int/lit8 v20, p2, 0x0

    aget v20, p1, v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v6, v20, v22

    .line 562
    .local v6, "x0":J
    mul-long v20, v4, v6

    add-int/lit8 v22, p4, 0x0

    aget v22, p3, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 563
    add-int/lit8 v20, p6, 0x0

    long-to-int v0, v2

    move/from16 v21, v0

    aput v21, p5, v20

    .line 564
    const/16 v20, 0x20

    ushr-long v2, v2, v20

    .line 565
    add-int/lit8 v20, p2, 0x1

    aget v20, p1, v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v8, v20, v22

    .line 566
    .local v8, "x1":J
    mul-long v20, v4, v8

    add-long v20, v20, v6

    add-int/lit8 v22, p4, 0x1

    aget v22, p3, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 567
    add-int/lit8 v20, p6, 0x1

    long-to-int v0, v2

    move/from16 v21, v0

    aput v21, p5, v20

    .line 568
    const/16 v20, 0x20

    ushr-long v2, v2, v20

    .line 569
    add-int/lit8 v20, p2, 0x2

    aget v20, p1, v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v10, v20, v22

    .line 570
    .local v10, "x2":J
    mul-long v20, v4, v10

    add-long v20, v20, v8

    add-int/lit8 v22, p4, 0x2

    aget v22, p3, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 571
    add-int/lit8 v20, p6, 0x2

    long-to-int v0, v2

    move/from16 v21, v0

    aput v21, p5, v20

    .line 572
    const/16 v20, 0x20

    ushr-long v2, v2, v20

    .line 573
    add-int/lit8 v20, p2, 0x3

    aget v20, p1, v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v12, v20, v22

    .line 574
    .local v12, "x3":J
    mul-long v20, v4, v12

    add-long v20, v20, v10

    add-int/lit8 v22, p4, 0x3

    aget v22, p3, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 575
    add-int/lit8 v20, p6, 0x3

    long-to-int v0, v2

    move/from16 v21, v0

    aput v21, p5, v20

    .line 576
    const/16 v20, 0x20

    ushr-long v2, v2, v20

    .line 577
    add-int/lit8 v20, p2, 0x4

    aget v20, p1, v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v14, v20, v22

    .line 578
    .local v14, "x4":J
    mul-long v20, v4, v14

    add-long v20, v20, v12

    add-int/lit8 v22, p4, 0x4

    aget v22, p3, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 579
    add-int/lit8 v20, p6, 0x4

    long-to-int v0, v2

    move/from16 v21, v0

    aput v21, p5, v20

    .line 580
    const/16 v20, 0x20

    ushr-long v2, v2, v20

    .line 581
    add-int/lit8 v20, p2, 0x5

    aget v20, p1, v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v16, v20, v22

    .line 582
    .local v16, "x5":J
    mul-long v20, v4, v16

    add-long v20, v20, v14

    add-int/lit8 v22, p4, 0x5

    aget v22, p3, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 583
    add-int/lit8 v20, p6, 0x5

    long-to-int v0, v2

    move/from16 v21, v0

    aput v21, p5, v20

    .line 584
    const/16 v20, 0x20

    ushr-long v2, v2, v20

    .line 585
    add-int/lit8 v20, p2, 0x6

    aget v20, p1, v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v18, v20, v22

    .line 586
    .local v18, "x6":J
    mul-long v20, v4, v18

    add-long v20, v20, v16

    add-int/lit8 v22, p4, 0x6

    aget v22, p3, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 587
    add-int/lit8 v20, p6, 0x6

    long-to-int v0, v2

    move/from16 v21, v0

    aput v21, p5, v20

    .line 588
    const/16 v20, 0x20

    ushr-long v2, v2, v20

    .line 589
    add-long v2, v2, v18

    .line 590
    return-wide v2
.end method

.method public static mul33DWordAdd(IJ[II)I
    .locals 17
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .prologue
    .line 679
    const-wide/16 v2, 0x0

    .local v2, "c":J
    move/from16 v0, p0

    int-to-long v10, v0

    const-wide v12, 0xffffffffL

    and-long v4, v10, v12

    .line 680
    .local v4, "xVal":J
    const-wide v10, 0xffffffffL

    and-long v6, p1, v10

    .line 681
    .local v6, "y00":J
    mul-long v10, v4, v6

    add-int/lit8 v12, p4, 0x0

    aget v12, p3, v12

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    add-long/2addr v10, v12

    add-long/2addr v2, v10

    .line 682
    add-int/lit8 v10, p4, 0x0

    long-to-int v11, v2

    aput v11, p3, v10

    .line 683
    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    .line 684
    const/16 v10, 0x20

    ushr-long v8, p1, v10

    .line 685
    .local v8, "y01":J
    mul-long v10, v4, v8

    add-long/2addr v10, v6

    add-int/lit8 v12, p4, 0x1

    aget v12, p3, v12

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    add-long/2addr v10, v12

    add-long/2addr v2, v10

    .line 686
    add-int/lit8 v10, p4, 0x1

    long-to-int v11, v2

    aput v11, p3, v10

    .line 687
    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    .line 688
    add-int/lit8 v10, p4, 0x2

    aget v10, p3, v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v10, v8

    add-long/2addr v2, v10

    .line 689
    add-int/lit8 v10, p4, 0x2

    long-to-int v11, v2

    aput v11, p3, v10

    .line 690
    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    .line 691
    add-int/lit8 v10, p4, 0x3

    aget v10, p3, v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v2, v10

    .line 692
    add-int/lit8 v10, p4, 0x3

    long-to-int v11, v2

    aput v11, p3, v10

    .line 693
    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    .line 694
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-nez v10, :cond_0

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    const/4 v10, 0x7

    const/4 v11, 0x4

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v10, v0, v1, v11}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v10

    goto :goto_0
.end method

.method public static mul33WordAdd(II[II)I
    .locals 12
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .prologue
    .line 702
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v6, p0

    const-wide v8, 0xffffffffL

    and-long v2, v6, v8

    .local v2, "xVal":J
    int-to-long v6, p1

    const-wide v8, 0xffffffffL

    and-long v4, v6, v8

    .line 703
    .local v4, "yVal":J
    mul-long v6, v4, v2

    add-int/lit8 v8, p3, 0x0

    aget v8, p2, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 704
    add-int/lit8 v6, p3, 0x0

    long-to-int v7, v0

    aput v7, p2, v6

    .line 705
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 706
    add-int/lit8 v6, p3, 0x1

    aget v6, p2, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 707
    add-int/lit8 v6, p3, 0x1

    long-to-int v7, v0

    aput v7, p2, v6

    .line 708
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 709
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 710
    add-int/lit8 v6, p3, 0x2

    long-to-int v7, v0

    aput v7, p2, v6

    .line 711
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 712
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x7

    const/4 v7, 0x3

    invoke-static {v6, p2, p3, v7}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v6

    goto :goto_0
.end method

.method public static mulAddTo([I[I[I)I
    .locals 30
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .prologue
    .line 473
    const/4 v5, 0x0

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v8, v24, v26

    .line 474
    .local v8, "y_0":J
    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v10, v24, v26

    .line 475
    .local v10, "y_1":J
    const/4 v5, 0x2

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v12, v24, v26

    .line 476
    .local v12, "y_2":J
    const/4 v5, 0x3

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v14, v24, v26

    .line 477
    .local v14, "y_3":J
    const/4 v5, 0x4

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v16, v24, v26

    .line 478
    .local v16, "y_4":J
    const/4 v5, 0x5

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v18, v24, v26

    .line 479
    .local v18, "y_5":J
    const/4 v5, 0x6

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v20, v24, v26

    .line 481
    .local v20, "y_6":J
    const-wide/16 v22, 0x0

    .line 482
    .local v22, "zc":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x7

    if-ge v4, v5, :cond_0

    .line 484
    const-wide/16 v2, 0x0

    .local v2, "c":J
    aget v5, p0, v4

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v6, v24, v26

    .line 485
    .local v6, "x_i":J
    mul-long v24, v6, v8

    add-int/lit8 v5, v4, 0x0

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v24, v24, v26

    add-long v2, v2, v24

    .line 486
    add-int/lit8 v5, v4, 0x0

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 487
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 488
    mul-long v24, v6, v10

    add-int/lit8 v5, v4, 0x1

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v24, v24, v26

    add-long v2, v2, v24

    .line 489
    add-int/lit8 v5, v4, 0x1

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 490
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 491
    mul-long v24, v6, v12

    add-int/lit8 v5, v4, 0x2

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v24, v24, v26

    add-long v2, v2, v24

    .line 492
    add-int/lit8 v5, v4, 0x2

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 493
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 494
    mul-long v24, v6, v14

    add-int/lit8 v5, v4, 0x3

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v24, v24, v26

    add-long v2, v2, v24

    .line 495
    add-int/lit8 v5, v4, 0x3

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 496
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 497
    mul-long v24, v6, v16

    add-int/lit8 v5, v4, 0x4

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v24, v24, v26

    add-long v2, v2, v24

    .line 498
    add-int/lit8 v5, v4, 0x4

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 499
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 500
    mul-long v24, v6, v18

    add-int/lit8 v5, v4, 0x5

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v24, v24, v26

    add-long v2, v2, v24

    .line 501
    add-int/lit8 v5, v4, 0x5

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 502
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 503
    mul-long v24, v6, v20

    add-int/lit8 v5, v4, 0x6

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v24, v24, v26

    add-long v2, v2, v24

    .line 504
    add-int/lit8 v5, v4, 0x6

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 505
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 506
    add-int/lit8 v5, v4, 0x7

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v24, v24, v22

    add-long v2, v2, v24

    .line 507
    add-int/lit8 v5, v4, 0x7

    long-to-int v0, v2

    move/from16 v24, v0

    aput v24, p2, v5

    .line 508
    const/16 v5, 0x20

    ushr-long v22, v2, v5

    .line 482
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 510
    .end local v2    # "c":J
    .end local v6    # "x_i":J
    :cond_0
    move-wide/from16 v0, v22

    long-to-int v5, v0

    return v5
.end method

.method public static square([I[I)V
    .locals 54
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    .prologue
    .line 747
    const/4 v9, 0x0

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v50, v0

    const-wide v52, 0xffffffffL

    and-long v12, v50, v52

    .line 750
    .local v12, "x_0":J
    const/4 v2, 0x0

    .line 752
    .local v2, "c":I
    const/4 v3, 0x6

    .local v3, "i":I
    const/16 v5, 0xe

    .line 755
    .local v5, "j":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget v9, p0, v3

    int-to-long v0, v9

    move-wide/from16 v50, v0

    const-wide v52, 0xffffffffL

    and-long v10, v50, v52

    .line 756
    .local v10, "xVal":J
    mul-long v6, v10, v10

    .line 757
    .local v6, "p":J
    add-int/lit8 v5, v5, -0x1

    shl-int/lit8 v9, v2, 0x1f

    const/16 v50, 0x21

    ushr-long v50, v6, v50

    move-wide/from16 v0, v50

    long-to-int v0, v0

    move/from16 v50, v0

    or-int v9, v9, v50

    aput v9, p1, v5

    .line 758
    add-int/lit8 v5, v5, -0x1

    const/4 v9, 0x1

    ushr-long v50, v6, v9

    move-wide/from16 v0, v50

    long-to-int v9, v0

    aput v9, p1, v5

    .line 759
    long-to-int v2, v6

    .line 761
    if-gtz v4, :cond_0

    .line 764
    mul-long v6, v12, v12

    .line 765
    shl-int/lit8 v9, v2, 0x1f

    int-to-long v0, v9

    move-wide/from16 v50, v0

    const-wide v52, 0xffffffffL

    and-long v50, v50, v52

    const/16 v9, 0x21

    ushr-long v52, v6, v9

    or-long v26, v50, v52

    .line 766
    .local v26, "zz_1":J
    const/4 v9, 0x0

    long-to-int v0, v6

    move/from16 v50, v0

    aput v50, p1, v9

    .line 767
    const/16 v9, 0x20

    ushr-long v50, v6, v9

    move-wide/from16 v0, v50

    long-to-int v9, v0

    and-int/lit8 v2, v9, 0x1

    .line 771
    const/4 v9, 0x1

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v50, v0

    const-wide v52, 0xffffffffL

    and-long v14, v50, v52

    .line 772
    .local v14, "x_1":J
    const/4 v9, 0x2

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v50, v0

    const-wide v52, 0xffffffffL

    and-long v34, v50, v52

    .line 775
    .local v34, "zz_2":J
    mul-long v50, v14, v12

    add-long v26, v26, v50

    .line 776
    move-wide/from16 v0, v26

    long-to-int v8, v0

    .line 777
    .local v8, "w":I
    const/4 v9, 0x1

    shl-int/lit8 v50, v8, 0x1

    or-int v50, v50, v2

    aput v50, p1, v9

    .line 778
    ushr-int/lit8 v2, v8, 0x1f

    .line 779
    const/16 v9, 0x20

    ushr-long v50, v26, v9

    add-long v34, v34, v50

    .line 782
    const/4 v9, 0x2

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v50, v0

    const-wide v52, 0xffffffffL

    and-long v16, v50, v52

    .line 783
    .local v16, "x_2":J
    const/4 v9, 0x3

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v50, v0

    const-wide v52, 0xffffffffL

    and-long v36, v50, v52

    .line 784
    .local v36, "zz_3":J
    const/4 v9, 0x4

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v50, v0

    const-wide v52, 0xffffffffL

    and-long v38, v50, v52

    .line 786
    .local v38, "zz_4":J
    mul-long v50, v16, v12

    add-long v34, v34, v50

    .line 787
    move-wide/from16 v0, v34

    long-to-int v8, v0

    .line 788
    const/4 v9, 0x2

    shl-int/lit8 v50, v8, 0x1

    or-int v50, v50, v2

    aput v50, p1, v9

    .line 789
    ushr-int/lit8 v2, v8, 0x1f

    .line 790
    const/16 v9, 0x20

    ushr-long v50, v34, v9

    mul-long v52, v16, v14

    add-long v50, v50, v52

    add-long v36, v36, v50

    .line 791
    const/16 v9, 0x20

    ushr-long v50, v36, v9

    add-long v38, v38, v50

    .line 792
    const-wide v50, 0xffffffffL

    and-long v36, v36, v50

    .line 795
    const/4 v9, 0x3

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v50, v0

    const-wide v52, 0xffffffffL

    and-long v18, v50, v52

    .line 796
    .local v18, "x_3":J
    const/4 v9, 0x5

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v50, v0

    const-wide v52, 0xffffffffL

    and-long v40, v50, v52

    .line 797
    .local v40, "zz_5":J
    const/4 v9, 0x6

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v50, v0

    const-wide v52, 0xffffffffL

    and-long v42, v50, v52

    .line 799
    .local v42, "zz_6":J
    mul-long v50, v18, v12

    add-long v36, v36, v50

    .line 800
    move-wide/from16 v0, v36

    long-to-int v8, v0

    .line 801
    const/4 v9, 0x3

    shl-int/lit8 v50, v8, 0x1

    or-int v50, v50, v2

    aput v50, p1, v9

    .line 802
    ushr-int/lit8 v2, v8, 0x1f

    .line 803
    const/16 v9, 0x20

    ushr-long v50, v36, v9

    mul-long v52, v18, v14

    add-long v50, v50, v52

    add-long v38, v38, v50

    .line 804
    const/16 v9, 0x20

    ushr-long v50, v38, v9

    mul-long v52, v18, v16

    add-long v50, v50, v52

    add-long v40, v40, v50

    .line 805
    const-wide v50, 0xffffffffL

    and-long v38, v38, v50

    .line 806
    const/16 v9, 0x20

    ushr-long v50, v40, v9

    add-long v42, v42, v50

    .line 807
    const-wide v50, 0xffffffffL

    and-long v40, v40, v50

    .line 810
    const/4 v9, 0x4

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v50, v0

    const-wide v52, 0xffffffffL

    and-long v20, v50, v52

    .line 811
    .local v20, "x_4":J
    const/4 v9, 0x7

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v50, v0

    const-wide v52, 0xffffffffL

    and-long v44, v50, v52

    .line 812
    .local v44, "zz_7":J
    const/16 v9, 0x8

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v50, v0

    const-wide v52, 0xffffffffL

    and-long v46, v50, v52

    .line 814
    .local v46, "zz_8":J
    mul-long v50, v20, v12

    add-long v38, v38, v50

    .line 815
    move-wide/from16 v0, v38

    long-to-int v8, v0

    .line 816
    const/4 v9, 0x4

    shl-int/lit8 v50, v8, 0x1

    or-int v50, v50, v2

    aput v50, p1, v9

    .line 817
    ushr-int/lit8 v2, v8, 0x1f

    .line 818
    const/16 v9, 0x20

    ushr-long v50, v38, v9

    mul-long v52, v20, v14

    add-long v50, v50, v52

    add-long v40, v40, v50

    .line 819
    const/16 v9, 0x20

    ushr-long v50, v40, v9

    mul-long v52, v20, v16

    add-long v50, v50, v52

    add-long v42, v42, v50

    .line 820
    const-wide v50, 0xffffffffL

    and-long v40, v40, v50

    .line 821
    const/16 v9, 0x20

    ushr-long v50, v42, v9

    mul-long v52, v20, v18

    add-long v50, v50, v52

    add-long v44, v44, v50

    .line 822
    const-wide v50, 0xffffffffL

    and-long v42, v42, v50

    .line 823
    const/16 v9, 0x20

    ushr-long v50, v44, v9

    add-long v46, v46, v50

    .line 824
    const-wide v50, 0xffffffffL

    and-long v44, v44, v50

    .line 827
    const/4 v9, 0x5

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v50, v0

    const-wide v52, 0xffffffffL

    and-long v22, v50, v52

    .line 828
    .local v22, "x_5":J
    const/16 v9, 0x9

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v50, v0

    const-wide v52, 0xffffffffL

    and-long v48, v50, v52

    .line 829
    .local v48, "zz_9":J
    const/16 v9, 0xa

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v50, v0

    const-wide v52, 0xffffffffL

    and-long v28, v50, v52

    .line 831
    .local v28, "zz_10":J
    mul-long v50, v22, v12

    add-long v40, v40, v50

    .line 832
    move-wide/from16 v0, v40

    long-to-int v8, v0

    .line 833
    const/4 v9, 0x5

    shl-int/lit8 v50, v8, 0x1

    or-int v50, v50, v2

    aput v50, p1, v9

    .line 834
    ushr-int/lit8 v2, v8, 0x1f

    .line 835
    const/16 v9, 0x20

    ushr-long v50, v40, v9

    mul-long v52, v22, v14

    add-long v50, v50, v52

    add-long v42, v42, v50

    .line 836
    const/16 v9, 0x20

    ushr-long v50, v42, v9

    mul-long v52, v22, v16

    add-long v50, v50, v52

    add-long v44, v44, v50

    .line 837
    const-wide v50, 0xffffffffL

    and-long v42, v42, v50

    .line 838
    const/16 v9, 0x20

    ushr-long v50, v44, v9

    mul-long v52, v22, v18

    add-long v50, v50, v52

    add-long v46, v46, v50

    .line 839
    const-wide v50, 0xffffffffL

    and-long v44, v44, v50

    .line 840
    const/16 v9, 0x20

    ushr-long v50, v46, v9

    mul-long v52, v22, v20

    add-long v50, v50, v52

    add-long v48, v48, v50

    .line 841
    const-wide v50, 0xffffffffL

    and-long v46, v46, v50

    .line 842
    const/16 v9, 0x20

    ushr-long v50, v48, v9

    add-long v28, v28, v50

    .line 843
    const-wide v50, 0xffffffffL

    and-long v48, v48, v50

    .line 846
    const/4 v9, 0x6

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v50, v0

    const-wide v52, 0xffffffffL

    and-long v24, v50, v52

    .line 847
    .local v24, "x_6":J
    const/16 v9, 0xb

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v50, v0

    const-wide v52, 0xffffffffL

    and-long v30, v50, v52

    .line 848
    .local v30, "zz_11":J
    const/16 v9, 0xc

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v50, v0

    const-wide v52, 0xffffffffL

    and-long v32, v50, v52

    .line 850
    .local v32, "zz_12":J
    mul-long v50, v24, v12

    add-long v42, v42, v50

    .line 851
    move-wide/from16 v0, v42

    long-to-int v8, v0

    .line 852
    const/4 v9, 0x6

    shl-int/lit8 v50, v8, 0x1

    or-int v50, v50, v2

    aput v50, p1, v9

    .line 853
    ushr-int/lit8 v2, v8, 0x1f

    .line 854
    const/16 v9, 0x20

    ushr-long v50, v42, v9

    mul-long v52, v24, v14

    add-long v50, v50, v52

    add-long v44, v44, v50

    .line 855
    const/16 v9, 0x20

    ushr-long v50, v44, v9

    mul-long v52, v24, v16

    add-long v50, v50, v52

    add-long v46, v46, v50

    .line 856
    const/16 v9, 0x20

    ushr-long v50, v46, v9

    mul-long v52, v24, v18

    add-long v50, v50, v52

    add-long v48, v48, v50

    .line 857
    const/16 v9, 0x20

    ushr-long v50, v48, v9

    mul-long v52, v24, v20

    add-long v50, v50, v52

    add-long v28, v28, v50

    .line 858
    const/16 v9, 0x20

    ushr-long v50, v28, v9

    mul-long v52, v24, v22

    add-long v50, v50, v52

    add-long v30, v30, v50

    .line 859
    const/16 v9, 0x20

    ushr-long v50, v30, v9

    add-long v32, v32, v50

    .line 862
    move-wide/from16 v0, v44

    long-to-int v8, v0

    .line 863
    const/4 v9, 0x7

    shl-int/lit8 v50, v8, 0x1

    or-int v50, v50, v2

    aput v50, p1, v9

    .line 864
    ushr-int/lit8 v2, v8, 0x1f

    .line 865
    move-wide/from16 v0, v46

    long-to-int v8, v0

    .line 866
    const/16 v9, 0x8

    shl-int/lit8 v50, v8, 0x1

    or-int v50, v50, v2

    aput v50, p1, v9

    .line 867
    ushr-int/lit8 v2, v8, 0x1f

    .line 868
    move-wide/from16 v0, v48

    long-to-int v8, v0

    .line 869
    const/16 v9, 0x9

    shl-int/lit8 v50, v8, 0x1

    or-int v50, v50, v2

    aput v50, p1, v9

    .line 870
    ushr-int/lit8 v2, v8, 0x1f

    .line 871
    move-wide/from16 v0, v28

    long-to-int v8, v0

    .line 872
    const/16 v9, 0xa

    shl-int/lit8 v50, v8, 0x1

    or-int v50, v50, v2

    aput v50, p1, v9

    .line 873
    ushr-int/lit8 v2, v8, 0x1f

    .line 874
    move-wide/from16 v0, v30

    long-to-int v8, v0

    .line 875
    const/16 v9, 0xb

    shl-int/lit8 v50, v8, 0x1

    or-int v50, v50, v2

    aput v50, p1, v9

    .line 876
    ushr-int/lit8 v2, v8, 0x1f

    .line 877
    move-wide/from16 v0, v32

    long-to-int v8, v0

    .line 878
    const/16 v9, 0xc

    shl-int/lit8 v50, v8, 0x1

    or-int v50, v50, v2

    aput v50, p1, v9

    .line 879
    ushr-int/lit8 v2, v8, 0x1f

    .line 880
    const/16 v9, 0xd

    aget v9, p1, v9

    const/16 v50, 0x20

    shr-long v50, v32, v50

    move-wide/from16 v0, v50

    long-to-int v0, v0

    move/from16 v50, v0

    add-int v8, v9, v50

    .line 881
    const/16 v9, 0xd

    shl-int/lit8 v50, v8, 0x1

    or-int v50, v50, v2

    aput v50, p1, v9

    .line 882
    return-void

    .end local v8    # "w":I
    .end local v14    # "x_1":J
    .end local v16    # "x_2":J
    .end local v18    # "x_3":J
    .end local v20    # "x_4":J
    .end local v22    # "x_5":J
    .end local v24    # "x_6":J
    .end local v26    # "zz_1":J
    .end local v28    # "zz_10":J
    .end local v30    # "zz_11":J
    .end local v32    # "zz_12":J
    .end local v34    # "zz_2":J
    .end local v36    # "zz_3":J
    .end local v38    # "zz_4":J
    .end local v40    # "zz_5":J
    .end local v42    # "zz_6":J
    .end local v44    # "zz_7":J
    .end local v46    # "zz_8":J
    .end local v48    # "zz_9":J
    :cond_0
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0
.end method

.method public static sub([I[I[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 1025
    const-wide/16 v0, 0x0

    .line 1026
    .local v0, "c":J
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1027
    long-to-int v2, v0

    aput v2, p2, v9

    .line 1028
    shr-long/2addr v0, v8

    .line 1029
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1030
    long-to-int v2, v0

    aput v2, p2, v10

    .line 1031
    shr-long/2addr v0, v8

    .line 1032
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1033
    long-to-int v2, v0

    aput v2, p2, v11

    .line 1034
    shr-long/2addr v0, v8

    .line 1035
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1036
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1037
    shr-long/2addr v0, v8

    .line 1038
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x4

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1039
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1040
    shr-long/2addr v0, v8

    .line 1041
    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x5

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1042
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1043
    shr-long/2addr v0, v8

    .line 1044
    const/4 v2, 0x6

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x6

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1045
    const/4 v2, 0x6

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1046
    shr-long/2addr v0, v8

    .line 1047
    long-to-int v2, v0

    return v2
.end method

.method public static subFrom([I[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 1106
    const-wide/16 v0, 0x0

    .line 1107
    .local v0, "c":J
    aget v2, p1, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1108
    long-to-int v2, v0

    aput v2, p1, v9

    .line 1109
    shr-long/2addr v0, v8

    .line 1110
    aget v2, p1, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1111
    long-to-int v2, v0

    aput v2, p1, v10

    .line 1112
    shr-long/2addr v0, v8

    .line 1113
    aget v2, p1, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1114
    long-to-int v2, v0

    aput v2, p1, v11

    .line 1115
    shr-long/2addr v0, v8

    .line 1116
    const/4 v2, 0x3

    aget v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x3

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1117
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p1, v2

    .line 1118
    shr-long/2addr v0, v8

    .line 1119
    const/4 v2, 0x4

    aget v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x4

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1120
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p1, v2

    .line 1121
    shr-long/2addr v0, v8

    .line 1122
    const/4 v2, 0x5

    aget v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x5

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1123
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p1, v2

    .line 1124
    shr-long/2addr v0, v8

    .line 1125
    const/4 v2, 0x6

    aget v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x6

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1126
    const/4 v2, 0x6

    long-to-int v3, v0

    aput v3, p1, v2

    .line 1127
    shr-long/2addr v0, v8

    .line 1128
    long-to-int v2, v0

    return v2
.end method

.method public static toBigInteger([I)Ljava/math/BigInteger;
    .locals 5
    .param p0, "x"    # [I

    .prologue
    .line 1160
    const/16 v3, 0x1c

    new-array v0, v3, [B

    .line 1161
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x7

    if-ge v1, v3, :cond_1

    .line 1163
    aget v2, p0, v1

    .line 1164
    .local v2, "x_i":I
    if-eqz v2, :cond_0

    .line 1166
    rsub-int/lit8 v3, v1, 0x6

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 1161
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1169
    .end local v2    # "x_i":I
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v3
.end method

.method public static zero([I)V
    .locals 2
    .param p0, "z"    # [I

    .prologue
    const/4 v1, 0x0

    .line 1174
    aput v1, p0, v1

    .line 1175
    const/4 v0, 0x1

    aput v1, p0, v0

    .line 1176
    const/4 v0, 0x2

    aput v1, p0, v0

    .line 1177
    const/4 v0, 0x3

    aput v1, p0, v0

    .line 1178
    const/4 v0, 0x4

    aput v1, p0, v0

    .line 1179
    const/4 v0, 0x5

    aput v1, p0, v0

    .line 1180
    const/4 v0, 0x6

    aput v1, p0, v0

    .line 1181
    return-void
.end method
