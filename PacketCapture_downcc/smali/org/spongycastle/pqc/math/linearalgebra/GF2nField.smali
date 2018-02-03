.class public abstract Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;
.super Ljava/lang/Object;
.source "GF2nField.java"


# instance fields
.field protected fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

.field protected mDegree:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract computeFieldPolynomial()V
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 73
    if-eqz p1, :cond_0

    instance-of v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    if-nez v2, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 78
    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    .line 80
    .local v0, "otherField":Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;
    iget v2, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    if-ne v2, v3, :cond_0

    .line 84
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v3, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    instance-of v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    if-eqz v2, :cond_2

    instance-of v2, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    if-eqz v2, :cond_0

    .line 93
    :cond_2
    instance-of v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;

    if-eqz v2, :cond_3

    instance-of v2, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;

    if-eqz v2, :cond_0

    .line 98
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final getDegree()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    return v0
.end method

.method public final getFieldPolynomial()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->computeFieldPolynomial()V

    .line 61
    :cond_0
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
