.class public Lorg/spongycastle/crypto/encodings/OAEPEncoding;
.super Ljava/lang/Object;
.source "OAEPEncoding.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private defHash:[B

.field private engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private mgf1Hash:Lorg/spongycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;[B)V
    .locals 2
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "hash"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "mgf1Hash"    # Lorg/spongycastle/crypto/Digest;
    .param p4, "encodingParams"    # [B

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 53
    iput-object p3, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    .line 54
    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    .line 56
    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 58
    if-eqz p4, :cond_0

    .line 60
    array-length v0, p4

    invoke-interface {p2, p4, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    invoke-interface {p2, v0, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;[B)V
    .locals 0
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "hash"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "encodingParams"    # [B

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p2, p3}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;[B)V

    .line 44
    return-void
.end method

.method private ItoOSP(I[B)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "sp"    # [B

    .prologue
    .line 309
    const/4 v0, 0x0

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 310
    const/4 v0, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 311
    const/4 v0, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 312
    const/4 v0, 0x3

    ushr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 313
    return-void
.end method

.method private maskGeneratorFunction1([BIII)[B
    .locals 8
    .param p1, "Z"    # [B
    .param p2, "zOff"    # I
    .param p3, "zLen"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v7, 0x0

    .line 324
    new-array v3, p4, [B

    .line 325
    .local v3, "mask":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v2, v4, [B

    .line 326
    .local v2, "hashBuf":[B
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 327
    .local v0, "C":[B
    const/4 v1, 0x0

    .line 329
    .local v1, "counter":I
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 331
    :goto_0
    array-length v4, v2

    div-int v4, p4, v4

    if-ge v1, v4, :cond_0

    .line 333
    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    .line 335
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 336
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 337
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 339
    array-length v4, v2

    mul-int/2addr v4, v1

    array-length v5, v2

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :cond_0
    array-length v4, v2

    mul-int/2addr v4, v1

    if-ge v4, p4, :cond_1

    .line 346
    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    .line 348
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 349
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 350
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 352
    array-length v4, v2

    mul-int/2addr v4, v1

    array-length v5, v3

    array-length v6, v2

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    :cond_1
    return-object v3
.end method


# virtual methods
.method public decodeBlock([BII)[B
    .locals 11
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 208
    iget-object v7, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v7, p1, p2, p3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    .line 216
    .local v1, "data":[B
    array-length v7, v1

    iget-object v8, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v8}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 218
    iget-object v7, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v7}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v7

    new-array v0, v7, [B

    .line 220
    .local v0, "block":[B
    array-length v7, v0

    array-length v8, v1

    sub-int/2addr v7, v8

    array-length v8, v1

    invoke-static {v1, v10, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    :goto_0
    array-length v7, v0

    iget-object v8, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v8, v8

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x1

    if-ge v7, v8, :cond_1

    .line 229
    new-instance v7, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v8, "data too short"

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 224
    .end local v0    # "block":[B
    :cond_0
    move-object v0, v1

    .restart local v0    # "block":[B
    goto :goto_0

    .line 235
    :cond_1
    iget-object v7, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v7

    array-length v8, v0

    iget-object v9, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v9, v9

    sub-int/2addr v8, v9

    iget-object v9, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v9, v9

    invoke-direct {p0, v0, v7, v8, v9}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v4

    .line 238
    .local v4, "mask":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v7, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v7

    if-eq v3, v7, :cond_2

    .line 240
    aget-byte v7, v0, v3

    aget-byte v8, v4, v3

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    .line 238
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 246
    :cond_2
    iget-object v7, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v7

    array-length v8, v0

    iget-object v9, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v9, v9

    sub-int/2addr v8, v9

    invoke-direct {p0, v0, v10, v7, v8}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v4

    .line 248
    iget-object v7, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v3, v7

    :goto_2
    array-length v7, v0

    if-eq v3, v7, :cond_3

    .line 250
    aget-byte v7, v0, v3

    iget-object v8, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v8, v8

    sub-int v8, v3, v8

    aget-byte v8, v4, v8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v3

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 257
    :cond_3
    const/4 v2, 0x0

    .line 259
    .local v2, "defHashWrong":Z
    const/4 v3, 0x0

    :goto_3
    iget-object v7, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v7

    if-eq v3, v7, :cond_5

    .line 261
    iget-object v7, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    aget-byte v7, v7, v3

    iget-object v8, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v8, v8

    add-int/2addr v8, v3

    aget-byte v8, v0, v8

    if-eq v7, v8, :cond_4

    .line 263
    const/4 v2, 0x1

    .line 259
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 267
    :cond_5
    if-eqz v2, :cond_6

    .line 269
    new-instance v7, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v8, "data hash wrong"

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 277
    :cond_6
    iget-object v7, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v7

    mul-int/lit8 v6, v7, 0x2

    .local v6, "start":I
    :goto_4
    array-length v7, v0

    if-eq v6, v7, :cond_7

    .line 279
    aget-byte v7, v0, v6

    if-eqz v7, :cond_9

    .line 285
    :cond_7
    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_8

    aget-byte v7, v0, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_a

    .line 287
    :cond_8
    new-instance v7, Lorg/spongycastle/crypto/InvalidCipherTextException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data start wrong "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 277
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 290
    :cond_a
    add-int/lit8 v6, v6, 0x1

    .line 295
    array-length v7, v0

    sub-int/2addr v7, v6

    new-array v5, v7, [B

    .line 297
    .local v5, "output":[B
    array-length v7, v5

    invoke-static {v0, v6, v5, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    return-object v5
.end method

.method public encodeBlock([BII)[B
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 141
    invoke-virtual {p0}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    new-array v0, v4, [B

    .line 146
    .local v0, "block":[B
    array-length v4, v0

    sub-int/2addr v4, p3

    invoke-static {p1, p2, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    array-length v4, v0

    sub-int/2addr v4, p3

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    aput-byte v5, v0, v4

    .line 160
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    iget-object v6, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    invoke-static {v4, v7, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    new-array v3, v4, [B

    .line 167
    .local v3, "seed":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 172
    array-length v4, v3

    array-length v5, v0

    iget-object v6, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    invoke-direct {p0, v3, v7, v4, v5}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    .line 174
    .local v2, "mask":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, v4

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-eq v1, v4, :cond_0

    .line 176
    aget-byte v4, v0, v1

    iget-object v5, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    sub-int v5, v1, v5

    aget-byte v5, v2, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_0
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    invoke-static {v3, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    array-length v5, v0

    iget-object v6, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    invoke-direct {p0, v0, v4, v5, v6}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    .line 190
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    if-eq v1, v4, :cond_1

    .line 192
    aget-byte v4, v0, v1

    aget-byte v5, v2, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 195
    :cond_1
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v4

    return-object v4
.end method

.method public getInputBlockSize()I
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 95
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 97
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 101
    .end local v0    # "baseBlockSize":I
    :cond_0
    return v0
.end method

.method public getOutputBlockSize()I
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 109
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 115
    .end local v0    # "baseBlockSize":I
    :goto_0
    return v0

    .restart local v0    # "baseBlockSize":I
    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 75
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 77
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 79
    .local v0, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    .line 86
    .end local v0    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 88
    iput-boolean p1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    .line 89
    return-void

    .line 83
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    goto :goto_0
.end method

.method public processBlock([BII)[B
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 125
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->encodeBlock([BII)[B

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->decodeBlock([BII)[B

    move-result-object v0

    goto :goto_0
.end method
