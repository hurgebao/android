.class public Lorg/spongycastle/math/ec/FixedPointUtil;
.super Ljava/lang/Object;
.source "FixedPointUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCombSize(Lorg/spongycastle/math/ec/ECCurve;)I
    .locals 2
    .param p0, "c"    # Lorg/spongycastle/math/ec/ECCurve;

    .prologue
    .line 11
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    .line 12
    .local v0, "order":Ljava/math/BigInteger;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    goto :goto_0
.end method

.method public static getFixedPointPreCompInfo(Lorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/FixedPointPreCompInfo;
    .locals 1
    .param p0, "preCompInfo"    # Lorg/spongycastle/math/ec/PreCompInfo;

    .prologue
    .line 17
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;

    if-eqz v0, :cond_0

    .line 19
    check-cast p0, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;

    .line 22
    .end local p0    # "preCompInfo":Lorg/spongycastle/math/ec/PreCompInfo;
    :goto_0
    return-object p0

    .restart local p0    # "preCompInfo":Lorg/spongycastle/math/ec/PreCompInfo;
    :cond_0
    new-instance p0, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;

    .end local p0    # "preCompInfo":Lorg/spongycastle/math/ec/PreCompInfo;
    invoke-direct {p0}, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;-><init>()V

    goto :goto_0
.end method

.method public static precompute(Lorg/spongycastle/math/ec/ECPoint;I)Lorg/spongycastle/math/ec/FixedPointPreCompInfo;
    .locals 14
    .param p0, "p"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "minWidth"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 27
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 29
    .local v2, "c":Lorg/spongycastle/math/ec/ECCurve;
    shl-int v7, v13, p1

    .line 30
    .local v7, "n":I
    const-string v11, "bc_fixed_point"

    invoke-virtual {v2, p0, v11}, Lorg/spongycastle/math/ec/ECCurve;->getPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/spongycastle/math/ec/PreCompInfo;

    move-result-object v11

    invoke-static {v11}, Lorg/spongycastle/math/ec/FixedPointUtil;->getFixedPointPreCompInfo(Lorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/FixedPointPreCompInfo;

    move-result-object v5

    .line 31
    .local v5, "info":Lorg/spongycastle/math/ec/FixedPointPreCompInfo;
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 33
    .local v6, "lookupTable":[Lorg/spongycastle/math/ec/ECPoint;
    if-eqz v6, :cond_0

    array-length v11, v6

    if-ge v11, v7, :cond_4

    .line 35
    :cond_0
    invoke-static {v2}, Lorg/spongycastle/math/ec/FixedPointUtil;->getCombSize(Lorg/spongycastle/math/ec/ECCurve;)I

    move-result v1

    .line 36
    .local v1, "bits":I
    add-int v11, v1, p1

    add-int/lit8 v11, v11, -0x1

    div-int v3, v11, p1

    .line 38
    .local v3, "d":I
    new-array v9, p1, [Lorg/spongycastle/math/ec/ECPoint;

    .line 39
    .local v9, "pow2Table":[Lorg/spongycastle/math/ec/ECPoint;
    aput-object p0, v9, v12

    .line 40
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 42
    add-int/lit8 v11, v4, -0x1

    aget-object v11, v9, v11

    invoke-virtual {v11, v3}, Lorg/spongycastle/math/ec/ECPoint;->timesPow2(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    aput-object v11, v9, v4

    .line 40
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v2, v9}, Lorg/spongycastle/math/ec/ECCurve;->normalizeAll([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 47
    new-array v6, v7, [Lorg/spongycastle/math/ec/ECPoint;

    .line 48
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    aput-object v11, v6, v12

    .line 50
    add-int/lit8 v0, p1, -0x1

    .local v0, "bit":I
    :goto_1
    if-ltz v0, :cond_3

    .line 52
    aget-object v8, v9, v0

    .line 54
    .local v8, "pow2":Lorg/spongycastle/math/ec/ECPoint;
    shl-int v10, v13, v0

    .line 55
    .local v10, "step":I
    move v4, v10

    :goto_2
    if-ge v4, v7, :cond_2

    .line 57
    sub-int v11, v4, v10

    aget-object v11, v6, v11

    invoke-virtual {v11, v8}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    aput-object v11, v6, v4

    .line 55
    shl-int/lit8 v11, v10, 0x1

    add-int/2addr v4, v11

    goto :goto_2

    .line 50
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 61
    .end local v8    # "pow2":Lorg/spongycastle/math/ec/ECPoint;
    .end local v10    # "step":I
    :cond_3
    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECCurve;->normalizeAll([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 63
    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;->setPreComp([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 64
    invoke-virtual {v5, p1}, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;->setWidth(I)V

    .line 66
    const-string v11, "bc_fixed_point"

    invoke-virtual {v2, p0, v11, v5}, Lorg/spongycastle/math/ec/ECCurve;->setPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/spongycastle/math/ec/PreCompInfo;)V

    .line 69
    .end local v0    # "bit":I
    .end local v1    # "bits":I
    .end local v3    # "d":I
    .end local v4    # "i":I
    .end local v9    # "pow2Table":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_4
    return-object v5
.end method
