.class public Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;
.super Ljava/lang/Object;
.source "EC5Util.java"


# static fields
.field private static customCurves:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 24
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->customCurves:Ljava/util/Map;

    .line 28
    invoke-static {}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->getNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 29
    .local v1, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 31
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 33
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Lorg/spongycastle/asn1/x9/ECNamedCurveTable;->getByName(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 34
    .local v0, "curveParams":Lorg/spongycastle/asn1/x9/X9ECParameters;
    if-eqz v0, :cond_0

    .line 36
    sget-object v3, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->customCurves:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-static {v2}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->getByName(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 39
    .end local v0    # "curveParams":Lorg/spongycastle/asn1/x9/X9ECParameters;
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCurve(Lorg/spongycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;
    .locals 7
    .param p0, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p1, "seed"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 47
    invoke-static {p0}, Lorg/spongycastle/math/ec/ECAlgorithms;->isFpCurve(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
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

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 66
    :goto_0
    return-object v2

    :cond_0
    move-object v0, p0

    .line 53
    check-cast v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    .line 56
    .local v0, "curveF2m":Lorg/spongycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->isTrinomial()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    new-array v1, v4, [I

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getK1()I

    move-result v2

    aput v2, v1, v3

    .line 60
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

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    .line 64
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

    .line 66
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

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0
.end method

.method public static convertCurve(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;
    .locals 11
    .param p0, "ec"    # Ljava/security/spec/EllipticCurve;

    .prologue
    .line 74
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v8

    .line 75
    .local v8, "field":Ljava/security/spec/ECField;
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v5

    .line 76
    .local v5, "a":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v6

    .line 78
    .local v6, "b":Ljava/math/BigInteger;
    instance-of v0, v8, Ljava/security/spec/ECFieldFp;

    if-eqz v0, :cond_1

    .line 80
    new-instance v7, Lorg/spongycastle/math/ec/ECCurve$Fp;

    check-cast v8, Ljava/security/spec/ECFieldFp;

    .end local v8    # "field":Ljava/security/spec/ECField;
    invoke-virtual {v8}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v7, v0, v5, v6}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 82
    .local v7, "curve":Lorg/spongycastle/math/ec/ECCurve$Fp;
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->customCurves:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->customCurves:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECCurve;

    .line 94
    .end local v7    # "curve":Lorg/spongycastle/math/ec/ECCurve$Fp;
    :goto_0
    return-object v0

    .restart local v7    # "curve":Lorg/spongycastle/math/ec/ECCurve$Fp;
    :cond_0
    move-object v0, v7

    .line 87
    goto :goto_0

    .end local v7    # "curve":Lorg/spongycastle/math/ec/ECCurve$Fp;
    .restart local v8    # "field":Ljava/security/spec/ECField;
    :cond_1
    move-object v9, v8

    .line 91
    check-cast v9, Ljava/security/spec/ECFieldF2m;

    .line 92
    .local v9, "fieldF2m":Ljava/security/spec/ECFieldF2m;
    invoke-virtual {v9}, Ljava/security/spec/ECFieldF2m;->getM()I

    move-result v1

    .line 93
    .local v1, "m":I
    invoke-virtual {v9}, Ljava/security/spec/ECFieldF2m;->getMidTermsOfReductionPolynomial()[I

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->convertMidTerms([I)[I

    move-result-object v10

    .line 94
    .local v10, "ks":[I
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    const/4 v2, 0x0

    aget v2, v10, v2

    const/4 v3, 0x1

    aget v3, v10, v3

    const/4 v4, 0x2

    aget v4, v10, v4

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method public static convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1
    .param p0, "ecSpec"    # Ljava/security/spec/ECParameterSpec;
    .param p1, "point"    # Ljava/security/spec/ECPoint;
    .param p2, "withCompression"    # Z

    .prologue
    .line 144
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public static convertPoint(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2
    .param p0, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p1, "point"    # Ljava/security/spec/ECPoint;
    .param p2, "withCompression"    # Z

    .prologue
    .line 152
    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/spongycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public static convertSpec(Ljava/security/spec/EllipticCurve;Lorg/spongycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;
    .locals 6
    .param p0, "ellipticCurve"    # Ljava/security/spec/EllipticCurve;
    .param p1, "spec"    # Lorg/spongycastle/jce/spec/ECParameterSpec;

    .prologue
    .line 102
    instance-of v0, p1, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 115
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    goto :goto_0
.end method

.method public static convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;
    .locals 6
    .param p0, "ecSpec"    # Ljava/security/spec/ECParameterSpec;
    .param p1, "withCompression"    # Z

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 131
    .local v1, "curve":Lorg/spongycastle/math/ec/ECCurve;
    new-instance v0, Lorg/spongycastle/jce/spec/ECParameterSpec;

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/ECParameterSpec;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
