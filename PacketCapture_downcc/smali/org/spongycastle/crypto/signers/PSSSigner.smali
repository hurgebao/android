.class public Lorg/spongycastle/crypto/signers/PSSSigner;
.super Ljava/lang/Object;
.source "PSSSigner.java"

# interfaces
.implements Lorg/spongycastle/crypto/Signer;


# instance fields
.field private block:[B

.field private cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private contentDigest:Lorg/spongycastle/crypto/Digest;

.field private emBits:I

.field private hLen:I

.field private mDash:[B

.field private mgfDigest:Lorg/spongycastle/crypto/Digest;

.field private mgfhLen:I

.field private random:Ljava/security/SecureRandom;

.field private sLen:I

.field private salt:[B

.field private trailer:B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;IB)V
    .locals 2
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "contentDigest"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "mgfDigest"    # Lorg/spongycastle/crypto/Digest;
    .param p4, "sLen"    # I
    .param p5, "trailer"    # B

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 81
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    .line 82
    iput-object p3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    .line 83
    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    .line 84
    invoke-interface {p3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfhLen:I

    .line 85
    iput p4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    .line 86
    new-array v0, p4, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->salt:[B

    .line 87
    add-int/lit8 v0, p4, 0x8

    iget v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    .line 88
    iput-byte p5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->trailer:B

    .line 89
    return-void
.end method

.method private ItoOSP(I[B)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "sp"    # [B

    .prologue
    .line 300
    const/4 v0, 0x0

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 301
    const/4 v0, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 302
    const/4 v0, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 303
    const/4 v0, 0x3

    ushr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 304
    return-void
.end method

.method private clearBlock([B)V
    .locals 2
    .param p1, "block"    # [B

    .prologue
    .line 144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 146
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
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

    .line 315
    new-array v3, p4, [B

    .line 316
    .local v3, "mask":[B
    iget v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfhLen:I

    new-array v2, v4, [B

    .line 317
    .local v2, "hashBuf":[B
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 318
    .local v0, "C":[B
    const/4 v1, 0x0

    .line 320
    .local v1, "counter":I
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 322
    :goto_0
    iget v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfhLen:I

    div-int v4, p4, v4

    if-ge v1, v4, :cond_0

    .line 324
    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/signers/PSSSigner;->ItoOSP(I[B)V

    .line 326
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 327
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 328
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 330
    iget v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfhLen:I

    mul-int/2addr v4, v1

    iget v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfhLen:I

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    :cond_0
    iget v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfhLen:I

    mul-int/2addr v4, v1

    if-ge v4, p4, :cond_1

    .line 337
    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/signers/PSSSigner;->ItoOSP(I[B)V

    .line 339
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 340
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 341
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 343
    iget v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfhLen:I

    mul-int/2addr v4, v1

    array-length v5, v3

    iget v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfhLen:I

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    :cond_1
    return-object v3
.end method


# virtual methods
.method public generateSignature()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;,
            Lorg/spongycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 185
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v6, v6

    iget v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v6, v7

    invoke-interface {v4, v5, v6}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 187
    iget v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    if-eqz v4, :cond_0

    .line 189
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->salt:[B

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 191
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->salt:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v6, v6

    iget v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    invoke-static {v4, v9, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    :cond_0
    iget v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    new-array v2, v4, [B

    .line 196
    .local v2, "h":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v6, v6

    invoke-interface {v4, v5, v9, v6}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 198
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, v2, v9}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 200
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    .line 201
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->salt:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v6, v6

    iget v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    invoke-static {v4, v9, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    array-length v4, v2

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v2, v9, v4, v5}, Lorg/spongycastle/crypto/signers/PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v1

    .line 204
    .local v1, "dbMask":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-eq v3, v4, :cond_1

    .line 206
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v5, v4, v3

    aget-byte v6, v1, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    :cond_1
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v5, v4, v9

    const/16 v6, 0xff

    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x8

    iget v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->emBits:I

    sub-int/2addr v7, v8

    shr-int/2addr v6, v7

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v9

    .line 211
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    invoke-static {v2, v9, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    iget-byte v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->trailer:B

    aput-byte v6, v4, v5

    .line 215
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v6, v6

    invoke-interface {v4, v5, v9, v6}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 217
    .local v0, "b":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    .line 219
    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 6
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 97
    instance-of v3, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v3, :cond_1

    move-object v1, p2

    .line 99
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 101
    .local v1, "p":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    .line 102
    .local v2, "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    .line 113
    .end local v1    # "p":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3, p1, v2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 117
    instance-of v3, v2, Lorg/spongycastle/crypto/params/RSABlindingParameters;

    if-eqz v3, :cond_2

    .line 119
    check-cast v2, Lorg/spongycastle/crypto/params/RSABlindingParameters;

    .end local v2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/RSABlindingParameters;->getPublicKey()Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    .line 126
    .local v0, "kParam":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    :goto_1
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->emBits:I

    .line 128
    iget v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->emBits:I

    iget v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    mul-int/lit8 v4, v4, 0x8

    iget v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x9

    if-ge v3, v4, :cond_3

    .line 130
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "key too small for specified hash and salt lengths"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 106
    .end local v0    # "kParam":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    :cond_1
    move-object v2, p2

    .line 107
    .restart local v2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    if-eqz p1, :cond_0

    .line 109
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iput-object v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 123
    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .restart local v0    # "kParam":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    goto :goto_1

    .line 133
    .end local v2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_3
    iget v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->emBits:I

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    .line 135
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/PSSSigner;->reset()V

    .line 136
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 176
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 156
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 157
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 168
    return-void
.end method

.method public verifySignature([B)Z
    .locals 12
    .param p1, "signature"    # [B

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 229
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v9, v9

    iget v10, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v9, v10

    iget v10, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v9, v10

    invoke-interface {v7, v8, v9}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 233
    :try_start_0
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    const/4 v8, 0x0

    array-length v9, p1

    invoke-interface {v7, p1, v8, v9}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 234
    .local v0, "b":[B
    const/4 v7, 0x0

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v9, v9

    array-length v10, v0

    sub-int/2addr v9, v10

    array-length v10, v0

    invoke-static {v0, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget-byte v7, v7, v8

    iget-byte v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->trailer:B

    if-eq v7, v8, :cond_0

    .line 243
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    .line 290
    .end local v0    # "b":[B
    :goto_0
    return v5

    .line 236
    :catch_0
    move-exception v2

    .line 238
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 247
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "b":[B
    :cond_0
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v8, v8

    iget v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    iget-object v10, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v10, v10

    iget v11, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x1

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/signers/PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v1

    .line 249
    .local v1, "dbMask":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v1

    if-eq v3, v7, :cond_1

    .line 251
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v8, v7, v3

    aget-byte v9, v1, v3

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v3

    .line 249
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 254
    :cond_1
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v8, v7, v5

    const/16 v9, 0xff

    iget-object v10, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v10, v10

    mul-int/lit8 v10, v10, 0x8

    iget v11, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->emBits:I

    sub-int/2addr v10, v11

    shr-int/2addr v9, v10

    and-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v5

    .line 256
    const/4 v3, 0x0

    :goto_2
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v7, v7

    iget v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v7, v8

    iget v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x2

    if-eq v3, v7, :cond_3

    .line 258
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v7, v7, v3

    if-eqz v7, :cond_2

    .line 260
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    goto :goto_0

    .line 256
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 265
    :cond_3
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v8, v8

    iget v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v8, v9

    iget v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x2

    aget-byte v7, v7, v8

    if-eq v7, v6, :cond_4

    .line 267
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    goto :goto_0

    .line 271
    :cond_4
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v8, v8

    iget v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v8, v9

    iget v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v10, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v10, v10

    iget v11, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v10, v11

    iget v11, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v9, v9

    invoke-interface {v7, v8, v5, v9}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 274
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v9, v9

    iget v10, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v9, v10

    invoke-interface {v7, v8, v9}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 276
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v7, v7

    iget v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v7, v8

    add-int/lit8 v3, v7, -0x1

    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v7, v7

    iget v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int v4, v7, v8

    .line 277
    .local v4, "j":I
    :goto_3
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v7, v7

    if-eq v4, v7, :cond_6

    .line 279
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v7, v7, v3

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    aget-byte v8, v8, v4

    xor-int/2addr v7, v8

    if-eqz v7, :cond_5

    .line 281
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    .line 282
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    goto/16 :goto_0

    .line 277
    :cond_5
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 287
    :cond_6
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    .line 288
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    move v5, v6

    .line 290
    goto/16 :goto_0
.end method
