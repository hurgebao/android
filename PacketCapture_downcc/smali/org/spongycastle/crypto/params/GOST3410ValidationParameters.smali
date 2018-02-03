.class public Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;
.super Ljava/lang/Object;
.source "GOST3410ValidationParameters.java"


# instance fields
.field private c:I

.field private cL:J

.field private x0:I

.field private x0L:J


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 50
    instance-of v2, p1, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;

    if-nez v2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 55
    check-cast v0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;

    .line 57
    .local v0, "other":Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;
    iget v2, v0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->c:I

    iget v3, p0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->c:I

    if-ne v2, v3, :cond_0

    .line 62
    iget v2, v0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->x0:I

    iget v3, p0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->x0:I

    if-ne v2, v3, :cond_0

    .line 67
    iget-wide v2, v0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    iget-wide v4, p0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 72
    iget-wide v2, v0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    iget-wide v4, p0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 77
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 82
    iget v0, p0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->x0:I

    iget v1, p0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->c:I

    xor-int/2addr v0, v1

    iget-wide v2, p0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    long-to-int v1, v2

    xor-int/2addr v0, v1

    iget-wide v2, p0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->x0L:J

    shr-long/2addr v2, v4

    long-to-int v1, v2

    xor-int/2addr v0, v1

    iget-wide v2, p0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    long-to-int v1, v2

    xor-int/2addr v0, v1

    iget-wide v2, p0, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;->cL:J

    shr-long/2addr v2, v4

    long-to-int v1, v2

    xor-int/2addr v0, v1

    return v0
.end method
