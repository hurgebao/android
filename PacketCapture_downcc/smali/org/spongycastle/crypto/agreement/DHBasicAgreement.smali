.class public Lorg/spongycastle/crypto/agreement/DHBasicAgreement;
.super Ljava/lang/Object;
.source "DHBasicAgreement.java"

# interfaces
.implements Lorg/spongycastle/crypto/BasicAgreement;


# instance fields
.field private dhParams:Lorg/spongycastle/crypto/params/DHParameters;

.field private key:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateAgreement(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .locals 4
    .param p1, "pubKey"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 62
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    .line 64
    .local v0, "pub":Lorg/spongycastle/crypto/params/DHPublicKeyParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lorg/spongycastle/crypto/params/DHParameters;

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Diffie-Hellman public key has wrong parameters."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->key:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lorg/spongycastle/crypto/params/DHParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->key:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 31
    instance-of v2, p1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 33
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 34
    .local v1, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 41
    .end local v1    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .local v0, "kParam":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :goto_0
    instance-of v2, v0, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    if-nez v2, :cond_1

    .line 43
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "DHEngine expects DHPrivateKeyParameters"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0    # "kParam":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :cond_0
    move-object v0, p1

    .line 38
    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .restart local v0    # "kParam":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_0

    .line 46
    :cond_1
    check-cast v0, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    .end local v0    # "kParam":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->key:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    .line 47
    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->key:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lorg/spongycastle/crypto/params/DHParameters;

    .line 48
    return-void
.end method
