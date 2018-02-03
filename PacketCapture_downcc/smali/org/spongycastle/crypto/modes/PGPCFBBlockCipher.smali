.class public Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;
.super Ljava/lang/Object;
.source "PGPCFBBlockCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# instance fields
.field private FR:[B

.field private FRE:[B

.field private IV:[B

.field private blockSize:I

.field private cipher:Lorg/spongycastle/crypto/BlockCipher;

.field private count:I

.field private forEncryption:Z

.field private inlineIv:Z

.field private tmp:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;Z)V
    .locals 1
    .param p1, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p2, "inlineIv"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 39
    iput-boolean p2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->inlineIv:Z

    .line 41
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    .line 42
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    .line 43
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    .line 44
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    .line 45
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    .line 46
    return-void
.end method

.method private decryptBlock([BI[BI)I
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 431
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 433
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 436
    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    array-length v2, p3

    if-le v1, v2, :cond_1

    .line 438
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 441
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 442
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_2

    .line 444
    add-int v1, p4, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    invoke-direct {p0, v2, v0}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v1

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_3

    .line 449
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    aput-byte v2, v1, v0

    .line 447
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 452
    :cond_3
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    return v1
.end method

.method private decryptBlockWithIV([BI[BI)I
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 298
    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v2, p2

    array-length v3, p1

    if-le v2, v3, :cond_0

    .line 300
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_0
    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v2, p4

    array-length v3, p3

    if-le v2, v3, :cond_1

    .line 305
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :cond_1
    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    if-nez v2, :cond_3

    .line 310
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v2, :cond_2

    .line 312
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aput-byte v3, v2, v0

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_2
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v2, v3, v1, v4, v1}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 317
    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    .line 365
    .end local v0    # "n":I
    :goto_1
    return v1

    .line 321
    :cond_3
    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ne v2, v3, :cond_5

    .line 324
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    invoke-static {p1, p2, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {v2, v5, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x2

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    aget-byte v4, v4, v1

    aput-byte v4, v2, v3

    .line 329
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    aget-byte v4, v4, v6

    aput-byte v4, v2, v3

    .line 331
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v2, v3, v1, v4, v1}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 333
    const/4 v0, 0x0

    .restart local v0    # "n":I
    :goto_2
    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_4

    .line 335
    add-int v2, p4, v0

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    add-int/lit8 v4, v0, 0x2

    aget-byte v3, v3, v4

    invoke-direct {p0, v3, v0}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v3

    aput-byte v3, p3, v2

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 338
    :cond_4
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {v2, v5, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    .line 342
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    .line 344
    .end local v0    # "n":I
    :cond_5
    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_7

    .line 347
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    invoke-static {p1, p2, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    add-int/lit8 v2, p4, 0x0

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    aget-byte v3, v3, v1

    iget v4, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v4, v4, -0x2

    invoke-direct {p0, v3, v4}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v3

    aput-byte v3, p3, v2

    .line 350
    add-int/lit8 v2, p4, 0x1

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    aget-byte v3, v3, v6

    iget v4, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v3, v4}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v3

    aput-byte v3, p3, v2

    .line 352
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v2, v3, v1, v4, v1}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 356
    const/4 v0, 0x0

    .restart local v0    # "n":I
    :goto_3
    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_6

    .line 358
    add-int v2, p4, v0

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    add-int/lit8 v4, v0, 0x2

    aget-byte v3, v3, v4

    invoke-direct {p0, v3, v0}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v3

    aput-byte v3, p3, v2

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 361
    :cond_6
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {v2, v5, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    .end local v0    # "n":I
    :cond_7
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    goto/16 :goto_1
.end method

.method private encryptBlock([BI[BI)I
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 387
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 389
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    array-length v2, p3

    if-le v1, v2, :cond_1

    .line 394
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 397
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 398
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_2

    .line 400
    add-int v1, p4, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    invoke-direct {p0, v2, v0}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v1

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_3

    .line 405
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    add-int v2, p4, v0

    aget-byte v2, p3, v2

    aput-byte v2, v1, v0

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 408
    :cond_3
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    return v1
.end method

.method private encryptBlockWithIV([BI[BI)I
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 218
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 220
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    if-nez v1, :cond_4

    .line 225
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p4

    add-int/lit8 v1, v1, 0x2

    array-length v2, p3

    if-le v1, v2, :cond_1

    .line 227
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 232
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_2

    .line 234
    add-int v1, p4, v0

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    aget-byte v2, v2, v0

    invoke-direct {p0, v2, v0}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v1

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    invoke-static {p3, p4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 241
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x2

    aget-byte v2, v2, v3

    invoke-direct {p0, v2, v4}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v1

    .line 242
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v1

    .line 244
    add-int/lit8 v1, p4, 0x2

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    invoke-static {p3, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 248
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_3

    .line 250
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    invoke-direct {p0, v2, v0}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v1

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 253
    :cond_3
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    invoke-static {p3, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    .line 257
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    .line 276
    .end local v0    # "n":I
    :goto_2
    return v1

    .line 259
    :cond_4
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_7

    .line 261
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    array-length v2, p3

    if-le v1, v2, :cond_5

    .line 263
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :cond_5
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 268
    const/4 v0, 0x0

    .restart local v0    # "n":I
    :goto_3
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_6

    .line 270
    add-int v1, p4, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    invoke-direct {p0, v2, v0}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v1

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 273
    :cond_6
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    invoke-static {p3, p4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    .end local v0    # "n":I
    :cond_7
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    goto :goto_2
.end method

.method private encryptByte(BI)B
    .locals 1
    .param p1, "data"    # B
    .param p2, "blockOff"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    aget-byte v0, v0, p2

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->inlineIv:Z

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/PGPCFBwithIV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/PGPCFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 8
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 155
    iput-boolean p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->forEncryption:Z

    .line 157
    instance-of v3, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_2

    move-object v2, p2

    .line 159
    check-cast v2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 160
    .local v2, "ivParam":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 162
    .local v1, "iv":[B
    array-length v3, v1

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 165
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    array-length v4, v4

    array-length v5, v1

    sub-int/2addr v4, v5

    array-length v5, v1

    invoke-static {v1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    array-length v3, v3

    array-length v4, v1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    .line 168
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    aput-byte v6, v3, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    array-length v4, v4

    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->reset()V

    .line 178
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 186
    .end local v1    # "iv":[B
    .end local v2    # "ivParam":Lorg/spongycastle/crypto/params/ParametersWithIV;
    :goto_1
    return-void

    .line 182
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->reset()V

    .line 184
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v3, v7, p2}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_1
.end method

.method public processBlock([BI[BI)I
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->inlineIv:Z

    if-eqz v0, :cond_1

    .line 108
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptBlockWithIV([BI[BI)I

    move-result v0

    .line 112
    :goto_0
    return v0

    .line 108
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->decryptBlockWithIV([BI[BI)I

    move-result v0

    goto :goto_0

    .line 112
    :cond_1
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptBlock([BI[BI)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    iput v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 126
    iget-boolean v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->inlineIv:Z

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    aput-byte v3, v1, v0

    .line 124
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    aget-byte v2, v2, v0

    aput-byte v2, v1, v0

    goto :goto_1

    .line 136
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 137
    return-void
.end method
