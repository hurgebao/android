.class public Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;
.super Ljava/security/SignatureSpi;
.source "DSASigner.java"

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$noneDSA;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$detDSA512;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$dsa512;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$detDSA384;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$dsa384;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$detDSA256;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$dsa256;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$detDSA224;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$dsa224;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$detDSA;,
        Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner$stdDSA;
    }
.end annotation


# instance fields
.field private digest:Lorg/spongycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;

.field private signer:Lorg/spongycastle/crypto/DSA;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/DSA;)V
    .locals 0
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "signer"    # Lorg/spongycastle/crypto/DSA;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lorg/spongycastle/crypto/Digest;

    .line 47
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lorg/spongycastle/crypto/DSA;

    .line 48
    return-void
.end method

.method private derDecode([B)[Ljava/math/BigInteger;
    .locals 5
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 208
    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 209
    .local v0, "s":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v2, v4

    return-object v2
.end method

.method private derEncode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 3
    .param p1, "r"    # Ljava/math/BigInteger;
    .param p2, "s"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v1, 0x2

    new-array v0, v1, [Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v1, 0x0

    new-instance v2, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v2, p1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v2, p2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    .line 201
    .local v0, "rs":[Lorg/spongycastle/asn1/ASN1Integer;
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 192
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 102
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 104
    .local v0, "param":Lorg/spongycastle/crypto/CipherParameters;
    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->random:Ljava/security/SecureRandom;

    if-eqz v2, :cond_0

    .line 106
    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v0, v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    .end local v0    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .local v1, "param":Lorg/spongycastle/crypto/CipherParameters;
    move-object v0, v1

    .line 109
    .end local v1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v0    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 110
    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lorg/spongycastle/crypto/DSA;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0}, Lorg/spongycastle/crypto/DSA;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 111
    return-void
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 92
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->random:Ljava/security/SecureRandom;

    .line 93
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 94
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 6
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 56
    instance-of v4, p1, Ljava/security/interfaces/DSAKey;

    if-eqz v4, :cond_0

    .line 58
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 83
    .local v2, "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 84
    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lorg/spongycastle/crypto/DSA;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Lorg/spongycastle/crypto/DSA;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 85
    return-void

    .line 64
    .end local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 66
    .local v0, "bytes":[B
    new-instance v3, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;-><init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    .end local p1    # "publicKey":Ljava/security/PublicKey;
    .local v3, "publicKey":Ljava/security/PublicKey;
    :try_start_1
    instance-of v4, v3, Ljava/security/interfaces/DSAKey;

    if-eqz v4, :cond_1

    .line 70
    invoke-static {v3}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .restart local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    move-object p1, v3

    .line 80
    .end local v3    # "publicKey":Ljava/security/PublicKey;
    .restart local p1    # "publicKey":Ljava/security/PublicKey;
    goto :goto_0

    .line 74
    .end local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .end local p1    # "publicKey":Ljava/security/PublicKey;
    .restart local v3    # "publicKey":Ljava/security/PublicKey;
    :cond_1
    new-instance v4, Ljava/security/InvalidKeyException;

    const-string v5, "can\'t recognise key type in DSA based signer"

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    :catch_0
    move-exception v1

    move-object p1, v3

    .line 79
    .end local v0    # "bytes":[B
    .end local v3    # "publicKey":Ljava/security/PublicKey;
    .local v1, "e":Ljava/lang/Exception;
    .restart local p1    # "publicKey":Ljava/security/PublicKey;
    :goto_1
    new-instance v4, Ljava/security/InvalidKeyException;

    const-string v5, "can\'t recognise key type in DSA based signer"

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 183
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 132
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v1, v3, [B

    .line 134
    .local v1, "hash":[B
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3, v1, v4}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 138
    :try_start_0
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lorg/spongycastle/crypto/DSA;

    invoke-interface {v3, v1}, Lorg/spongycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v2

    .line 140
    .local v2, "sig":[Ljava/math/BigInteger;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->derEncode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 142
    .end local v2    # "sig":[Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

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
    .line 117
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 118
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
    .line 126
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 127
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 6
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 152
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v1, v3, [B

    .line 154
    .local v1, "hash":[B
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3, v1, v4}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 160
    :try_start_0
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->derDecode([B)[Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 167
    .local v2, "sig":[Ljava/math/BigInteger;
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lorg/spongycastle/crypto/DSA;

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-interface {v3, v1, v4, v5}, Lorg/spongycastle/crypto/DSA;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v3

    return v3

    .line 162
    .end local v2    # "sig":[Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "error decoding signature bytes."

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
