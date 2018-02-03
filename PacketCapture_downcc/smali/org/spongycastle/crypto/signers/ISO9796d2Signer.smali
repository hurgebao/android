.class public Lorg/spongycastle/crypto/signers/ISO9796d2Signer;
.super Ljava/lang/Object;
.source "ISO9796d2Signer.java"

# interfaces
.implements Lorg/spongycastle/crypto/SignerWithRecovery;


# static fields
.field private static trailerMap:Ljava/util/Hashtable;


# instance fields
.field private block:[B

.field private cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private digest:Lorg/spongycastle/crypto/Digest;

.field private fullMessage:Z

.field private keyBits:I

.field private mBuf:[B

.field private messageLength:I

.field private preBlock:[B

.field private preSig:[B

.field private recoveredMessage:[B

.field private trailer:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailerMap:Ljava/util/Hashtable;

    .line 34
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailerMap:Ljava/util/Hashtable;

    const-string v1, "RIPEMD128"

    const/16 v2, 0x32cc

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailerMap:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160"

    const/16 v2, 0x31cc

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailerMap:Ljava/util/Hashtable;

    const-string v1, "SHA-1"

    const/16 v2, 0x33cc

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailerMap:Ljava/util/Hashtable;

    const-string v1, "SHA-256"

    const/16 v2, 0x34cc

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailerMap:Ljava/util/Hashtable;

    const-string v1, "SHA-384"

    const/16 v2, 0x36cc

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailerMap:Ljava/util/Hashtable;

    const-string v1, "SHA-512"

    const/16 v2, 0x35cc

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailerMap:Ljava/util/Hashtable;

    const-string v1, "Whirlpool"

    const/16 v2, 0x37cc

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Z)V
    .locals 3
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "implicit"    # Z

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 73
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    .line 75
    if-eqz p3, :cond_0

    .line 77
    const/16 v1, 0xbc

    iput v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    .line 92
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v1, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailerMap:Ljava/util/Hashtable;

    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 83
    .local v0, "trailerObj":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    goto :goto_0

    .line 89
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "no valid trailer for digest"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private clearBlock([B)V
    .locals 2
    .param p1, "block"    # [B

    .prologue
    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 182
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method

.method private isSameAs([B[B)Z
    .locals 4
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .prologue
    .line 138
    const/4 v1, 0x1

    .line 140
    .local v1, "isOkay":Z
    iget v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v3, v3

    if-le v2, v3, :cond_2

    .line 142
    iget-object v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v2, v2

    array-length v3, p2

    if-le v2, v3, :cond_0

    .line 144
    const/4 v1, 0x0

    .line 147
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v2, v2

    if-eq v0, v2, :cond_5

    .line 149
    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-eq v2, v3, :cond_1

    .line 151
    const/4 v1, 0x0

    .line 147
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "i":I
    :cond_2
    iget v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    array-length v3, p2

    if-eq v2, v3, :cond_3

    .line 159
    const/4 v1, 0x0

    .line 162
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v2, p2

    if-eq v0, v2, :cond_5

    .line 164
    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-eq v2, v3, :cond_4

    .line 166
    const/4 v1, 0x0

    .line 162
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_5
    return v1
.end method

.method private returnFalse([B)Z
    .locals 1
    .param p1, "block"    # [B

    .prologue
    .line 591
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 592
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 594
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public generateSignature()[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 345
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v8}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    .line 347
    .local v2, "digSize":I
    const/4 v6, 0x0

    .line 348
    .local v6, "t":I
    const/4 v1, 0x0

    .line 350
    .local v1, "delta":I
    iget v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    const/16 v9, 0xbc

    if-ne v8, v9, :cond_0

    .line 352
    const/16 v6, 0x8

    .line 353
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v8, v8

    sub-int/2addr v8, v2

    add-int/lit8 v1, v8, -0x1

    .line 354
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-interface {v8, v9, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 355
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    const/16 v10, -0x44

    aput-byte v10, v8, v9

    .line 366
    :goto_0
    const/4 v3, 0x0

    .line 367
    .local v3, "header":B
    iget v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/2addr v8, v2

    mul-int/lit8 v8, v8, 0x8

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, 0x4

    iget v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->keyBits:I

    sub-int v7, v8, v9

    .line 369
    .local v7, "x":I
    if-lez v7, :cond_1

    .line 371
    iget v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/lit8 v9, v7, 0x7

    div-int/lit8 v9, v9, 0x8

    sub-int v5, v8, v9

    .line 372
    .local v5, "mR":I
    const/16 v3, 0x60

    .line 374
    sub-int/2addr v1, v5

    .line 376
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-static {v8, v11, v9, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    .end local v5    # "mR":I
    :goto_1
    add-int/lit8 v8, v1, -0x1

    if-lez v8, :cond_3

    .line 388
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_2
    if-eqz v4, :cond_2

    .line 390
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    const/16 v9, -0x45

    aput-byte v9, v8, v4

    .line 388
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 359
    .end local v3    # "header":B
    .end local v4    # "i":I
    .end local v7    # "x":I
    :cond_0
    const/16 v6, 0x10

    .line 360
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v8, v8

    sub-int/2addr v8, v2

    add-int/lit8 v1, v8, -0x2

    .line 361
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-interface {v8, v9, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 362
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v9, v9

    add-int/lit8 v9, v9, -0x2

    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    ushr-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 363
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    goto :goto_0

    .line 380
    .restart local v3    # "header":B
    .restart local v7    # "x":I
    :cond_1
    const/16 v3, 0x40

    .line 381
    iget v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    sub-int/2addr v1, v8

    .line 383
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    invoke-static {v8, v11, v9, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 392
    .restart local v4    # "i":I
    :cond_2
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    add-int/lit8 v9, v1, -0x1

    aget-byte v10, v8, v9

    xor-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 393
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    const/16 v9, 0xb

    aput-byte v9, v8, v11

    .line 394
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    aget-byte v9, v8, v11

    or-int/2addr v9, v3

    int-to-byte v9, v9

    aput-byte v9, v8, v11

    .line 402
    .end local v4    # "i":I
    :goto_3
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v10, v10

    invoke-interface {v8, v9, v11, v10}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 404
    .local v0, "b":[B
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v8}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 405
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-direct {p0, v8}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 407
    return-object v0

    .line 398
    .end local v0    # "b":[B
    :cond_3
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    const/16 v9, 0xa

    aput-byte v9, v8, v11

    .line 399
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    aget-byte v9, v8, v11

    or-int/2addr v9, v3

    int-to-byte v9, v9

    aput-byte v9, v8, v11

    goto :goto_3
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 111
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 113
    .local v0, "kParam":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 115
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->keyBits:I

    .line 117
    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->keyBits:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    .line 119
    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    const/16 v2, 0xbc

    if-ne v1, v2, :cond_0

    .line 121
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v1, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    .line 128
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->reset()V

    .line 129
    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v1, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x3

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 318
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 319
    iput v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 320
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 322
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 327
    :cond_0
    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 328
    iput-boolean v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 330
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    if-eqz v0, :cond_1

    .line 332
    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    .line 333
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preBlock:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 334
    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preBlock:[B

    .line 336
    :cond_1
    return-void
.end method

.method public update(B)V
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 284
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 286
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 288
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    aput-byte p1, v0, v1

    .line 291
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 292
    return-void
.end method

.method public update([BII)V
    .locals 2
    .param p1, "in"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 302
    :goto_0
    if-lez p3, :cond_0

    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 304
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->update(B)V

    .line 305
    add-int/lit8 p2, p2, 0x1

    .line 306
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 309
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 310
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 311
    return-void
.end method

.method public verifySignature([B)Z
    .locals 13
    .param p1, "signature"    # [B

    .prologue
    .line 417
    const/4 v0, 0x0

    .line 419
    .local v0, "block":[B
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    if-nez v10, :cond_0

    .line 423
    :try_start_0
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    const/4 v11, 0x0

    array-length v12, p1

    invoke-interface {v10, p1, v11, v12}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 443
    :goto_0
    const/4 v10, 0x0

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xc0

    xor-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_2

    .line 445
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v10

    .line 586
    :goto_1
    return v10

    .line 425
    :catch_0
    move-exception v2

    .line 427
    .local v2, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    goto :goto_1

    .line 432
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    invoke-static {v10, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v10

    if-nez v10, :cond_1

    .line 434
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "updateWithRecoveredMessage called on different signature"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 437
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preBlock:[B

    .line 439
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    .line 440
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preBlock:[B

    goto :goto_0

    .line 448
    :cond_2
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    aget-byte v10, v0, v10

    and-int/lit8 v10, v10, 0xf

    xor-int/lit8 v10, v10, 0xc

    if-eqz v10, :cond_3

    .line 450
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v10

    goto :goto_1

    .line 453
    :cond_3
    const/4 v1, 0x0

    .line 455
    .local v1, "delta":I
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/lit16 v10, v10, 0xbc

    if-nez v10, :cond_5

    .line 457
    const/4 v1, 0x1

    .line 482
    :goto_2
    const/4 v6, 0x0

    .line 484
    .local v6, "mStart":I
    const/4 v6, 0x0

    :goto_3
    array-length v10, v0

    if-eq v6, v10, :cond_4

    .line 486
    aget-byte v10, v0, v6

    and-int/lit8 v10, v10, 0xf

    xor-int/lit8 v10, v10, 0xa

    if-nez v10, :cond_8

    .line 492
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 497
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v10}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v10

    new-array v3, v10, [B

    .line 499
    .local v3, "hash":[B
    array-length v10, v0

    sub-int/2addr v10, v1

    array-length v11, v3

    sub-int v7, v10, v11

    .line 504
    .local v7, "off":I
    sub-int v10, v7, v6

    if-gtz v10, :cond_9

    .line 506
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v10

    goto :goto_1

    .line 461
    .end local v3    # "hash":[B
    .end local v6    # "mStart":I
    .end local v7    # "off":I
    :cond_5
    array-length v10, v0

    add-int/lit8 v10, v10, -0x2

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    or-int v8, v10, v11

    .line 462
    .local v8, "sigTrail":I
    sget-object v10, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailerMap:Ljava/util/Hashtable;

    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v11}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 464
    .local v9, "trailerObj":Ljava/lang/Integer;
    if-eqz v9, :cond_6

    .line 466
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v8, v10, :cond_7

    .line 468
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "signer initialised with wrong digest for trailer "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 473
    :cond_6
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "unrecognised hash in signature"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 476
    :cond_7
    const/4 v1, 0x2

    goto :goto_2

    .line 484
    .end local v8    # "sigTrail":I
    .end local v9    # "trailerObj":Ljava/lang/Integer;
    .restart local v6    # "mStart":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 512
    .restart local v3    # "hash":[B
    .restart local v7    # "off":I
    :cond_9
    const/4 v10, 0x0

    aget-byte v10, v0, v10

    and-int/lit8 v10, v10, 0x20

    if-nez v10, :cond_e

    .line 514
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 517
    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    sub-int v11, v7, v6

    if-le v10, v11, :cond_a

    .line 519
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v10

    goto/16 :goto_1

    .line 522
    :cond_a
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v10}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 523
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    sub-int v11, v7, v6

    invoke-interface {v10, v0, v6, v11}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 524
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v11, 0x0

    invoke-interface {v10, v3, v11}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 526
    const/4 v5, 0x1

    .line 528
    .local v5, "isOkay":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    array-length v10, v3

    if-eq v4, v10, :cond_c

    .line 530
    add-int v10, v7, v4

    aget-byte v11, v0, v10

    aget-byte v12, v3, v4

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    .line 531
    add-int v10, v7, v4

    aget-byte v10, v0, v10

    if-eqz v10, :cond_b

    .line 533
    const/4 v5, 0x0

    .line 528
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 537
    :cond_c
    if-nez v5, :cond_d

    .line 539
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v10

    goto/16 :goto_1

    .line 542
    :cond_d
    sub-int v10, v7, v6

    new-array v10, v10, [B

    iput-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 543
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v12, v12

    invoke-static {v0, v6, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    :goto_5
    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    if-eqz v10, :cond_12

    .line 577
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    invoke-direct {p0, v10, v11}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->isSameAs([B[B)Z

    move-result v10

    if-nez v10, :cond_12

    .line 579
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v10

    goto/16 :goto_1

    .line 547
    .end local v4    # "i":I
    .end local v5    # "isOkay":Z
    :cond_e
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 549
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v11, 0x0

    invoke-interface {v10, v3, v11}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 551
    const/4 v5, 0x1

    .line 553
    .restart local v5    # "isOkay":Z
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    array-length v10, v3

    if-eq v4, v10, :cond_10

    .line 555
    add-int v10, v7, v4

    aget-byte v11, v0, v10

    aget-byte v12, v3, v4

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    .line 556
    add-int v10, v7, v4

    aget-byte v10, v0, v10

    if-eqz v10, :cond_f

    .line 558
    const/4 v5, 0x0

    .line 553
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 562
    :cond_10
    if-nez v5, :cond_11

    .line 564
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v10

    goto/16 :goto_1

    .line 567
    :cond_11
    sub-int v10, v7, v6

    new-array v10, v10, [B

    iput-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 568
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v12, v12

    invoke-static {v0, v6, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 583
    :cond_12
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v10}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 584
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 586
    const/4 v10, 0x1

    goto/16 :goto_1
.end method
