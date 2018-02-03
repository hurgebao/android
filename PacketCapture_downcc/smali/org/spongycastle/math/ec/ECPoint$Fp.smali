.class public Lorg/spongycastle/math/ec/ECPoint$Fp;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 606
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 607
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

    .line 621
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 623
    if-nez p2, :cond_0

    move v2, v0

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    .line 625
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    .line 623
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 628
    :cond_2
    iput-boolean p4, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    .line 629
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
    .line 633
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 635
    iput-boolean p5, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    .line 636
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 52
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 656
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v3, p1

    .line 869
    :goto_0
    return-object v3

    .line 660
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v3, p0

    .line 662
    goto :goto_0

    .line 664
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 666
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_0

    .line 669
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    .line 670
    .local v4, "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v38

    .line 672
    .local v38, "coord":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v24, v0

    .local v24, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v26, v0

    .line 673
    .local v26, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v25, v0

    .local v25, "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v27, v0

    .line 675
    .local v27, "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    packed-switch v38, :pswitch_data_0

    .line 874
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v8, "unsupported coordinate system"

    invoke-direct {v3, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 679
    :pswitch_1
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v39

    .local v39, "dx":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v40

    .line 681
    .local v40, "dy":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v39 .. v39}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 683
    invoke-virtual/range {v40 .. v40}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 686
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_0

    .line 690
    :cond_3
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_0

    .line 693
    :cond_4
    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v41

    .line 694
    .local v41, "gamma":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v41 .. v41}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 695
    .local v5, "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 697
    .local v6, "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v3, Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v3, v4, v5, v6, v8}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 702
    .end local v5    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v6    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v39    # "dx":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v40    # "dy":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v41    # "gamma":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v28, v3, v8

    .line 703
    .local v28, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v32, v3, v8

    .line 705
    .local v32, "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v30

    .line 706
    .local v30, "Z1IsOne":Z
    invoke-virtual/range {v32 .. v32}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v34

    .line 708
    .local v34, "Z2IsOne":Z
    if-eqz v30, :cond_5

    move-object/from16 v43, v27

    .line 709
    .local v43, "u1":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_1
    if-eqz v34, :cond_6

    move-object/from16 v44, v26

    .line 710
    .local v44, "u2":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_2
    invoke-virtual/range {v43 .. v44}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v42

    .line 711
    .local v42, "u":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v30, :cond_7

    move-object/from16 v46, v25

    .line 712
    .local v46, "v1":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_3
    if-eqz v34, :cond_8

    move-object/from16 v47, v24

    .line 713
    .local v47, "v2":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_4
    invoke-virtual/range {v46 .. v47}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v45

    .line 716
    .local v45, "v":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v45 .. v45}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 718
    invoke-virtual/range {v42 .. v42}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 721
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto/16 :goto_0

    .line 708
    .end local v42    # "u":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v43    # "u1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v44    # "u2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v45    # "v":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v46    # "v1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v47    # "v2":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_5
    invoke-virtual/range {v27 .. v28}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v43

    goto :goto_1

    .line 709
    .restart local v43    # "u1":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_6
    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v44

    goto :goto_2

    .line 711
    .restart local v42    # "u":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v44    # "u2":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_7
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v46

    goto :goto_3

    .line 712
    .restart local v46    # "v1":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_8
    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v47

    goto :goto_4

    .line 725
    .restart local v45    # "v":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v47    # "v2":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_9
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto/16 :goto_0

    .line 729
    :cond_a
    if-eqz v30, :cond_b

    move-object/from16 v51, v32

    .line 730
    .local v51, "w":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_5
    invoke-virtual/range {v45 .. v45}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v49

    .line 731
    .local v49, "vSquared":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v49

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v48

    .line 732
    .local v48, "vCubed":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v49

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v50

    .line 733
    .local v50, "vSquaredV2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v42 .. v42}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 735
    .local v9, "A":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v45

    invoke-virtual {v0, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 736
    .restart local v5    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v50

    invoke-virtual {v0, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move-object/from16 v2, v48

    invoke-virtual {v3, v0, v1, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyMinusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 737
    .restart local v6    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v48

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v36

    .line 739
    .local v36, "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v3, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v8, 0x1

    new-array v7, v8, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aput-object v36, v7, v8

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v3 .. v8}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 729
    .end local v5    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v6    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v9    # "A":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v36    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v48    # "vCubed":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v49    # "vSquared":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v50    # "vSquaredV2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v51    # "w":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_b
    if-eqz v34, :cond_c

    move-object/from16 v51, v28

    goto :goto_5

    :cond_c
    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v51

    goto :goto_5

    .line 745
    .end local v28    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v30    # "Z1IsOne":Z
    .end local v32    # "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v34    # "Z2IsOne":Z
    .end local v42    # "u":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v43    # "u1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v44    # "u2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v45    # "v":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v46    # "v1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v47    # "v2":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v28, v3, v8

    .line 746
    .restart local v28    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v32, v3, v8

    .line 748
    .restart local v32    # "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v30

    .line 750
    .restart local v30    # "Z1IsOne":Z
    const/16 v37, 0x0

    .line 752
    .local v37, "Z3Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v30, :cond_11

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 756
    invoke-virtual/range {v24 .. v25}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v39

    .restart local v39    # "dx":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v26 .. v27}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v40

    .line 757
    .restart local v40    # "dy":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v39 .. v39}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 759
    invoke-virtual/range {v40 .. v40}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 761
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto/16 :goto_0

    .line 763
    :cond_d
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto/16 :goto_0

    .line 766
    :cond_e
    invoke-virtual/range {v39 .. v39}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 767
    .local v11, "C":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    .local v21, "W1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 768
    .local v22, "W2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v21 .. v22}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 770
    .local v10, "A1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v40 .. v40}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 771
    .restart local v5    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 772
    .restart local v6    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v36, v39

    .line 774
    .restart local v36    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v30, :cond_10

    .line 776
    move-object/from16 v37, v11

    .line 857
    .end local v10    # "A1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v11    # "C":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v21    # "W1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v22    # "W2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v39    # "dx":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v40    # "dy":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_f
    :goto_6
    const/4 v3, 0x4

    move/from16 v0, v38

    if-ne v0, v3, :cond_18

    .line 860
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 862
    .local v23, "W3":Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v3, 0x2

    new-array v7, v3, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aput-object v36, v7, v3

    const/4 v3, 0x1

    aput-object v23, v7, v3

    .line 869
    .end local v23    # "W3":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v7, "zs":[Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_7
    new-instance v3, Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v3 .. v8}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 780
    .end local v7    # "zs":[Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v10    # "A1":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v11    # "C":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v21    # "W1":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v22    # "W2":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v39    # "dx":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v40    # "dy":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_10
    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v36

    goto :goto_6

    .line 786
    .end local v5    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v6    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v10    # "A1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v11    # "C":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v21    # "W1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v22    # "W2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v36    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v39    # "dx":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v40    # "dy":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_11
    if-eqz v30, :cond_12

    .line 788
    move-object/from16 v31, v28

    .local v31, "Z1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v19, v25

    .local v19, "U2":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v17, v27

    .line 798
    .local v17, "S2":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_8
    invoke-virtual/range {v32 .. v32}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v34

    .line 800
    .restart local v34    # "Z2IsOne":Z
    if-eqz v34, :cond_13

    .line 802
    move-object/from16 v35, v32

    .local v35, "Z2Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v18, v24

    .local v18, "U1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v16, v26

    .line 812
    .local v16, "S1":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_9
    invoke-virtual/range {v18 .. v19}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 813
    .local v13, "H":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v17}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 816
    .local v15, "R":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 818
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 821
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto/16 :goto_0

    .line 792
    .end local v13    # "H":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v15    # "R":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v16    # "S1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v17    # "S2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v18    # "U1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v19    # "U2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v31    # "Z1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v34    # "Z2IsOne":Z
    .end local v35    # "Z2Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_12
    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v31

    .line 793
    .restart local v31    # "Z1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 794
    .restart local v19    # "U2":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v29

    .line 795
    .local v29, "Z1Cubed":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .restart local v17    # "S2":Lorg/spongycastle/math/ec/ECFieldElement;
    goto :goto_8

    .line 806
    .end local v29    # "Z1Cubed":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v34    # "Z2IsOne":Z
    :cond_13
    invoke-virtual/range {v32 .. v32}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v35

    .line 807
    .restart local v35    # "Z2Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 808
    .restart local v18    # "U1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v33

    .line 809
    .local v33, "Z2Cubed":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .restart local v16    # "S1":Lorg/spongycastle/math/ec/ECFieldElement;
    goto :goto_9

    .line 825
    .end local v33    # "Z2Cubed":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v13    # "H":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v15    # "R":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_14
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto/16 :goto_0

    .line 828
    :cond_15
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 829
    .local v14, "HSquared":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 830
    .local v12, "G":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 832
    .local v20, "V":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 833
    .restart local v5    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v12, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyMinusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 835
    .restart local v6    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v36, v13

    .line 836
    .restart local v36    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v30, :cond_16

    .line 838
    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v36

    .line 840
    :cond_16
    if-nez v34, :cond_17

    .line 842
    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v36

    .line 850
    :cond_17
    move-object/from16 v0, v36

    if-ne v0, v13, :cond_f

    .line 852
    move-object/from16 v37, v14

    goto/16 :goto_6

    .line 866
    .end local v12    # "G":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v13    # "H":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v14    # "HSquared":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v15    # "R":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v16    # "S1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v17    # "S2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v18    # "U1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v19    # "U2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v20    # "V":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v31    # "Z1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v34    # "Z2IsOne":Z
    .end local v35    # "Z2Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_18
    const/4 v3, 0x1

    new-array v7, v3, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aput-object v36, v7, v3

    .restart local v7    # "zs":[Lorg/spongycastle/math/ec/ECFieldElement;
    goto/16 :goto_7

    .line 675
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected calculateJacobianModifiedW(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "Z"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "ZSquared"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1285
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1286
    .local v1, "a4":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 1306
    :goto_0
    return-object v0

    .line 1291
    :cond_1
    if-nez p2, :cond_2

    .line 1293
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p2

    .line 1296
    :cond_2
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1297
    .local v0, "W":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->negate()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1298
    .local v2, "a4Neg":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v3

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1300
    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->negate()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_0

    .line 1304
    :cond_3
    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_0
.end method

.method protected detach()Lorg/spongycastle/math/ec/ECPoint;
    .locals 4

    .prologue
    .line 640
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected eight(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1252
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->four(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected four(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1247
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected getJacobianModifiedW()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1311
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v0, v1, v4

    .line 1312
    .local v0, "W":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v0, :cond_0

    .line 1315
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/spongycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    aput-object v0, v1, v4

    .line 1317
    :cond_0
    return-object v0
.end method

.method public getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 645
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurveCoordinateSystem()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 647
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 650
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_0
.end method

.method public negate()Lorg/spongycastle/math/ec/ECPoint;
    .locals 7

    .prologue
    .line 1267
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    .end local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$Fp;
    .local v1, "curve":Lorg/spongycastle/math/ec/ECCurve;
    .local v6, "coord":I
    :goto_0
    return-object p0

    .line 1272
    .end local v1    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    .end local v6    # "coord":I
    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$Fp;
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 1273
    .restart local v1    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v6

    .line 1275
    .restart local v6    # "coord":I
    if-eqz v6, :cond_1

    .line 1277
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->negate()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    .line 1280
    :cond_1
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->negate()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method protected three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1242
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public threeTimes()Lorg/spongycastle/math/ec/ECPoint;
    .locals 19

    .prologue
    .line 1091
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1138
    .end local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$Fp;
    .local v10, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v14, "coord":I
    .local v15, "curve":Lorg/spongycastle/math/ec/ECCurve;
    :cond_0
    :goto_0
    return-object p0

    .line 1096
    .end local v10    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v14    # "coord":I
    .end local v15    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$Fp;
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1097
    .restart local v10    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v17

    if-nez v17, :cond_0

    .line 1102
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v15

    .line 1103
    .restart local v15    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v14

    .line 1105
    .restart local v14    # "coord":I
    sparse-switch v14, :sswitch_data_0

    .line 1138
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 1109
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1111
    .local v7, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1112
    .local v13, "_2Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1113
    .local v6, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1114
    .local v12, "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1116
    .local v9, "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1117
    .local v16, "d":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1119
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 1122
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1123
    .local v2, "D":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->invert()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1124
    .local v3, "I":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1125
    .local v4, "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1127
    .local v5, "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    invoke-virtual {v4, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1128
    .local v8, "X4":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1129
    .local v11, "Y4":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v17, Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v15, v8, v11, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p0, v17

    goto/16 :goto_0

    .line 1133
    .end local v2    # "D":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v3    # "I":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v4    # "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v5    # "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v6    # "X":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v7    # "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v8    # "X4":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v9    # "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v11    # "Y4":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v12    # "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v13    # "_2Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v16    # "d":Lorg/spongycastle/math/ec/ECFieldElement;
    :sswitch_1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto/16 :goto_0

    .line 1105
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method public timesPow2(I)Lorg/spongycastle/math/ec/ECPoint;
    .locals 24
    .param p1, "e"    # I

    .prologue
    .line 1145
    if-gez p1, :cond_0

    .line 1147
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v6, "\'e\' cannot be negative"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1149
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object/from16 v2, p0

    .line 1229
    :goto_0
    return-object v2

    .line 1153
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 1155
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_0

    .line 1158
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 1160
    .local v3, "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1161
    .local v5, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1163
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_0

    .line 1166
    :cond_4
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v18

    .line 1168
    .local v18, "coord":I
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1169
    .local v10, "W1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1170
    .local v4, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    array-length v2, v2

    const/4 v6, 0x1

    if-ge v2, v6, :cond_6

    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1172
    .local v12, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_1
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1174
    packed-switch v18, :pswitch_data_0

    .line 1191
    :cond_5
    :goto_2
    :pswitch_0
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, p1

    if-ge v0, v1, :cond_a

    .line 1193
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1195
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_0

    .line 1170
    .end local v12    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v19    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v12, v2, v6

    goto :goto_1

    .line 1177
    .restart local v12    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_1
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1178
    .local v13, "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1179
    invoke-virtual {v5, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1180
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/spongycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1181
    goto :goto_2

    .line 1183
    .end local v13    # "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1184
    goto :goto_2

    .line 1186
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    goto :goto_2

    .line 1198
    .restart local v19    # "i":I
    :cond_7
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1199
    .local v11, "X1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1200
    .local v8, "M":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1201
    .local v14, "_2Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1202
    .local v15, "_2Y1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1203
    .local v9, "S":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1204
    .local v16, "_4T":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 1206
    .local v17, "_8T":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1208
    invoke-virtual {v8, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1209
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1212
    :cond_8
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1213
    invoke-virtual {v9, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1214
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v12, v14

    .line 1191
    :goto_4
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 1214
    :cond_9
    invoke-virtual {v14, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    goto :goto_4

    .line 1217
    .end local v8    # "M":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v9    # "S":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v11    # "X1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v14    # "_2Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v15    # "_2Y1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v16    # "_4T":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v17    # "_8T":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_a
    packed-switch v18, :pswitch_data_1

    .line 1231
    :pswitch_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v6, "unsupported coordinate system"

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1220
    :pswitch_5
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->invert()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .local v20, "zInv":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    .local v21, "zInv2":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 1221
    .local v22, "zInv3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-direct {v2, v3, v6, v7, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 1223
    .end local v20    # "zInv":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v21    # "zInv2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v22    # "zInv3":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_6
    invoke-virtual {v4, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1224
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1225
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 1227
    :pswitch_7
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 1229
    :pswitch_8
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    const/4 v7, 0x1

    aput-object v10, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 1174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1217
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method public twice()Lorg/spongycastle/math/ec/ECPoint;
    .locals 33

    .prologue
    .line 882
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v2, p0

    .line 1002
    :goto_0
    return-object v2

    .line 887
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 889
    .local v3, "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 890
    .local v14, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 892
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_0

    .line 895
    :cond_1
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v27

    .line 897
    .local v27, "coord":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 899
    .local v12, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    packed-switch v27, :pswitch_data_0

    .line 1007
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v6, "unsupported coordinate system"

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 903
    :pswitch_1
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 904
    .local v13, "X1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v28

    .line 905
    .local v28, "gamma":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 906
    .local v4, "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 908
    .local v5, "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto :goto_0

    .line 913
    .end local v4    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v13    # "X1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v28    # "gamma":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v16, v2, v6

    .line 915
    .local v16, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v17

    .line 918
    .local v17, "Z1IsOne":Z
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v32

    .line 919
    .local v32, "w":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v32 .. v32}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v17, :cond_2

    .line 921
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v32

    .line 923
    :cond_2
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v32

    .line 925
    if-eqz v17, :cond_3

    move-object/from16 v30, v14

    .line 926
    .local v30, "s":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_1
    if-eqz v17, :cond_4

    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v31

    .line 927
    .local v31, "t":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_2
    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 928
    .local v8, "B":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/spongycastle/math/ec/ECPoint$Fp;->four(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 929
    .local v23, "_4B":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v32 .. v32}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v29

    .line 931
    .local v29, "h":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 932
    .local v21, "_2s":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 933
    .restart local v4    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 934
    .local v22, "_2t":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 935
    .restart local v5    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v24

    .line 936
    .local v24, "_4sSquared":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 938
    .local v20, "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v20, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 925
    .end local v4    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v8    # "B":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v20    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v21    # "_2s":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v22    # "_2t":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v23    # "_4B":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v24    # "_4sSquared":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v29    # "h":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v30    # "s":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v31    # "t":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v30

    goto/16 :goto_1

    .line 926
    .restart local v30    # "s":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_4
    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v31

    goto/16 :goto_2

    .line 935
    .restart local v4    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v5    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v8    # "B":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v21    # "_2s":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v22    # "_2t":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v23    # "_4B":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v29    # "h":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v31    # "t":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_5
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v24

    goto :goto_3

    .line 943
    .end local v4    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v8    # "B":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v16    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v17    # "Z1IsOne":Z
    .end local v21    # "_2s":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v22    # "_2t":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v23    # "_4B":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v29    # "h":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v30    # "s":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v31    # "t":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v32    # "w":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v16, v2, v6

    .line 945
    .restart local v16    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v17

    .line 947
    .restart local v17    # "Z1IsOne":Z
    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 948
    .local v15, "Y1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 950
    .local v11, "T":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v25

    .line 951
    .local v25, "a4":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/math/ec/ECFieldElement;->negate()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v26

    .line 954
    .local v26, "a4Neg":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 956
    if-eqz v17, :cond_7

    move-object/from16 v19, v16

    .line 957
    .local v19, "Z1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_4
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 958
    .local v9, "M":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v15, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->four(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 985
    .end local v19    # "Z1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v10, "S":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_5
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 986
    .restart local v4    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/spongycastle/math/ec/ECPoint$Fp;->eight(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 988
    .restart local v5    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 989
    .restart local v20    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v17, :cond_6

    .line 991
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 997
    :cond_6
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v20, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 956
    .end local v4    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v9    # "M":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v10    # "S":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v20    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    goto :goto_4

    .line 962
    :cond_8
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 963
    .restart local v13    # "X1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 964
    .restart local v9    # "M":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v17, :cond_a

    .line 966
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 982
    :cond_9
    :goto_6
    invoke-virtual {v12, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->four(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .restart local v10    # "S":Lorg/spongycastle/math/ec/ECFieldElement;
    goto :goto_5

    .line 968
    .end local v10    # "S":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_a
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_9

    .line 970
    if-eqz v17, :cond_b

    move-object/from16 v19, v16

    .line 971
    .restart local v19    # "Z1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_7
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 972
    .local v18, "Z1Pow4":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v2

    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v6

    if-ge v2, v6, :cond_c

    .line 974
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    goto :goto_6

    .line 970
    .end local v18    # "Z1Pow4":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v19    # "Z1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_b
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    goto :goto_7

    .line 978
    .restart local v18    # "Z1Pow4":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v19    # "Z1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_c
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    goto :goto_6

    .line 1002
    .end local v9    # "M":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v11    # "T":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v13    # "X1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v15    # "Y1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v16    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v17    # "Z1IsOne":Z
    .end local v18    # "Z1Pow4":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v19    # "Z1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v25    # "a4":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v26    # "a4Neg":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-result-object v2

    goto/16 :goto_0

    .line 899
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected twiceJacobianModified(Z)Lorg/spongycastle/math/ec/ECPoint$Fp;
    .locals 21
    .param p1, "calculateW"    # Z

    .prologue
    .line 1322
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v12, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v14, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aget-object v15, v2, v3

    .local v15, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1324
    .local v10, "W1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1325
    .local v13, "X1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1326
    .local v8, "M":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 1327
    .local v17, "_2Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 1328
    .local v18, "_2Y1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1329
    .local v9, "S":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1330
    .local v4, "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 1331
    .local v19, "_4T":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 1332
    .local v20, "_8T":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1333
    .local v5, "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz p1, :cond_0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1334
    .local v11, "W3":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_0
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v16, v17

    .line 1336
    .local v16, "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_1
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$Fp;

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    const/4 v7, 0x1

    aput-object v11, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v2

    .line 1333
    .end local v11    # "W3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v16    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 1334
    .restart local v11    # "W3":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    goto :goto_1
.end method

.method public twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 21
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 1014
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    .line 1016
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->threeTimes()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    .line 1084
    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    :goto_0
    return-object p1

    .line 1018
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1022
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1024
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 1027
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1028
    .local v11, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1033
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v15

    .line 1034
    .local v15, "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v14

    .line 1036
    .local v14, "coord":I
    sparse-switch v14, :sswitch_data_0

    .line 1084
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 1040
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1041
    .local v7, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v8, "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1043
    .local v12, "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .local v17, "dx":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 1045
    .local v18, "dy":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1047
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1050
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->threeTimes()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object/from16 p1, p0

    .line 1054
    goto :goto_0

    .line 1062
    :cond_4
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .local v6, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1063
    .local v10, "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1064
    .local v16, "d":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1066
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 1069
    :cond_5
    invoke-virtual/range {v16 .. v17}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1070
    .local v2, "D":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->invert()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1071
    .local v3, "I":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1072
    .local v4, "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1073
    .local v5, "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    invoke-virtual {v4, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1074
    .local v9, "X4":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1076
    .local v13, "Y4":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance p1, Lorg/spongycastle/math/ec/ECPoint$Fp;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-direct {v0, v15, v9, v13, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 1080
    .end local v2    # "D":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v3    # "I":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v4    # "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v5    # "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v6    # "X":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v7    # "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v8    # "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v9    # "X4":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v10    # "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v12    # "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v13    # "Y4":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v16    # "d":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v17    # "dx":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v18    # "dy":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :sswitch_1
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 1036
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method protected two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1237
    invoke-virtual {p1, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method
