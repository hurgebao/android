.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;
.super Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;
.source "GF2nPolynomialField.java"


# instance fields
.field private isPentanomial:Z

.field private isTrinomial:Z

.field private pc:[I

.field private tc:I


# direct methods
.method private testPentanomials()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 484
    const/4 v0, 0x0

    .line 485
    .local v0, "done":Z
    const/4 v5, 0x0

    .line 487
    .local v5, "l":I
    new-instance v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v9, v9, 0x1

    invoke-direct {v6, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 488
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 489
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {v6, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 490
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v6, v6, -0x3

    if-gt v2, v6, :cond_7

    if-nez v0, :cond_7

    .line 492
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 493
    add-int/lit8 v3, v2, 0x1

    .local v3, "j":I
    :goto_1
    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v6, v6, -0x2

    if-gt v3, v6, :cond_6

    if-nez v0, :cond_6

    .line 495
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 496
    add-int/lit8 v4, v3, 0x1

    .local v4, "k":I
    :goto_2
    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v6, v6, -0x1

    if-gt v4, v6, :cond_5

    if-nez v0, :cond_5

    .line 498
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 499
    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    move v9, v7

    :goto_3
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_1

    move v6, v7

    :goto_4
    or-int/2addr v9, v6

    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_2

    move v6, v7

    :goto_5
    or-int/2addr v9, v6

    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_3

    move v6, v7

    :goto_6
    or-int/2addr v6, v9

    if-eqz v6, :cond_4

    .line 502
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v0

    .line 503
    add-int/lit8 v5, v5, 0x1

    .line 504
    if-eqz v0, :cond_4

    .line 506
    iput-boolean v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    .line 507
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    aput v2, v6, v8

    .line 508
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    aput v3, v6, v7

    .line 509
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    const/4 v7, 0x2

    aput v4, v6, v7

    move v1, v0

    .line 520
    .end local v0    # "done":Z
    .end local v3    # "j":I
    .end local v4    # "k":I
    .local v1, "done":Z
    :goto_7
    return v1

    .end local v1    # "done":Z
    .restart local v0    # "done":Z
    .restart local v3    # "j":I
    .restart local v4    # "k":I
    :cond_0
    move v9, v8

    .line 499
    goto :goto_3

    :cond_1
    move v6, v8

    goto :goto_4

    :cond_2
    move v6, v8

    goto :goto_5

    :cond_3
    move v6, v8

    goto :goto_6

    .line 513
    :cond_4
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    .line 496
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 515
    :cond_5
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    .line 493
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 517
    .end local v4    # "k":I
    :cond_6
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "j":I
    :cond_7
    move v1, v0

    .line 520
    .end local v0    # "done":Z
    .restart local v1    # "done":Z
    goto :goto_7
.end method

.method private testRandom()Z
    .locals 5

    .prologue
    .line 533
    const/4 v0, 0x0

    .line 535
    .local v0, "done":Z
    new-instance v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 536
    const/4 v2, 0x0

    .line 537
    .local v2, "l":I
    :cond_0
    if-nez v0, :cond_1

    .line 539
    add-int/lit8 v2, v2, 0x1

    .line 540
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->randomize()V

    .line 541
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 542
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 543
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 545
    const/4 v0, 0x1

    move v1, v0

    .line 550
    .end local v0    # "done":Z
    .local v1, "done":I
    :goto_0
    return v1

    .end local v1    # "done":I
    .restart local v0    # "done":Z
    :cond_1
    move v1, v0

    .restart local v1    # "done":I
    goto :goto_0
.end method

.method private testTrinomials()Z
    .locals 6

    .prologue
    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, "done":Z
    const/4 v3, 0x0

    .line 452
    .local v3, "l":I
    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 453
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 454
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 455
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v2, v4, :cond_1

    if-nez v0, :cond_1

    .line 457
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v4, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 458
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v0

    .line 459
    add-int/lit8 v3, v3, 0x1

    .line 460
    if-eqz v0, :cond_0

    .line 462
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    .line 463
    iput v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->tc:I

    move v1, v0

    .line 470
    .end local v0    # "done":Z
    .local v1, "done":Z
    :goto_1
    return v1

    .line 466
    .end local v1    # "done":Z
    .restart local v0    # "done":Z
    :cond_0
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v4, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    .line 467
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v0

    .line 455
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 470
    .end local v0    # "done":Z
    .restart local v1    # "done":Z
    goto :goto_1
.end method


# virtual methods
.method protected computeFieldPolynomial()V
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testTrinomials()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testPentanomials()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testRandom()Z

    goto :goto_0
.end method
