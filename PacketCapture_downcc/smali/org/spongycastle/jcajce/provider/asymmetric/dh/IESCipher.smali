.class public Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;
.super Ljavax/crypto/CipherSpi;
.source "IESCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher$IESwithAES;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher$IESwithDESede;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher$IES;
    }
.end annotation


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private dhaesMode:Z

.field private engine:Lorg/spongycastle/crypto/engines/IESEngine;

.field private engineParam:Ljava/security/AlgorithmParameters;

.field private engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

.field private key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field private otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field private random:Ljava/security/SecureRandom;

.field private state:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/engines/IESEngine;)V
    .locals 2
    .param p1, "engine"    # Lorg/spongycastle/crypto/engines/IESEngine;

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    .line 58
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 59
    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    .line 60
    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->dhaesMode:Z

    .line 64
    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 68
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    .line 69
    return-void
.end method


# virtual methods
.method public engineDoFinal([BII[BI)I
    .locals 3
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLength"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 462
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineDoFinal([BII)[B

    move-result-object v0

    .line 463
    .local v0, "buf":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p4, p5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    array-length v1, v0

    return v1
.end method

.method public engineDoFinal([BII)[B
    .locals 12
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    .line 356
    if-eqz p3, :cond_0

    .line 358
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 361
    :cond_0
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 362
    .local v3, "in":[B
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 365
    new-instance v5, Lorg/spongycastle/crypto/params/IESWithCipherParameters;

    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v6}, Lorg/spongycastle/jce/spec/IESParameterSpec;->getDerivationV()[B

    move-result-object v6

    iget-object v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/IESParameterSpec;->getEncodingV()[B

    move-result-object v7

    iget-object v8, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v8}, Lorg/spongycastle/jce/spec/IESParameterSpec;->getMacKeySize()I

    move-result v8

    iget-object v9, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/IESParameterSpec;->getCipherKeySize()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/spongycastle/crypto/params/IESWithCipherParameters;-><init>([B[BII)V

    .line 370
    .local v5, "params":Lorg/spongycastle/crypto/params/IESParameters;
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v6, Lorg/spongycastle/crypto/params/DHKeyParameters;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/DHKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v0

    .line 373
    .local v0, "dhParams":Lorg/spongycastle/crypto/params/DHParameters;
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    if-eqz v6, :cond_3

    .line 377
    :try_start_0
    iget v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    if-eq v6, v10, :cond_1

    iget v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    if-ne v6, v11, :cond_2

    .line 379
    :cond_1
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    iget-object v9, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v6, v7, v8, v9, v5}, Lorg/spongycastle/crypto/engines/IESEngine;->init(ZLorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;)V

    .line 385
    :goto_0
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    const/4 v7, 0x0

    array-length v8, v3

    invoke-virtual {v6, v3, v7, v8}, Lorg/spongycastle/crypto/engines/IESEngine;->processBlock([BII)[B

    move-result-object v6

    .line 438
    :goto_1
    return-object v6

    .line 383
    :cond_2
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    iget-object v9, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v6, v7, v8, v9, v5}, Lorg/spongycastle/crypto/engines/IESEngine;->init(ZLorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v1

    .line 389
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 393
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    if-eq v6, v10, :cond_4

    iget v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    if-ne v6, v11, :cond_5

    .line 396
    :cond_4
    new-instance v2, Lorg/spongycastle/crypto/generators/DHKeyPairGenerator;

    invoke-direct {v2}, Lorg/spongycastle/crypto/generators/DHKeyPairGenerator;-><init>()V

    .line 397
    .local v2, "gen":Lorg/spongycastle/crypto/generators/DHKeyPairGenerator;
    new-instance v6, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    iget-object v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->random:Ljava/security/SecureRandom;

    invoke-direct {v6, v7, v0}, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)V

    invoke-virtual {v2, v6}, Lorg/spongycastle/crypto/generators/DHKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 399
    new-instance v4, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

    new-instance v6, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher$1;

    invoke-direct {v6, p0}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher$1;-><init>(Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;)V

    invoke-direct {v4, v2, v6}, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;-><init>(Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;Lorg/spongycastle/crypto/KeyEncoder;)V

    .line 422
    .local v4, "kGen":Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;
    :try_start_1
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    iget-object v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v6, v7, v5, v4}, Lorg/spongycastle/crypto/engines/IESEngine;->init(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;)V

    .line 424
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    const/4 v7, 0x0

    array-length v8, v3

    invoke-virtual {v6, v3, v7, v8}, Lorg/spongycastle/crypto/engines/IESEngine;->processBlock([BII)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_1

    .line 426
    :catch_1
    move-exception v1

    .line 428
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v6, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 431
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "gen":Lorg/spongycastle/crypto/generators/DHKeyPairGenerator;
    .end local v4    # "kGen":Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;
    :cond_5
    iget v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    iget v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    .line 436
    :cond_6
    :try_start_2
    iget-object v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    iget-object v8, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    new-instance v9, Lorg/spongycastle/crypto/parsers/DHIESPublicKeyParser;

    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v6, Lorg/spongycastle/crypto/params/DHKeyParameters;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/DHKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v6

    invoke-direct {v9, v6}, Lorg/spongycastle/crypto/parsers/DHIESPublicKeyParser;-><init>(Lorg/spongycastle/crypto/params/DHParameters;)V

    invoke-virtual {v7, v8, v5, v9}, Lorg/spongycastle/crypto/engines/IESEngine;->init(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/KeyParser;)V

    .line 438
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    const/4 v7, 0x0

    array-length v8, v3

    invoke-virtual {v6, v3, v7, v8}, Lorg/spongycastle/crypto/engines/IESEngine;->processBlock([BII)[B
    :try_end_2
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    goto :goto_1

    .line 440
    :catch_2
    move-exception v1

    .line 442
    .local v1, "e":Lorg/spongycastle/crypto/InvalidCipherTextException;
    new-instance v6, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 447
    .end local v1    # "e":Lorg/spongycastle/crypto/InvalidCipherTextException;
    :cond_7
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "IESCipher not initialised"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public engineGetBlockSize()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineGetIV()[B
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .locals 2
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    .line 87
    instance-of v0, p1, Ljavax/crypto/interfaces/DHKey;

    if-eqz v0, :cond_0

    .line 89
    check-cast p1, Ljavax/crypto/interfaces/DHKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0

    .line 93
    .restart local p1    # "key":Ljava/security/Key;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a DH key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetOutputSize(I)I
    .locals 9
    .param p1, "inputLen"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 145
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/engines/IESEngine;->getMac()Lorg/spongycastle/crypto/Mac;

    move-result-object v3

    invoke-interface {v3}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v0

    .line 147
    .local v0, "len1":I
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    if-eqz v3, :cond_1

    .line 149
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v3, Ljavax/crypto/interfaces/DHKey;

    invoke-interface {v3}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    add-int/lit8 v1, v3, 0x1

    .line 156
    .local v1, "len2":I
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v3

    if-nez v3, :cond_2

    .line 158
    move v2, p1

    .line 173
    .local v2, "len3":I
    :goto_0
    iget v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    if-eq v3, v5, :cond_0

    iget v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    if-ne v3, v7, :cond_7

    .line 175
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    .line 179
    :goto_1
    return v3

    .line 153
    .end local v1    # "len2":I
    .end local v2    # "len3":I
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "cipher not initialised"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 160
    .restart local v1    # "len2":I
    :cond_2
    iget v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    if-eq v3, v5, :cond_3

    iget v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    if-ne v3, v7, :cond_4

    .line 162
    :cond_3
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v2

    .restart local v2    # "len3":I
    goto :goto_0

    .line 164
    .end local v2    # "len3":I
    :cond_4
    iget v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    if-eq v3, v6, :cond_5

    iget v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    if-ne v3, v8, :cond_6

    .line 166
    :cond_5
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v3

    sub-int v4, p1, v0

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v2

    .restart local v2    # "len3":I
    goto :goto_0

    .line 170
    .end local v2    # "len3":I
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "cipher not initialised"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 177
    .restart local v2    # "len3":I
    :cond_7
    iget v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    if-eq v3, v6, :cond_8

    iget v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    if-ne v3, v8, :cond_9

    .line 179
    :cond_8
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    add-int/2addr v3, v2

    goto :goto_1

    .line 183
    :cond_9
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "IESCipher not initialised"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    if-eqz v1, :cond_0

    .line 109
    :try_start_0
    const-string v1, "IES"

    const-string v2, "SC"

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    .line 110
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 217
    const/4 v1, 0x0

    .line 219
    .local v1, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_0

    .line 223
    :try_start_0
    const-class v2, Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 231
    :cond_0
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    .line 232
    invoke-virtual {p0, p1, p2, v1, p4}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 233
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot recognise parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 314
    const/4 v1, 0x0

    :try_start_0
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v1, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "can\'t handle supplied parameter spec"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "engineSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 244
    if-nez p3, :cond_1

    .line 246
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-static {v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/IESUtil;->guessParameterSpec(Lorg/spongycastle/crypto/engines/IESEngine;)Lorg/spongycastle/jce/spec/IESParameterSpec;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    .line 258
    .end local p3    # "engineSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    .line 260
    :cond_0
    instance-of v1, p2, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v1, :cond_3

    .line 262
    check-cast p2, Ljava/security/PublicKey;

    .end local p2    # "key":Ljava/security/Key;
    invoke-static {p2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DHUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 299
    :goto_1
    iput-object p4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->random:Ljava/security/SecureRandom;

    .line 300
    iput p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->state:I

    .line 301
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 303
    return-void

    .line 248
    .restart local p2    # "key":Ljava/security/Key;
    .restart local p3    # "engineSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_1
    instance-of v1, p3, Lorg/spongycastle/jce/spec/IESParameterSpec;

    if-eqz v1, :cond_2

    .line 250
    check-cast p3, Lorg/spongycastle/jce/spec/IESParameterSpec;

    .end local p3    # "engineSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    goto :goto_0

    .line 254
    .restart local p3    # "engineSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_2
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "must be passed IES parameters"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    .end local p3    # "engineSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_3
    instance-of v1, p2, Lorg/spongycastle/jce/interfaces/IESKey;

    if-eqz v1, :cond_4

    move-object v0, p2

    .line 266
    check-cast v0, Lorg/spongycastle/jce/interfaces/IESKey;

    .line 268
    .local v0, "ieKey":Lorg/spongycastle/jce/interfaces/IESKey;
    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/IESKey;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DHUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 269
    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DHUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_1

    .line 273
    .end local v0    # "ieKey":Lorg/spongycastle/jce/interfaces/IESKey;
    :cond_4
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "must be passed recipient\'s public DH key for encryption"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :cond_5
    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v1, 0x4

    if-ne p1, v1, :cond_9

    .line 278
    :cond_6
    instance-of v1, p2, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v1, :cond_7

    .line 280
    check-cast p2, Ljava/security/PrivateKey;

    .end local p2    # "key":Ljava/security/Key;
    invoke-static {p2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DHUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_1

    .line 282
    .restart local p2    # "key":Ljava/security/Key;
    :cond_7
    instance-of v1, p2, Lorg/spongycastle/jce/interfaces/IESKey;

    if-eqz v1, :cond_8

    move-object v0, p2

    .line 284
    check-cast v0, Lorg/spongycastle/jce/interfaces/IESKey;

    .line 286
    .restart local v0    # "ieKey":Lorg/spongycastle/jce/interfaces/IESKey;
    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/IESKey;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DHUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 287
    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DHUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_1

    .line 291
    .end local v0    # "ieKey":Lorg/spongycastle/jce/interfaces/IESKey;
    :cond_8
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "must be passed recipient\'s private DH key for decryption"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    :cond_9
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "must be passed EC key"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "modeName":Ljava/lang/String;
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->dhaesMode:Z

    .line 139
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v1, "DHAES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->dhaesMode:Z

    goto :goto_0

    .line 137
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t support mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .locals 3
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "paddingName":Ljava/lang/String;
    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    :cond_0
    return-void

    .line 198
    :cond_1
    const-string v1, "PKCS5PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PKCS7PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    const-string v2, "padding not available with IESCipher"

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineUpdate([BII[BI)I
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public engineUpdate([BII)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    .line 331
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dh/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 332
    const/4 v0, 0x0

    return-object v0
.end method
