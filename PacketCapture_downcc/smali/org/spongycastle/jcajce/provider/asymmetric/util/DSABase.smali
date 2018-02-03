.class public abstract Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;
.super Ljava/security/SignatureSpi;
.source "DSABase.java"

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;


# instance fields
.field protected digest:Lorg/spongycastle/crypto/Digest;

.field protected encoder:Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;

.field protected signer:Lorg/spongycastle/crypto/DSA;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/DSA;Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;)V
    .locals 0
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "signer"    # Lorg/spongycastle/crypto/DSA;
    .param p3, "encoder"    # Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lorg/spongycastle/crypto/Digest;

    .line 27
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->signer:Lorg/spongycastle/crypto/DSA;

    .line 28
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->encoder:Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;

    .line 29
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    .line 91
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

    .line 50
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v1, v3, [B

    .line 52
    .local v1, "hash":[B
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3, v1, v4}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 56
    :try_start_0
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->signer:Lorg/spongycastle/crypto/DSA;

    invoke-interface {v3, v1}, Lorg/spongycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v2

    .line 58
    .local v2, "sig":[Ljava/math/BigInteger;
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->encoder:Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-interface {v3, v4, v5}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;->encode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 60
    .end local v2    # "sig":[Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 62
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
    .line 35
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 36
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
    .line 44
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 45
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

    .line 70
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v1, v3, [B

    .line 72
    .local v1, "hash":[B
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3, v1, v4}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 78
    :try_start_0
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->encoder:Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;

    invoke-interface {v3, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSAEncoder;->decode([B)[Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 85
    .local v2, "sig":[Ljava/math/BigInteger;
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/util/DSABase;->signer:Lorg/spongycastle/crypto/DSA;

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-interface {v3, v1, v4, v5}, Lorg/spongycastle/crypto/DSA;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v3

    return v3

    .line 80
    .end local v2    # "sig":[Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "error decoding signature bytes."

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
