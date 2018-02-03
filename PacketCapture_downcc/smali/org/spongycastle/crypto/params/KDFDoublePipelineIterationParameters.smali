.class public final Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;
.super Ljava/lang/Object;
.source "KDFDoublePipelineIterationParameters.java"

# interfaces
.implements Lorg/spongycastle/crypto/DerivationParameters;


# instance fields
.field private final fixedInputData:[B

.field private final ki:[B

.field private final r:I

.field private final useCounter:Z


# virtual methods
.method public getFixedInputData()[B
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;->fixedInputData:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getKI()[B
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;->ki:[B

    return-object v0
.end method

.method public getR()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;->r:I

    return v0
.end method

.method public useCounter()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/spongycastle/crypto/params/KDFDoublePipelineIterationParameters;->useCounter:Z

    return v0
.end method
