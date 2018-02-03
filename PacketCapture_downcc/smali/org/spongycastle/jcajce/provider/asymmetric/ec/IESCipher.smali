.class public Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;
.super Ljavax/crypto/CipherSpi;
.source "IESCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher$ECIESwithAESCBC;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher$ECIESwithDESedeCBC;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher$ECIESwithAES;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher$ECIESwithDESede;,
        Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher$ECIES;
    }
.end annotation


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private dhaesMode:Z

.field private engine:Lorg/spongycastle/crypto/engines/IESEngine;

.field private engineParam:Ljava/security/AlgorithmParameters;

.field private engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

.field private ivLength:I

.field private key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field private otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field private random:Ljava/security/SecureRandom;

.field private state:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/engines/IESEngine;)V
    .locals 3
    .param p1, "engine"    # Lorg/spongycastle/crypto/engines/IESEngine;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    .line 60
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 61
    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    .line 62
    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    .line 65
    iput-boolean v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->dhaesMode:Z

    .line 66
    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 70
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    .line 71
    iput v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->ivLength:I

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/engines/IESEngine;I)V
    .locals 2
    .param p1, "engine"    # Lorg/spongycastle/crypto/engines/IESEngine;
    .param p2, "ivLength"    # I

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    .line 60
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 61
    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    .line 62
    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->dhaesMode:Z

    .line 66
    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 76
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    .line 77
    iput p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->ivLength:I

    .line 78
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
    .line 484
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineDoFinal([BII)[B

    move-result-object v0

    .line 485
    .local v0, "buf":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p4, p5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    array-length v1, v0

    return v1
.end method

.method public engineDoFinal([BII)[B
    .locals 11
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
    .line 384
    if-eqz p3, :cond_0

    .line 386
    iget-object v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 389
    :cond_0
    iget-object v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 390
    .local v3, "in":[B
    iget-object v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 393
    new-instance v5, Lorg/spongycastle/crypto/params/IESWithCipherParameters;

    iget-object v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/IESParameterSpec;->getDerivationV()[B

    move-result-object v7

    iget-object v8, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v8}, Lorg/spongycastle/jce/spec/IESParameterSpec;->getEncodingV()[B

    move-result-object v8

    iget-object v9, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/IESParameterSpec;->getMacKeySize()I

    move-result v9

    iget-object v10, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v10}, Lorg/spongycastle/jce/spec/IESParameterSpec;->getCipherKeySize()I

    move-result v10

    invoke-direct {v5, v7, v8, v9, v10}, Lorg/spongycastle/crypto/params/IESWithCipherParameters;-><init>([B[BII)V

    .line 398
    .local v5, "params":Lorg/spongycastle/crypto/CipherParameters;
    iget-object v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/IESParameterSpec;->getNonce()[B

    move-result-object v7

    if-eqz v7, :cond_1

    .line 400
    new-instance v6, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v7}, Lorg/spongycastle/jce/spec/IESParameterSpec;->getNonce()[B

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .end local v5    # "params":Lorg/spongycastle/crypto/CipherParameters;
    .local v6, "params":Lorg/spongycastle/crypto/CipherParameters;
    move-object v5, v6

    .line 403
    .end local v6    # "params":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v5    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    iget-object v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v7, Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    .line 407
    .local v1, "ecParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    iget-object v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    if-eqz v7, :cond_4

    .line 411
    :try_start_0
    iget v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    iget v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    .line 413
    :cond_2
    iget-object v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    iget-object v10, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v7, v8, v9, v10, v5}, Lorg/spongycastle/crypto/engines/IESEngine;->init(ZLorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;)V

    .line 419
    :goto_0
    iget-object v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    const/4 v8, 0x0

    array-length v9, v3

    invoke-virtual {v7, v3, v8, v9}, Lorg/spongycastle/crypto/engines/IESEngine;->processBlock([BII)[B

    move-result-object v7

    .line 461
    :goto_1
    return-object v7

    .line 417
    :cond_3
    iget-object v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    iget-object v10, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v7, v8, v9, v10, v5}, Lorg/spongycastle/crypto/engines/IESEngine;->init(ZLorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 427
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    iget v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    .line 430
    :cond_5
    new-instance v2, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v2}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    .line 431
    .local v2, "gen":Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;
    new-instance v7, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v8, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->random:Ljava/security/SecureRandom;

    invoke-direct {v7, v1, v8}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v2, v7}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 433
    new-instance v4, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;

    new-instance v7, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher$1;

    invoke-direct {v7, p0}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher$1;-><init>(Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;)V

    invoke-direct {v4, v2, v7}, Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;-><init>(Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;Lorg/spongycastle/crypto/KeyEncoder;)V

    .line 444
    .local v4, "kGen":Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;
    :try_start_1
    iget-object v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    iget-object v8, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v7, v8, v5, v4}, Lorg/spongycastle/crypto/engines/IESEngine;->init(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;)V

    .line 446
    iget-object v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    const/4 v8, 0x0

    array-length v9, v3

    invoke-virtual {v7, v3, v8, v9}, Lorg/spongycastle/crypto/engines/IESEngine;->processBlock([BII)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto :goto_1

    .line 448
    :catch_1
    move-exception v0

    .line 450
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v7, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 454
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "gen":Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;
    .end local v4    # "kGen":Lorg/spongycastle/crypto/generators/EphemeralKeyPairGenerator;
    :cond_6
    iget v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_7

    iget v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_8

    .line 459
    :cond_7
    :try_start_2
    iget-object v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    iget-object v8, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    new-instance v9, Lorg/spongycastle/crypto/parsers/ECIESPublicKeyParser;

    invoke-direct {v9, v1}, Lorg/spongycastle/crypto/parsers/ECIESPublicKeyParser;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    invoke-virtual {v7, v8, v5, v9}, Lorg/spongycastle/crypto/engines/IESEngine;->init(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/KeyParser;)V

    .line 461
    iget-object v7, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    const/4 v8, 0x0

    array-length v9, v3

    invoke-virtual {v7, v3, v8, v9}, Lorg/spongycastle/crypto/engines/IESEngine;->processBlock([BII)[B
    :try_end_2
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    goto :goto_1

    .line 463
    :catch_2
    move-exception v0

    .line 465
    .local v0, "e":Lorg/spongycastle/crypto/InvalidCipherTextException;
    new-instance v7, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 470
    .end local v0    # "e":Lorg/spongycastle/crypto/InvalidCipherTextException;
    :cond_8
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "cipher not initialised"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public engineGetBlockSize()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v0

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineGetIV()[B
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .locals 2
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    .line 95
    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/ECKey;

    if-eqz v0, :cond_0

    .line 97
    check-cast p1, Lorg/spongycastle/jce/interfaces/ECKey;

    .end local p1    # "key":Ljava/security/Key;
    invoke-interface {p1}, Lorg/spongycastle/jce/interfaces/ECKey;->getParameters()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    return v0

    .line 101
    .restart local p1    # "key":Ljava/security/Key;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not an EC key"

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

    .line 154
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/engines/IESEngine;->getMac()Lorg/spongycastle/crypto/Mac;

    move-result-object v3

    invoke-interface {v3}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v0

    .line 156
    .local v0, "len1":I
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    if-eqz v3, :cond_1

    .line 158
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v3, Lorg/spongycastle/jce/interfaces/ECKey;

    invoke-interface {v3}, Lorg/spongycastle/jce/interfaces/ECKey;->getParameters()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x8

    add-int/lit8 v1, v3, 0x1

    .line 165
    .local v1, "len2":I
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v3

    if-nez v3, :cond_2

    .line 167
    move v2, p1

    .line 182
    .local v2, "len3":I
    :goto_0
    iget v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    if-eq v3, v5, :cond_0

    iget v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    if-ne v3, v7, :cond_7

    .line 184
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    .line 188
    :goto_1
    return v3

    .line 162
    .end local v1    # "len2":I
    .end local v2    # "len3":I
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "cipher not initialised"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 169
    .restart local v1    # "len2":I
    :cond_2
    iget v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    if-eq v3, v5, :cond_3

    iget v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    if-ne v3, v7, :cond_4

    .line 171
    :cond_3
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v2

    .restart local v2    # "len3":I
    goto :goto_0

    .line 173
    .end local v2    # "len3":I
    :cond_4
    iget v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    if-eq v3, v6, :cond_5

    iget v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    if-ne v3, v8, :cond_6

    .line 175
    :cond_5
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/engines/IESEngine;->getCipher()Lorg/spongycastle/crypto/BufferedBlockCipher;

    move-result-object v3

    sub-int v4, p1, v0

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v2

    .restart local v2    # "len3":I
    goto :goto_0

    .line 179
    .end local v2    # "len3":I
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "cipher not initialised"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 186
    .restart local v2    # "len3":I
    :cond_7
    iget v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    if-eq v3, v6, :cond_8

    iget v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    if-ne v3, v8, :cond_9

    .line 188
    :cond_8
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    add-int/2addr v3, v2

    goto :goto_1

    .line 192
    :cond_9
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "cipher not initialised"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    .prologue
    .line 113
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    if-eqz v1, :cond_0

    .line 117
    :try_start_0
    const-string v1, "IES"

    const-string v2, "SC"

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    .line 118
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    return-object v1

    .line 120
    :catch_0
    move-exception v0

    .line 122
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
    .line 227
    const/4 v1, 0x0

    .line 229
    .local v1, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_0

    .line 233
    :try_start_0
    const-class v2, Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 241
    :cond_0
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    .line 242
    invoke-virtual {p0, p1, p2, v1, p4}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 244
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 237
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
    .line 342
    const/4 v1, 0x0

    :try_start_0
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v1, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "can\'t handle supplied parameter spec"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5
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
    .line 254
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 257
    if-nez p3, :cond_0

    .line 259
    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engine:Lorg/spongycastle/crypto/engines/IESEngine;

    invoke-static {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/IESUtil;->guessParameterSpec(Lorg/spongycastle/crypto/engines/IESEngine;)Lorg/spongycastle/jce/spec/IESParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    .line 270
    .end local p3    # "engineSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v2}, Lorg/spongycastle/jce/spec/IESParameterSpec;->getNonce()[B

    move-result-object v1

    .line 272
    .local v1, "nonce":[B
    if-eqz v1, :cond_3

    .line 274
    iget v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->ivLength:I

    if-nez v2, :cond_2

    .line 276
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "NONCE present in IES Parameters when none required"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 261
    .end local v1    # "nonce":[B
    .restart local p3    # "engineSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_0
    instance-of v2, p3, Lorg/spongycastle/jce/spec/IESParameterSpec;

    if-eqz v2, :cond_1

    .line 263
    check-cast p3, Lorg/spongycastle/jce/spec/IESParameterSpec;

    .end local p3    # "engineSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->engineSpec:Lorg/spongycastle/jce/spec/IESParameterSpec;

    goto :goto_0

    .line 267
    .restart local p3    # "engineSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_1
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "must be passed IES parameters"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    .end local p3    # "engineSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v1    # "nonce":[B
    :cond_2
    array-length v2, v1

    iget v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->ivLength:I

    if-eq v2, v3, :cond_3

    .line 280
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NONCE in IES Parameters needs to be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->ivLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes long"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 285
    :cond_3
    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-ne p1, v2, :cond_7

    .line 287
    :cond_4
    instance-of v2, p2, Lorg/spongycastle/jce/interfaces/ECPublicKey;

    if-eqz v2, :cond_5

    .line 289
    check-cast p2, Ljava/security/PublicKey;

    .end local p2    # "key":Ljava/security/Key;
    invoke-static {p2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 327
    :goto_1
    iput-object p4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->random:Ljava/security/SecureRandom;

    .line 328
    iput p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->state:I

    .line 329
    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 331
    return-void

    .line 291
    .restart local p2    # "key":Ljava/security/Key;
    :cond_5
    instance-of v2, p2, Lorg/spongycastle/jce/interfaces/IESKey;

    if-eqz v2, :cond_6

    move-object v0, p2

    .line 293
    check-cast v0, Lorg/spongycastle/jce/interfaces/IESKey;

    .line 295
    .local v0, "ieKey":Lorg/spongycastle/jce/interfaces/IESKey;
    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/IESKey;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 296
    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_1

    .line 300
    .end local v0    # "ieKey":Lorg/spongycastle/jce/interfaces/IESKey;
    :cond_6
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "must be passed recipient\'s public EC key for encryption"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 303
    :cond_7
    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/4 v2, 0x4

    if-ne p1, v2, :cond_b

    .line 305
    :cond_8
    instance-of v2, p2, Lorg/spongycastle/jce/interfaces/ECPrivateKey;

    if-eqz v2, :cond_9

    .line 307
    check-cast p2, Ljava/security/PrivateKey;

    .end local p2    # "key":Ljava/security/Key;
    invoke-static {p2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_1

    .line 309
    .restart local p2    # "key":Ljava/security/Key;
    :cond_9
    instance-of v2, p2, Lorg/spongycastle/jce/interfaces/IESKey;

    if-eqz v2, :cond_a

    move-object v0, p2

    .line 311
    check-cast v0, Lorg/spongycastle/jce/interfaces/IESKey;

    .line 313
    .restart local v0    # "ieKey":Lorg/spongycastle/jce/interfaces/IESKey;
    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/IESKey;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->otherKeyParameter:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 314
    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/IESKey;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->key:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_1

    .line 318
    .end local v0    # "ieKey":Lorg/spongycastle/jce/interfaces/IESKey;
    :cond_a
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "must be passed recipient\'s private EC key for decryption"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 323
    :cond_b
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "must be passed EC key"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
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
    .line 133
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "modeName":Ljava/lang/String;
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->dhaesMode:Z

    .line 147
    :goto_0
    return-void

    .line 139
    :cond_0
    const-string v1, "DHAES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->dhaesMode:Z

    goto :goto_0

    .line 145
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
    .line 200
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "paddingName":Ljava/lang/String;
    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    :cond_0
    return-void

    .line 207
    :cond_1
    const-string v1, "PKCS5PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PKCS7PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
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
    .line 371
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public engineUpdate([BII)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    .line 359
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 360
    const/4 v0, 0x0

    return-object v0
.end method
