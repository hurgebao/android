.class public Lorg/spongycastle/math/ec/ECPoint$F2m;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1435
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 1436
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 3
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p4, "withCompression"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1448
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 1450
    if-nez p2, :cond_0

    move v2, v0

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    .line 1452
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    .line 1450
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 1455
    :cond_2
    if-eqz p2, :cond_3

    .line 1458
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->checkFieldElements(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 1461
    if-eqz p1, :cond_3

    .line 1463
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->checkFieldElements(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 1467
    :cond_3
    iput-boolean p4, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    .line 1470
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 0
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lorg/spongycastle/math/ec/ECFieldElement;
    .param p5, "withCompression"    # Z

    .prologue
    .line 1474
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 1476
    iput-boolean p5, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    .line 1479
    return-void
.end method

.method private static checkPoints(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;)V
    .locals 2
    .param p0, "a"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 1624
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->curve:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v1, p1, Lorg/spongycastle/math/ec/ECPoint;->curve:Lorg/spongycastle/math/ec/ECCurve;

    if-eq v0, v1, :cond_0

    .line 1626
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only points on the same curve can be added or subtracted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1631
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 1638
    invoke-static {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$F2m;->checkPoints(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;)V

    .line 1639
    check-cast p1, Lorg/spongycastle/math/ec/ECPoint$F2m;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$F2m;->addSimple(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0
.end method

.method public addSimple(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;
    .locals 48
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint$F2m;

    .prologue
    .line 1653
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v4, p1

    .line 1823
    :goto_0
    return-object v4

    .line 1657
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v4, p0

    .line 1659
    goto :goto_0

    .line 1662
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v5

    .line 1663
    .local v5, "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v43

    .line 1665
    .local v43, "coord":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v34, v0

    .line 1666
    .local v34, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v35, v0

    .line 1668
    .local v35, "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    sparse-switch v43, :sswitch_data_0

    .line 1827
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v8, "unsupported coordinate system"

    invoke-direct {v4, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1672
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v36, v0

    .line 1673
    .local v36, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v37, v0

    .line 1675
    .local v37, "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v34 .. v35}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v44

    .local v44, "dx":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v36 .. v37}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v45

    .line 1676
    .local v45, "dy":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v44 .. v44}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1678
    invoke-virtual/range {v45 .. v45}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1680
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/math/ec/ECPoint$F2m;

    goto :goto_0

    .line 1683
    :cond_2
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/math/ec/ECPoint$F2m;

    goto :goto_0

    .line 1686
    :cond_3
    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 1688
    .local v19, "L":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1689
    .local v6, "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1691
    .local v7, "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v4, Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 1695
    .end local v6    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v7    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v19    # "L":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v36    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v37    # "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v44    # "dx":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v45    # "dy":Lorg/spongycastle/math/ec/ECFieldElement;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v36, v0

    .restart local v36    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v38, v4, v8

    .line 1696
    .local v38, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v37, v0

    .restart local v37    # "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v40, v4, v8

    .line 1698
    .local v40, "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v40 .. v40}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v41

    .line 1700
    .local v41, "Z2IsOne":Z
    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v25

    .line 1701
    .local v25, "U1":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v41, :cond_4

    move-object/from16 v26, v36

    .line 1702
    .local v26, "U2":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_1
    invoke-virtual/range {v25 .. v26}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v24

    .line 1703
    .local v24, "U":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v28

    .line 1704
    .local v28, "V1":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v41, :cond_5

    move-object/from16 v29, v34

    .line 1705
    .local v29, "V2":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_2
    invoke-virtual/range {v28 .. v29}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v27

    .line 1707
    .local v27, "V":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1709
    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1711
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/math/ec/ECPoint$F2m;

    goto/16 :goto_0

    .line 1701
    .end local v24    # "U":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v26    # "U2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v27    # "V":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v28    # "V1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v29    # "V2":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_4
    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v26

    goto :goto_1

    .line 1704
    .restart local v24    # "U":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v26    # "U2":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v28    # "V1":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_5
    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v29

    goto :goto_2

    .line 1714
    .restart local v27    # "V":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v29    # "V2":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_6
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/math/ec/ECPoint$F2m;

    goto/16 :goto_0

    .line 1717
    :cond_7
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v31

    .line 1718
    .local v31, "VSq":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v30

    .line 1719
    .local v30, "VCu":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v41, :cond_8

    move-object/from16 v33, v38

    .line 1720
    .local v33, "W":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_3
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v47

    .line 1721
    .local v47, "uv":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v47

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1723
    .local v14, "A":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1724
    .restart local v6    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v41, :cond_9

    move-object/from16 v32, v31

    .line 1725
    .local v32, "VSqZ2":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_4
    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move-object/from16 v2, v27

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v47

    invoke-virtual {v4, v0, v1, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1726
    .restart local v7    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v42

    .line 1728
    .local v42, "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v4, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 v8, 0x1

    new-array v8, v8, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v9, 0x0

    aput-object v42, v8, v9

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct/range {v4 .. v9}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 1719
    .end local v6    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v7    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v14    # "A":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v32    # "VSqZ2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v33    # "W":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v42    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v47    # "uv":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_8
    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v33

    goto :goto_3

    .line 1724
    .restart local v6    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v14    # "A":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v33    # "W":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v47    # "uv":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_9
    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v32

    goto :goto_4

    .line 1732
    .end local v6    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v14    # "A":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v24    # "U":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v25    # "U1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v26    # "U2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v27    # "V":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v28    # "V1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v29    # "V2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v30    # "VCu":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v31    # "VSq":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v33    # "W":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v36    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v37    # "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v38    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v40    # "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v41    # "Z2IsOne":Z
    .end local v47    # "uv":Lorg/spongycastle/math/ec/ECFieldElement;
    :sswitch_2
    invoke-virtual/range {v34 .. v34}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1734
    invoke-virtual/range {v35 .. v35}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1736
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/math/ec/ECPoint$F2m;

    goto/16 :goto_0

    .line 1739
    :cond_a
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$F2m;->addSimple(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object v4

    goto/16 :goto_0

    .line 1742
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v20, v0

    .local v20, "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v38, v4, v8

    .line 1743
    .restart local v38    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v21, v0

    .local v21, "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v40, v4, v8

    .line 1745
    .restart local v40    # "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v38 .. v38}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v39

    .line 1746
    .local v39, "Z1IsOne":Z
    move-object/from16 v26, v35

    .restart local v26    # "U2":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v21

    .line 1747
    .local v23, "S2":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v39, :cond_c

    .line 1749
    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v26

    .line 1750
    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 1753
    :cond_c
    invoke-virtual/range {v40 .. v40}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v41

    .line 1754
    .restart local v41    # "Z2IsOne":Z
    move-object/from16 v25, v34

    .restart local v25    # "U1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v22, v20

    .line 1755
    .local v22, "S1":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v41, :cond_d

    .line 1757
    move-object/from16 v0, v25

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v25

    .line 1758
    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 1761
    :cond_d
    invoke-virtual/range {v22 .. v23}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1762
    .restart local v14    # "A":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v25 .. v26}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 1764
    .local v18, "B":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1766
    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1768
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/math/ec/ECPoint$F2m;

    goto/16 :goto_0

    .line 1771
    :cond_e
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/math/ec/ECPoint$F2m;

    goto/16 :goto_0

    .line 1775
    :cond_f
    invoke-virtual/range {v35 .. v35}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1778
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v46

    .line 1779
    .local v46, "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual/range {v46 .. v46}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v34

    .line 1780
    invoke-virtual/range {v46 .. v46}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v36

    .line 1782
    .restart local v36    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v37, v21

    .line 1783
    .restart local v37    # "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v36 .. v37}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 1785
    .restart local v19    # "L":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1786
    .restart local v6    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1788
    new-instance v4, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->sqrt()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v4, v5, v6, v8, v9}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 1791
    :cond_10
    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1792
    .restart local v7    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1793
    .local v11, "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    sget-object v4, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v4}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v42

    .line 1823
    .end local v7    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v19    # "L":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v36    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v37    # "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v46    # "p":Lorg/spongycastle/math/ec/ECPoint;
    .restart local v42    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_11
    :goto_5
    new-instance v8, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 v4, 0x1

    new-array v12, v4, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aput-object v42, v12, v4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    move-object v9, v5

    move-object v10, v6

    invoke-direct/range {v8 .. v13}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object v4, v8

    goto/16 :goto_0

    .line 1797
    .end local v6    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v11    # "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v42    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_12
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 1799
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1800
    .local v16, "AU1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 1802
    .local v17, "AU2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v17}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1803
    .restart local v6    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1805
    new-instance v4, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->sqrt()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v4, v5, v6, v8, v9}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 1808
    :cond_13
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1809
    .local v15, "ABZ2":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v41, :cond_14

    .line 1811
    move-object/from16 v0, v40

    invoke-virtual {v15, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1814
    :cond_14
    invoke-virtual/range {v17 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v4, v15, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1816
    .restart local v11    # "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v42, v15

    .line 1817
    .restart local v42    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v39, :cond_11

    .line 1819
    move-object/from16 v0, v42

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v42

    goto :goto_5

    .line 1668
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected detach()Lorg/spongycastle/math/ec/ECPoint;
    .locals 4

    .prologue
    .line 1483
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected getCompressionYTilde()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1591
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1592
    .local v0, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1609
    :cond_0
    :goto_0
    return v2

    .line 1597
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1599
    .local v1, "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1609
    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v2

    goto :goto_0

    .line 1605
    :pswitch_0
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v3

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v4

    if-eq v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 1599
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 7

    .prologue
    .line 1488
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v4

    .line 1490
    .local v4, "coord":I
    packed-switch v4, :pswitch_data_0

    .line 1516
    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    :cond_0
    :goto_0
    return-object v2

    .line 1495
    :pswitch_0
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v1, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1497
    .local v0, "L":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move-object v2, v0

    .line 1499
    goto :goto_0

    .line 1503
    :cond_2
    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1504
    .local v2, "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v5, 0x6

    if-ne v5, v4, :cond_0

    .line 1506
    iget-object v5, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v3, v5, v6

    .line 1507
    .local v3, "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1509
    invoke-virtual {v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    goto :goto_0

    .line 1490
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public negate()Lorg/spongycastle/math/ec/ECPoint;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2081
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2113
    .end local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$F2m;
    .local v2, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_0
    :goto_0
    return-object p0

    .line 2086
    .end local v2    # "X":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$F2m;
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 2087
    .restart local v2    # "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2092
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2117
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2096
    :pswitch_1
    iget-object v7, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 2097
    .local v7, "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v7, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    .line 2101
    .end local v7    # "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_2
    iget-object v7, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .restart local v7    # "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v8, v0, v5

    .line 2102
    .local v8, "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v7, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    new-array v4, v4, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v8, v4, v5

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    .line 2106
    .end local v7    # "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v8    # "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_3
    iget-object v6, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 2107
    .local v6, "L":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->addOne()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    .line 2112
    .end local v6    # "L":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_4
    iget-object v6, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .restart local v6    # "L":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v8, v0, v5

    .line 2113
    .restart local v8    # "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v6, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    new-array v4, v4, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v8, v4, v5

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    .line 2092
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public scaleX(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 10
    .param p1, "scale"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    const/4 v9, 0x0

    .line 1523
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1556
    .end local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$F2m;
    :goto_0
    return-object p0

    .line 1528
    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$F2m;
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v6

    .line 1530
    .local v6, "coord":I
    packed-switch v6, :pswitch_data_0

    .line 1556
    invoke-super {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->scaleX(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 1535
    :pswitch_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .local v2, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1537
    .local v0, "L":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1538
    .local v3, "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1540
    .local v1, "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getRawZCoords()[Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    iget-boolean v9, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-virtual {v7, v2, v1, v8, v9}, Lorg/spongycastle/math/ec/ECCurve;->createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 1545
    .end local v0    # "L":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v1    # "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v2    # "X":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v3    # "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .restart local v2    # "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .restart local v0    # "L":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getRawZCoords()[Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    aget-object v4, v7, v9

    .line 1548
    .local v4, "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1549
    .restart local v3    # "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1550
    .restart local v1    # "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1552
    .local v5, "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v5, v8, v9

    iget-boolean v9, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-virtual {v7, v3, v1, v8, v9}, Lorg/spongycastle/math/ec/ECCurve;->createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 1530
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public scaleY(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 7
    .param p1, "scale"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1563
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1584
    .end local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$F2m;
    :goto_0
    return-object p0

    .line 1568
    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$F2m;
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v3

    .line 1570
    .local v3, "coord":I
    packed-switch v3, :pswitch_data_0

    .line 1584
    invoke-super {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->scaleY(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 1575
    :pswitch_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .local v2, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1578
    .local v0, "L":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1580
    .local v1, "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getRawZCoords()[Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    iget-boolean v6, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-virtual {v4, v2, v1, v5, v6}, Lorg/spongycastle/math/ec/ECCurve;->createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 1570
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public subtractSimple(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;
    .locals 1
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint$F2m;

    .prologue
    .line 1852
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1858
    .end local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$F2m;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$F2m;
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint$F2m;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->addSimple(Lorg/spongycastle/math/ec/ECPoint$F2m;)Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-result-object p0

    goto :goto_0
.end method

.method public tau()Lorg/spongycastle/math/ec/ECPoint$F2m;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1863
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1885
    .end local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$F2m;
    .local v1, "curve":Lorg/spongycastle/math/ec/ECCurve;
    .local v6, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v7, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v8, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v9, "coord":I
    :goto_0
    return-object p0

    .line 1868
    .end local v1    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    .end local v6    # "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v7    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v8    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v9    # "coord":I
    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$F2m;
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 1869
    .restart local v1    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v9

    .line 1871
    .restart local v9    # "coord":I
    iget-object v6, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1873
    .restart local v6    # "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    packed-switch v9, :pswitch_data_0

    .line 1889
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "unsupported coordinate system"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1878
    :pswitch_1
    iget-object v7, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1879
    .restart local v7    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    .line 1884
    .end local v7    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_2
    iget-object v7, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .restart local v7    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v8, v0, v10

    .line 1885
    .restart local v8    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    aput-object v5, v4, v10

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    .line 1873
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public twice()Lorg/spongycastle/math/ec/ECPoint;
    .locals 36

    .prologue
    .line 1896
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1995
    .end local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$F2m;
    .local v4, "curve":Lorg/spongycastle/math/ec/ECCurve;
    .local v18, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v30, "coord":I
    :goto_0
    return-object p0

    .line 1901
    .end local v4    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    .end local v18    # "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v30    # "coord":I
    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$F2m;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    .line 1903
    .restart local v4    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v18, v0

    .line 1904
    .restart local v18    # "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1907
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 1910
    :cond_1
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v30

    .line 1912
    .restart local v30    # "coord":I
    sparse-switch v30, :sswitch_data_0

    .line 1999
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v7, "unsupported coordinate system"

    invoke-direct {v3, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1916
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v21, v0

    .line 1918
    .local v21, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1920
    .local v13, "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1921
    .local v5, "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->addOne()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1923
    .local v6, "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v3, Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p0, v3

    goto :goto_0

    .line 1927
    .end local v5    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v6    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v13    # "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v21    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v21, v0

    .restart local v21    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aget-object v23, v3, v7

    .line 1929
    .local v23, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v24

    .line 1930
    .local v24, "Z1IsOne":Z
    if-eqz v24, :cond_2

    move-object/from16 v20, v18

    .line 1931
    .local v20, "X1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_1
    if-eqz v24, :cond_3

    move-object/from16 v22, v21

    .line 1933
    .local v22, "Y1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 1934
    .local v19, "X1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1935
    .local v15, "S":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v17, v20

    .line 1936
    .local v17, "V":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v35

    .line 1937
    .local v35, "vSquared":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v32

    .line 1938
    .local v32, "sv":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v15, v1, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v31

    .line 1940
    .local v31, "h":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1941
    .restart local v5    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v3, v0, v1, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1942
    .restart local v6    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v26

    .line 1944
    .local v26, "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v3, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 v7, 0x1

    new-array v7, v7, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aput-object v26, v7, v8

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct/range {v3 .. v8}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p0, v3

    goto/16 :goto_0

    .line 1930
    .end local v5    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v6    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v15    # "S":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v17    # "V":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v19    # "X1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v20    # "X1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v22    # "Y1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v26    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v31    # "h":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v32    # "sv":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v35    # "vSquared":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_2
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    goto :goto_1

    .line 1931
    .restart local v20    # "X1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_3
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    goto :goto_2

    .line 1948
    .end local v20    # "X1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v21    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v23    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v24    # "Z1IsOne":Z
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .restart local v13    # "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aget-object v23, v3, v7

    .line 1950
    .restart local v23    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v24

    .line 1951
    .restart local v24    # "Z1IsOne":Z
    if-eqz v24, :cond_4

    move-object v14, v13

    .line 1952
    .local v14, "L1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_3
    if-eqz v24, :cond_5

    move-object/from16 v25, v23

    .line 1953
    .local v25, "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_4
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v27

    .line 1954
    .local v27, "a":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v24, :cond_6

    move-object/from16 v28, v27

    .line 1955
    .local v28, "aZ1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_5
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1956
    .local v16, "T":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1958
    new-instance v3, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->sqrt()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v0, v7, v8}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p0, v3

    goto/16 :goto_0

    .line 1951
    .end local v14    # "L1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v16    # "T":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v25    # "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v27    # "a":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v28    # "aZ1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_4
    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    goto :goto_3

    .line 1952
    .restart local v14    # "L1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_5
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v25

    goto :goto_4

    .line 1954
    .restart local v25    # "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v27    # "a":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_6
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v28

    goto :goto_5

    .line 1961
    .restart local v16    # "T":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v28    # "aZ1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1962
    .restart local v5    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v24, :cond_9

    move-object/from16 v26, v16

    .line 1964
    .restart local v26    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_6
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v29

    .line 1966
    .local v29, "b":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v3

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    if-ge v3, v7, :cond_c

    .line 1968
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v33

    .line 1970
    .local v33, "t1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1972
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v34

    .line 1979
    .local v34, "t2":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_7
    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1980
    .local v10, "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1982
    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1995
    .end local v33    # "t1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v34    # "t2":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_8
    :goto_8
    new-instance v7, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 v3, 0x1

    new-array v11, v3, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aput-object v26, v11, v3

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    move-object v8, v4

    move-object v9, v5

    invoke-direct/range {v7 .. v12}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p0, v7

    goto/16 :goto_0

    .line 1962
    .end local v10    # "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v26    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v29    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_9
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v26

    goto :goto_6

    .line 1977
    .restart local v26    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v29    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v33    # "t1":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_a
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v34

    .restart local v34    # "t2":Lorg/spongycastle/math/ec/ECFieldElement;
    goto :goto_7

    .line 1984
    .restart local v10    # "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_b
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1986
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/math/ec/ECFieldElement;->addOne()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    goto :goto_8

    .line 1991
    .end local v10    # "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v33    # "t1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v34    # "t2":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_c
    if-eqz v24, :cond_d

    move-object/from16 v20, v18

    .line 1992
    .restart local v20    # "X1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_9
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .restart local v10    # "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    goto :goto_8

    .line 1991
    .end local v10    # "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v20    # "X1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_d
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    goto :goto_9

    .line 1912
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method public twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 25
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 2006
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2074
    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    :goto_0
    return-object p1

    .line 2010
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2012
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 2015
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 2017
    .local v3, "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v16, v0

    .line 2018
    .local v16, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2024
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v24

    .line 2026
    .local v24, "coord":I
    packed-switch v24, :pswitch_data_0

    .line 2074
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 2031
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v18, v0

    .local v18, "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v22, v2, v6

    .line 2032
    .local v22, "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2034
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 2037
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v10, "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v20, v2, v6

    .line 2038
    .local v20, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 2040
    .local v13, "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 2041
    .local v17, "X1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 2042
    .local v11, "L1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 2043
    .local v21, "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 2045
    .local v12, "L1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 2046
    .local v15, "T":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->addOne()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 2047
    .local v14, "L2plus1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v2, v15, v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 2048
    .local v8, "A":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 2049
    .local v19, "X2Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 2051
    .local v9, "B":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2053
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2055
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 2058
    :cond_5
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 2061
    :cond_6
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2063
    new-instance p1, Lorg/spongycastle/math/ec/ECPoint$F2m;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->sqrt()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    move-object/from16 v0, p1

    invoke-direct {v0, v3, v8, v2, v6}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 2066
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_7
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 2067
    .local v4, "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 2068
    .local v23, "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v15, v14, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 2070
    .local v5, "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v23, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p1, v2

    goto/16 :goto_0

    .line 2026
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
