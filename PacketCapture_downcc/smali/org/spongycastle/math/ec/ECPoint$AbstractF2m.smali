.class public abstract Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;
.super Lorg/spongycastle/math/ec/ECPoint;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractF2m"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1344
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 1345
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1349
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 1350
    return-void
.end method


# virtual methods
.method protected satisfiesCurveEquation()Z
    .locals 18

    .prologue
    .line 1354
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v13

    .line 1355
    .local v13, "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v4, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .local v1, "A":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1357
    .local v2, "B":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v12

    .line 1358
    .local v12, "coord":I
    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v12, v0, :cond_3

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v7, v16, v17

    .line 1361
    .local v7, "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v11

    .line 1363
    .local v11, "ZIsOne":Z
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1366
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1367
    .local v6, "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .local v14, "lhs":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object v15, v2

    .line 1368
    .local v15, "rhs":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v11, :cond_0

    .line 1370
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1372
    :cond_0
    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 1417
    .end local v6    # "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v7    # "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v11    # "ZIsOne":Z
    :goto_0
    return v16

    .line 1375
    .end local v14    # "lhs":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v15    # "rhs":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v7    # "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v11    # "ZIsOne":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v3, "L":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1377
    .local v5, "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v11, :cond_2

    .line 1379
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1380
    .restart local v14    # "lhs":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1389
    .restart local v15    # "rhs":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_1
    invoke-virtual {v14, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1390
    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    goto :goto_0

    .line 1384
    .end local v14    # "lhs":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v15    # "rhs":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_2
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .local v8, "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1385
    .local v10, "Z4":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v1, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1387
    .restart local v14    # "lhs":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v2, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .restart local v15    # "rhs":Lorg/spongycastle/math/ec/ECFieldElement;
    goto :goto_1

    .line 1393
    .end local v3    # "L":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v5    # "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v7    # "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v8    # "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v10    # "Z4":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v11    # "ZIsOne":Z
    .end local v14    # "lhs":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v15    # "rhs":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1394
    .restart local v6    # "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1396
    .restart local v14    # "lhs":Lorg/spongycastle/math/ec/ECFieldElement;
    packed-switch v12, :pswitch_data_0

    .line 1413
    new-instance v16, Ljava/lang/IllegalStateException;

    const-string v17, "unsupported coordinate system"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1402
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v7, v16, v17

    .line 1403
    .restart local v7    # "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v16

    if-nez v16, :cond_4

    .line 1405
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .restart local v8    # "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1406
    .local v9, "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1407
    invoke-virtual {v1, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1408
    invoke-virtual {v2, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1416
    .end local v7    # "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v8    # "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v9    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_4
    :pswitch_1
    invoke-virtual {v4, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1417
    .restart local v15    # "rhs":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    goto/16 :goto_0

    .line 1396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
