.class public Lorg/spongycastle/crypto/digests/ShortenedDigest;
.super Ljava/lang/Object;
.source "ShortenedDigest.java"

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;


# instance fields
.field private baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

.field private length:I


# virtual methods
.method public doFinal([BI)I
    .locals 3
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/ExtendedDigest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 64
    .local v0, "tmp":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/ExtendedDigest;->doFinal([BI)I

    .line 66
    iget v1, p0, Lorg/spongycastle/crypto/digests/ShortenedDigest;->length:I

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget v1, p0, Lorg/spongycastle/crypto/digests/ShortenedDigest;->length:I

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/ExtendedDigest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/digests/ShortenedDigest;->length:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v0

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/spongycastle/crypto/digests/ShortenedDigest;->length:I

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/ExtendedDigest;->reset()V

    .line 74
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "in"    # B

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/ExtendedDigest;->update(B)V

    .line 53
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/ShortenedDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/ExtendedDigest;->update([BII)V

    .line 58
    return-void
.end method
