.class public Lorg/spongycastle/jce/spec/ECNamedCurveSpec;
.super Ljava/security/spec/ECParameterSpec;
.source "ECNamedCurveSpec.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Ljava/security/spec/EllipticCurve;
    .param p3, "g"    # Ljava/security/spec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .param p5, "h"    # Ljava/math/BigInteger;

    .prologue
    .line 98
    invoke-virtual {p5}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {p0, p2, p3, p4, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 100
    iput-object p1, p0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p3, "g"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .param p5, "h"    # Ljava/math/BigInteger;
    .param p6, "seed"    # [B

    .prologue
    .line 111
    invoke-static {p2, p6}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->convertCurve(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {p3}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->convertPoint(Lorg/spongycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p5}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v1, p4, v2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 113
    iput-object p1, p0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    .line 114
    return-void
.end method

.method private static convertCurve(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;
    .locals 6
    .param p0, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p1, "seed"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    invoke-static {p0}, Lorg/spongycastle/math/ec/ECAlgorithms;->isFpCurve(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    new-instance v2, Ljava/security/spec/EllipticCurve;

    new-instance v3, Ljava/security/spec/ECFieldFp;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getField()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v4

    invoke-interface {v4}, Lorg/spongycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, p1}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 44
    :goto_0
    return-object v2

    :cond_0
    move-object v0, p0

    .line 31
    check-cast v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    .line 34
    .local v0, "curveF2m":Lorg/spongycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->isTrinomial()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    new-array v1, v4, [I

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getK1()I

    move-result v2

    aput v2, v1, v3

    .line 38
    .local v1, "ks":[I
    new-instance v2, Ljava/security/spec/EllipticCurve;

    new-instance v3, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v4

    invoke-direct {v3, v4, v1}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, p1}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    .line 42
    .end local v1    # "ks":[I
    :cond_1
    const/4 v2, 0x3

    new-array v1, v2, [I

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getK3()I

    move-result v2

    aput v2, v1, v3

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getK2()I

    move-result v2

    aput v2, v1, v4

    const/4 v2, 0x2

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getK1()I

    move-result v3

    aput v3, v1, v2

    .line 44
    .restart local v1    # "ks":[I
    new-instance v2, Ljava/security/spec/EllipticCurve;

    new-instance v3, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v4

    invoke-direct {v3, v4, v1}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, p1}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0
.end method

.method private static convertPoint(Lorg/spongycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;
    .locals 3
    .param p0, "g"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    .line 54
    new-instance v0, Ljava/security/spec/ECPoint;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;->name:Ljava/lang/String;

    return-object v0
.end method
