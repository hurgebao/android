.class public Lorg/spongycastle/crypto/encodings/PKCS1Encoding;
.super Ljava/lang/Object;
.source "PKCS1Encoding.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private fallback:[B

.field private forEncryption:Z

.field private forPrivateKey:Z

.field private pLen:I

.field private random:Ljava/security/SecureRandom;

.field private useStrictLength:Z


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 47
    iput-object p1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 48
    invoke-direct {p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;[B)V
    .locals 1
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "fallback"    # [B

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 79
    iput-object p1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 80
    invoke-direct {p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 81
    iput-object p2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 82
    array-length v0, p2

    iput v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 83
    return-void
.end method

.method private static checkPkcs1Encoding([BI)I
    .locals 6
    .param p0, "encoded"    # [B
    .param p1, "pLen"    # I

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 238
    .local v0, "correct":I
    const/4 v4, 0x0

    aget-byte v4, p0, v4

    xor-int/lit8 v4, v4, 0x2

    or-int/2addr v0, v4

    .line 243
    array-length v4, p0

    add-int/lit8 v5, p1, 0x1

    sub-int v2, v4, v5

    .line 248
    .local v2, "plen":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 249
    aget-byte v3, p0, v1

    .line 250
    .local v3, "tmp":I
    shr-int/lit8 v4, v3, 0x1

    or-int/2addr v3, v4

    .line 251
    shr-int/lit8 v4, v3, 0x2

    or-int/2addr v3, v4

    .line 252
    shr-int/lit8 v4, v3, 0x4

    or-int/2addr v3, v4

    .line 253
    and-int/lit8 v4, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    or-int/2addr v0, v4

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v3    # "tmp":I
    :cond_0
    array-length v4, p0

    add-int/lit8 v5, p1, 0x1

    sub-int/2addr v4, v5

    aget-byte v4, p0, v4

    or-int/2addr v0, v4

    .line 264
    shr-int/lit8 v4, v0, 0x1

    or-int/2addr v0, v4

    .line 265
    shr-int/lit8 v4, v0, 0x2

    or-int/2addr v0, v4

    .line 266
    shr-int/lit8 v4, v0, 0x4

    or-int/2addr v0, v4

    .line 267
    and-int/lit8 v4, v0, 0x1

    add-int/lit8 v4, v4, -0x1

    xor-int/lit8 v4, v4, -0x1

    return v4
.end method

.method private decodeBlock([BII)[B
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 353
    iget v5, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    if-eq v5, v7, :cond_0

    .line 354
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->decodeBlockOrRandom([BII)[B

    move-result-object v2

    .line 416
    :goto_0
    return-object v2

    .line 357
    :cond_0
    iget-object v5, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v5, p1, p2, p3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 359
    .local v0, "block":[B
    array-length v5, v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->getOutputBlockSize()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 361
    new-instance v5, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v6, "block truncated"

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 364
    :cond_1
    aget-byte v4, v0, v8

    .line 366
    .local v4, "type":B
    iget-boolean v5, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v5, :cond_2

    .line 368
    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 370
    new-instance v5, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v6, "unknown block type"

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 375
    :cond_2
    if-eq v4, v9, :cond_3

    .line 377
    new-instance v5, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v6, "unknown block type"

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 381
    :cond_3
    iget-boolean v5, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    if-eqz v5, :cond_4

    array-length v5, v0

    iget-object v6, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v6}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 383
    new-instance v5, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v6, "block incorrect size"

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 391
    :cond_4
    const/4 v3, 0x1

    .local v3, "start":I
    :goto_1
    array-length v5, v0

    if-eq v3, v5, :cond_5

    .line 393
    aget-byte v1, v0, v3

    .line 395
    .local v1, "pad":B
    if-nez v1, :cond_7

    .line 405
    .end local v1    # "pad":B
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 407
    array-length v5, v0

    if-gt v3, v5, :cond_6

    const/16 v5, 0xa

    if-ge v3, v5, :cond_9

    .line 409
    :cond_6
    new-instance v5, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v6, "no data in block"

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 399
    .restart local v1    # "pad":B
    :cond_7
    if-ne v4, v9, :cond_8

    if-eq v1, v7, :cond_8

    .line 401
    new-instance v5, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v6, "block padding incorrect"

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 391
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 412
    .end local v1    # "pad":B
    :cond_9
    array-length v5, v0

    sub-int/2addr v5, v3

    new-array v2, v5, [B

    .line 414
    .local v2, "result":[B
    array-length v5, v2

    invoke-static {v0, v3, v2, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private decodeBlockOrRandom([BII)[B
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 285
    iget-boolean v5, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-nez v5, :cond_0

    .line 287
    new-instance v5, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v6, "sorry, this method is only for decryption, not for signing"

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 290
    :cond_0
    iget-object v5, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v5, p1, p2, p3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 291
    .local v0, "block":[B
    const/4 v3, 0x0

    .line 292
    .local v3, "random":[B
    iget-object v5, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    if-nez v5, :cond_1

    .line 294
    iget v5, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    new-array v3, v5, [B

    .line 295
    iget-object v5, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v5, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 308
    :goto_0
    array-length v5, v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->getOutputBlockSize()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 310
    new-instance v5, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v6, "block truncated"

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 299
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    goto :goto_0

    .line 317
    :cond_2
    iget-boolean v5, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    if-eqz v5, :cond_3

    array-length v5, v0

    iget-object v6, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v6}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 319
    new-instance v5, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v6, "block incorrect size"

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 325
    :cond_3
    iget v5, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    invoke-static {v0, v5}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->checkPkcs1Encoding([BI)I

    move-result v1

    .line 331
    .local v1, "correct":I
    iget v5, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    new-array v4, v5, [B

    .line 332
    .local v4, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v5, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    if-ge v2, v5, :cond_4

    .line 334
    array-length v5, v0

    iget v6, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    sub-int/2addr v5, v6

    add-int/2addr v5, v2

    aget-byte v5, v0, v5

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v5, v6

    aget-byte v6, v3, v2

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 337
    :cond_4
    return-object v4
.end method

.method private encodeBlock([BII)[B
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 184
    invoke-virtual {p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->getInputBlockSize()I

    move-result v2

    if-le p3, v2, :cond_0

    .line 186
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "input data too large"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 191
    .local v0, "block":[B
    iget-boolean v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v2, :cond_1

    .line 193
    const/4 v2, 0x1

    aput-byte v2, v0, v4

    .line 195
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    sub-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3

    .line 197
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 204
    const/4 v2, 0x2

    aput-byte v2, v0, v4

    .line 210
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_1
    array-length v2, v0

    sub-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3

    .line 212
    :goto_2
    aget-byte v2, v0, v1

    if-nez v2, :cond_2

    .line 214
    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_2

    .line 210
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 219
    :cond_3
    array-length v2, v0

    sub-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    aput-byte v4, v0, v2

    .line 220
    array-length v2, v0

    sub-int/2addr v2, p3

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    array-length v3, v0

    invoke-interface {v2, v0, v4, v3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v2

    return-object v2
.end method

.method private useStrict()Z
    .locals 2

    .prologue
    .line 93
    new-instance v1, Lorg/spongycastle/crypto/encodings/PKCS1Encoding$1;

    invoke-direct {v1, p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding$1;-><init>(Lorg/spongycastle/crypto/encodings/PKCS1Encoding;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    .local v0, "strict":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 2

    .prologue
    .line 136
    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 138
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 140
    add-int/lit8 v0, v0, -0xa

    .line 144
    .end local v0    # "baseBlockSize":I
    :cond_0
    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    .prologue
    .line 150
    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 152
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 158
    .end local v0    # "baseBlockSize":I
    :goto_0
    return v0

    .restart local v0    # "baseBlockSize":I
    :cond_0
    add-int/lit8 v0, v0, -0xa

    goto :goto_0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 115
    instance-of v2, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 117
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 119
    .local v1, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 120
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 128
    .end local v1    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .local v0, "kParam":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2, p1, p2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 130
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v2

    iput-boolean v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    .line 131
    iput-boolean p1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    .line 132
    return-void

    .line 124
    .end local v0    # "kParam":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :cond_0
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    move-object v0, p2

    .line 125
    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .restart local v0    # "kParam":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
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
    .line 168
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->encodeBlock([BII)[B

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->decodeBlock([BII)[B

    move-result-object v0

    goto :goto_0
.end method
