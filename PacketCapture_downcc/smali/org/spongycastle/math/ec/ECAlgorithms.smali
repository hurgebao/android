.class public Lorg/spongycastle/math/ec/ECAlgorithms;
.super Ljava/lang/Object;
.source "ECAlgorithms.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static implShamirsTrickWNaf(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 16
    .param p0, "P"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p3, "l"    # Ljava/math/BigInteger;

    .prologue
    .line 239
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v13

    if-gez v13, :cond_0

    const/4 v9, 0x1

    .local v9, "negK":Z
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->signum()I

    move-result v13

    if-gez v13, :cond_1

    const/4 v10, 0x1

    .line 241
    .local v10, "negL":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    .line 242
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p3

    .line 244
    const/4 v13, 0x2

    const/16 v14, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v15

    invoke-static {v15}, Lorg/spongycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 245
    .local v11, "widthP":I
    const/4 v13, 0x2

    const/16 v14, 0x10

    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v15

    invoke-static {v15}, Lorg/spongycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 247
    .local v12, "widthQ":I
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v11, v13}, Lorg/spongycastle/math/ec/WNafUtil;->precompute(Lorg/spongycastle/math/ec/ECPoint;IZ)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v7

    .line 248
    .local v7, "infoP":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lorg/spongycastle/math/ec/WNafUtil;->precompute(Lorg/spongycastle/math/ec/ECPoint;IZ)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v8

    .line 250
    .local v8, "infoQ":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    if-eqz v9, :cond_2

    invoke-virtual {v7}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 251
    .local v1, "preCompP":[Lorg/spongycastle/math/ec/ECPoint;
    :goto_2
    if-eqz v10, :cond_3

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    .line 252
    .local v4, "preCompQ":[Lorg/spongycastle/math/ec/ECPoint;
    :goto_3
    if-eqz v9, :cond_4

    invoke-virtual {v7}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 253
    .local v2, "preCompNegP":[Lorg/spongycastle/math/ec/ECPoint;
    :goto_4
    if-eqz v10, :cond_5

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    .line 255
    .local v5, "preCompNegQ":[Lorg/spongycastle/math/ec/ECPoint;
    :goto_5
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lorg/spongycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v3

    .line 256
    .local v3, "wnafP":[B
    move-object/from16 v0, p3

    invoke-static {v12, v0}, Lorg/spongycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v6

    .line 258
    .local v6, "wnafQ":[B
    invoke-static/range {v1 .. v6}, Lorg/spongycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf([Lorg/spongycastle/math/ec/ECPoint;[Lorg/spongycastle/math/ec/ECPoint;[B[Lorg/spongycastle/math/ec/ECPoint;[Lorg/spongycastle/math/ec/ECPoint;[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    return-object v13

    .line 239
    .end local v1    # "preCompP":[Lorg/spongycastle/math/ec/ECPoint;
    .end local v2    # "preCompNegP":[Lorg/spongycastle/math/ec/ECPoint;
    .end local v3    # "wnafP":[B
    .end local v4    # "preCompQ":[Lorg/spongycastle/math/ec/ECPoint;
    .end local v5    # "preCompNegQ":[Lorg/spongycastle/math/ec/ECPoint;
    .end local v6    # "wnafQ":[B
    .end local v7    # "infoP":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .end local v8    # "infoQ":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .end local v9    # "negK":Z
    .end local v10    # "negL":Z
    .end local v11    # "widthP":I
    .end local v12    # "widthQ":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .restart local v9    # "negK":Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 250
    .restart local v7    # "infoP":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .restart local v8    # "infoQ":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .restart local v10    # "negL":Z
    .restart local v11    # "widthP":I
    .restart local v12    # "widthQ":I
    :cond_2
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    goto :goto_2

    .line 251
    .restart local v1    # "preCompP":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_3
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    goto :goto_3

    .line 252
    .restart local v4    # "preCompQ":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_4
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_4

    .line 253
    .restart local v2    # "preCompNegP":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_5
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    goto :goto_5
.end method

.method static implShamirsTrickWNaf(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPointMap;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 18
    .param p0, "P"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "pointMapQ"    # Lorg/spongycastle/math/ec/ECPointMap;
    .param p3, "l"    # Ljava/math/BigInteger;

    .prologue
    .line 263
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v14

    if-gez v14, :cond_0

    const/4 v11, 0x1

    .local v11, "negK":Z
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->signum()I

    move-result v14

    if-gez v14, :cond_1

    const/4 v12, 0x1

    .line 265
    .local v12, "negL":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    .line 266
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p3

    .line 268
    const/4 v14, 0x2

    const/16 v15, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v16

    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    invoke-static/range {v16 .. v16}, Lorg/spongycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 270
    .local v13, "width":I
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v13, v14, v1}, Lorg/spongycastle/math/ec/WNafUtil;->mapPointWithPrecomp(Lorg/spongycastle/math/ec/ECPoint;IZLorg/spongycastle/math/ec/ECPointMap;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 271
    .local v8, "Q":Lorg/spongycastle/math/ec/ECPoint;
    invoke-static/range {p0 .. p0}, Lorg/spongycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v9

    .line 272
    .local v9, "infoP":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    invoke-static {v8}, Lorg/spongycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v10

    .line 274
    .local v10, "infoQ":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    if-eqz v11, :cond_2

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 275
    .local v2, "preCompP":[Lorg/spongycastle/math/ec/ECPoint;
    :goto_2
    if-eqz v12, :cond_3

    invoke-virtual {v10}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    .line 276
    .local v5, "preCompQ":[Lorg/spongycastle/math/ec/ECPoint;
    :goto_3
    if-eqz v11, :cond_4

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 277
    .local v3, "preCompNegP":[Lorg/spongycastle/math/ec/ECPoint;
    :goto_4
    if-eqz v12, :cond_5

    invoke-virtual {v10}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 279
    .local v6, "preCompNegQ":[Lorg/spongycastle/math/ec/ECPoint;
    :goto_5
    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lorg/spongycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v4

    .line 280
    .local v4, "wnafP":[B
    move-object/from16 v0, p3

    invoke-static {v13, v0}, Lorg/spongycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v7

    .line 282
    .local v7, "wnafQ":[B
    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf([Lorg/spongycastle/math/ec/ECPoint;[Lorg/spongycastle/math/ec/ECPoint;[B[Lorg/spongycastle/math/ec/ECPoint;[Lorg/spongycastle/math/ec/ECPoint;[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v14

    return-object v14

    .line 263
    .end local v2    # "preCompP":[Lorg/spongycastle/math/ec/ECPoint;
    .end local v3    # "preCompNegP":[Lorg/spongycastle/math/ec/ECPoint;
    .end local v4    # "wnafP":[B
    .end local v5    # "preCompQ":[Lorg/spongycastle/math/ec/ECPoint;
    .end local v6    # "preCompNegQ":[Lorg/spongycastle/math/ec/ECPoint;
    .end local v7    # "wnafQ":[B
    .end local v8    # "Q":Lorg/spongycastle/math/ec/ECPoint;
    .end local v9    # "infoP":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .end local v10    # "infoQ":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .end local v11    # "negK":Z
    .end local v12    # "negL":Z
    .end local v13    # "width":I
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .restart local v11    # "negK":Z
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 274
    .restart local v8    # "Q":Lorg/spongycastle/math/ec/ECPoint;
    .restart local v9    # "infoP":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .restart local v10    # "infoQ":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .restart local v12    # "negL":Z
    .restart local v13    # "width":I
    :cond_2
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_2

    .line 275
    .restart local v2    # "preCompP":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_3
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    goto :goto_3

    .line 276
    .restart local v5    # "preCompQ":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_4
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_4

    .line 277
    .restart local v3    # "preCompNegP":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_5
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    goto :goto_5
.end method

.method private static implShamirsTrickWNaf([Lorg/spongycastle/math/ec/ECPoint;[Lorg/spongycastle/math/ec/ECPoint;[B[Lorg/spongycastle/math/ec/ECPoint;[Lorg/spongycastle/math/ec/ECPoint;[B)Lorg/spongycastle/math/ec/ECPoint;
    .locals 16
    .param p0, "preCompP"    # [Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "preCompNegP"    # [Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "wnafP"    # [B
    .param p3, "preCompQ"    # [Lorg/spongycastle/math/ec/ECPoint;
    .param p4, "preCompNegQ"    # [Lorg/spongycastle/math/ec/ECPoint;
    .param p5, "wnafQ"    # [B

    .prologue
    .line 288
    move-object/from16 v0, p2

    array-length v14, v0

    move-object/from16 v0, p5

    array-length v15, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 290
    .local v5, "len":I
    const/4 v14, 0x0

    aget-object v14, p0, v14

    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 291
    .local v2, "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    .line 293
    .local v4, "infinity":Lorg/spongycastle/math/ec/ECPoint;
    move-object v1, v4

    .line 294
    .local v1, "R":Lorg/spongycastle/math/ec/ECPoint;
    const/4 v13, 0x0

    .line 296
    .local v13, "zeroes":I
    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_8

    .line 298
    move-object/from16 v0, p2

    array-length v14, v0

    if-ge v3, v14, :cond_0

    aget-byte v11, p2, v3

    .line 299
    .local v11, "wiP":I
    :goto_1
    move-object/from16 v0, p5

    array-length v14, v0

    if-ge v3, v14, :cond_1

    aget-byte v12, p5, v3

    .line 301
    .local v12, "wiQ":I
    :goto_2
    or-int v14, v11, v12

    if-nez v14, :cond_2

    .line 303
    add-int/lit8 v13, v13, 0x1

    .line 296
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 298
    .end local v11    # "wiP":I
    .end local v12    # "wiQ":I
    :cond_0
    const/4 v11, 0x0

    goto :goto_1

    .line 299
    .restart local v11    # "wiP":I
    :cond_1
    const/4 v12, 0x0

    goto :goto_2

    .line 307
    .restart local v12    # "wiQ":I
    :cond_2
    move-object v8, v4

    .line 308
    .local v8, "r":Lorg/spongycastle/math/ec/ECPoint;
    if-eqz v11, :cond_3

    .line 310
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 311
    .local v6, "nP":I
    if-gez v11, :cond_6

    move-object/from16 v9, p1

    .line 312
    .local v9, "tableP":[Lorg/spongycastle/math/ec/ECPoint;
    :goto_4
    ushr-int/lit8 v14, v6, 0x1

    aget-object v14, v9, v14

    invoke-virtual {v8, v14}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 314
    .end local v6    # "nP":I
    .end local v9    # "tableP":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_3
    if-eqz v12, :cond_4

    .line 316
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 317
    .local v7, "nQ":I
    if-gez v12, :cond_7

    move-object/from16 v10, p4

    .line 318
    .local v10, "tableQ":[Lorg/spongycastle/math/ec/ECPoint;
    :goto_5
    ushr-int/lit8 v14, v7, 0x1

    aget-object v14, v10, v14

    invoke-virtual {v8, v14}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 321
    .end local v7    # "nQ":I
    .end local v10    # "tableQ":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_4
    if-lez v13, :cond_5

    .line 323
    invoke-virtual {v1, v13}, Lorg/spongycastle/math/ec/ECPoint;->timesPow2(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 324
    const/4 v13, 0x0

    .line 327
    :cond_5
    invoke-virtual {v1, v8}, Lorg/spongycastle/math/ec/ECPoint;->twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    goto :goto_3

    .restart local v6    # "nP":I
    :cond_6
    move-object/from16 v9, p0

    .line 311
    goto :goto_4

    .end local v6    # "nP":I
    .restart local v7    # "nQ":I
    :cond_7
    move-object/from16 v10, p3

    .line 317
    goto :goto_5

    .line 330
    .end local v7    # "nQ":I
    .end local v8    # "r":Lorg/spongycastle/math/ec/ECPoint;
    .end local v11    # "wiP":I
    .end local v12    # "wiQ":I
    :cond_8
    if-lez v13, :cond_9

    .line 332
    invoke-virtual {v1, v13}, Lorg/spongycastle/math/ec/ECPoint;->timesPow2(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 335
    :cond_9
    return-object v1
.end method

.method static implSumOfMultiplies([Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPointMap;[Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 18
    .param p0, "ps"    # [Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "pointMap"    # Lorg/spongycastle/math/ec/ECPointMap;
    .param p2, "ks"    # [Ljava/math/BigInteger;

    .prologue
    .line 391
    move-object/from16 v0, p0

    array-length v4, v0

    .local v4, "halfCount":I
    shl-int/lit8 v3, v4, 0x1

    .line 393
    .local v3, "fullCount":I
    new-array v11, v3, [Z

    .line 394
    .local v11, "negs":[Z
    new-array v6, v3, [Lorg/spongycastle/math/ec/WNafPreCompInfo;

    .line 395
    .local v6, "infos":[Lorg/spongycastle/math/ec/WNafPreCompInfo;
    new-array v13, v3, [[B

    .line 397
    .local v13, "wnafs":[[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 399
    shl-int/lit8 v7, v5, 0x1

    .local v7, "j0":I
    add-int/lit8 v8, v7, 0x1

    .line 401
    .local v8, "j1":I
    aget-object v9, p2, v7

    .local v9, "kj0":Ljava/math/BigInteger;
    invoke-virtual {v9}, Ljava/math/BigInteger;->signum()I

    move-result v14

    if-gez v14, :cond_0

    const/4 v14, 0x1

    :goto_1
    aput-boolean v14, v11, v7

    invoke-virtual {v9}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v9

    .line 402
    aget-object v10, p2, v8

    .local v10, "kj1":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v14

    if-gez v14, :cond_1

    const/4 v14, 0x1

    :goto_2
    aput-boolean v14, v11, v8

    invoke-virtual {v10}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v10

    .line 404
    const/4 v14, 0x2

    const/16 v15, 0x10

    invoke-virtual {v9}, Ljava/math/BigInteger;->bitLength()I

    move-result v16

    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    invoke-static/range {v16 .. v16}, Lorg/spongycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 406
    .local v12, "width":I
    aget-object v1, p0, v5

    .local v1, "P":Lorg/spongycastle/math/ec/ECPoint;
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-static {v1, v12, v14, v0}, Lorg/spongycastle/math/ec/WNafUtil;->mapPointWithPrecomp(Lorg/spongycastle/math/ec/ECPoint;IZLorg/spongycastle/math/ec/ECPointMap;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 407
    .local v2, "Q":Lorg/spongycastle/math/ec/ECPoint;
    invoke-static {v1}, Lorg/spongycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v14

    aput-object v14, v6, v7

    .line 408
    invoke-static {v2}, Lorg/spongycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v14

    aput-object v14, v6, v8

    .line 409
    invoke-static {v12, v9}, Lorg/spongycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v14

    aput-object v14, v13, v7

    .line 410
    invoke-static {v12, v10}, Lorg/spongycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v14

    aput-object v14, v13, v8

    .line 397
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 401
    .end local v1    # "P":Lorg/spongycastle/math/ec/ECPoint;
    .end local v2    # "Q":Lorg/spongycastle/math/ec/ECPoint;
    .end local v10    # "kj1":Ljava/math/BigInteger;
    .end local v12    # "width":I
    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    .line 402
    .restart local v10    # "kj1":Ljava/math/BigInteger;
    :cond_1
    const/4 v14, 0x0

    goto :goto_2

    .line 413
    .end local v7    # "j0":I
    .end local v8    # "j1":I
    .end local v9    # "kj0":Ljava/math/BigInteger;
    .end local v10    # "kj1":Ljava/math/BigInteger;
    :cond_2
    invoke-static {v11, v6, v13}, Lorg/spongycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Z[Lorg/spongycastle/math/ec/WNafPreCompInfo;[[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v14

    return-object v14
.end method

.method static implSumOfMultiplies([Lorg/spongycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 11
    .param p0, "ps"    # [Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "ks"    # [Ljava/math/BigInteger;

    .prologue
    const/4 v8, 0x1

    .line 340
    array-length v0, p0

    .line 341
    .local v0, "count":I
    new-array v4, v0, [Z

    .line 342
    .local v4, "negs":[Z
    new-array v2, v0, [Lorg/spongycastle/math/ec/WNafPreCompInfo;

    .line 343
    .local v2, "infos":[Lorg/spongycastle/math/ec/WNafPreCompInfo;
    new-array v6, v0, [[B

    .line 345
    .local v6, "wnafs":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 347
    aget-object v3, p1, v1

    .local v3, "ki":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-gez v7, :cond_0

    move v7, v8

    :goto_1
    aput-boolean v7, v4, v1

    invoke-virtual {v3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v3

    .line 349
    const/4 v7, 0x2

    const/16 v9, 0x10

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    invoke-static {v10}, Lorg/spongycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 350
    .local v5, "width":I
    aget-object v7, p0, v1

    invoke-static {v7, v5, v8}, Lorg/spongycastle/math/ec/WNafUtil;->precompute(Lorg/spongycastle/math/ec/ECPoint;IZ)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v7

    aput-object v7, v2, v1

    .line 351
    invoke-static {v5, v3}, Lorg/spongycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v7

    aput-object v7, v6, v1

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    .end local v5    # "width":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 354
    .end local v3    # "ki":Ljava/math/BigInteger;
    :cond_1
    invoke-static {v4, v2, v6}, Lorg/spongycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Z[Lorg/spongycastle/math/ec/WNafPreCompInfo;[[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    return-object v7
.end method

.method private static implSumOfMultiplies([Z[Lorg/spongycastle/math/ec/WNafPreCompInfo;[[B)Lorg/spongycastle/math/ec/ECPoint;
    .locals 17
    .param p0, "negs"    # [Z
    .param p1, "infos"    # [Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .param p2, "wnafs"    # [[B

    .prologue
    .line 418
    const/4 v8, 0x0

    .local v8, "len":I
    move-object/from16 v0, p2

    array-length v2, v0

    .line 419
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 421
    aget-object v15, p2, v4

    array-length v15, v15

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 419
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 424
    :cond_0
    const/4 v15, 0x0

    aget-object v15, p1, v15

    invoke-virtual {v15}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 425
    .local v3, "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    .line 427
    .local v5, "infinity":Lorg/spongycastle/math/ec/ECPoint;
    move-object v1, v5

    .line 428
    .local v1, "R":Lorg/spongycastle/math/ec/ECPoint;
    const/4 v14, 0x0

    .line 430
    .local v14, "zeroes":I
    add-int/lit8 v4, v8, -0x1

    :goto_1
    if-ltz v4, :cond_8

    .line 432
    move-object v10, v5

    .line 434
    .local v10, "r":Lorg/spongycastle/math/ec/ECPoint;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v7, v2, :cond_5

    .line 436
    aget-object v13, p2, v7

    .line 437
    .local v13, "wnaf":[B
    array-length v15, v13

    if-ge v4, v15, :cond_2

    aget-byte v12, v13, v4

    .line 438
    .local v12, "wi":I
    :goto_3
    if-eqz v12, :cond_1

    .line 440
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 441
    .local v9, "n":I
    aget-object v6, p1, v7

    .line 442
    .local v6, "info":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    if-gez v12, :cond_3

    const/4 v15, 0x1

    :goto_4
    aget-boolean v16, p0, v7

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    .line 443
    .local v11, "table":[Lorg/spongycastle/math/ec/ECPoint;
    :goto_5
    ushr-int/lit8 v15, v9, 0x1

    aget-object v15, v11, v15

    invoke-virtual {v10, v15}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    .line 434
    .end local v6    # "info":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .end local v9    # "n":I
    .end local v11    # "table":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 437
    .end local v12    # "wi":I
    :cond_2
    const/4 v12, 0x0

    goto :goto_3

    .line 442
    .restart local v6    # "info":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .restart local v9    # "n":I
    .restart local v12    # "wi":I
    :cond_3
    const/4 v15, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    goto :goto_5

    .line 447
    .end local v6    # "info":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .end local v9    # "n":I
    .end local v12    # "wi":I
    .end local v13    # "wnaf":[B
    :cond_5
    if-ne v10, v5, :cond_6

    .line 449
    add-int/lit8 v14, v14, 0x1

    .line 430
    :goto_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 453
    :cond_6
    if-lez v14, :cond_7

    .line 455
    invoke-virtual {v1, v14}, Lorg/spongycastle/math/ec/ECPoint;->timesPow2(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 456
    const/4 v14, 0x0

    .line 459
    :cond_7
    invoke-virtual {v1, v10}, Lorg/spongycastle/math/ec/ECPoint;->twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    goto :goto_6

    .line 462
    .end local v7    # "j":I
    .end local v10    # "r":Lorg/spongycastle/math/ec/ECPoint;
    :cond_8
    if-lez v14, :cond_9

    .line 464
    invoke-virtual {v1, v14}, Lorg/spongycastle/math/ec/ECPoint;->timesPow2(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 467
    :cond_9
    return-object v1
.end method

.method static implSumOfMultipliesGLV([Lorg/spongycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lorg/spongycastle/math/ec/endo/GLVEndomorphism;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 13
    .param p0, "ps"    # [Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "ks"    # [Ljava/math/BigInteger;
    .param p2, "glvEndomorphism"    # Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    .prologue
    const/4 v12, 0x0

    .line 359
    aget-object v11, p0, v12

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v6

    .line 361
    .local v6, "n":Ljava/math/BigInteger;
    array-length v5, p0

    .line 363
    .local v5, "len":I
    shl-int/lit8 v11, v5, 0x1

    new-array v1, v11, [Ljava/math/BigInteger;

    .line 364
    .local v1, "abs":[Ljava/math/BigInteger;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 366
    aget-object v11, p1, v2

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-interface {p2, v11}, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;->decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 367
    .local v0, "ab":[Ljava/math/BigInteger;
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aget-object v11, v0, v12

    aput-object v11, v1, v4

    .line 368
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    const/4 v11, 0x1

    aget-object v11, v0, v11

    aput-object v11, v1, v3

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    .end local v0    # "ab":[Ljava/math/BigInteger;
    :cond_0
    invoke-interface {p2}, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;->getPointMap()Lorg/spongycastle/math/ec/ECPointMap;

    move-result-object v8

    .line 372
    .local v8, "pointMap":Lorg/spongycastle/math/ec/ECPointMap;
    invoke-interface {p2}, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;->hasEfficientPointMap()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 374
    invoke-static {p0, v8, v1}, Lorg/spongycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPointMap;[Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    .line 385
    :goto_1
    return-object v11

    .line 377
    :cond_1
    shl-int/lit8 v11, v5, 0x1

    new-array v9, v11, [Lorg/spongycastle/math/ec/ECPoint;

    .line 378
    .local v9, "pqs":[Lorg/spongycastle/math/ec/ECPoint;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .end local v4    # "j":I
    .restart local v3    # "j":I
    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    :goto_2
    if-ge v2, v5, :cond_2

    .line 380
    aget-object v7, p0, v2

    .local v7, "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-interface {v8, v7}, Lorg/spongycastle/math/ec/ECPointMap;->map(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    .line 381
    .local v10, "q":Lorg/spongycastle/math/ec/ECPoint;
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aput-object v7, v9, v4

    .line 382
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    aput-object v10, v9, v3

    .line 378
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 385
    .end local v7    # "p":Lorg/spongycastle/math/ec/ECPoint;
    .end local v10    # "q":Lorg/spongycastle/math/ec/ECPoint;
    :cond_2
    invoke-static {v9, v1}, Lorg/spongycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lorg/spongycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    goto :goto_1
.end method

.method public static importPoint(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 3
    .param p0, "c"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p1, "p"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 117
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    .line 118
    .local v0, "cp":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECCurve;->equals(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Point must be on the same curve"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECCurve;->importPoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method

.method public static isF2mCurve(Lorg/spongycastle/math/ec/ECCurve;)Z
    .locals 4
    .param p0, "c"    # Lorg/spongycastle/math/ec/ECCurve;

    .prologue
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getField()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v0

    .line 15
    .local v0, "field":Lorg/spongycastle/math/field/FiniteField;
    invoke-interface {v0}, Lorg/spongycastle/math/field/FiniteField;->getDimension()I

    move-result v2

    if-le v2, v1, :cond_0

    invoke-interface {v0}, Lorg/spongycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Lorg/spongycastle/math/field/PolynomialExtensionField;

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFpCurve(Lorg/spongycastle/math/ec/ECCurve;)Z
    .locals 2
    .param p0, "c"    # Lorg/spongycastle/math/ec/ECCurve;

    .prologue
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getField()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/math/field/FiniteField;->getDimension()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static montgomeryTrick([Lorg/spongycastle/math/ec/ECFieldElement;II)V
    .locals 8
    .param p0, "zs"    # [Lorg/spongycastle/math/ec/ECFieldElement;
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 134
    new-array v0, p2, [Lorg/spongycastle/math/ec/ECFieldElement;

    .line 135
    .local v0, "c":[Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v6, 0x0

    aget-object v7, p0, p1

    aput-object v7, v0, v6

    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_0

    .line 140
    add-int/lit8 v6, v1, -0x1

    aget-object v6, v0, v6

    add-int v7, p1, v1

    aget-object v7, p0, v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    aput-object v6, v0, v1

    goto :goto_0

    .line 143
    :cond_0
    add-int/lit8 v1, v1, -0x1

    aget-object v6, v0, v1

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->invert()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .local v5, "u":Lorg/spongycastle/math/ec/ECFieldElement;
    move v2, v1

    .line 145
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-lez v2, :cond_1

    .line 147
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int v3, p1, v2

    .line 148
    .local v3, "j":I
    aget-object v4, p0, v3

    .line 149
    .local v4, "tmp":Lorg/spongycastle/math/ec/ECFieldElement;
    aget-object v6, v0, v1

    invoke-virtual {v6, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    aput-object v6, p0, v3

    .line 150
    invoke-virtual {v5, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    move v2, v1

    .line 151
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 153
    .end local v3    # "j":I
    .end local v4    # "tmp":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_1
    aput-object v5, p0, p1

    .line 154
    return-void
.end method

.method public static referenceMultiply(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 5
    .param p0, "p"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 168
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v3

    .line 169
    .local v3, "x":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 170
    .local v1, "q":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 171
    .local v2, "t":I
    if-lez v2, :cond_2

    .line 173
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    move-object v1, p0

    .line 177
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 179
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    .line 180
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 182
    invoke-virtual {v1, p0}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 177
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-gez v4, :cond_3

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .end local v1    # "q":Lorg/spongycastle/math/ec/ECPoint;
    :cond_3
    return-object v1
.end method

.method public static sumOfTwoMultiplies(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 7
    .param p0, "P"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "a"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p3, "b"    # Ljava/math/BigInteger;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    .line 65
    .local v0, "cp":Lorg/spongycastle/math/ec/ECCurve;
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/ECAlgorithms;->importPoint(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p2

    .line 68
    instance-of v3, v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 70
    check-cast v2, Lorg/spongycastle/math/ec/ECCurve$F2m;

    .line 71
    .local v2, "f2mCurve":Lorg/spongycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {p2, p3}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/math/ec/ECAlgorithms;->validatePoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 84
    .end local v2    # "f2mCurve":Lorg/spongycastle/math/ec/ECCurve$F2m;
    :goto_0
    return-object v3

    .line 77
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getEndomorphism()Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    move-result-object v1

    .line 78
    .local v1, "endomorphism":Lorg/spongycastle/math/ec/endo/ECEndomorphism;
    instance-of v3, v1, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v3, :cond_1

    .line 80
    new-array v3, v4, [Lorg/spongycastle/math/ec/ECPoint;

    aput-object p0, v3, v5

    aput-object p2, v3, v6

    new-array v4, v4, [Ljava/math/BigInteger;

    aput-object p1, v4, v5

    aput-object p3, v4, v6

    check-cast v1, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    .end local v1    # "endomorphism":Lorg/spongycastle/math/ec/endo/ECEndomorphism;
    invoke-static {v3, v4, v1}, Lorg/spongycastle/math/ec/ECAlgorithms;->implSumOfMultipliesGLV([Lorg/spongycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lorg/spongycastle/math/ec/endo/GLVEndomorphism;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/math/ec/ECAlgorithms;->validatePoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_0

    .line 84
    .restart local v1    # "endomorphism":Lorg/spongycastle/math/ec/endo/ECEndomorphism;
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/math/ec/ECAlgorithms;->validatePoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_0
.end method

.method public static validatePoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2
    .param p0, "p"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 191
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid point"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    return-object p0
.end method
