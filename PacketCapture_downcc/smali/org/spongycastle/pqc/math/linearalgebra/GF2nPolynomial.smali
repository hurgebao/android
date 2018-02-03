.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
.super Ljava/lang/Object;
.source "GF2nPolynomial.java"


# instance fields
.field private coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

.field private size:I


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 253
    if-eqz p1, :cond_0

    instance-of v3, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    if-nez v3, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 258
    check-cast v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    .line 260
    .local v1, "otherPol":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v3

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 265
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v3, :cond_2

    .line 267
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v0

    iget-object v4, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 272
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final getDegree()I
    .locals 2

    .prologue
    .line 141
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 143
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->isZero()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 141
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 148
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
