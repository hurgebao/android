.class public Lorg/spongycastle/crypto/params/NaccacheSternKeyGenerationParameters;
.super Lorg/spongycastle/crypto/KeyGenerationParameters;
.source "NaccacheSternKeyGenerationParameters.java"


# instance fields
.field private certainty:I

.field private cntSmallPrimes:I

.field private debug:Z


# virtual methods
.method public getCertainty()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lorg/spongycastle/crypto/params/NaccacheSternKeyGenerationParameters;->certainty:I

    return v0
.end method

.method public getCntSmallPrimes()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/spongycastle/crypto/params/NaccacheSternKeyGenerationParameters;->cntSmallPrimes:I

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/spongycastle/crypto/params/NaccacheSternKeyGenerationParameters;->debug:Z

    return v0
.end method
