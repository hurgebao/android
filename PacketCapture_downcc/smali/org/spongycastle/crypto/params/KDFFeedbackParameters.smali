.class public final Lorg/spongycastle/crypto/params/KDFFeedbackParameters;
.super Ljava/lang/Object;
.source "KDFFeedbackParameters.java"

# interfaces
.implements Lorg/spongycastle/crypto/DerivationParameters;


# instance fields
.field private final fixedInputData:[B

.field private final iv:[B

.field private final ki:[B

.field private final r:I

.field private final useCounter:Z


# virtual methods
.method public getFixedInputData()[B
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFFeedbackParameters;->fixedInputData:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getIV()[B
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFFeedbackParameters;->iv:[B

    return-object v0
.end method

.method public getKI()[B
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/params/KDFFeedbackParameters;->ki:[B

    return-object v0
.end method

.method public getR()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/spongycastle/crypto/params/KDFFeedbackParameters;->r:I

    return v0
.end method

.method public useCounter()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/spongycastle/crypto/params/KDFFeedbackParameters;->useCounter:Z

    return v0
.end method
