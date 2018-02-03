.class public Lorg/spongycastle/crypto/digests/SHA3Digest;
.super Ljava/lang/Object;
.source "SHA3Digest.java"

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;


# static fields
.field private static KeccakRhoOffsets:[I

.field private static KeccakRoundConstants:[J


# instance fields
.field C:[J

.field private bitsAvailableForSqueezing:I

.field private bitsInQueue:I

.field chiC:[J

.field private chunk:[B

.field private dataQueue:[B

.field private fixedOutputLength:I

.field private oneByte:[B

.field private rate:I

.field private squeezing:Z

.field private state:[B

.field tempA:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lorg/spongycastle/crypto/digests/SHA3Digest;->keccakInitializeRoundConstants()[J

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->KeccakRoundConstants:[J

    .line 16
    invoke-static {}, Lorg/spongycastle/crypto/digests/SHA3Digest;->keccakInitializeRhoOffsets()[I

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->KeccakRhoOffsets:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/16 v0, 0xc8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->state:[B

    .line 78
    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    .line 460
    new-array v0, v1, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->C:[J

    .line 494
    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->tempA:[J

    .line 509
    new-array v0, v1, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->chiC:[J

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->init(I)V

    .line 98
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "bitLength"    # I

    .prologue
    const/4 v1, 0x5

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/16 v0, 0xc8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->state:[B

    .line 78
    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    .line 460
    new-array v0, v1, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->C:[J

    .line 494
    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->tempA:[J

    .line 509
    new-array v0, v1, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->chiC:[J

    .line 102
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->init(I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/SHA3Digest;)V
    .locals 4
    .param p1, "source"    # Lorg/spongycastle/crypto/digests/SHA3Digest;

    .prologue
    const/4 v1, 0x5

    const/4 v3, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/16 v0, 0xc8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->state:[B

    .line 78
    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    .line 460
    new-array v0, v1, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->C:[J

    .line 494
    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->tempA:[J

    .line 509
    new-array v0, v1, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->chiC:[J

    .line 106
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SHA3Digest;->state:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->state:[B

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/SHA3Digest;->state:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    .line 109
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    .line 110
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA3Digest;->fixedOutputLength:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->fixedOutputLength:I

    .line 111
    iget-boolean v0, p1, Lorg/spongycastle/crypto/digests/SHA3Digest;->squeezing:Z

    iput-boolean v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->squeezing:Z

    .line 112
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    .line 113
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SHA3Digest;->chunk:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->chunk:[B

    .line 114
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SHA3Digest;->oneByte:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->oneByte:[B

    .line 115
    return-void
.end method

.method private KeccakAbsorb([B[BI)V
    .locals 0
    .param p1, "byteState"    # [B
    .param p2, "data"    # [B
    .param p3, "dataInBytes"    # I

    .prologue
    .line 533
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/digests/SHA3Digest;->keccakPermutationAfterXor([B[BI)V

    .line 534
    return-void
.end method

.method private KeccakExtract([B[BI)V
    .locals 2
    .param p1, "byteState"    # [B
    .param p2, "data"    # [B
    .param p3, "laneCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 545
    mul-int/lit8 v0, p3, 0x8

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 546
    return-void
.end method

.method private KeccakExtract1024bits([B[B)V
    .locals 2
    .param p1, "byteState"    # [B
    .param p2, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 539
    const/16 v0, 0x80

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    return-void
.end method

.method private static LFSR86540([B)Z
    .locals 3
    .param p0, "LFSR"    # [B

    .prologue
    const/4 v1, 0x0

    .line 44
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 45
    .local v0, "result":Z
    :goto_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    .line 47
    aget-byte v2, p0, v1

    shl-int/lit8 v2, v2, 0x1

    xor-int/lit8 v2, v2, 0x71

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 54
    :goto_1
    return v0

    .end local v0    # "result":Z
    :cond_0
    move v0, v1

    .line 44
    goto :goto_0

    .line 51
    .restart local v0    # "result":Z
    :cond_1
    aget-byte v2, p0, v1

    shl-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    goto :goto_1
.end method

.method private absorb([BIJ)V
    .locals 17
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "databitlen"    # J

    .prologue
    .line 241
    move-object/from16 v0, p0

    iget v9, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    rem-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_0

    .line 243
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v12, "attempt to absorb with odd length queue."

    invoke-direct {v9, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 245
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->squeezing:Z

    if-eqz v9, :cond_1

    .line 247
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v12, "attempt to absorb while squeezing."

    invoke-direct {v9, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 250
    :cond_1
    const-wide/16 v2, 0x0

    .line 251
    .local v2, "i":J
    :cond_2
    :goto_0
    cmp-long v9, v2, p3

    if-gez v9, :cond_7

    .line 253
    move-object/from16 v0, p0

    iget v9, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    if-nez v9, :cond_4

    move-object/from16 v0, p0

    iget v9, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    int-to-long v12, v9

    cmp-long v9, p3, v12

    if-ltz v9, :cond_4

    move-object/from16 v0, p0

    iget v9, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    int-to-long v12, v9

    sub-long v12, p3, v12

    cmp-long v9, v2, v12

    if-gtz v9, :cond_4

    .line 255
    sub-long v12, p3, v2

    move-object/from16 v0, p0

    iget v9, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    int-to-long v14, v9

    div-long v10, v12, v14

    .line 257
    .local v10, "wholeBlocks":J
    const-wide/16 v4, 0x0

    .local v4, "j":J
    :goto_1
    cmp-long v9, v4, v10

    if-gez v9, :cond_3

    .line 259
    move/from16 v0, p2

    int-to-long v12, v0

    const-wide/16 v14, 0x8

    div-long v14, v2, v14

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->chunk:[B

    array-length v9, v9

    int-to-long v14, v9

    mul-long/2addr v14, v4

    add-long/2addr v12, v14

    long-to-int v9, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->chunk:[B

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->chunk:[B

    array-length v14, v14

    move-object/from16 v0, p1

    invoke-static {v0, v9, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->state:[B

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->chunk:[B

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->chunk:[B

    array-length v13, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12, v13}, Lorg/spongycastle/crypto/digests/SHA3Digest;->KeccakAbsorb([B[BI)V

    .line 257
    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    goto :goto_1

    .line 266
    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    int-to-long v12, v9

    mul-long/2addr v12, v10

    add-long/2addr v2, v12

    goto :goto_0

    .line 270
    .end local v4    # "j":J
    .end local v10    # "wholeBlocks":J
    :cond_4
    sub-long v12, p3, v2

    long-to-int v7, v12

    .line 271
    .local v7, "partialBlock":I
    move-object/from16 v0, p0

    iget v9, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    add-int/2addr v9, v7

    move-object/from16 v0, p0

    iget v12, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    if-le v9, v12, :cond_5

    .line 273
    move-object/from16 v0, p0

    iget v9, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    sub-int v7, v9, v12

    .line 275
    :cond_5
    rem-int/lit8 v8, v7, 0x8

    .line 276
    .local v8, "partialByte":I
    sub-int/2addr v7, v8

    .line 277
    const-wide/16 v12, 0x8

    div-long v12, v2, v12

    long-to-int v9, v12

    add-int v9, v9, p2

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    move-object/from16 v0, p0

    iget v13, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    div-int/lit8 v13, v13, 0x8

    div-int/lit8 v14, v7, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v9, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    move-object/from16 v0, p0

    iget v9, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    add-int/2addr v9, v7

    move-object/from16 v0, p0

    iput v9, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    .line 280
    int-to-long v12, v7

    add-long/2addr v2, v12

    .line 281
    move-object/from16 v0, p0

    iget v9, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    if-ne v9, v12, :cond_6

    .line 283
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->absorbQueue()V

    .line 285
    :cond_6
    if-lez v8, :cond_2

    .line 287
    const/4 v9, 0x1

    shl-int/2addr v9, v8

    add-int/lit8 v6, v9, -0x1

    .line 288
    .local v6, "mask":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    move-object/from16 v0, p0

    iget v12, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    div-int/lit8 v12, v12, 0x8

    const-wide/16 v14, 0x8

    div-long v14, v2, v14

    long-to-int v13, v14

    add-int v13, v13, p2

    aget-byte v13, p1, v13

    and-int/2addr v13, v6

    int-to-byte v13, v13

    aput-byte v13, v9, v12

    .line 289
    move-object/from16 v0, p0

    iget v9, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    add-int/2addr v9, v8

    move-object/from16 v0, p0

    iput v9, v0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    .line 290
    int-to-long v12, v8

    add-long/2addr v2, v12

    goto/16 :goto_0

    .line 294
    .end local v6    # "mask":I
    .end local v7    # "partialBlock":I
    .end local v8    # "partialByte":I
    :cond_7
    return-void
.end method

.method private absorbQueue()V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->state:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    iget v2, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    div-int/lit8 v2, v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/SHA3Digest;->KeccakAbsorb([B[BI)V

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    .line 235
    return-void
.end method

.method private chi([J)V
    .locals 11
    .param p1, "A"    # [J

    .prologue
    const/4 v10, 0x5

    .line 513
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    if-ge v1, v10, :cond_2

    .line 515
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_1
    if-ge v0, v10, :cond_0

    .line 517
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->chiC:[J

    mul-int/lit8 v3, v1, 0x5

    add-int/2addr v3, v0

    aget-wide v4, p1, v3

    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x5

    mul-int/lit8 v6, v1, 0x5

    add-int/2addr v3, v6

    aget-wide v6, p1, v3

    const-wide/16 v8, -0x1

    xor-long/2addr v6, v8

    add-int/lit8 v3, v0, 0x2

    rem-int/lit8 v3, v3, 0x5

    mul-int/lit8 v8, v1, 0x5

    add-int/2addr v3, v8

    aget-wide v8, p1, v3

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 519
    :cond_0
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v10, :cond_1

    .line 521
    mul-int/lit8 v2, v1, 0x5

    add-int/2addr v2, v0

    iget-object v3, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->chiC:[J

    aget-wide v4, v3, v0

    aput-wide v4, p1, v2

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 513
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    .end local v0    # "x":I
    :cond_2
    return-void
.end method

.method private clearDataQueueSection(II)V
    .locals 3
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 89
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-eq v0, v1, :cond_0

    .line 91
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method private doUpdate([BIJ)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "databitlen"    # J

    .prologue
    const-wide/16 v6, 0x8

    .line 190
    rem-long v2, p3, v6

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 192
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/digests/SHA3Digest;->absorb([BIJ)V

    .line 203
    :goto_0
    return-void

    .line 196
    :cond_0
    rem-long v2, p3, v6

    sub-long v2, p3, v2

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/spongycastle/crypto/digests/SHA3Digest;->absorb([BIJ)V

    .line 198
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 200
    .local v0, "lastByte":[B
    const/4 v1, 0x0

    div-long v2, p3, v6

    long-to-int v2, v2

    add-int/2addr v2, p2

    aget-byte v2, p1, v2

    rem-long v4, p3, v6

    sub-long v4, v6, v4

    long-to-int v3, v4

    shr-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 201
    rem-long v2, p3, v6

    invoke-direct {p0, v0, p2, v2, v3}, Lorg/spongycastle/crypto/digests/SHA3Digest;->absorb([BIJ)V

    goto :goto_0
.end method

.method private fromBytesToWords([J[B)V
    .locals 10
    .param p1, "stateAsWords"    # [J
    .param p2, "state"    # [B

    .prologue
    .line 383
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x19

    if-ge v0, v3, :cond_1

    .line 385
    const-wide/16 v4, 0x0

    aput-wide v4, p1, v0

    .line 386
    mul-int/lit8 v1, v0, 0x8

    .line 387
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 389
    aget-wide v4, p1, v0

    add-int v3, v1, v2

    aget-byte v3, p2, v3

    int-to-long v6, v3

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    mul-int/lit8 v3, v2, 0x8

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    aput-wide v4, p1, v0

    .line 387
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 383
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    .end local v1    # "index":I
    .end local v2    # "j":I
    :cond_1
    return-void
.end method

.method private fromWordsToBytes([B[J)V
    .locals 8
    .param p1, "state"    # [B
    .param p2, "stateAsWords"    # [J

    .prologue
    .line 396
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x19

    if-ge v0, v3, :cond_1

    .line 398
    mul-int/lit8 v1, v0, 0x8

    .line 399
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 401
    add-int v3, v1, v2

    aget-wide v4, p2, v0

    mul-int/lit8 v6, v2, 0x8

    ushr-long/2addr v4, v6

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 399
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 396
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    .end local v1    # "index":I
    .end local v2    # "j":I
    :cond_1
    return-void
.end method

.method private init(I)V
    .locals 2
    .param p1, "bitLength"    # I

    .prologue
    const/16 v1, 0x400

    const/16 v0, 0x240

    .line 165
    sparse-switch p1, :sswitch_data_0

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength must be one of 224, 256, 384, or 512."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :sswitch_0
    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->initSponge(II)V

    .line 186
    :goto_0
    return-void

    .line 172
    :sswitch_1
    const/16 v0, 0x480

    const/16 v1, 0x1c0

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->initSponge(II)V

    goto :goto_0

    .line 175
    :sswitch_2
    const/16 v0, 0x440

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->initSponge(II)V

    goto :goto_0

    .line 178
    :sswitch_3
    const/16 v0, 0x340

    const/16 v1, 0x300

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->initSponge(II)V

    goto :goto_0

    .line 181
    :sswitch_4
    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->initSponge(II)V

    goto :goto_0

    .line 165
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xe0 -> :sswitch_1
        0x100 -> :sswitch_2
        0x120 -> :sswitch_0
        0x180 -> :sswitch_3
        0x200 -> :sswitch_4
    .end sparse-switch
.end method

.method private initSponge(II)V
    .locals 3
    .param p1, "rate"    # I
    .param p2, "capacity"    # I

    .prologue
    const/16 v2, 0x640

    const/4 v1, 0x0

    .line 207
    add-int v0, p1, p2

    if-eq v0, v2, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "rate + capacity != 1600"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    if-lez p1, :cond_1

    if-ge p1, v2, :cond_1

    rem-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_2

    .line 213
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid rate value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_2
    iput p1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    .line 219
    iput v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->fixedOutputLength:I

    .line 220
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->state:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 221
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 222
    iput v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    .line 223
    iput-boolean v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->squeezing:Z

    .line 224
    iput v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    .line 225
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->fixedOutputLength:I

    .line 226
    div-int/lit8 v0, p1, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->chunk:[B

    .line 227
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->oneByte:[B

    .line 228
    return-void
.end method

.method private iota([JI)V
    .locals 6
    .param p1, "A"    # [J
    .param p2, "indexRound"    # I

    .prologue
    .line 528
    const/4 v0, 0x0

    aget-wide v2, p1, v0

    sget-object v1, Lorg/spongycastle/crypto/digests/SHA3Digest;->KeccakRoundConstants:[J

    aget-wide v4, v1, p2

    xor-long/2addr v2, v4

    aput-wide v2, p1, v0

    .line 529
    return-void
.end method

.method private static keccakInitializeRhoOffsets()[I
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 59
    const/16 v6, 0x19

    new-array v0, v6, [I

    .line 62
    .local v0, "keccakRhoOffsets":[I
    aput v7, v0, v7

    .line 63
    const/4 v4, 0x1

    .line 64
    .local v4, "x":I
    const/4 v5, 0x0

    .line 65
    .local v5, "y":I
    const/4 v3, 0x0

    .local v3, "t":I
    :goto_0
    const/16 v6, 0x18

    if-ge v3, v6, :cond_0

    .line 67
    rem-int/lit8 v6, v4, 0x5

    rem-int/lit8 v7, v5, 0x5

    mul-int/lit8 v7, v7, 0x5

    add-int/2addr v6, v7

    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v3, 0x2

    mul-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    rem-int/lit8 v7, v7, 0x40

    aput v7, v0, v6

    .line 68
    mul-int/lit8 v6, v4, 0x0

    mul-int/lit8 v7, v5, 0x1

    add-int/2addr v6, v7

    rem-int/lit8 v1, v6, 0x5

    .line 69
    .local v1, "newX":I
    mul-int/lit8 v6, v4, 0x2

    mul-int/lit8 v7, v5, 0x3

    add-int/2addr v6, v7

    rem-int/lit8 v2, v6, 0x5

    .line 70
    .local v2, "newY":I
    move v4, v1

    .line 71
    move v5, v2

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "newX":I
    .end local v2    # "newY":I
    :cond_0
    return-object v0
.end method

.method private static keccakInitializeRoundConstants()[J
    .locals 12

    .prologue
    const/16 v11, 0x18

    const/4 v10, 0x1

    .line 20
    new-array v4, v11, [J

    .line 21
    .local v4, "keccakRoundConstants":[J
    new-array v0, v10, [B

    .line 23
    .local v0, "LFSRstate":[B
    const/4 v5, 0x0

    aput-byte v10, v0, v5

    .line 26
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v11, :cond_2

    .line 28
    const-wide/16 v6, 0x0

    aput-wide v6, v4, v2

    .line 29
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/4 v5, 0x7

    if-ge v3, v5, :cond_1

    .line 31
    shl-int v5, v10, v3

    add-int/lit8 v1, v5, -0x1

    .line 32
    .local v1, "bitPosition":I
    invoke-static {v0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->LFSR86540([B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 34
    aget-wide v6, v4, v2

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v1

    xor-long/2addr v6, v8

    aput-wide v6, v4, v2

    .line 29
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 26
    .end local v1    # "bitPosition":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    .end local v3    # "j":I
    :cond_2
    return-object v4
.end method

.method private keccakPermutation([B)V
    .locals 2
    .param p1, "state"    # [B

    .prologue
    .line 408
    array-length v1, p1

    div-int/lit8 v1, v1, 0x8

    new-array v0, v1, [J

    .line 410
    .local v0, "longState":[J
    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->fromBytesToWords([J[B)V

    .line 414
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->keccakPermutationOnWords([J)V

    .line 418
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->fromWordsToBytes([B[J)V

    .line 419
    return-void
.end method

.method private keccakPermutationAfterXor([B[BI)V
    .locals 3
    .param p1, "state"    # [B
    .param p2, "data"    # [B
    .param p3, "dataLengthInBytes"    # I

    .prologue
    .line 425
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 427
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_0
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->keccakPermutation([B)V

    .line 431
    return-void
.end method

.method private keccakPermutationOnWords([J)V
    .locals 2
    .param p1, "state"    # [J

    .prologue
    .line 439
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 443
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->theta([J)V

    .line 446
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->rho([J)V

    .line 449
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->pi([J)V

    .line 452
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->chi([J)V

    .line 455
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->iota([JI)V

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    :cond_0
    return-void
.end method

.method private padAndSwitchToSqueezingPhase()V
    .locals 6

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x1

    .line 298
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    if-ne v0, v1, :cond_0

    .line 300
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    div-int/lit8 v1, v1, 0x8

    aget-byte v2, v0, v1

    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    rem-int/lit8 v3, v3, 0x8

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 301
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->absorbQueue()V

    .line 302
    const/4 v0, 0x0

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    div-int/lit8 v1, v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->clearDataQueueSection(II)V

    .line 309
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x8

    aget-byte v2, v0, v1

    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    add-int/lit8 v3, v3, -0x1

    rem-int/lit8 v3, v3, 0x8

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 310
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->absorbQueue()V

    .line 316
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    if-ne v0, v5, :cond_1

    .line 318
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->state:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->KeccakExtract1024bits([B[B)V

    .line 319
    iput v5, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    .line 330
    :goto_1
    iput-boolean v4, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->squeezing:Z

    .line 331
    return-void

    .line 306
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    div-int/lit8 v1, v1, 0x8

    iget v2, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->clearDataQueueSection(II)V

    .line 307
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    div-int/lit8 v1, v1, 0x8

    aget-byte v2, v0, v1

    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsInQueue:I

    rem-int/lit8 v3, v3, 0x8

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->state:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    iget v2, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    div-int/lit8 v2, v2, 0x40

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/SHA3Digest;->KeccakExtract([B[BI)V

    .line 325
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    goto :goto_1
.end method

.method private pi([J)V
    .locals 7
    .param p1, "A"    # [J

    .prologue
    const/4 v6, 0x5

    const/4 v4, 0x0

    .line 498
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->tempA:[J

    iget-object v3, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->tempA:[J

    array-length v3, v3

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 500
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    if-ge v0, v6, :cond_1

    .line 502
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_1
    if-ge v1, v6, :cond_0

    .line 504
    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v1, 0x3

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x5

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v1

    iget-object v3, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->tempA:[J

    mul-int/lit8 v4, v1, 0x5

    add-int/2addr v4, v0

    aget-wide v4, v3, v4

    aput-wide v4, p1, v2

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 500
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    .end local v1    # "y":I
    :cond_1
    return-void
.end method

.method private rho([J)V
    .locals 9
    .param p1, "A"    # [J

    .prologue
    const/4 v8, 0x5

    .line 484
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    if-ge v1, v8, :cond_2

    .line 486
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_1
    if-ge v2, v8, :cond_1

    .line 488
    mul-int/lit8 v3, v2, 0x5

    add-int v0, v1, v3

    .line 489
    .local v0, "index":I
    sget-object v3, Lorg/spongycastle/crypto/digests/SHA3Digest;->KeccakRhoOffsets:[I

    aget v3, v3, v0

    if-eqz v3, :cond_0

    aget-wide v4, p1, v0

    sget-object v3, Lorg/spongycastle/crypto/digests/SHA3Digest;->KeccakRhoOffsets:[I

    aget v3, v3, v0

    shl-long/2addr v4, v3

    aget-wide v6, p1, v0

    sget-object v3, Lorg/spongycastle/crypto/digests/SHA3Digest;->KeccakRhoOffsets:[I

    aget v3, v3, v0

    rsub-int/lit8 v3, v3, 0x40

    ushr-long/2addr v6, v3

    xor-long/2addr v4, v6

    :goto_2
    aput-wide v4, p1, v0

    .line 486
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 489
    :cond_0
    aget-wide v4, p1, v0

    goto :goto_2

    .line 484
    .end local v0    # "index":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 492
    .end local v2    # "y":I
    :cond_2
    return-void
.end method

.method private squeeze([BIJ)V
    .locals 9
    .param p1, "output"    # [B
    .param p2, "offset"    # I
    .param p3, "outputLength"    # J

    .prologue
    .line 338
    iget-boolean v3, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->squeezing:Z

    if-nez v3, :cond_0

    .line 340
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->padAndSwitchToSqueezingPhase()V

    .line 342
    :cond_0
    const-wide/16 v4, 0x8

    rem-long v4, p3, v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 344
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "outputLength not a multiple of 8"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 347
    :cond_1
    const-wide/16 v0, 0x0

    .line 348
    .local v0, "i":J
    :goto_0
    cmp-long v3, v0, p3

    if-gez v3, :cond_5

    .line 350
    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    if-nez v3, :cond_2

    .line 352
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->state:[B

    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/digests/SHA3Digest;->keccakPermutation([B)V

    .line 354
    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    const/16 v4, 0x400

    if-ne v3, v4, :cond_4

    .line 356
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->state:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    invoke-direct {p0, v3, v4}, Lorg/spongycastle/crypto/digests/SHA3Digest;->KeccakExtract1024bits([B[B)V

    .line 357
    const/16 v3, 0x400

    iput v3, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    .line 369
    :cond_2
    :goto_1
    iget v2, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    .line 370
    .local v2, "partialBlock":I
    int-to-long v4, v2

    sub-long v6, p3, v0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 372
    sub-long v4, p3, v0

    long-to-int v2, v4

    .line 375
    :cond_3
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    iget v4, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    iget v5, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x8

    const-wide/16 v6, 0x8

    div-long v6, v0, v6

    long-to-int v5, v6

    add-int/2addr v5, p2

    div-int/lit8 v6, v2, 0x8

    invoke-static {v3, v4, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    .line 377
    int-to-long v4, v2

    add-long/2addr v0, v4

    goto :goto_0

    .line 362
    .end local v2    # "partialBlock":I
    :cond_4
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->state:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->dataQueue:[B

    iget v5, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    div-int/lit8 v5, v5, 0x40

    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/digests/SHA3Digest;->KeccakExtract([B[BI)V

    .line 363
    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    iput v3, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->bitsAvailableForSqueezing:I

    goto :goto_1

    .line 379
    :cond_5
    return-void
.end method

.method private theta([J)V
    .locals 11
    .param p1, "A"    # [J

    .prologue
    const/4 v10, 0x5

    .line 464
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_0
    if-ge v2, v10, :cond_1

    .line 466
    iget-object v4, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->C:[J

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v2

    .line 467
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_1
    if-ge v3, v10, :cond_0

    .line 469
    iget-object v4, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->C:[J

    aget-wide v6, v4, v2

    mul-int/lit8 v5, v3, 0x5

    add-int/2addr v5, v2

    aget-wide v8, p1, v5

    xor-long/2addr v6, v8

    aput-wide v6, v4, v2

    .line 467
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 464
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    .end local v3    # "y":I
    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v10, :cond_3

    .line 474
    iget-object v4, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->C:[J

    add-int/lit8 v5, v2, 0x1

    rem-int/lit8 v5, v5, 0x5

    aget-wide v4, v4, v5

    const/4 v6, 0x1

    shl-long/2addr v4, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->C:[J

    add-int/lit8 v7, v2, 0x1

    rem-int/lit8 v7, v7, 0x5

    aget-wide v6, v6, v7

    const/16 v8, 0x3f

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->C:[J

    add-int/lit8 v7, v2, 0x4

    rem-int/lit8 v7, v7, 0x5

    aget-wide v6, v6, v7

    xor-long v0, v4, v6

    .line 475
    .local v0, "dX":J
    const/4 v3, 0x0

    .restart local v3    # "y":I
    :goto_3
    if-ge v3, v10, :cond_2

    .line 477
    mul-int/lit8 v4, v3, 0x5

    add-int/2addr v4, v2

    aget-wide v6, p1, v4

    xor-long/2addr v6, v0

    aput-wide v6, p1, v4

    .line 475
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 472
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 480
    .end local v0    # "dX":J
    .end local v3    # "y":I
    :cond_3
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 141
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->fixedOutputLength:I

    int-to-long v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->squeeze([BIJ)V

    .line 143
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->reset()V

    .line 145
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->getDigestSize()I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHA3-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->fixedOutputLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->rate:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->fixedOutputLength:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->fixedOutputLength:I

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/SHA3Digest;->init(I)V

    .line 151
    return-void
.end method

.method public update(B)V
    .locals 4
    .param p1, "in"    # B

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->oneByte:[B

    aput-byte p1, v0, v1

    .line 131
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SHA3Digest;->oneByte:[B

    const-wide/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA3Digest;->doUpdate([BIJ)V

    .line 132
    return-void
.end method

.method public update([BII)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 136
    int-to-long v0, p3

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->doUpdate([BIJ)V

    .line 137
    return-void
.end method
