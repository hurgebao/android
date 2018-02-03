.class public abstract Lorg/spongycastle/math/ec/WNafUtil;
.super Ljava/lang/Object;
.source "WNafUtil.java"


# static fields
.field private static final DEFAULT_WINDOW_SIZE_CUTOFFS:[I

.field private static final EMPTY_BYTES:[B

.field private static final EMPTY_INTS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    .line 11
    new-array v0, v1, [B

    sput-object v0, Lorg/spongycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    .line 12
    new-array v0, v1, [I

    sput-object v0, Lorg/spongycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    return-void

    .line 9
    :array_0
    .array-data 4
        0xd
        0x29
        0x79
        0x151
        0x381
        0x901
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateCompactNaf(Ljava/math/BigInteger;)[I
    .locals 12
    .param p0, "k"    # Ljava/math/BigInteger;

    .prologue
    const/4 v10, 0x1

    .line 16
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    ushr-int/lit8 v11, v11, 0x10

    if-eqz v11, :cond_0

    .line 18
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "\'k\' must have bitlength < 2^16"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v11

    if-nez v11, :cond_2

    .line 22
    sget-object v8, Lorg/spongycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    .line 54
    :cond_1
    :goto_0
    return-object v8

    .line 25
    :cond_2
    invoke-virtual {p0, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 27
    .local v0, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 28
    .local v1, "bits":I
    shr-int/lit8 v11, v1, 0x1

    new-array v8, v11, [I

    .line 30
    .local v8, "naf":[I
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 32
    .local v2, "diff":Ljava/math/BigInteger;
    add-int/lit8 v4, v1, -0x1

    .local v4, "highBit":I
    const/4 v6, 0x0

    .local v6, "length":I
    const/4 v9, 0x0

    .line 33
    .local v9, "zeroes":I
    const/4 v5, 0x1

    .local v5, "i":I
    move v7, v6

    .end local v6    # "length":I
    .local v7, "length":I
    :goto_1
    if-ge v5, v4, :cond_5

    .line 35
    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v11

    if-nez v11, :cond_3

    .line 37
    add-int/lit8 v9, v9, 0x1

    move v6, v7

    .line 33
    .end local v7    # "length":I
    .restart local v6    # "length":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v7, v6

    .end local v6    # "length":I
    .restart local v7    # "length":I
    goto :goto_1

    .line 41
    :cond_3
    invoke-virtual {p0, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v3, -0x1

    .line 42
    .local v3, "digit":I
    :goto_3
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "length":I
    .restart local v6    # "length":I
    shl-int/lit8 v11, v3, 0x10

    or-int/2addr v11, v9

    aput v11, v8, v7

    .line 43
    const/4 v9, 0x1

    .line 44
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v3    # "digit":I
    .end local v6    # "length":I
    .restart local v7    # "length":I
    :cond_4
    move v3, v10

    .line 41
    goto :goto_3

    .line 47
    :cond_5
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "length":I
    .restart local v6    # "length":I
    const/high16 v10, 0x10000

    or-int/2addr v10, v9

    aput v10, v8, v7

    .line 49
    array-length v10, v8

    if-le v10, v6, :cond_1

    .line 51
    invoke-static {v8, v6}, Lorg/spongycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v8

    goto :goto_0
.end method

.method public static generateCompactWindowNaf(ILjava/math/BigInteger;)[I
    .locals 12
    .param p0, "width"    # I
    .param p1, "k"    # Ljava/math/BigInteger;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 59
    if-ne p0, v11, :cond_1

    .line 61
    invoke-static {p1}, Lorg/spongycastle/math/ec/WNafUtil;->generateCompactNaf(Ljava/math/BigInteger;)[I

    move-result-object v8

    .line 120
    :cond_0
    :goto_0
    return-object v8

    .line 64
    :cond_1
    if-lt p0, v11, :cond_2

    const/16 v11, 0x10

    if-le p0, v11, :cond_3

    .line 66
    :cond_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "\'width\' must be in the range [2, 16]"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 68
    :cond_3
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    ushr-int/lit8 v11, v11, 0x10

    if-eqz v11, :cond_4

    .line 70
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "\'k\' must have bitlength < 2^16"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 72
    :cond_4
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v11

    if-nez v11, :cond_5

    .line 74
    sget-object v8, Lorg/spongycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    goto :goto_0

    .line 77
    :cond_5
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    div-int/2addr v11, p0

    add-int/lit8 v11, v11, 0x1

    new-array v8, v11, [I

    .line 80
    .local v8, "wnaf":[I
    shl-int v6, v10, p0

    .line 81
    .local v6, "pow2":I
    add-int/lit8 v4, v6, -0x1

    .line 82
    .local v4, "mask":I
    ushr-int/lit8 v7, v6, 0x1

    .line 84
    .local v7, "sign":I
    const/4 v0, 0x0

    .line 85
    .local v0, "carry":Z
    const/4 v2, 0x0

    .local v2, "length":I
    const/4 v5, 0x0

    .line 87
    .local v5, "pos":I
    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    if-gt v5, v11, :cond_b

    .line 89
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v11

    if-ne v11, v0, :cond_6

    .line 91
    add-int/lit8 v5, v5, 0x1

    .line 92
    goto :goto_1

    .line 95
    :cond_6
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    and-int v1, v11, v4

    .line 98
    .local v1, "digit":I
    if-eqz v0, :cond_7

    .line 100
    add-int/lit8 v1, v1, 0x1

    .line 103
    :cond_7
    and-int v11, v1, v7

    if-eqz v11, :cond_9

    move v0, v10

    .line 104
    :goto_2
    if-eqz v0, :cond_8

    .line 106
    sub-int/2addr v1, v6

    .line 109
    :cond_8
    if-lez v2, :cond_a

    add-int/lit8 v9, v5, -0x1

    .line 110
    .local v9, "zeroes":I
    :goto_3
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "length":I
    .local v3, "length":I
    shl-int/lit8 v11, v1, 0x10

    or-int/2addr v11, v9

    aput v11, v8, v2

    .line 111
    move v5, p0

    move v2, v3

    .line 112
    .end local v3    # "length":I
    .restart local v2    # "length":I
    goto :goto_1

    .line 103
    .end local v9    # "zeroes":I
    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    :cond_a
    move v9, v5

    .line 109
    goto :goto_3

    .line 115
    .end local v1    # "digit":I
    :cond_b
    array-length v10, v8

    if-le v10, v2, :cond_0

    .line 117
    invoke-static {v8, v2}, Lorg/spongycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v8

    goto :goto_0
.end method

.method public static generateNaf(Ljava/math/BigInteger;)[B
    .locals 8
    .param p0, "k"    # Ljava/math/BigInteger;

    .prologue
    const/4 v6, 0x1

    .line 186
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-nez v5, :cond_0

    .line 188
    sget-object v4, Lorg/spongycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    .line 209
    :goto_0
    return-object v4

    .line 191
    :cond_0
    invoke-virtual {p0, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 193
    .local v0, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 194
    .local v2, "digits":I
    new-array v4, v2, [B

    .line 196
    .local v4, "naf":[B
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 198
    .local v1, "diff":Ljava/math/BigInteger;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 200
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 202
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, -0x1

    :goto_2
    int-to-byte v5, v5

    aput-byte v5, v4, v7

    .line 203
    add-int/lit8 v3, v3, 0x1

    .line 198
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v5, v6

    .line 202
    goto :goto_2

    .line 207
    :cond_3
    add-int/lit8 v5, v2, -0x1

    aput-byte v6, v4, v5

    goto :goto_0
.end method

.method public static generateWindowNaf(ILjava/math/BigInteger;)[B
    .locals 11
    .param p0, "width"    # I
    .param p1, "k"    # Ljava/math/BigInteger;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 226
    if-ne p0, v10, :cond_1

    .line 228
    invoke-static {p1}, Lorg/spongycastle/math/ec/WNafUtil;->generateNaf(Ljava/math/BigInteger;)[B

    move-result-object v8

    .line 283
    :cond_0
    :goto_0
    return-object v8

    .line 231
    :cond_1
    if-lt p0, v10, :cond_2

    const/16 v10, 0x8

    if-le p0, v10, :cond_3

    .line 233
    :cond_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "\'width\' must be in the range [2, 8]"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 235
    :cond_3
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-nez v10, :cond_4

    .line 237
    sget-object v8, Lorg/spongycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    goto :goto_0

    .line 240
    :cond_4
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    new-array v8, v10, [B

    .line 243
    .local v8, "wnaf":[B
    shl-int v6, v9, p0

    .line 244
    .local v6, "pow2":I
    add-int/lit8 v4, v6, -0x1

    .line 245
    .local v4, "mask":I
    ushr-int/lit8 v7, v6, 0x1

    .line 247
    .local v7, "sign":I
    const/4 v0, 0x0

    .line 248
    .local v0, "carry":Z
    const/4 v2, 0x0

    .local v2, "length":I
    const/4 v5, 0x0

    .line 250
    .local v5, "pos":I
    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    if-gt v5, v10, :cond_a

    .line 252
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-ne v10, v0, :cond_5

    .line 254
    add-int/lit8 v5, v5, 0x1

    .line 255
    goto :goto_1

    .line 258
    :cond_5
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 260
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    and-int v1, v10, v4

    .line 261
    .local v1, "digit":I
    if-eqz v0, :cond_6

    .line 263
    add-int/lit8 v1, v1, 0x1

    .line 266
    :cond_6
    and-int v10, v1, v7

    if-eqz v10, :cond_9

    move v0, v9

    .line 267
    :goto_2
    if-eqz v0, :cond_7

    .line 269
    sub-int/2addr v1, v6

    .line 272
    :cond_7
    if-lez v2, :cond_8

    add-int/lit8 v5, v5, -0x1

    .end local v5    # "pos":I
    :cond_8
    add-int/2addr v2, v5

    .line 273
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "length":I
    .local v3, "length":I
    int-to-byte v10, v1

    aput-byte v10, v8, v2

    .line 274
    move v5, p0

    .restart local v5    # "pos":I
    move v2, v3

    .line 275
    .end local v3    # "length":I
    .restart local v2    # "length":I
    goto :goto_1

    .line 266
    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    .line 278
    .end local v1    # "digit":I
    :cond_a
    array-length v9, v8

    if-le v9, v2, :cond_0

    .line 280
    invoke-static {v8, v2}, Lorg/spongycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v8

    goto :goto_0
.end method

.method public static getNafWeight(Ljava/math/BigInteger;)I
    .locals 3
    .param p0, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 288
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-nez v2, :cond_0

    .line 290
    const/4 v2, 0x0

    .line 296
    :goto_0
    return v2

    .line 293
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 294
    .local v0, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 296
    .local v1, "diff":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitCount()I

    move-result v2

    goto :goto_0
.end method

.method public static getWNafPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .locals 2
    .param p0, "p"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 301
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    const-string v1, "bc_wnaf"

    invoke-virtual {v0, p0, v1}, Lorg/spongycastle/math/ec/ECCurve;->getPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/spongycastle/math/ec/PreCompInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getWNafPreCompInfo(Lorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .locals 1
    .param p0, "preCompInfo"    # Lorg/spongycastle/math/ec/PreCompInfo;

    .prologue
    .line 306
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/math/ec/WNafPreCompInfo;

    if-eqz v0, :cond_0

    .line 308
    check-cast p0, Lorg/spongycastle/math/ec/WNafPreCompInfo;

    .line 311
    .end local p0    # "preCompInfo":Lorg/spongycastle/math/ec/PreCompInfo;
    :goto_0
    return-object p0

    .restart local p0    # "preCompInfo":Lorg/spongycastle/math/ec/PreCompInfo;
    :cond_0
    new-instance p0, Lorg/spongycastle/math/ec/WNafPreCompInfo;

    .end local p0    # "preCompInfo":Lorg/spongycastle/math/ec/PreCompInfo;
    invoke-direct {p0}, Lorg/spongycastle/math/ec/WNafPreCompInfo;-><init>()V

    goto :goto_0
.end method

.method public static getWindowSize(I)I
    .locals 1
    .param p0, "bits"    # I

    .prologue
    .line 322
    sget-object v0, Lorg/spongycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/WNafUtil;->getWindowSize(I[I)I

    move-result v0

    return v0
.end method

.method public static getWindowSize(I[I)I
    .locals 2
    .param p0, "bits"    # I
    .param p1, "windowSizeCutoffs"    # [I

    .prologue
    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "w":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 337
    aget v1, p1, v0

    if-ge p0, v1, :cond_1

    .line 342
    :cond_0
    add-int/lit8 v1, v0, 0x2

    return v1

    .line 335
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static mapPointWithPrecomp(Lorg/spongycastle/math/ec/ECPoint;IZLorg/spongycastle/math/ec/ECPointMap;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 11
    .param p0, "p"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "width"    # I
    .param p2, "includeNegated"    # Z
    .param p3, "pointMap"    # Lorg/spongycastle/math/ec/ECPointMap;

    .prologue
    .line 348
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    .line 349
    .local v0, "c":Lorg/spongycastle/math/ec/ECCurve;
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/ec/WNafUtil;->precompute(Lorg/spongycastle/math/ec/ECPoint;IZ)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v8

    .line 351
    .local v8, "wnafPreCompP":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    invoke-interface {p3, p0}, Lorg/spongycastle/math/ec/ECPointMap;->map(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    .line 352
    .local v5, "q":Lorg/spongycastle/math/ec/ECPoint;
    const-string v10, "bc_wnaf"

    invoke-virtual {v0, v5, v10}, Lorg/spongycastle/math/ec/ECCurve;->getPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/spongycastle/math/ec/PreCompInfo;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v9

    .line 354
    .local v9, "wnafPreCompQ":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getTwice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 355
    .local v6, "twiceP":Lorg/spongycastle/math/ec/ECPoint;
    if-eqz v6, :cond_0

    .line 357
    invoke-interface {p3, v6}, Lorg/spongycastle/math/ec/ECPointMap;->map(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    .line 358
    .local v7, "twiceQ":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v9, v7}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->setTwice(Lorg/spongycastle/math/ec/ECPoint;)V

    .line 361
    .end local v7    # "twiceQ":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 362
    .local v3, "preCompP":[Lorg/spongycastle/math/ec/ECPoint;
    array-length v10, v3

    new-array v4, v10, [Lorg/spongycastle/math/ec/ECPoint;

    .line 363
    .local v4, "preCompQ":[Lorg/spongycastle/math/ec/ECPoint;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v10, v3

    if-ge v1, v10, :cond_1

    .line 365
    aget-object v10, v3, v1

    invoke-interface {p3, v10}, Lorg/spongycastle/math/ec/ECPointMap;->map(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    aput-object v10, v4, v1

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    :cond_1
    invoke-virtual {v9, v4}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->setPreComp([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 369
    if-eqz p2, :cond_3

    .line 371
    array-length v10, v4

    new-array v2, v10, [Lorg/spongycastle/math/ec/ECPoint;

    .line 372
    .local v2, "preCompNegQ":[Lorg/spongycastle/math/ec/ECPoint;
    const/4 v1, 0x0

    :goto_1
    array-length v10, v2

    if-ge v1, v10, :cond_2

    .line 374
    aget-object v10, v4, v1

    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECPoint;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    aput-object v10, v2, v1

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 376
    :cond_2
    invoke-virtual {v9, v2}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 379
    .end local v2    # "preCompNegQ":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_3
    const-string v10, "bc_wnaf"

    invoke-virtual {v0, v5, v10, v9}, Lorg/spongycastle/math/ec/ECCurve;->setPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/spongycastle/math/ec/PreCompInfo;)V

    .line 381
    return-object v5
.end method

.method public static precompute(Lorg/spongycastle/math/ec/ECPoint;IZ)Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .locals 12
    .param p0, "p"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "width"    # I
    .param p2, "includeNegated"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 386
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    .line 387
    .local v0, "c":Lorg/spongycastle/math/ec/ECCurve;
    const-string v9, "bc_wnaf"

    invoke-virtual {v0, p0, v9}, Lorg/spongycastle/math/ec/ECCurve;->getPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/spongycastle/math/ec/PreCompInfo;

    move-result-object v9

    invoke-static {v9}, Lorg/spongycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v8

    .line 389
    .local v8, "wnafPreCompInfo":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 390
    .local v3, "preComp":[Lorg/spongycastle/math/ec/ECPoint;
    if-nez v3, :cond_0

    .line 392
    new-array v3, v11, [Lorg/spongycastle/math/ec/ECPoint;

    .end local v3    # "preComp":[Lorg/spongycastle/math/ec/ECPoint;
    aput-object p0, v3, v10

    .line 395
    .restart local v3    # "preComp":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    array-length v4, v3

    .line 396
    .local v4, "preCompLen":I
    add-int/lit8 v9, p1, -0x2

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    shl-int v6, v11, v9

    .line 398
    .local v6, "reqPreCompLen":I
    if-ge v4, v6, :cond_2

    .line 400
    invoke-static {v3, v6}, Lorg/spongycastle/math/ec/WNafUtil;->resizeTable([Lorg/spongycastle/math/ec/ECPoint;I)[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 401
    const/4 v9, 0x2

    if-ne v6, v9, :cond_4

    .line 403
    aget-object v9, v3, v10

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECPoint;->threeTimes()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    aput-object v9, v3, v11

    .line 427
    :cond_1
    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECCurve;->normalizeAll([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 430
    :cond_2
    invoke-virtual {v8, v3}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->setPreComp([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 432
    if-eqz p2, :cond_8

    .line 434
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    .line 437
    .local v5, "preCompNeg":[Lorg/spongycastle/math/ec/ECPoint;
    if-nez v5, :cond_6

    .line 439
    const/4 v2, 0x0

    .line 440
    .local v2, "pos":I
    new-array v5, v6, [Lorg/spongycastle/math/ec/ECPoint;

    .line 451
    :cond_3
    :goto_0
    if-ge v2, v6, :cond_7

    .line 453
    aget-object v9, v3, v2

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECPoint;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    aput-object v9, v5, v2

    .line 454
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    .end local v2    # "pos":I
    .end local v5    # "preCompNeg":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_4
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getTwice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    .line 408
    .local v7, "twiceP":Lorg/spongycastle/math/ec/ECPoint;
    if-nez v7, :cond_5

    .line 410
    aget-object v9, v3, v10

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECPoint;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    .line 411
    invoke-virtual {v8, v7}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->setTwice(Lorg/spongycastle/math/ec/ECPoint;)V

    .line 414
    :cond_5
    move v1, v4

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 420
    add-int/lit8 v9, v1, -0x1

    aget-object v9, v3, v9

    invoke-virtual {v7, v9}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    aput-object v9, v3, v1

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 444
    .end local v1    # "i":I
    .end local v7    # "twiceP":Lorg/spongycastle/math/ec/ECPoint;
    .restart local v5    # "preCompNeg":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_6
    array-length v2, v5

    .line 445
    .restart local v2    # "pos":I
    if-ge v2, v6, :cond_3

    .line 447
    invoke-static {v5, v6}, Lorg/spongycastle/math/ec/WNafUtil;->resizeTable([Lorg/spongycastle/math/ec/ECPoint;I)[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    goto :goto_0

    .line 457
    :cond_7
    invoke-virtual {v8, v5}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 460
    .end local v2    # "pos":I
    .end local v5    # "preCompNeg":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_8
    const-string v9, "bc_wnaf"

    invoke-virtual {v0, p0, v9, v8}, Lorg/spongycastle/math/ec/ECCurve;->setPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/spongycastle/math/ec/PreCompInfo;)V

    .line 462
    return-object v8
.end method

.method private static resizeTable([Lorg/spongycastle/math/ec/ECPoint;I)[Lorg/spongycastle/math/ec/ECPoint;
    .locals 3
    .param p0, "a"    # [Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 481
    new-array v0, p1, [Lorg/spongycastle/math/ec/ECPoint;

    .line 482
    .local v0, "result":[Lorg/spongycastle/math/ec/ECPoint;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 483
    return-object v0
.end method

.method private static trim([BI)[B
    .locals 3
    .param p0, "a"    # [B
    .param p1, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 467
    new-array v0, p1, [B

    .line 468
    .local v0, "result":[B
    array-length v1, v0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    return-object v0
.end method

.method private static trim([II)[I
    .locals 3
    .param p0, "a"    # [I
    .param p1, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 474
    new-array v0, p1, [I

    .line 475
    .local v0, "result":[I
    array-length v1, v0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    return-object v0
.end method
