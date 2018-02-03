.class public Lorg/spongycastle/crypto/modes/SICBlockCipher;
.super Lorg/spongycastle/crypto/StreamBlockCipher;
.source "SICBlockCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/SkippingStreamCipher;


# instance fields
.field private IV:[B

.field private final blockSize:I

.field private byteCount:I

.field private final cipher:Lorg/spongycastle/crypto/BlockCipher;

.field private counter:[B

.field private counterOut:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "c"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/StreamBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 36
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->blockSize:I

    .line 38
    iget v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->IV:[B

    .line 39
    iget v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    .line 40
    iget v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 42
    return-void
.end method

.method private adjustCounter(J)V
    .locals 13
    .param p1, "n"    # J

    .prologue
    const-wide/16 v10, 0x1

    .line 147
    const-wide/16 v6, 0x0

    cmp-long v1, p1, v6

    if-ltz v1, :cond_1

    .line 149
    iget v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v6, v1

    add-long/2addr v6, p1

    iget v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v8, v1

    div-long v4, v6, v8

    .line 151
    .local v4, "numBlocks":J
    const-wide/16 v2, 0x0

    .local v2, "i":J
    :goto_0
    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 153
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->incrementCounter()V

    .line 151
    add-long/2addr v2, v10

    goto :goto_0

    .line 156
    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v6, v1

    add-long/2addr v6, p1

    iget v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v8, v1

    mul-long/2addr v8, v4

    sub-long/2addr v6, v8

    long-to-int v1, v6

    iput v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 179
    :goto_1
    return-void

    .line 160
    .end local v2    # "i":J
    .end local v4    # "numBlocks":J
    :cond_1
    neg-long v6, p1

    iget v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v8, v1

    sub-long/2addr v6, v8

    iget v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v8, v1

    div-long v4, v6, v8

    .line 162
    .restart local v4    # "numBlocks":J
    const-wide/16 v2, 0x0

    .restart local v2    # "i":J
    :goto_2
    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 164
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->decrementCounter()V

    .line 162
    add-long/2addr v2, v10

    goto :goto_2

    .line 167
    :cond_2
    iget v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v6, v1

    add-long/2addr v6, p1

    iget v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v8, v1

    mul-long/2addr v8, v4

    add-long/2addr v6, v8

    long-to-int v0, v6

    .line 169
    .local v0, "gap":I
    if-ltz v0, :cond_3

    .line 171
    const/4 v1, 0x0

    iput v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    goto :goto_1

    .line 175
    :cond_3
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->decrementCounter()V

    .line 176
    iget v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->blockSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    goto :goto_1
.end method

.method private decrementCounter()V
    .locals 4

    .prologue
    .line 120
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-nez v2, :cond_2

    .line 122
    const/4 v1, 0x0

    .line 124
    .local v1, "nonZero":Z
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 126
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v2, v2, v0

    if-eqz v2, :cond_0

    .line 128
    const/4 v1, 0x1

    .line 124
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 132
    :cond_1
    if-nez v1, :cond_2

    .line 134
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "attempt to reduce counter past zero."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    .end local v0    # "i":I
    .end local v1    # "nonZero":Z
    :cond_2
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_3

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    const/4 v2, -0x1

    if-ne v3, v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 143
    :cond_3
    return-void
.end method

.method private incrementCounter()V
    .locals 3

    .prologue
    .line 112
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method protected calculateByte(B)B
    .locals 5
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 90
    iget v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 94
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v1, v1, v2

    xor-int/2addr v1, p1

    int-to-byte v0, v1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v1, v1, v2

    xor-int/2addr v1, p1

    int-to-byte v0, v1

    .line 99
    .local v0, "rv":B
    iget v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 101
    iput v4, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 103
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->incrementCounter()V

    goto :goto_0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getPosition()J
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 206
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v3, v3

    new-array v1, v3, [B

    .line 208
    .local v1, "res":[B
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v4, v1

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x1

    if-lt v0, v3, :cond_1

    .line 212
    aget-byte v3, v1, v0

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->IV:[B

    aget-byte v4, v4, v0

    sub-int v2, v3, v4

    .line 214
    .local v2, "v":I
    if-gez v2, :cond_0

    .line 216
    add-int/lit8 v3, v0, -0x1

    aget-byte v4, v1, v3

    add-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 217
    add-int/lit16 v2, v2, 0x100

    .line 220
    :cond_0
    int-to-byte v3, v2

    aput-byte v3, v1, v0

    .line 210
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 223
    .end local v2    # "v":I
    :cond_1
    array-length v3, v1

    add-int/lit8 v3, v3, -0x8

    invoke-static {v1, v3}, Lorg/spongycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v4

    iget v3, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->blockSize:I

    int-to-long v6, v3

    mul-long/2addr v4, v6

    iget v3, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    return-wide v4
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 49
    instance-of v2, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_1

    move-object v1, p2

    .line 51
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 52
    .local v1, "ivParam":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    .line 53
    .local v0, "iv":[B
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->IV:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v3, v3

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v3, 0x1

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->reset()V

    .line 67
    return-void

    .line 65
    .end local v0    # "iv":[B
    .end local v1    # "ivParam":Lorg/spongycastle/crypto/params/ParametersWithIV;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "SIC mode requires ParametersWithIV"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public processBlock([BI[BI)I
    .locals 6
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
    .line 82
    iget v3, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->processBytes([BII[BI)I

    .line 84
    iget v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->blockSize:I

    return v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 183
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->IV:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 185
    iput v3, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 186
    return-void
.end method

.method public seekTo(J)J
    .locals 3
    .param p1, "position"    # J

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->reset()V

    .line 201
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public skip(J)J
    .locals 5
    .param p1, "numberOfBytes"    # J

    .prologue
    const/4 v3, 0x0

    .line 190
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->adjustCounter(J)V

    .line 192
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 194
    return-wide p1
.end method
