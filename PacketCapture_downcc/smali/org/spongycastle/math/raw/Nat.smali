.class public abstract Lorg/spongycastle/math/raw/Nat;
.super Ljava/lang/Object;
.source "Nat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(I[I[I[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .prologue
    const-wide v8, 0xffffffffL

    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 16
    aget v3, p1, v2

    int-to-long v4, v3

    and-long/2addr v4, v8

    aget v3, p2, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 17
    long-to-int v3, v0

    aput v3, p3, v2

    .line 18
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method public static add33To(II[I)I
    .locals 12
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x1

    const-wide v8, 0xffffffffL

    const/4 v2, 0x0

    .line 49
    aget v3, p2, v2

    int-to-long v4, v3

    and-long/2addr v4, v8

    int-to-long v6, p1

    and-long/2addr v6, v8

    add-long v0, v4, v6

    .line 50
    .local v0, "c":J
    long-to-int v3, v0

    aput v3, p2, v2

    .line 51
    ushr-long/2addr v0, v11

    .line 52
    aget v3, p2, v10

    int-to-long v4, v3

    and-long/2addr v4, v8

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 53
    long-to-int v3, v0

    aput v3, p2, v10

    .line 54
    ushr-long/2addr v0, v11

    .line 55
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, p2, v2}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    goto :goto_0
.end method

.method public static addBothTo(I[I[I[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .prologue
    const-wide v8, 0xffffffffL

    .line 71
    const-wide/16 v0, 0x0

    .line 72
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 74
    aget v3, p1, v2

    int-to-long v4, v3

    and-long/2addr v4, v8

    aget v3, p2, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    aget v3, p3, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 75
    long-to-int v3, v0

    aput v3, p3, v2

    .line 76
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method public static addTo(I[II[II)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .prologue
    const-wide v8, 0xffffffffL

    .line 153
    const-wide/16 v0, 0x0

    .line 154
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 156
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v4, v3

    and-long/2addr v4, v8

    add-int v3, p4, v2

    aget v3, p3, v3

    int-to-long v6, v3

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 157
    add-int v3, p4, v2

    long-to-int v4, v0

    aput v4, p3, v3

    .line 158
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method public static addTo(I[I[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .prologue
    const-wide v8, 0xffffffffL

    .line 141
    const-wide/16 v0, 0x0

    .line 142
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 144
    aget v3, p1, v2

    int-to-long v4, v3

    and-long/2addr v4, v8

    aget v3, p2, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 145
    long-to-int v3, v0

    aput v3, p2, v2

    .line 146
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method public static addWordAt(II[II)I
    .locals 8
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I

    .prologue
    const-wide v6, 0xffffffffL

    .line 166
    int-to-long v2, p1

    and-long/2addr v2, v6

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long v0, v2, v4

    .line 167
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p2, p3

    .line 168
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 169
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, p2, v2}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    goto :goto_0
.end method

.method public static addWordTo(II[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    .prologue
    const-wide v8, 0xffffffffL

    const/4 v2, 0x0

    .line 183
    int-to-long v4, p1

    and-long/2addr v4, v8

    aget v3, p2, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    add-long v0, v4, v6

    .line 184
    .local v0, "c":J
    long-to-int v3, v0

    aput v3, p2, v2

    .line 185
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 186
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, p2, v2}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    goto :goto_0
.end method

.method public static copy(I[I)[I
    .locals 2
    .param p0, "len"    # I
    .param p1, "x"    # [I

    .prologue
    const/4 v1, 0x0

    .line 199
    new-array v0, p0, [I

    .line 200
    .local v0, "z":[I
    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    return-object v0
.end method

.method public static create(I)[I
    .locals 1
    .param p0, "len"    # I

    .prologue
    .line 211
    new-array v0, p0, [I

    return-object v0
.end method

.method public static dec(I[I)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "z"    # [I

    .prologue
    const/4 v1, -0x1

    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 218
    aget v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, p1, v0

    if-eq v2, v1, :cond_1

    .line 220
    const/4 v1, 0x0

    .line 223
    :cond_0
    return v1

    .line 216
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static decAt(I[II)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zPos"    # I

    .prologue
    const/4 v1, -0x1

    .line 250
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 252
    aget v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, p1, v0

    if-eq v2, v1, :cond_1

    .line 254
    const/4 v1, 0x0

    .line 257
    :cond_0
    return v1

    .line 250
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static eq(I[I[I)Z
    .locals 3
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .prologue
    .line 275
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 277
    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_0

    .line 279
    const/4 v1, 0x0

    .line 282
    :goto_1
    return v1

    .line 275
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 282
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static fromBigInteger(ILjava/math/BigInteger;)[I
    .locals 5
    .param p0, "bits"    # I
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 287
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-le v4, p0, :cond_1

    .line 289
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 292
    :cond_1
    add-int/lit8 v4, p0, 0x1f

    shr-int/lit8 v2, v4, 0x5

    .line 293
    .local v2, "len":I
    invoke-static {v2}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v3

    .line 294
    .local v3, "z":[I
    const/4 v0, 0x0

    .line 295
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-eqz v4, :cond_2

    .line 297
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    aput v4, v3, v0

    .line 298
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 300
    :cond_2
    return-object v3
.end method

.method public static getBit([II)I
    .locals 4
    .param p0, "x"    # [I
    .param p1, "bit"    # I

    .prologue
    const/4 v2, 0x0

    .line 305
    if-nez p1, :cond_1

    .line 307
    aget v2, p0, v2

    and-int/lit8 v2, v2, 0x1

    .line 315
    :cond_0
    :goto_0
    return v2

    .line 309
    :cond_1
    shr-int/lit8 v1, p1, 0x5

    .line 310
    .local v1, "w":I
    if-ltz v1, :cond_0

    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 314
    and-int/lit8 v0, p1, 0x1f

    .line 315
    .local v0, "b":I
    aget v2, p0, v1

    ushr-int/2addr v2, v0

    and-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static gte(I[I[I)Z
    .locals 6
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .prologue
    const/4 v3, 0x1

    const/high16 v5, -0x80000000

    .line 320
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 322
    aget v4, p1, v0

    xor-int v1, v4, v5

    .line 323
    .local v1, "x_i":I
    aget v4, p2, v0

    xor-int v2, v4, v5

    .line 324
    .local v2, "y_i":I
    if-ge v1, v2, :cond_1

    .line 325
    const/4 v3, 0x0

    .line 329
    .end local v1    # "x_i":I
    .end local v2    # "y_i":I
    :cond_0
    return v3

    .line 326
    .restart local v1    # "x_i":I
    .restart local v2    # "y_i":I
    :cond_1
    if-gt v1, v2, :cond_0

    .line 320
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static inc(I[I)I
    .locals 2
    .param p0, "len"    # I
    .param p1, "z"    # [I

    .prologue
    .line 334
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    .line 336
    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    if-eqz v1, :cond_0

    .line 338
    const/4 v1, 0x0

    .line 341
    :goto_1
    return v1

    .line 334
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static inc(I[I[I)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 346
    const/4 v1, 0x0

    .line 347
    .local v1, "i":I
    :cond_0
    if-ge v1, p0, :cond_2

    .line 349
    aget v2, p1, v1

    add-int/lit8 v0, v2, 0x1

    .line 350
    .local v0, "c":I
    aput v0, p2, v1

    .line 351
    add-int/lit8 v1, v1, 0x1

    .line 352
    if-eqz v0, :cond_0

    .line 354
    :goto_0
    if-ge v1, p0, :cond_1

    .line 356
    aget v2, p1, v1

    aput v2, p2, v1

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_1
    const/4 v2, 0x0

    .line 362
    .end local v0    # "c":I
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static incAt(I[II)I
    .locals 2
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zPos"    # I

    .prologue
    .line 368
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    .line 370
    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    if-eqz v1, :cond_0

    .line 372
    const/4 v1, 0x0

    .line 375
    :goto_1
    return v1

    .line 368
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static incAt(I[III)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "zPos"    # I

    .prologue
    .line 381
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    .line 383
    add-int v1, p2, v0

    aget v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v1

    if-eqz v2, :cond_0

    .line 385
    const/4 v1, 0x0

    .line 388
    :goto_1
    return v1

    .line 381
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isOne(I[I)Z
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 393
    aget v3, p1, v1

    if-eq v3, v2, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v1

    .line 397
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_2

    .line 399
    aget v3, p1, v0

    if-nez v3, :cond_0

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 404
    goto :goto_0
.end method

.method public static isZero(I[I)Z
    .locals 2
    .param p0, "len"    # I
    .param p1, "x"    # [I

    .prologue
    .line 409
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    .line 411
    aget v1, p1, v0

    if-eqz v1, :cond_0

    .line 413
    const/4 v1, 0x0

    .line 416
    :goto_1
    return v1

    .line 409
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static mul31BothAdd(II[II[I[II)I
    .locals 16
    .param p0, "len"    # I
    .param p1, "a"    # I
    .param p2, "x"    # [I
    .param p3, "b"    # I
    .param p4, "y"    # [I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .prologue
    .line 468
    const-wide/16 v6, 0x0

    .local v6, "c":J
    move/from16 v0, p1

    int-to-long v10, v0

    const-wide v12, 0xffffffffL

    and-long v2, v10, v12

    .local v2, "aVal":J
    move/from16 v0, p3

    int-to-long v10, v0

    const-wide v12, 0xffffffffL

    and-long v4, v10, v12

    .line 469
    .local v4, "bVal":J
    const/4 v8, 0x0

    .line 472
    .local v8, "i":I
    :cond_0
    aget v9, p2, v8

    int-to-long v10, v9

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    mul-long/2addr v10, v2

    aget v9, p4, v8

    int-to-long v12, v9

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    mul-long/2addr v12, v4

    add-long/2addr v10, v12

    add-int v9, p6, v8

    aget v9, p5, v9

    int-to-long v12, v9

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    add-long/2addr v10, v12

    add-long/2addr v6, v10

    .line 473
    add-int v9, p6, v8

    long-to-int v10, v6

    aput v10, p5, v9

    .line 474
    const/16 v9, 0x20

    ushr-long/2addr v6, v9

    .line 476
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, p0

    if-lt v8, v0, :cond_0

    .line 477
    long-to-int v9, v6

    return v9
.end method

.method public static mulWordAddTo(II[II[II)I
    .locals 12
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .prologue
    .line 510
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v6, p1

    const-wide v8, 0xffffffffL

    and-long v4, v6, v8

    .line 511
    .local v4, "xVal":J
    const/4 v2, 0x0

    .line 514
    .local v2, "i":I
    :cond_0
    add-int v3, p3, v2

    aget v3, p2, v3

    int-to-long v6, v3

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    add-int v3, p5, v2

    aget v3, p4, v3

    int-to-long v8, v3

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 515
    add-int v3, p5, v2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 516
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 518
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p0, :cond_0

    .line 519
    long-to-int v3, v0

    return v3
.end method

.method public static shiftDownBit(I[II)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "c"    # I

    .prologue
    .line 540
    move v0, p0

    .line 541
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 543
    aget v1, p1, v0

    .line 544
    .local v1, "next":I
    ushr-int/lit8 v2, v1, 0x1

    shl-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 545
    move p2, v1

    .line 546
    goto :goto_0

    .line 547
    .end local v1    # "next":I
    :cond_0
    shl-int/lit8 v2, p2, 0x1f

    return v2
.end method

.method public static shiftDownBits(I[III)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I

    .prologue
    .line 589
    move v0, p0

    .line 590
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 592
    aget v1, p1, v0

    .line 593
    .local v1, "next":I
    ushr-int v2, v1, p2

    neg-int v3, p2

    shl-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 594
    move p3, v1

    .line 595
    goto :goto_0

    .line 596
    .end local v1    # "next":I
    :cond_0
    neg-int v2, p2

    shl-int v2, p3, v2

    return v2
.end method

.method public static shiftDownBits(I[IIII[II)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .prologue
    .line 628
    move v0, p0

    .line 629
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 631
    add-int v2, p2, v0

    aget v1, p1, v2

    .line 632
    .local v1, "next":I
    add-int v2, p6, v0

    ushr-int v3, v1, p3

    neg-int v4, p3

    shl-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p5, v2

    .line 633
    move p4, v1

    .line 634
    goto :goto_0

    .line 635
    .end local v1    # "next":I
    :cond_0
    neg-int v2, p3

    shl-int v2, p4, v2

    return v2
.end method

.method public static shiftDownWord(I[II)I
    .locals 2
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "c"    # I

    .prologue
    .line 640
    move v0, p0

    .line 641
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 643
    aget v1, p1, v0

    .line 644
    .local v1, "next":I
    aput p2, p1, v0

    .line 645
    move p2, v1

    .line 646
    goto :goto_0

    .line 647
    .end local v1    # "next":I
    :cond_0
    return p2
.end method

.method public static shiftUpBit(I[III[II)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .prologue
    .line 685
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 687
    add-int v2, p2, v0

    aget v1, p1, v2

    .line 688
    .local v1, "next":I
    add-int v2, p5, v0

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p4, v2

    .line 689
    move p3, v1

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 691
    .end local v1    # "next":I
    :cond_0
    ushr-int/lit8 v2, p3, 0x1f

    return v2
.end method

.method public static shiftUpBit(I[II[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "c"    # I
    .param p3, "z"    # [I

    .prologue
    .line 674
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 676
    aget v1, p1, v0

    .line 677
    .local v1, "next":I
    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p3, v0

    .line 678
    move p2, v1

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 680
    .end local v1    # "next":I
    :cond_0
    ushr-int/lit8 v2, p2, 0x1f

    return v2
.end method

.method public static shiftUpBits(I[III)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I

    .prologue
    .line 697
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 699
    aget v1, p1, v0

    .line 700
    .local v1, "next":I
    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 701
    move p3, v1

    .line 697
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 703
    .end local v1    # "next":I
    :cond_0
    neg-int v2, p2

    ushr-int v2, p3, v2

    return v2
.end method

.method public static shiftUpBits(I[III[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I

    .prologue
    .line 721
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 723
    aget v1, p1, v0

    .line 724
    .local v1, "next":I
    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p4, v0

    .line 725
    move p3, v1

    .line 721
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 727
    .end local v1    # "next":I
    :cond_0
    neg-int v2, p2

    ushr-int v2, p3, v2

    return v2
.end method

.method public static sub(I[I[I[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .prologue
    const-wide v8, 0xffffffffL

    .line 821
    const-wide/16 v0, 0x0

    .line 822
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 824
    aget v3, p1, v2

    int-to-long v4, v3

    and-long/2addr v4, v8

    aget v3, p2, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 825
    long-to-int v3, v0

    aput v3, p3, v2

    .line 826
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 822
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 828
    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method public static sub33From(II[I)I
    .locals 12
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x1

    const-wide v8, 0xffffffffL

    const/4 v2, 0x0

    .line 869
    aget v3, p2, v2

    int-to-long v4, v3

    and-long/2addr v4, v8

    int-to-long v6, p1

    and-long/2addr v6, v8

    sub-long v0, v4, v6

    .line 870
    .local v0, "c":J
    long-to-int v3, v0

    aput v3, p2, v2

    .line 871
    shr-long/2addr v0, v11

    .line 872
    aget v3, p2, v10

    int-to-long v4, v3

    and-long/2addr v4, v8

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 873
    long-to-int v3, v0

    aput v3, p2, v10

    .line 874
    shr-long/2addr v0, v11

    .line 875
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, p2, v2}, Lorg/spongycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    goto :goto_0
.end method

.method public static subFrom(I[II[II)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .prologue
    const-wide v8, 0xffffffffL

    .line 973
    const-wide/16 v0, 0x0

    .line 974
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 976
    add-int v3, p4, v2

    aget v3, p3, v3

    int-to-long v4, v3

    and-long/2addr v4, v8

    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v6, v3

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 977
    add-int v3, p4, v2

    long-to-int v4, v0

    aput v4, p3, v3

    .line 978
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 974
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 980
    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method public static subFrom(I[I[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .prologue
    const-wide v8, 0xffffffffL

    .line 961
    const-wide/16 v0, 0x0

    .line 962
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 964
    aget v3, p2, v2

    int-to-long v4, v3

    and-long/2addr v4, v8

    aget v3, p1, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 965
    long-to-int v3, v0

    aput v3, p2, v2

    .line 966
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 962
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 968
    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method public static toBigInteger(I[I)Ljava/math/BigInteger;
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I

    .prologue
    .line 1019
    shl-int/lit8 v3, p0, 0x2

    new-array v0, v3, [B

    .line 1020
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_1

    .line 1022
    aget v2, p1, v1

    .line 1023
    .local v2, "x_i":I
    if-eqz v2, :cond_0

    .line 1025
    add-int/lit8 v3, p0, -0x1

    sub-int/2addr v3, v1

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 1020
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1028
    .end local v2    # "x_i":I
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v3
.end method

.method public static zero(I[I)V
    .locals 2
    .param p0, "len"    # I
    .param p1, "z"    # [I

    .prologue
    .line 1033
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1035
    const/4 v1, 0x0

    aput v1, p1, v0

    .line 1033
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1037
    :cond_0
    return-void
.end method
