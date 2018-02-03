.class public Lorg/spongycastle/crypto/modes/GCMBlockCipher;
.super Ljava/lang/Object;
.source "GCMBlockCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/modes/AEADBlockCipher;


# instance fields
.field private H:[B

.field private J0:[B

.field private S:[B

.field private S_at:[B

.field private S_atPre:[B

.field private atBlock:[B

.field private atBlockPos:I

.field private atLength:J

.field private atLengthPre:J

.field private bufBlock:[B

.field private bufOff:I

.field private cipher:Lorg/spongycastle/crypto/BlockCipher;

.field private counter:[B

.field private exp:Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;

.field private forEncryption:Z

.field private initialAssociatedText:[B

.field private macBlock:[B

.field private macSize:I

.field private multiplier:Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

.field private nonce:[B

.field private totalLength:J


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "c"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;)V
    .locals 2
    .param p1, "c"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p2, "m"    # Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    if-nez p2, :cond_1

    .line 68
    new-instance p2, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;

    .end local p2    # "m":Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;
    invoke-direct {p2}, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;-><init>()V

    .line 71
    .restart local p2    # "m":Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 72
    iput-object p2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->multiplier:Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

    .line 73
    return-void
.end method

.method private gCTRBlock([B[BI)V
    .locals 6
    .param p1, "block"    # [B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    .prologue
    .line 474
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->getNextCounterBlock()[B

    move-result-object v0

    .line 476
    .local v0, "tmp":[B
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->xor([B[B)V

    .line 477
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, p2, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    iget-boolean v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_0

    .end local v0    # "tmp":[B
    :goto_0
    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 481
    iget-wide v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 482
    return-void

    .restart local v0    # "tmp":[B
    :cond_0
    move-object v0, p1

    .line 479
    goto :goto_0
.end method

.method private gCTRPartial([BII[BI)V
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .prologue
    const/4 v3, 0x0

    .line 486
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->getNextCounterBlock()[B

    move-result-object v0

    .line 488
    .local v0, "tmp":[B
    invoke-static {v0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->xor([B[BII)V

    .line 489
    invoke-static {v0, v3, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    iget-boolean v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_0

    .end local v0    # "tmp":[B
    :goto_0
    invoke-direct {p0, v1, v0, v3, p3}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    .line 493
    iget-wide v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 494
    return-void

    .restart local v0    # "tmp":[B
    :cond_0
    move-object v0, p1

    .line 491
    goto :goto_0
.end method

.method private gHASH([B[BI)V
    .locals 4
    .param p1, "Y"    # [B
    .param p2, "b"    # [B
    .param p3, "len"    # I

    .prologue
    .line 498
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 500
    sub-int v2, p3, v1

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 501
    .local v0, "num":I
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    .line 498
    add-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 503
    .end local v0    # "num":I
    :cond_0
    return-void
.end method

.method private gHASHBlock([B[B)V
    .locals 1
    .param p1, "Y"    # [B
    .param p2, "b"    # [B

    .prologue
    .line 507
    invoke-static {p1, p2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->xor([B[B)V

    .line 508
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->multiplier:Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    .line 509
    return-void
.end method

.method private gHASHPartial([B[BII)V
    .locals 1
    .param p1, "Y"    # [B
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I

    .prologue
    .line 513
    invoke-static {p1, p2, p3, p4}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->xor([B[BII)V

    .line 514
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->multiplier:Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    .line 515
    return-void
.end method

.method private getNextCounterBlock()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 519
    const/16 v1, 0xf

    .local v1, "i":I
    :goto_0
    const/16 v3, 0xc

    if-lt v1, v3, :cond_0

    .line 521
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->counter:[B

    aget-byte v3, v3, v1

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v0, v3

    .line 522
    .local v0, "b":B
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->counter:[B

    aput-byte v0, v3, v1

    .line 524
    if-eqz v0, :cond_1

    .line 530
    .end local v0    # "b":B
    :cond_0
    const/16 v3, 0x10

    new-array v2, v3, [B

    .line 532
    .local v2, "tmp":[B
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->counter:[B

    invoke-interface {v3, v4, v5, v2, v5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 533
    return-object v2

    .line 519
    .end local v2    # "tmp":[B
    .restart local v0    # "b":B
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private initCipher()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/16 v5, 0x10

    const/4 v4, 0x0

    .line 247
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 249
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 254
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    if-lez v0, :cond_1

    .line 256
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    invoke-direct {p0, v0, v1, v4, v2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    .line 257
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    iget v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 260
    :cond_1
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    .line 262
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    :cond_2
    return-void
.end method

.method private static multiply([B[B)V
    .locals 10
    .param p0, "block"    # [B
    .param p1, "val"    # [B

    .prologue
    const/4 v6, 0x1

    const/16 v9, 0x10

    const/4 v7, 0x0

    .line 538
    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v5

    .line 539
    .local v5, "tmp":[B
    new-array v1, v9, [B

    .line 541
    .local v1, "c":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v9, :cond_4

    .line 543
    aget-byte v0, p1, v2

    .line 544
    .local v0, "bits":B
    const/4 v3, 0x7

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_3

    .line 546
    shl-int v8, v6, v3

    and-int/2addr v8, v0

    if-eqz v8, :cond_0

    .line 548
    invoke-static {v1, v5}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->xor([B[B)V

    .line 551
    :cond_0
    const/16 v8, 0xf

    aget-byte v8, v5, v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    move v4, v6

    .line 552
    .local v4, "lsb":Z
    :goto_2
    invoke-static {v5}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->shiftRight([B)V

    .line 553
    if-eqz v4, :cond_1

    .line 557
    aget-byte v8, v5, v7

    xor-int/lit8 v8, v8, -0x1f

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 544
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v4    # "lsb":Z
    :cond_2
    move v4, v7

    .line 551
    goto :goto_2

    .line 541
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 562
    .end local v0    # "bits":B
    .end local v3    # "j":I
    :cond_4
    invoke-static {v1, v7, p0, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    return-void
.end method

.method private outputBlock([BI)V
    .locals 5
    .param p1, "output"    # [B
    .param p2, "offset"    # I

    .prologue
    const/4 v4, 0x0

    .line 302
    array-length v0, p1

    add-int/lit8 v1, p2, 0x10

    if-ge v0, v1, :cond_0

    .line 304
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 308
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    .line 310
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gCTRBlock([B[BI)V

    .line 311
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_2

    .line 313
    iput v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 320
    :goto_0
    return-void

    .line 317
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    const/16 v1, 0x10

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    iput v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    goto :goto_0
.end method

.method private reset(Z)V
    .locals 6
    .param p1, "clearMac"    # Z

    .prologue
    const-wide/16 v4, 0x0

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 443
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 445
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    .line 446
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    .line 447
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    .line 448
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    .line 449
    iput v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    .line 450
    iput-wide v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 451
    iput-wide v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 452
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->counter:[B

    .line 453
    iput v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 454
    iput-wide v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 456
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-static {v0, v2}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 461
    :cond_0
    if-eqz p1, :cond_1

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 466
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    array-length v1, v1

    invoke-virtual {p0, v0, v2, v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    .line 470
    :cond_2
    return-void
.end method

.method private static shiftRight([B)V
    .locals 4
    .param p0, "block"    # [B

    .prologue
    .line 567
    const/4 v2, 0x0

    .line 568
    .local v2, "i":I
    const/4 v1, 0x0

    .line 571
    .local v1, "bit":I
    :goto_0
    aget-byte v3, p0, v2

    and-int/lit16 v0, v3, 0xff

    .line 572
    .local v0, "b":I
    ushr-int/lit8 v3, v0, 0x1

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 573
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 579
    return-void

    .line 577
    :cond_0
    and-int/lit8 v3, v0, 0x1

    shl-int/lit8 v1, v3, 0x7

    .line 578
    goto :goto_0
.end method

.method private static xor([B[B)V
    .locals 3
    .param p0, "block"    # [B
    .param p1, "val"    # [B

    .prologue
    .line 583
    const/16 v0, 0xf

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 585
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 583
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 587
    :cond_0
    return-void
.end method

.method private static xor([B[BII)V
    .locals 3
    .param p0, "block"    # [B
    .param p1, "val"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 591
    move v0, p3

    .end local p3    # "len":I
    .local v0, "len":I
    :goto_0
    add-int/lit8 p3, v0, -0x1

    .end local v0    # "len":I
    .restart local p3    # "len":I
    if-lez v0, :cond_0

    .line 593
    aget-byte v1, p0, p3

    add-int v2, p2, p3

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p3

    move v0, p3

    .end local p3    # "len":I
    .restart local v0    # "len":I
    goto :goto_0

    .line 595
    .end local v0    # "len":I
    .restart local p3    # "len":I
    :cond_0
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 13
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 325
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 327
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->initCipher()V

    .line 330
    :cond_0
    iget v3, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 331
    .local v3, "extra":I
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-nez v0, :cond_2

    .line 333
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge v3, v0, :cond_1

    .line 335
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "data too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    sub-int/2addr v3, v0

    .line 340
    :cond_2
    if-lez v3, :cond_4

    .line 342
    array-length v0, p1

    add-int v1, p2, v3

    if-ge v0, v1, :cond_3

    .line 344
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_3
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gCTRPartial([BII[BI)V

    .line 349
    :cond_4
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iget v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 351
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    iget-wide v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_8

    .line 361
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    if-lez v0, :cond_5

    .line 363
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    const/4 v2, 0x0

    iget v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    invoke-direct {p0, v0, v1, v2, v4}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gHASHPartial([B[BII)V

    .line 367
    :cond_5
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_6

    .line 369
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->xor([B[B)V

    .line 373
    :cond_6
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v4, 0x8

    mul-long/2addr v0, v4

    const-wide/16 v4, 0x7f

    add-long/2addr v0, v4

    const/4 v2, 0x7

    ushr-long v8, v0, v2

    .line 376
    .local v8, "c":J
    const/16 v0, 0x10

    new-array v6, v0, [B

    .line 377
    .local v6, "H_c":[B
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->exp:Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;

    if-nez v0, :cond_7

    .line 379
    new-instance v0, Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/modes/gcm/Tables1kGCMExponentiator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->exp:Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;

    .line 380
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->exp:Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;->init([B)V

    .line 382
    :cond_7
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->exp:Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;

    invoke-interface {v0, v8, v9, v6}, Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;->exponentiateX(J[B)V

    .line 385
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-static {v0, v6}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->multiply([B[B)V

    .line 388
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->xor([B[B)V

    .line 392
    .end local v6    # "H_c":[B
    .end local v8    # "c":J
    :cond_8
    const/16 v0, 0x10

    new-array v7, v0, [B

    .line 393
    .local v7, "X":[B
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    const-wide/16 v4, 0x8

    mul-long/2addr v0, v4

    const/4 v2, 0x0

    invoke-static {v0, v1, v7, v2}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 394
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    const-wide/16 v4, 0x8

    mul-long/2addr v0, v4

    const/16 v2, 0x8

    invoke-static {v0, v1, v7, v2}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 396
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-direct {p0, v0, v7}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 399
    const/16 v0, 0x10

    new-array v12, v0, [B

    .line 400
    .local v12, "tag":[B
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v12, v4}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 401
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v12, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->xor([B[B)V

    .line 403
    move v11, v3

    .line 406
    .local v11, "resultLen":I
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 407
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    const/4 v2, 0x0

    iget v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v12, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_b

    .line 411
    array-length v0, p1

    add-int v1, p2, v3

    iget v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_9

    .line 413
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_9
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v2, p2

    iget v4, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v0, v1, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v11, v0

    .line 430
    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    .line 432
    return v11

    .line 422
    :cond_b
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v10, v0, [B

    .line 423
    .local v10, "msgMac":[B
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v0, v3, v10, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    invoke-static {v0, v10}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_a

    .line 426
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "mac check in GCM failed"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputSize(I)I
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 194
    iget v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int v0, p1, v1

    .line 196
    .local v0, "totalData":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 198
    iget v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v1, v0

    .line 201
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    sub-int v1, v0, v1

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 206
    iget v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int v0, p1, v1

    .line 207
    .local v0, "totalData":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-nez v1, :cond_1

    .line 209
    iget v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge v0, v1, :cond_0

    .line 211
    const/4 v1, 0x0

    .line 215
    :goto_0
    return v1

    .line 213
    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    sub-int/2addr v0, v1

    .line 215
    :cond_1
    rem-int/lit8 v1, v0, 0x10

    sub-int v1, v0, v1

    goto :goto_0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 10
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 92
    iput-boolean p1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    .line 93
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 97
    instance-of v5, p2, Lorg/spongycastle/crypto/params/AEADParameters;

    if-eqz v5, :cond_3

    move-object v4, p2

    .line 99
    check-cast v4, Lorg/spongycastle/crypto/params/AEADParameters;

    .line 101
    .local v4, "param":Lorg/spongycastle/crypto/params/AEADParameters;
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    .line 102
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    .line 104
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v3

    .line 105
    .local v3, "macSizeBits":I
    const/16 v5, 0x20

    if-lt v3, v5, :cond_0

    const/16 v5, 0x80

    if-gt v3, v5, :cond_0

    rem-int/lit8 v5, v3, 0x8

    if-eqz v5, :cond_1

    .line 107
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid value for MAC size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 110
    :cond_1
    div-int/lit8 v5, v3, 0x8

    iput v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    .line 111
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/AEADParameters;->getKey()Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v2

    .line 127
    .end local v3    # "macSizeBits":I
    .end local v4    # "param":Lorg/spongycastle/crypto/params/AEADParameters;
    .local v2, "keyParam":Lorg/spongycastle/crypto/params/KeyParameter;
    :goto_0
    if-eqz p1, :cond_5

    const/16 v1, 0x10

    .line 128
    .local v1, "bufLength":I
    :goto_1
    new-array v5, v1, [B

    iput-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    .line 130
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v5, v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_6

    .line 132
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "IV must be at least 1 byte"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 113
    .end local v1    # "bufLength":I
    .end local v2    # "keyParam":Lorg/spongycastle/crypto/params/KeyParameter;
    :cond_3
    instance-of v5, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v5, :cond_4

    move-object v4, p2

    .line 115
    check-cast v4, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 117
    .local v4, "param":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    .line 118
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    .line 119
    const/16 v5, 0x10

    iput v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    .line 120
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 121
    .restart local v2    # "keyParam":Lorg/spongycastle/crypto/params/KeyParameter;
    goto :goto_0

    .line 124
    .end local v2    # "keyParam":Lorg/spongycastle/crypto/params/KeyParameter;
    .end local v4    # "param":Lorg/spongycastle/crypto/params/ParametersWithIV;
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "invalid parameters passed to GCM"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 127
    .restart local v2    # "keyParam":Lorg/spongycastle/crypto/params/KeyParameter;
    :cond_5
    iget v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/lit8 v1, v5, 0x10

    goto :goto_1

    .line 139
    .restart local v1    # "bufLength":I
    :cond_6
    if-eqz v2, :cond_9

    .line 141
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v6, 0x1

    invoke-interface {v5, v6, v2}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 143
    const/16 v5, 0x10

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->H:[B

    .line 144
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->H:[B

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->H:[B

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 147
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->multiplier:Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {v5, v6}, Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;->init([B)V

    .line 148
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->exp:Lorg/spongycastle/crypto/modes/gcm/GCMExponentiator;

    .line 155
    :cond_7
    const/16 v5, 0x10

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    .line 157
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v5, v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_a

    .line 159
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v9, v9

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    const/16 v6, 0xf

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    .line 170
    :goto_2
    const/16 v5, 0x10

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S:[B

    .line 171
    const/16 v5, 0x10

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    .line 172
    const/16 v5, 0x10

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_atPre:[B

    .line 173
    const/16 v5, 0x10

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    .line 174
    const/4 v5, 0x0

    iput v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    .line 175
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 176
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLengthPre:J

    .line 177
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v5}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->counter:[B

    .line 178
    const/4 v5, 0x0

    iput v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 179
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 181
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    if-eqz v5, :cond_8

    .line 183
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->initialAssociatedText:[B

    array-length v7, v7

    invoke-virtual {p0, v5, v6, v7}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    .line 185
    :cond_8
    return-void

    .line 150
    :cond_9
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->H:[B

    if-nez v5, :cond_7

    .line 152
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Key must be specified in initial init"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 164
    :cond_a
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v7, v7

    invoke-direct {p0, v5, v6, v7}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gHASH([B[BI)V

    .line 165
    const/16 v5, 0x10

    new-array v0, v5, [B

    .line 166
    .local v0, "X":[B
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v5, v5

    int-to-long v6, v5

    const-wide/16 v8, 0x8

    mul-long/2addr v6, v8

    const/16 v5, 0x8

    invoke-static {v6, v7, v0, v5}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 167
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-direct {p0, v5, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    goto :goto_2
.end method

.method public processAADByte(B)V
    .locals 4
    .param p1, "in"    # B

    .prologue
    .line 220
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    aput-byte p1, v0, v1

    .line 221
    iget v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    .line 226
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 228
    :cond_0
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 232
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 234
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 235
    iget v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 238
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->S_at:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlock:[B

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->gHASHBlock([B[B)V

    .line 239
    const/4 v1, 0x0

    iput v1, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atBlockPos:I

    .line 240
    iget-wide v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->atLength:J

    .line 232
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_1
    return-void
.end method

.method public processBytes([BII[BI)I
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 281
    array-length v2, p1

    add-int v3, p2, p3

    if-ge v2, v3, :cond_0

    .line 283
    new-instance v2, Lorg/spongycastle/crypto/DataLengthException;

    const-string v3, "Input buffer too short"

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 285
    :cond_0
    const/4 v1, 0x0

    .line 287
    .local v1, "resultLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 289
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    .line 290
    iget v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 292
    add-int v2, p5, v1

    invoke-direct {p0, p4, v2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->outputBlock([BI)V

    .line 293
    add-int/lit8 v1, v1, 0x10

    .line 287
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_2
    return v1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    .line 438
    return-void
.end method
