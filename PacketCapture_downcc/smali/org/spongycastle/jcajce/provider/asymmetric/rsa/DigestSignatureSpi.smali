.class public Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;
.super Ljava/security/SignatureSpi;
.source "DigestSignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$noneRSA;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$RIPEMD256;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$RIPEMD128;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$RIPEMD160;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$MD5;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$MD4;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$MD2;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA512;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA384;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA256;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA224;,
        Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi$SHA1;
    }
.end annotation


# instance fields
.field private algId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private digest:Lorg/spongycastle/crypto/Digest;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V
    .locals 2
    .param p1, "objId"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 64
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    .line 65
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 66
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v0, p1, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->algId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 67
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    .line 54
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->algId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 56
    return-void
.end method

.method private derEncode([B)[B
    .locals 2
    .param p1, "hash"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->algId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    if-nez v1, :cond_0

    .line 256
    .end local p1    # "hash":[B
    :goto_0
    return-object p1

    .line 254
    .restart local p1    # "hash":[B
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/x509/DigestInfo;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->algId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/asn1/x509/DigestInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 256
    .local v0, "dInfo":Lorg/spongycastle/asn1/x509/DigestInfo;
    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/DigestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0
.end method

.method private getType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 236
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 88
    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplied key ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->getType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not a RSAPrivateKey instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_0
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .end local p1    # "privateKey":Ljava/security/PrivateKey;
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    .line 95
    .local v0, "param":Lorg/spongycastle/crypto/CipherParameters;
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 97
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 98
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 4
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 73
    instance-of v1, p1, Ljava/security/interfaces/RSAPublicKey;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplied key ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->getType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not a RSAPublicKey instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_0
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .end local p1    # "publicKey":Ljava/security/PublicKey;
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    .line 80
    .local v0, "param":Lorg/spongycastle/crypto/CipherParameters;
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 81
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 82
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    .line 217
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 130
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    .line 132
    .local v2, "hash":[B
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3, v2, v4}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 136
    :try_start_0
    invoke-direct {p0, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->derEncode([B)[B

    move-result-object v0

    .line 138
    .local v0, "bytes":[B
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-interface {v3, v0, v4, v5}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 140
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "key too small for signature type"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 144
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 116
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 125
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 12
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 154
    iget-object v9, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v9}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    new-array v3, v9, [B

    .line 156
    .local v3, "hash":[B
    iget-object v9, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v9, v3, v7}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 163
    :try_start_0
    iget-object v9, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    const/4 v10, 0x0

    array-length v11, p1

    invoke-interface {v9, p1, v10, v11}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v5

    .line 165
    .local v5, "sig":[B
    invoke-direct {p0, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/DigestSignatureSpi;->derEncode([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 172
    .local v1, "expected":[B
    array-length v9, v5

    array-length v10, v1

    if-ne v9, v10, :cond_2

    .line 174
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v5

    if-ge v4, v9, :cond_4

    .line 176
    aget-byte v9, v5, v4

    aget-byte v10, v1, v4

    if-eq v9, v10, :cond_1

    .line 211
    .end local v1    # "expected":[B
    .end local v4    # "i":I
    .end local v5    # "sig":[B
    :cond_0
    :goto_1
    return v7

    .line 167
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "expected":[B
    .restart local v4    # "i":I
    .restart local v5    # "sig":[B
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    .end local v4    # "i":I
    :cond_2
    array-length v9, v5

    array-length v10, v1

    add-int/lit8 v10, v10, -0x2

    if-ne v9, v10, :cond_0

    .line 184
    array-length v9, v5

    array-length v10, v3

    sub-int/2addr v9, v10

    add-int/lit8 v6, v9, -0x2

    .line 185
    .local v6, "sigOffset":I
    array-length v9, v1

    array-length v10, v3

    sub-int/2addr v9, v10

    add-int/lit8 v2, v9, -0x2

    .line 187
    .local v2, "expectedOffset":I
    aget-byte v9, v1, v8

    add-int/lit8 v9, v9, -0x2

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 188
    const/4 v9, 0x3

    aget-byte v10, v1, v9

    add-int/lit8 v10, v10, -0x2

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 190
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    array-length v9, v3

    if-ge v4, v9, :cond_3

    .line 192
    add-int v9, v6, v4

    aget-byte v9, v5, v9

    add-int v10, v2, v4

    aget-byte v10, v1, v10

    if-ne v9, v10, :cond_0

    .line 190
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 198
    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_4

    .line 200
    aget-byte v9, v5, v4

    aget-byte v10, v1, v4

    if-ne v9, v10, :cond_0

    .line 198
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v2    # "expectedOffset":I
    .end local v6    # "sigOffset":I
    :cond_4
    move v7, v8

    .line 211
    goto :goto_1
.end method
