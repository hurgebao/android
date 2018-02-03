.class public final Lorg/spongycastle/crypto/params/KDFCounterParameters;
.super Ljava/lang/Object;
.source "KDFCounterParameters.java"

# interfaces
.implements Lorg/spongycastle/crypto/DerivationParameters;


# instance fields
.field private fixedInputDataCounterPrefix:[B

.field private fixedInputDataCounterSuffix:[B

.field private ki:[B

.field private r:I


# virtual methods
.method public getFixedInputDataCounterPrefix()[B
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->fixedInputDataCounterPrefix:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getFixedInputDataCounterSuffix()[B
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->fixedInputDataCounterSuffix:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getKI()[B
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->ki:[B

    return-object v0
.end method

.method public getR()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lorg/spongycastle/crypto/params/KDFCounterParameters;->r:I

    return v0
.end method
