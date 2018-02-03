.class public abstract Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
.super Lorg/spongycastle/math/ec/ECPoint;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractFp"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 523
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 524
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 528
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 529
    return-void
.end method


# virtual methods
.method protected getCompressionYTilde()Z
    .locals 1

    .prologue
    .line 533
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v0

    return v0
.end method

.method protected satisfiesCurveEquation()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 538
    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v2, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v3, "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v11, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .local v0, "A":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v11, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 539
    .local v1, "B":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 541
    .local v9, "lhs":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;->getCurveCoordinateSystem()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 571
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "unsupported coordinate system"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 547
    :pswitch_0
    iget-object v11, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v4, v11, v12

    .line 548
    .local v4, "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v11

    if-nez v11, :cond_0

    .line 550
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .local v5, "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 551
    .local v6, "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 552
    invoke-virtual {v0, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 553
    invoke-virtual {v1, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 574
    .end local v4    # "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v5    # "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v6    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_0
    :goto_0
    :pswitch_1
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 575
    .local v10, "rhs":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    return v11

    .line 561
    .end local v10    # "rhs":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_2
    iget-object v11, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v4, v11, v12

    .line 562
    .restart local v4    # "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v11

    if-nez v11, :cond_0

    .line 564
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .restart local v5    # "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .local v7, "Z4":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 565
    .local v8, "Z6":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 566
    invoke-virtual {v1, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 567
    goto :goto_0

    .line 541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
