.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;
.super Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;
.source "GF2nONBField.java"


# instance fields
.field private mBit:I

.field private mLength:I

.field private mType:I


# virtual methods
.method protected computeFieldPolynomial()V
    .locals 7

    .prologue
    .line 299
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 301
    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    add-int/lit8 v5, v5, 0x1

    const-string v6, "ALL"

    invoke-direct {v4, v5, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    iput-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 306
    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    add-int/lit8 v4, v4, 0x1

    const-string v5, "ONE"

    invoke-direct {v2, v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    .line 308
    .local v2, "q":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    add-int/lit8 v4, v4, 0x1

    const-string v5, "X"

    invoke-direct {v1, v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    .line 309
    .local v1, "p":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 313
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v0, v4, :cond_2

    .line 316
    move-object v3, v2

    .line 318
    .local v3, "r":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    move-object v2, v1

    .line 320
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v1

    .line 321
    invoke-virtual {v1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 323
    .end local v3    # "r":Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    :cond_2
    iput-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    goto :goto_0
.end method

.method getONBBit()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mBit:I

    return v0
.end method

.method getONBLength()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mLength:I

    return v0
.end method
