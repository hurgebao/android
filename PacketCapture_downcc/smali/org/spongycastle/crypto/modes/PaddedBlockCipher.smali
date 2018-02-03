.class public Lorg/spongycastle/crypto/modes/PaddedBlockCipher;
.super Lorg/spongycastle/crypto/BufferedBlockCipher;
.source "PaddedBlockCipher.java"


# virtual methods
.method public doFinal([BI)I
    .locals 8
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 193
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v4}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 194
    .local v0, "blockSize":I
    const/4 v3, 0x0

    .line 196
    .local v3, "resultLen":I
    iget-boolean v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->forEncryption:Z

    if-eqz v4, :cond_3

    .line 198
    iget v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    if-ne v4, v0, :cond_1

    .line 200
    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v4, p2

    array-length v5, p1

    if-le v4, v5, :cond_0

    .line 202
    new-instance v4, Lorg/spongycastle/crypto/DataLengthException;

    const-string v5, "output buffer too short"

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 205
    :cond_0
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    invoke-interface {v4, v5, v7, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    .line 206
    iput v7, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    .line 212
    :cond_1
    iget v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    sub-int v4, v0, v4

    int-to-byte v1, v4

    .line 214
    .local v1, "code":B
    :goto_0
    iget v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    if-ge v4, v0, :cond_2

    .line 216
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget v5, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    aput-byte v1, v4, v5

    .line 217
    iget v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    goto :goto_0

    .line 220
    :cond_2
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    add-int v6, p2, v3

    invoke-interface {v4, v5, v7, p1, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 249
    .end local v1    # "code":B
    :goto_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->reset()V

    .line 251
    return v3

    .line 224
    :cond_3
    iget v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    if-ne v4, v0, :cond_5

    .line 226
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    invoke-interface {v4, v5, v7, v6, v7}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    .line 227
    iput v7, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    .line 237
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    add-int/lit8 v5, v0, -0x1

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 239
    .local v2, "count":I
    if-ltz v2, :cond_4

    if-le v2, v0, :cond_6

    .line 241
    :cond_4
    new-instance v4, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v5, "pad block corrupted"

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 231
    .end local v2    # "count":I
    :cond_5
    new-instance v4, Lorg/spongycastle/crypto/DataLengthException;

    const-string v5, "last block incomplete in decryption"

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 244
    .restart local v2    # "count":I
    :cond_6
    sub-int/2addr v3, v2

    .line 246
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    invoke-static {v4, v7, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public getOutputSize(I)I
    .locals 4
    .param p1, "len"    # I

    .prologue
    .line 45
    iget v2, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    add-int v1, p1, v2

    .line 46
    .local v1, "total":I
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v2, v2

    rem-int v0, v1, v2

    .line 48
    .local v0, "leftOver":I
    if-nez v0, :cond_1

    .line 50
    iget-boolean v2, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v2, v2

    add-int/2addr v1, v2

    .line 58
    .end local v1    # "total":I
    :cond_0
    :goto_0
    return v1

    .restart local v1    # "total":I
    :cond_1
    sub-int v2, v1, v0

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v3, v3

    add-int v1, v2, v3

    goto :goto_0
.end method

.method public getUpdateOutputSize(I)I
    .locals 3
    .param p1, "len"    # I

    .prologue
    .line 72
    iget v2, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    add-int v1, p1, v2

    .line 73
    .local v1, "total":I
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v2, v2

    rem-int v0, v1, v2

    .line 75
    .local v0, "leftOver":I
    if-nez v0, :cond_0

    .line 77
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v2, v2

    sub-int v2, v1, v2

    .line 80
    :goto_0
    return v2

    :cond_0
    sub-int v2, v1, v0

    goto :goto_0
.end method

.method public processBytes([BII[BI)I
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 130
    if-gez p3, :cond_0

    .line 132
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t have a negative input length!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 135
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->getBlockSize()I

    move-result v0

    .line 136
    .local v0, "blockSize":I
    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->getUpdateOutputSize(I)I

    move-result v2

    .line 138
    .local v2, "length":I
    if-lez v2, :cond_1

    .line 140
    add-int v4, p5, v2

    array-length v5, p4

    if-le v4, v5, :cond_1

    .line 142
    new-instance v4, Lorg/spongycastle/crypto/DataLengthException;

    const-string v5, "output buffer too short"

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 146
    :cond_1
    const/4 v3, 0x0

    .line 147
    .local v3, "resultLen":I
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v4, v4

    iget v5, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    sub-int v1, v4, v5

    .line 149
    .local v1, "gapLen":I
    if-le p3, v1, :cond_2

    .line 151
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget v5, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    invoke-interface {v4, v5, v6, p4, p5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 155
    iput v6, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    .line 156
    sub-int/2addr p3, v1

    .line 157
    add-int/2addr p2, v1

    .line 159
    :goto_0
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v4, v4

    if-le p3, v4, :cond_2

    .line 161
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    add-int v5, p5, v3

    invoke-interface {v4, p1, p2, p4, v5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 163
    sub-int/2addr p3, v0

    .line 164
    add-int/2addr p2, v0

    goto :goto_0

    .line 168
    :cond_2
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget v5, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    add-int/2addr v4, p3

    iput v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    .line 172
    return v3
.end method
