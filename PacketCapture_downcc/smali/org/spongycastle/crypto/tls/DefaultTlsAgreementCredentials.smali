.class public Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;
.super Lorg/spongycastle/crypto/tls/AbstractTlsAgreementCredentials;
.source "DefaultTlsAgreementCredentials.java"


# instance fields
.field protected basicAgreement:Lorg/spongycastle/crypto/BasicAgreement;

.field protected certificate:Lorg/spongycastle/crypto/tls/Certificate;

.field protected privateKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field protected truncateAgreement:Z


# virtual methods
.method public generateAgreement(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 3
    .param p1, "peerPublicKey"    # Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .prologue
    .line 68
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->basicAgreement:Lorg/spongycastle/crypto/BasicAgreement;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->privateKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {v1, v2}, Lorg/spongycastle/crypto/BasicAgreement;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 69
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->basicAgreement:Lorg/spongycastle/crypto/BasicAgreement;

    invoke-interface {v1, p1}, Lorg/spongycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v0

    .line 71
    .local v0, "agreementValue":Ljava/math/BigInteger;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->truncateAgreement:Z

    if-eqz v1, :cond_0

    .line 73
    invoke-static {v0}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v1

    .line 76
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->basicAgreement:Lorg/spongycastle/crypto/BasicAgreement;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BasicAgreement;->getFieldSize()I

    move-result v1

    invoke-static {v1, v0}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public getCertificate()Lorg/spongycastle/crypto/tls/Certificate;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->certificate:Lorg/spongycastle/crypto/tls/Certificate;

    return-object v0
.end method
