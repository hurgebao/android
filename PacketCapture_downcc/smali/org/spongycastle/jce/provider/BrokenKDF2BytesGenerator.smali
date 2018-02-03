.class public Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;
.super Ljava/lang/Object;
.source "BrokenKDF2BytesGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/DerivationFunction;


# instance fields
.field private digest:Lorg/spongycastle/crypto/Digest;

.field private iv:[B

.field private shared:[B


# virtual methods
.method public generateBytes([BII)I
    .locals 11
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 75
    array-length v3, p1

    sub-int/2addr v3, p3

    if-ge v3, p2, :cond_0

    .line 77
    new-instance v3, Lorg/spongycastle/crypto/DataLengthException;

    const-string v6, "output buffer too small"

    invoke-direct {v3, v6}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_0
    mul-int/lit8 v3, p3, 0x8

    int-to-long v4, v3

    .line 88
    .local v4, "oBits":J
    iget-object v3, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    int-to-long v6, v3

    const-wide/16 v8, 0x1d

    mul-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 90
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "Output length to large"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    int-to-long v6, v3

    div-long v6, v4, v6

    long-to-int v0, v6

    .line 95
    .local v0, "cThreshold":I
    const/4 v2, 0x0

    .line 97
    .local v2, "dig":[B
    iget-object v3, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    .line 99
    const/4 v1, 0x1

    .local v1, "counter":I
    :goto_0
    if-gt v1, v0, :cond_3

    .line 101
    iget-object v3, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v6, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->shared:[B

    iget-object v7, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->shared:[B

    array-length v7, v7

    invoke-interface {v3, v6, v10, v7}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 103
    iget-object v3, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    and-int/lit16 v6, v1, 0xff

    int-to-byte v6, v6

    invoke-interface {v3, v6}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 104
    iget-object v3, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    shr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-interface {v3, v6}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 105
    iget-object v3, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    shr-int/lit8 v6, v1, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-interface {v3, v6}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 106
    iget-object v3, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    shr-int/lit8 v6, v1, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-interface {v3, v6}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 108
    iget-object v3, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v6, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->iv:[B

    iget-object v7, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->iv:[B

    array-length v7, v7

    invoke-interface {v3, v6, v10, v7}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 110
    iget-object v3, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3, v2, v10}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 112
    sub-int v3, p3, p2

    array-length v6, v2

    if-le v3, v6, :cond_2

    .line 114
    array-length v3, v2

    invoke-static {v2, v10, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    array-length v3, v2

    add-int/2addr p2, v3

    .line 99
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_2
    sub-int v3, p3, p2

    invoke-static {v2, v10, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 123
    :cond_3
    iget-object v3, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 125
    return p3
.end method

.method public init(Lorg/spongycastle/crypto/DerivationParameters;)V
    .locals 3
    .param p1, "param"    # Lorg/spongycastle/crypto/DerivationParameters;

    .prologue
    .line 43
    instance-of v1, p1, Lorg/spongycastle/crypto/params/KDFParameters;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "KDF parameters required for KDF2Generator"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 48
    check-cast v0, Lorg/spongycastle/crypto/params/KDFParameters;

    .line 50
    .local v0, "p":Lorg/spongycastle/crypto/params/KDFParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KDFParameters;->getSharedSecret()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->shared:[B

    .line 51
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KDFParameters;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/jce/provider/BrokenKDF2BytesGenerator;->iv:[B

    .line 52
    return-void
.end method
