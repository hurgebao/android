.class public Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;
.super Ljava/lang/Object;
.source "ECUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertMidTerms([I)[I
    .locals 6
    .param p0, "k"    # [I

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 43
    new-array v0, v2, [I

    .line 45
    .local v0, "res":[I
    array-length v1, p0

    if-ne v1, v3, :cond_0

    .line 47
    aget v1, p0, v5

    aput v1, v0, v5

    .line 100
    :goto_0
    return-object v0

    .line 51
    :cond_0
    array-length v1, p0

    if-eq v1, v2, :cond_1

    .line 53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only Trinomials and pentanomials supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_1
    aget v1, p0, v5

    aget v2, p0, v3

    if-ge v1, v2, :cond_3

    aget v1, p0, v5

    aget v2, p0, v4

    if-ge v1, v2, :cond_3

    .line 58
    aget v1, p0, v5

    aput v1, v0, v5

    .line 59
    aget v1, p0, v3

    aget v2, p0, v4

    if-ge v1, v2, :cond_2

    .line 61
    aget v1, p0, v3

    aput v1, v0, v3

    .line 62
    aget v1, p0, v4

    aput v1, v0, v4

    goto :goto_0

    .line 66
    :cond_2
    aget v1, p0, v4

    aput v1, v0, v3

    .line 67
    aget v1, p0, v3

    aput v1, v0, v4

    goto :goto_0

    .line 70
    :cond_3
    aget v1, p0, v3

    aget v2, p0, v4

    if-ge v1, v2, :cond_5

    .line 72
    aget v1, p0, v3

    aput v1, v0, v5

    .line 73
    aget v1, p0, v5

    aget v2, p0, v4

    if-ge v1, v2, :cond_4

    .line 75
    aget v1, p0, v5

    aput v1, v0, v3

    .line 76
    aget v1, p0, v4

    aput v1, v0, v4

    goto :goto_0

    .line 80
    :cond_4
    aget v1, p0, v4

    aput v1, v0, v3

    .line 81
    aget v1, p0, v5

    aput v1, v0, v4

    goto :goto_0

    .line 86
    :cond_5
    aget v1, p0, v4

    aput v1, v0, v5

    .line 87
    aget v1, p0, v5

    aget v2, p0, v3

    if-ge v1, v2, :cond_6

    .line 89
    aget v1, p0, v5

    aput v1, v0, v3

    .line 90
    aget v1, p0, v3

    aput v1, v0, v4

    goto :goto_0

    .line 94
    :cond_6
    aget v1, p0, v3

    aput v1, v0, v3

    .line 95
    aget v1, p0, v5

    aput v1, v0, v4

    goto :goto_0
.end method

.method public static generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 14
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 167
    instance-of v0, p0, Lorg/spongycastle/jce/interfaces/ECPrivateKey;

    if-eqz v0, :cond_1

    move-object v8, p0

    .line 169
    check-cast v8, Lorg/spongycastle/jce/interfaces/ECPrivateKey;

    .line 170
    .local v8, "k":Lorg/spongycastle/jce/interfaces/ECPrivateKey;
    invoke-interface {v8}, Lorg/spongycastle/jce/interfaces/ECPrivateKey;->getParameters()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v11

    .line 172
    .local v11, "s":Lorg/spongycastle/jce/spec/ECParameterSpec;
    if-nez v11, :cond_0

    .line 174
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v11

    .line 177
    :cond_0
    new-instance v12, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-interface {v8}, Lorg/spongycastle/jce/interfaces/ECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v13

    new-instance v0, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v12, v13, v0}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    move-object v0, v12

    .line 205
    .end local v8    # "k":Lorg/spongycastle/jce/interfaces/ECPrivateKey;
    .end local v11    # "s":Lorg/spongycastle/jce/spec/ECParameterSpec;
    :goto_0
    return-object v0

    .line 181
    :cond_1
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_2

    move-object v9, p0

    .line 183
    check-cast v9, Ljava/security/interfaces/ECPrivateKey;

    .line 184
    .local v9, "privKey":Ljava/security/interfaces/ECPrivateKey;
    invoke-interface {v9}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v11

    .line 185
    .restart local v11    # "s":Lorg/spongycastle/jce/spec/ECParameterSpec;
    new-instance v12, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-interface {v9}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v13

    new-instance v0, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v12, v13, v0}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    move-object v0, v12

    goto :goto_0

    .line 194
    .end local v9    # "privKey":Ljava/security/interfaces/ECPrivateKey;
    .end local v11    # "s":Lorg/spongycastle/jce/spec/ECParameterSpec;
    :cond_2
    :try_start_0
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v6

    .line 196
    .local v6, "bytes":[B
    if-nez v6, :cond_3

    .line 198
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "no encoding for EC private key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v6    # "bytes":[B
    :catch_0
    move-exception v7

    .line 210
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot identify EC private key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "bytes":[B
    :cond_3
    :try_start_1
    invoke-static {v6}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v10

    .line 203
    .local v10, "privateKey":Ljava/security/PrivateKey;
    instance-of v0, v10, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_4

    .line 205
    invoke-static {v10}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_4
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "can\'t identify EC private key."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 14
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 107
    instance-of v0, p0, Lorg/spongycastle/jce/interfaces/ECPublicKey;

    if-eqz v0, :cond_1

    move-object v8, p0

    .line 109
    check-cast v8, Lorg/spongycastle/jce/interfaces/ECPublicKey;

    .line 110
    .local v8, "k":Lorg/spongycastle/jce/interfaces/ECPublicKey;
    invoke-interface {v8}, Lorg/spongycastle/jce/interfaces/ECPublicKey;->getParameters()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v11

    .line 112
    .local v11, "s":Lorg/spongycastle/jce/spec/ECParameterSpec;
    if-nez v11, :cond_0

    .line 114
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v11

    .line 116
    new-instance v12, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    check-cast v8, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    .end local v8    # "k":Lorg/spongycastle/jce/interfaces/ECPublicKey;
    invoke-virtual {v8}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->engineGetQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    new-instance v0, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v12, v13, v0}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    move-object v0, v12

    .line 151
    .end local v11    # "s":Lorg/spongycastle/jce/spec/ECParameterSpec;
    :goto_0
    return-object v0

    .line 122
    .restart local v8    # "k":Lorg/spongycastle/jce/interfaces/ECPublicKey;
    .restart local v11    # "s":Lorg/spongycastle/jce/spec/ECParameterSpec;
    :cond_0
    new-instance v12, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-interface {v8}, Lorg/spongycastle/jce/interfaces/ECPublicKey;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    new-instance v0, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v12, v13, v0}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    move-object v0, v12

    goto :goto_0

    .line 127
    .end local v8    # "k":Lorg/spongycastle/jce/interfaces/ECPublicKey;
    .end local v11    # "s":Lorg/spongycastle/jce/spec/ECParameterSpec;
    :cond_1
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_2

    move-object v9, p0

    .line 129
    check-cast v9, Ljava/security/interfaces/ECPublicKey;

    .line 130
    .local v9, "pubKey":Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v9}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v11

    .line 131
    .restart local v11    # "s":Lorg/spongycastle/jce/spec/ECParameterSpec;
    new-instance v12, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-interface {v9}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-interface {v9}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    new-instance v0, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v12, v13, v0}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    move-object v0, v12

    goto :goto_0

    .line 140
    .end local v9    # "pubKey":Ljava/security/interfaces/ECPublicKey;
    .end local v11    # "s":Lorg/spongycastle/jce/spec/ECParameterSpec;
    :cond_2
    :try_start_0
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v6

    .line 142
    .local v6, "bytes":[B
    if-nez v6, :cond_3

    .line 144
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "no encoding for EC public key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v6    # "bytes":[B
    :catch_0
    move-exception v7

    .line 156
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot identify EC public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "bytes":[B
    :cond_3
    :try_start_1
    invoke-static {v6}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->getPublicKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object v10

    .line 149
    .local v10, "publicKey":Ljava/security/PublicKey;
    instance-of v0, v10, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_4

    .line 151
    invoke-static {v10}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 160
    :cond_4
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "cannot identify EC public key."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCurveName(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 270
    invoke-static {p0}, Lorg/spongycastle/asn1/x9/X962NamedCurves;->getName(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 274
    invoke-static {p0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->getName(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 275
    if-nez v0, :cond_0

    .line 277
    invoke-static {p0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->getName(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 279
    :cond_0
    if-nez v0, :cond_1

    .line 281
    invoke-static {p0}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->getName(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_1
    if-nez v0, :cond_2

    .line 285
    invoke-static {p0}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getName(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 289
    :cond_2
    return-object v0
.end method

.method public static getNamedCurveByOid(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 1
    .param p0, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 245
    invoke-static {p0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 247
    .local v0, "params":Lorg/spongycastle/asn1/x9/X9ECParameters;
    if-nez v0, :cond_2

    .line 249
    invoke-static {p0}, Lorg/spongycastle/asn1/x9/X962NamedCurves;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 250
    if-nez v0, :cond_0

    .line 252
    invoke-static {p0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 254
    :cond_0
    if-nez v0, :cond_1

    .line 256
    invoke-static {p0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 258
    :cond_1
    if-nez v0, :cond_2

    .line 260
    invoke-static {p0}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 264
    :cond_2
    return-object v0
.end method

.method public static getNamedCurveOid(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-static {p0}, Lorg/spongycastle/asn1/x9/X962NamedCurves;->getOID(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 222
    .local v0, "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_2

    .line 224
    invoke-static {p0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->getOID(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 225
    if-nez v0, :cond_0

    .line 227
    invoke-static {p0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->getOID(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 229
    :cond_0
    if-nez v0, :cond_1

    .line 231
    invoke-static {p0}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->getOID(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 233
    :cond_1
    if-nez v0, :cond_2

    .line 235
    invoke-static {p0}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getOID(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 239
    :cond_2
    return-object v0
.end method
