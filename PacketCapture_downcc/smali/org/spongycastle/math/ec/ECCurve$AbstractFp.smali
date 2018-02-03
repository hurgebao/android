.class public abstract Lorg/spongycastle/math/ec/ECCurve$AbstractFp;
.super Lorg/spongycastle/math/ec/ECCurve;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractFp"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "q"    # Ljava/math/BigInteger;

    .prologue
    .line 457
    invoke-static {p1}, Lorg/spongycastle/math/field/FiniteFields;->getPrimeField(Ljava/math/BigInteger;)Lorg/spongycastle/math/field/FiniteField;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/ECCurve;-><init>(Lorg/spongycastle/math/field/FiniteField;)V

    .line 458
    return-void
.end method


# virtual methods
.method protected decompressPoint(ILjava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 6
    .param p1, "yTilde"    # I
    .param p2, "X1"    # Ljava/math/BigInteger;

    .prologue
    const/4 v4, 0x1

    .line 462
    invoke-virtual {p0, p2}, Lorg/spongycastle/math/ec/ECCurve$AbstractFp;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 463
    .local v1, "x":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECCurve$AbstractFp;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECCurve$AbstractFp;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 464
    .local v0, "rhs":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->sqrt()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 469
    .local v2, "y":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v2, :cond_0

    .line 471
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid point compression"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 474
    :cond_0
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v5

    if-ne p1, v4, :cond_2

    move v3, v4

    :goto_0
    if-eq v5, v3, :cond_1

    .line 477
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->negate()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 480
    :cond_1
    invoke-virtual {p0, v1, v2, v4}, Lorg/spongycastle/math/ec/ECCurve$AbstractFp;->createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 474
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
