.class public Lorg/spongycastle/math/ec/WTauNafMultiplier;
.super Lorg/spongycastle/math/ec/AbstractECMultiplier;
.source "WTauNafMultiplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/spongycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method

.method private static multiplyFromWTnaf(Lorg/spongycastle/math/ec/ECPoint$F2m;[BLorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/ECPoint$F2m;
    .locals 8
    .param p0, "p"    # Lorg/spongycastle/math/ec/ECPoint$F2m;
    .param p1, "u"    # [B
    .param p2, "preCompInfo"    # Lorg/spongycastle/math/ec/PreCompInfo;

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/math/ec/ECCurve$F2m;

    .line 77
    .local v1, "curve":Lorg/spongycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->byteValue()B

    move-result v0

    .line 80
    .local v0, "a":B
    if-eqz p2, :cond_0

    instance-of v7, p2, Lorg/spongycastle/math/ec/WTauNafPreCompInfo;

    if-nez v7, :cond_2

    .line 82
    :cond_0
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/Tnaf;->getPreComp(Lorg/spongycastle/math/ec/ECPoint$F2m;B)[Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v4

    .line 84
    .local v4, "pu":[Lorg/spongycastle/math/ec/ECPoint$F2m;
    new-instance v3, Lorg/spongycastle/math/ec/WTauNafPreCompInfo;

    invoke-direct {v3}, Lorg/spongycastle/math/ec/WTauNafPreCompInfo;-><init>()V

    .line 85
    .local v3, "pre":Lorg/spongycastle/math/ec/WTauNafPreCompInfo;
    invoke-virtual {v3, v4}, Lorg/spongycastle/math/ec/WTauNafPreCompInfo;->setPreComp([Lorg/spongycastle/math/ec/ECPoint$F2m;)V

    .line 86
    const-string v7, "bc_wtnaf"

    invoke-virtual {v1, p0, v7, v3}, Lorg/spongycastle/math/ec/ECCurve$F2m;->setPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/spongycastle/math/ec/PreCompInfo;)V

    .line 94
    .end local v3    # "pre":Lorg/spongycastle/math/ec/WTauNafPreCompInfo;
    .end local p2    # "preCompInfo":Lorg/spongycastle/math/ec/PreCompInfo;
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/math/ec/ECPoint$F2m;

    .line 95
    .local v5, "q":Lorg/spongycastle/math/ec/ECPoint$F2m;
    array-length v7, p1

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 97
    invoke-static {v5}, Lorg/spongycastle/math/ec/Tnaf;->tau(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v5

    .line 98
    aget-byte v6, p1, v2

    .line 99
    .local v6, "ui":B
    if-eqz v6, :cond_1

    .line 101
    if-lez v6, :cond_3

    .line 103
    aget-object v7, v4, v6

    invoke-virtual {v5, v7}, Lorg/spongycastle/math/ec/ECPoint$F2m;->addSimple(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v5

    .line 95
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 90
    .end local v2    # "i":I
    .end local v4    # "pu":[Lorg/spongycastle/math/ec/ECPoint$F2m;
    .end local v5    # "q":Lorg/spongycastle/math/ec/ECPoint$F2m;
    .end local v6    # "ui":B
    .restart local p2    # "preCompInfo":Lorg/spongycastle/math/ec/PreCompInfo;
    :cond_2
    check-cast p2, Lorg/spongycastle/math/ec/WTauNafPreCompInfo;

    .end local p2    # "preCompInfo":Lorg/spongycastle/math/ec/PreCompInfo;
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/WTauNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v4

    .restart local v4    # "pu":[Lorg/spongycastle/math/ec/ECPoint$F2m;
    goto :goto_0

    .line 107
    .restart local v2    # "i":I
    .restart local v5    # "q":Lorg/spongycastle/math/ec/ECPoint$F2m;
    .restart local v6    # "ui":B
    :cond_3
    neg-int v7, v6

    aget-object v7, v4, v7

    invoke-virtual {v5, v7}, Lorg/spongycastle/math/ec/ECPoint$F2m;->subtractSimple(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v5

    goto :goto_2

    .line 112
    .end local v6    # "ui":B
    :cond_4
    return-object v5
.end method

.method private multiplyWTnaf(Lorg/spongycastle/math/ec/ECPoint$F2m;Lorg/spongycastle/math/ec/ZTauElement;Lorg/spongycastle/math/ec/PreCompInfo;BB)Lorg/spongycastle/math/ec/ECPoint$F2m;
    .locals 7
    .param p1, "p"    # Lorg/spongycastle/math/ec/ECPoint$F2m;
    .param p2, "lambda"    # Lorg/spongycastle/math/ec/ZTauElement;
    .param p3, "preCompInfo"    # Lorg/spongycastle/math/ec/PreCompInfo;
    .param p4, "a"    # B
    .param p5, "mu"    # B

    .prologue
    const/4 v2, 0x4

    .line 55
    if-nez p4, :cond_0

    sget-object v5, Lorg/spongycastle/math/ec/Tnaf;->alpha0:[Lorg/spongycastle/math/ec/ZTauElement;

    .line 57
    .local v5, "alpha":[Lorg/spongycastle/math/ec/ZTauElement;
    :goto_0
    invoke-static {p5, v2}, Lorg/spongycastle/math/ec/Tnaf;->getTw(BI)Ljava/math/BigInteger;

    move-result-object v4

    .line 59
    .local v4, "tw":Ljava/math/BigInteger;
    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    move v0, p5

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/Tnaf;->tauAdicWNaf(BLorg/spongycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lorg/spongycastle/math/ec/ZTauElement;)[B

    move-result-object v6

    .line 62
    .local v6, "u":[B
    invoke-static {p1, v6, p3}, Lorg/spongycastle/math/ec/WTauNafMultiplier;->multiplyFromWTnaf(Lorg/spongycastle/math/ec/ECPoint$F2m;[BLorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0

    .line 55
    .end local v4    # "tw":Ljava/math/BigInteger;
    .end local v5    # "alpha":[Lorg/spongycastle/math/ec/ZTauElement;
    .end local v6    # "u":[B
    :cond_0
    sget-object v5, Lorg/spongycastle/math/ec/Tnaf;->alpha1:[Lorg/spongycastle/math/ec/ZTauElement;

    goto :goto_0
.end method


# virtual methods
.method protected multiplyPositive(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 12
    .param p1, "point"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 24
    instance-of v0, p1, Lorg/spongycastle/math/ec/ECPoint$F2m;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Only ECPoint.F2m can be used in WTauNafMultiplier"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v6, p1

    .line 30
    check-cast v6, Lorg/spongycastle/math/ec/ECPoint$F2m;

    .line 31
    .local v6, "p":Lorg/spongycastle/math/ec/ECPoint$F2m;
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v11

    check-cast v11, Lorg/spongycastle/math/ec/ECCurve$F2m;

    .line 32
    .local v11, "curve":Lorg/spongycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v1

    .line 33
    .local v1, "m":I
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->byteValue()B

    move-result v2

    .line 34
    .local v2, "a":B
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getMu()B

    move-result v4

    .line 35
    .local v4, "mu":B
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getSi()[Ljava/math/BigInteger;

    move-result-object v3

    .line 37
    .local v3, "s":[Ljava/math/BigInteger;
    const/16 v5, 0xa

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/Tnaf;->partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lorg/spongycastle/math/ec/ZTauElement;

    move-result-object v7

    .line 39
    .local v7, "rho":Lorg/spongycastle/math/ec/ZTauElement;
    const-string v0, "bc_wtnaf"

    invoke-virtual {v11, v6, v0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/spongycastle/math/ec/PreCompInfo;

    move-result-object v8

    move-object v5, p0

    move v9, v2

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lorg/spongycastle/math/ec/WTauNafMultiplier;->multiplyWTnaf(Lorg/spongycastle/math/ec/ECPoint$F2m;Lorg/spongycastle/math/ec/ZTauElement;Lorg/spongycastle/math/ec/PreCompInfo;BB)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0
.end method
