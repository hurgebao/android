.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;
.super Lorg/spongycastle/pqc/math/linearalgebra/Matrix;
.source "GF2mMatrix.java"


# instance fields
.field protected field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

.field protected matrix:[[I


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 319
    if-eqz p1, :cond_0

    instance-of v4, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;

    if-nez v4, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, p1

    .line 324
    check-cast v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;

    .line 326
    .local v2, "otherMatrix":Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v5, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ne v4, v5, :cond_0

    iget v4, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ne v4, v5, :cond_0

    .line 333
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v0, v4, :cond_3

    .line 335
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v1, v4, :cond_2

    .line 337
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    iget-object v5, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v5, v5, v0

    aget v5, v5, v1

    if-ne v4, v5, :cond_0

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 333
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 344
    .end local v1    # "j":I
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 349
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->hashCode()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1f

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x1f

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    add-int v0, v3, v4

    .line 350
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v1, v3, :cond_1

    .line 352
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v2, v3, :cond_0

    .line 354
    mul-int/lit8 v3, v0, 0x1f

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v4, v4, v1

    aget v4, v4, v2

    add-int v0, v3, v4

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 350
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v2    # "j":I
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Matrix over "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v0, v3, :cond_1

    .line 367
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v1, v3, :cond_0

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v5, v5, v0

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->elementToStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 371
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    .end local v1    # "j":I
    :cond_1
    return-object v2
.end method
