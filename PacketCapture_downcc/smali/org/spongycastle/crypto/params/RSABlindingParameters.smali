.class public Lorg/spongycastle/crypto/params/RSABlindingParameters;
.super Ljava/lang/Object;
.source "RSABlindingParameters.java"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private blindingFactor:Ljava/math/BigInteger;

.field private publicKey:Lorg/spongycastle/crypto/params/RSAKeyParameters;


# virtual methods
.method public getBlindingFactor()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/spongycastle/crypto/params/RSABlindingParameters;->blindingFactor:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicKey()Lorg/spongycastle/crypto/params/RSAKeyParameters;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/spongycastle/crypto/params/RSABlindingParameters;->publicKey:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    return-object v0
.end method
