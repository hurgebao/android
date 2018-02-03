.class public Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyFactorySpi;
.super Ljava/security/KeyFactorySpi;
.source "RainbowKeyFactorySpi.java"

# interfaces
.implements Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 5
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 74
    instance-of v2, p1, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;

    if-eqz v2, :cond_0

    .line 76
    new-instance v2, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    check-cast p1, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v2, p1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;-><init>(Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;)V

    .line 85
    :goto_0
    return-object v2

    .line 78
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_0
    instance-of v2, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v2, :cond_1

    .line 81
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v1

    .line 85
    .local v1, "encKey":[B
    :try_start_0
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyFactorySpi;->generatePrivate(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "encKey":[B
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_1
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported key specification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 5
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 125
    instance-of v2, p1, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;

    if-eqz v2, :cond_0

    .line 127
    new-instance v2, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    check-cast p1, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v2, p1}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;-><init>(Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;)V

    .line 137
    :goto_0
    return-object v2

    .line 129
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_0
    instance-of v2, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v2, :cond_1

    .line 132
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v1

    .line 137
    .local v1, "encKey":[B
    :try_start_0
    invoke-static {v1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/RainbowKeyFactorySpi;->generatePublic(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "encKey":[B
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_1
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown key specification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 9
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "keySpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 164
    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    if-eqz v0, :cond_1

    .line 166
    const-class v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 187
    :goto_0
    return-object v0

    .line 170
    :cond_0
    const-class v0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v7, p1

    .line 172
    check-cast v7, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    .line 173
    .local v7, "privKey":Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;
    new-instance v0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->getInvA1()[[S

    move-result-object v1

    invoke-virtual {v7}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->getB1()[S

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->getInvA2()[[S

    move-result-object v3

    invoke-virtual {v7}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->getB2()[S

    move-result-object v4

    invoke-virtual {v7}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->getVi()[I

    move-result-object v5

    invoke-virtual {v7}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;->getLayers()[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPrivateKeySpec;-><init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V

    goto :goto_0

    .line 178
    .end local v7    # "privKey":Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;
    :cond_1
    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    if-eqz v0, :cond_3

    .line 180
    const-class v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    goto :goto_0

    .line 184
    :cond_2
    const-class v0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v8, p1

    .line 186
    check-cast v8, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    .line 187
    .local v8, "pubKey":Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;
    new-instance v0, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;

    invoke-virtual {v8}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->getDocLength()I

    move-result v1

    invoke-virtual {v8}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->getCoeffQuadratic()[[S

    move-result-object v2

    invoke-virtual {v8}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->getCoeffSingular()[[S

    move-result-object v3

    invoke-virtual {v8}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;->getCoeffScalar()[S

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/pqc/jcajce/spec/RainbowPublicKeySpec;-><init>(I[[S[[S[S)V

    goto :goto_0

    .line 194
    .end local v8    # "pubKey":Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;
    :cond_3
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_4
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key specification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 213
    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    return-object p1

    .line 218
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Unsupported key type"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generatePrivate(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 8
    .param p1, "keyInfo"    # Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;

    move-result-object v7

    .line 226
    .local v7, "pKey":Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;
    new-instance v0, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->getInvA1()[[S

    move-result-object v1

    invoke-virtual {v7}, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->getB1()[S

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->getInvA2()[[S

    move-result-object v3

    invoke-virtual {v7}, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->getB2()[S

    move-result-object v4

    invoke-virtual {v7}, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->getVi()[I

    move-result-object v5

    invoke-virtual {v7}, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->getLayers()[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey;-><init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V

    return-object v0
.end method

.method public generatePublic(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 6
    .param p1, "keyInfo"    # Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/pqc/asn1/RainbowPublicKey;

    move-result-object v0

    .line 234
    .local v0, "pKey":Lorg/spongycastle/pqc/asn1/RainbowPublicKey;
    new-instance v1, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->getDocLength()I

    move-result v2

    invoke-virtual {v0}, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->getCoeffQuadratic()[[S

    move-result-object v3

    invoke-virtual {v0}, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->getCoeffSingular()[[S

    move-result-object v4

    invoke-virtual {v0}, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->getCoeffScalar()[S

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPublicKey;-><init>(I[[S[[S[S)V

    return-object v1
.end method
