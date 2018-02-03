.class public Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;
.super Lorg/spongycastle/crypto/BufferedBlockCipher;
.source "OldCTSBlockCipher.java"


# virtual methods
.method public doFinal([BI)I
    .locals 11
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
    const/4 v10, 0x0

    .line 196
    iget v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    add-int/2addr v7, p2

    array-length v8, p1

    if-le v7, v8, :cond_0

    .line 198
    new-instance v7, Lorg/spongycastle/crypto/DataLengthException;

    const-string v8, "output buffer to small in doFinal"

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 201
    :cond_0
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v7}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    .line 202
    .local v1, "blockSize":I
    iget v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    sub-int v5, v7, v1

    .line 203
    .local v5, "len":I
    new-array v0, v1, [B

    .line 205
    .local v0, "block":[B
    iget-boolean v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->forEncryption:Z

    if-eqz v7, :cond_5

    .line 207
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v8, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-interface {v7, v8, v10, v0, v10}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 209
    iget v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    if-ge v7, v1, :cond_1

    .line 211
    new-instance v7, Lorg/spongycastle/crypto/DataLengthException;

    const-string v8, "need at least one block of input for CTS"

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 214
    :cond_1
    iget v3, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    array-length v7, v7

    if-eq v3, v7, :cond_2

    .line 216
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    sub-int v8, v3, v1

    aget-byte v8, v0, v8

    aput-byte v8, v7, v3

    .line 214
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    :cond_2
    move v3, v1

    :goto_1
    iget v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    if-eq v3, v7, :cond_3

    .line 221
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    aget-byte v8, v7, v3

    sub-int v9, v3, v1

    aget-byte v9, v0, v9

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v3

    .line 219
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 224
    :cond_3
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    instance-of v7, v7, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    if-eqz v7, :cond_4

    .line 226
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    check-cast v7, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    .line 228
    .local v2, "c":Lorg/spongycastle/crypto/BlockCipher;
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-interface {v2, v7, v1, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 235
    .end local v2    # "c":Lorg/spongycastle/crypto/BlockCipher;
    :goto_2
    add-int v7, p2, v1

    invoke-static {v0, v10, p1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    :goto_3
    iget v6, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    .line 265
    .local v6, "offset":I
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->reset()V

    .line 267
    return v6

    .line 232
    .end local v6    # "offset":I
    :cond_4
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v8, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-interface {v7, v8, v1, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_2

    .line 239
    .end local v3    # "i":I
    :cond_5
    new-array v4, v1, [B

    .line 241
    .local v4, "lastBlock":[B
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    instance-of v7, v7, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    if-eqz v7, :cond_6

    .line 243
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    check-cast v7, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    .line 245
    .restart local v2    # "c":Lorg/spongycastle/crypto/BlockCipher;
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-interface {v2, v7, v10, v0, v10}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 252
    .end local v2    # "c":Lorg/spongycastle/crypto/BlockCipher;
    :goto_4
    move v3, v1

    .restart local v3    # "i":I
    :goto_5
    iget v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    if-eq v3, v7, :cond_7

    .line 254
    sub-int v7, v3, v1

    sub-int v8, v3, v1

    aget-byte v8, v0, v8

    iget-object v9, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    aget-byte v9, v9, v3

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 252
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 249
    .end local v3    # "i":I
    :cond_6
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v8, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-interface {v7, v8, v10, v0, v10}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_4

    .line 257
    .restart local v3    # "i":I
    :cond_7
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-static {v7, v1, v0, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v7, v0, v10, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 260
    add-int v7, p2, v1

    invoke-static {v4, v10, p1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3
.end method

.method public getOutputSize(I)I
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 75
    iget v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 3
    .param p1, "len"    # I

    .prologue
    .line 53
    iget v2, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    add-int v1, p1, v2

    .line 54
    .local v1, "total":I
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    array-length v2, v2

    rem-int v0, v1, v2

    .line 56
    .local v0, "leftOver":I
    if-nez v0, :cond_0

    .line 58
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    array-length v2, v2

    sub-int v2, v1, v2

    .line 61
    :goto_0
    return v2

    :cond_0
    sub-int v2, v1, v0

    goto :goto_0
.end method

.method public processBytes([BII[BI)I
    .locals 8
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
    const/4 v7, 0x0

    .line 129
    if-gez p3, :cond_0

    .line 131
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t have a negative input length!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->getBlockSize()I

    move-result v0

    .line 135
    .local v0, "blockSize":I
    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->getUpdateOutputSize(I)I

    move-result v2

    .line 137
    .local v2, "length":I
    if-lez v2, :cond_1

    .line 139
    add-int v4, p5, v2

    array-length v5, p4

    if-le v4, v5, :cond_1

    .line 141
    new-instance v4, Lorg/spongycastle/crypto/DataLengthException;

    const-string v5, "output buffer too short"

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 145
    :cond_1
    const/4 v3, 0x0

    .line 146
    .local v3, "resultLen":I
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    array-length v4, v4

    iget v5, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    sub-int v1, v4, v5

    .line 148
    .local v1, "gapLen":I
    if-le p3, v1, :cond_2

    .line 150
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget v5, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-interface {v4, v5, v7, p4, p5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 153
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iput v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    .line 157
    sub-int/2addr p3, v1

    .line 158
    add-int/2addr p2, v1

    .line 160
    :goto_0
    if-le p3, v0, :cond_2

    .line 162
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget v5, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    add-int v6, p5, v3

    invoke-interface {v4, v5, v7, p4, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 164
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    sub-int/2addr p3, v0

    .line 167
    add-int/2addr p2, v0

    goto :goto_0

    .line 171
    :cond_2
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget v5, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iget v4, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    add-int/2addr v4, p3

    iput v4, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    .line 175
    return v3
.end method
