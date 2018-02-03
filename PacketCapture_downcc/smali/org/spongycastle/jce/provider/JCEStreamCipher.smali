.class public Lorg/spongycastle/jce/provider/JCEStreamCipher;
.super Ljavax/crypto/CipherSpi;
.source "JCEStreamCipher.java"

# interfaces
.implements Lorg/spongycastle/jcajce/provider/symmetric/util/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jce/provider/JCEStreamCipher$Twofish_OFB8;,
        Lorg/spongycastle/jce/provider/JCEStreamCipher$Blowfish_OFB8;,
        Lorg/spongycastle/jce/provider/JCEStreamCipher$Skipjack_OFB8;,
        Lorg/spongycastle/jce/provider/JCEStreamCipher$DESede_OFB8;,
        Lorg/spongycastle/jce/provider/JCEStreamCipher$DES_OFB8;,
        Lorg/spongycastle/jce/provider/JCEStreamCipher$Twofish_CFB8;,
        Lorg/spongycastle/jce/provider/JCEStreamCipher$Blowfish_CFB8;,
        Lorg/spongycastle/jce/provider/JCEStreamCipher$Skipjack_CFB8;,
        Lorg/spongycastle/jce/provider/JCEStreamCipher$DESede_CFB8;,
        Lorg/spongycastle/jce/provider/JCEStreamCipher$DES_CFB8;
    }
.end annotation


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field private cipher:Lorg/spongycastle/crypto/StreamCipher;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private ivLength:I

.field private ivParam:Lorg/spongycastle/crypto/params/ParametersWithIV;

.field private pbeAlgorithm:Ljava/lang/String;

.field private pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/StreamCipher;I)V
    .locals 5
    .param p1, "engine"    # Lorg/spongycastle/crypto/StreamCipher;
    .param p2, "ivLength"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 74
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->availableSpecs:[Ljava/lang/Class;

    .line 64
    iput v3, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->ivLength:I

    .line 66
    iput-object v4, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 67
    iput-object v4, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->cipher:Lorg/spongycastle/crypto/StreamCipher;

    .line 76
    iput p2, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->ivLength:I

    .line 77
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 366
    if-eqz p3, :cond_0

    .line 368
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->cipher:Lorg/spongycastle/crypto/StreamCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    .line 371
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->cipher:Lorg/spongycastle/crypto/StreamCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/StreamCipher;->reset()V

    .line 373
    return p3
.end method

.method protected engineDoFinal([BII)[B
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .prologue
    .line 344
    if-eqz p3, :cond_0

    .line 346
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/jce/provider/JCEStreamCipher;->engineUpdate([BII)[B

    move-result-object v0

    .line 348
    .local v0, "out":[B
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->cipher:Lorg/spongycastle/crypto/StreamCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/StreamCipher;->reset()V

    .line 355
    .end local v0    # "out":[B
    :goto_0
    return-object v0

    .line 353
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->cipher:Lorg/spongycastle/crypto/StreamCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/StreamCipher;->reset()V

    .line 355
    const/4 v1, 0x0

    new-array v0, v1, [B

    goto :goto_0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->ivParam:Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->ivParam:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    .line 92
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 0
    .param p1, "inputLen"    # I

    .prologue
    .line 98
    return p1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    .prologue
    .line 103
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v2, :cond_0

    .line 105
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v2, :cond_0

    .line 109
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    const-string v3, "SC"

    invoke-static {v2, v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .line 110
    .local v1, "engineParams":Ljava/security/AlgorithmParameters;
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v1    # "engineParams":Ljava/security/AlgorithmParameters;
    :goto_0
    return-object v1

    .line 114
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    goto :goto_0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 6
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
    .line 263
    const/4 v2, 0x0

    .line 265
    .local v2, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_1

    .line 267
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->availableSpecs:[Ljava/lang/Class;

    array-length v3, v3

    if-eq v1, v3, :cond_0

    .line 271
    :try_start_0
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->availableSpecs:[Ljava/lang/Class;

    aget-object v3, v3, v1

    invoke-virtual {p3, v3}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 280
    :cond_0
    if-nez v2, :cond_1

    .line 282
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t handle parameter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 274
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, p1, p2, v2, p4}, Lorg/spongycastle/jce/provider/JCEStreamCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 287
    iput-object p3, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 288
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
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
    .line 298
    const/4 v1, 0x0

    :try_start_0
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v1, p3}, Lorg/spongycastle/jce/provider/JCEStreamCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 9
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 158
    iput-object v5, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 159
    iput-object v5, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 161
    iput-object v5, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 166
    instance-of v5, p2, Ljavax/crypto/SecretKey;

    if-nez v5, :cond_0

    .line 168
    new-instance v5, Ljava/security/InvalidKeyException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key for algorithm "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not suitable for symmetric enryption."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 171
    :cond_0
    instance-of v5, p2, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v5, :cond_8

    move-object v2, p2

    .line 173
    check-cast v2, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 175
    .local v2, "k":Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 177
    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 184
    :goto_0
    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 186
    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .line 187
    .local v3, "param":Lorg/spongycastle/crypto/CipherParameters;
    new-instance v5, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getSalt()[B

    move-result-object v6

    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIterationCount()I

    move-result v7

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v5, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 199
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_1
    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    .line 201
    check-cast v5, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v5, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->ivParam:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 218
    .end local v2    # "k":Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_1
    :goto_2
    iget v5, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->ivLength:I

    if-eqz v5, :cond_4

    instance-of v5, v3, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-nez v5, :cond_4

    .line 220
    move-object v1, p4

    .line 222
    .local v1, "ivRandom":Ljava/security/SecureRandom;
    if-nez v1, :cond_2

    .line 224
    new-instance v1, Ljava/security/SecureRandom;

    .end local v1    # "ivRandom":Ljava/security/SecureRandom;
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 227
    .restart local v1    # "ivRandom":Ljava/security/SecureRandom;
    :cond_2
    if-eq p1, v8, :cond_3

    const/4 v5, 0x3

    if-ne p1, v5, :cond_b

    .line 229
    :cond_3
    iget v5, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->ivLength:I

    new-array v0, v5, [B

    .line 231
    .local v0, "iv":[B
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 232
    new-instance v4, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-direct {v4, v3, v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .end local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .local v4, "param":Lorg/spongycastle/crypto/CipherParameters;
    move-object v5, v4

    .line 233
    check-cast v5, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v5, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->ivParam:Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object v3, v4

    .line 241
    .end local v0    # "iv":[B
    .end local v1    # "ivRandom":Ljava/security/SecureRandom;
    .end local v4    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_4
    packed-switch p1, :pswitch_data_0

    .line 252
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "eeek!"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    :goto_3
    return-void

    .line 181
    .end local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v2    # "k":Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_5
    invoke-virtual {v2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->pbeAlgorithm:Ljava/lang/String;

    goto :goto_0

    .line 189
    :cond_6
    instance-of v5, p3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v5, :cond_7

    .line 191
    iget-object v5, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->cipher:Lorg/spongycastle/crypto/StreamCipher;

    invoke-interface {v5}, Lorg/spongycastle/crypto/StreamCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, p3, v5}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .line 192
    .restart local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    check-cast p3, Ljavax/crypto/spec/PBEParameterSpec;

    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    iput-object p3, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    goto :goto_1

    .line 196
    .end local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_7
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    const-string v6, "PBE requires PBE parameters to be set."

    invoke-direct {v5, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 204
    .end local v2    # "k":Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_8
    if-nez p3, :cond_9

    .line 206
    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_2

    .line 208
    .end local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_9
    instance-of v5, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v5, :cond_a

    .line 210
    new-instance v3, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v5, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    check-cast p3, Ljavax/crypto/spec/IvParameterSpec;

    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .restart local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    move-object v5, v3

    .line 211
    check-cast v5, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v5, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->ivParam:Lorg/spongycastle/crypto/params/ParametersWithIV;

    goto :goto_2

    .line 215
    .end local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_a
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "unknown parameter type."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 237
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v1    # "ivRandom":Ljava/security/SecureRandom;
    .restart local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_b
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    const-string v6, "no IV set when one expected"

    invoke-direct {v5, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 245
    .end local v1    # "ivRandom":Ljava/security/SecureRandom;
    :pswitch_0
    iget-object v5, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->cipher:Lorg/spongycastle/crypto/StreamCipher;

    invoke-interface {v5, v8, v3}, Lorg/spongycastle/crypto/StreamCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_3

    .line 249
    :pswitch_1
    iget-object v5, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->cipher:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3}, Lorg/spongycastle/crypto/StreamCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_3

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string v0, "ECB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    return-void
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 3
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 143
    const-string v0, "NoPadding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unknown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    return-void
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 9
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 405
    const/4 v6, 0x0

    :try_start_0
    array-length v7, p1

    invoke-virtual {p0, p1, v6, v7}, Lorg/spongycastle/jce/provider/JCEStreamCipher;->engineDoFinal([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 416
    .local v2, "encoded":[B
    const/4 v6, 0x3

    if-ne p3, v6, :cond_1

    .line 418
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v5, v2, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 458
    :cond_0
    :goto_0
    return-object v5

    .line 407
    .end local v2    # "encoded":[B
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v6, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 411
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v1

    .line 413
    .local v1, "e2":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v6, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 420
    .end local v1    # "e2":Ljavax/crypto/IllegalBlockSizeException;
    .restart local v2    # "encoded":[B
    :cond_1
    const-string v6, ""

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-ne p3, v8, :cond_2

    .line 428
    :try_start_1
    invoke-static {v2}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v3

    .line 430
    .local v3, "in":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-static {v3}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v5

    .line 432
    .local v5, "privKey":Ljava/security/PrivateKey;
    if-nez v5, :cond_0

    .line 438
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "algorithm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not supported"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 441
    .end local v3    # "in":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v5    # "privKey":Ljava/security/PrivateKey;
    :catch_2
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "Invalid key encoding."

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 450
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    const-string v6, "SC"

    invoke-static {p2, v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 452
    .local v4, "kf":Ljava/security/KeyFactory;
    const/4 v6, 0x1

    if-ne p3, v6, :cond_3

    .line 454
    new-instance v6, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v6, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    goto :goto_0

    .line 456
    :cond_3
    if-ne p3, v8, :cond_4

    .line 458
    new-instance v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v6, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v6}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v5

    goto :goto_0

    .line 461
    .end local v4    # "kf":Ljava/security/KeyFactory;
    :catch_3
    move-exception v0

    .line 463
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown key type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 465
    .end local v0    # "e":Ljava/security/NoSuchProviderException;
    :catch_4
    move-exception v0

    .line 467
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown key type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 469
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_5
    move-exception v1

    .line 471
    .local v1, "e2":Ljava/security/spec/InvalidKeySpecException;
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown key type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 474
    .end local v1    # "e2":Ljava/security/spec/InvalidKeySpecException;
    .restart local v4    # "kf":Ljava/security/KeyFactory;
    :cond_4
    new-instance v6, Ljava/security/InvalidKeyException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown key type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected engineUpdate([BII[BI)I
    .locals 7
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 328
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->cipher:Lorg/spongycastle/crypto/StreamCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/StreamCipher;->processBytes([BII[BI)I
    :try_end_0
    .catch Lorg/spongycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    return p3

    .line 332
    :catch_0
    move-exception v6

    .line 334
    .local v6, "e":Lorg/spongycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/ShortBufferException;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII)[B
    .locals 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    .line 311
    new-array v4, p3, [B

    .line 313
    .local v4, "out":[B
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEStreamCipher;->cipher:Lorg/spongycastle/crypto/StreamCipher;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    .line 315
    return-object v4
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 4
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 381
    .local v1, "encoded":[B
    if-nez v1, :cond_0

    .line 383
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Cannot wrap key, null encoding."

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 388
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v1

    invoke-virtual {p0, v1, v2, v3}, Lorg/spongycastle/jce/provider/JCEStreamCipher;->engineDoFinal([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 390
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
