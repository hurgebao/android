.class public abstract Lorg/spongycastle/math/ec/ECCurve;
.super Ljava/lang/Object;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/math/ec/ECCurve$F2m;,
        Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;,
        Lorg/spongycastle/math/ec/ECCurve$Fp;,
        Lorg/spongycastle/math/ec/ECCurve$AbstractFp;,
        Lorg/spongycastle/math/ec/ECCurve$Config;
    }
.end annotation


# instance fields
.field protected a:Lorg/spongycastle/math/ec/ECFieldElement;

.field protected b:Lorg/spongycastle/math/ec/ECFieldElement;

.field protected cofactor:Ljava/math/BigInteger;

.field protected coord:I

.field protected endomorphism:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

.field protected field:Lorg/spongycastle/math/field/FiniteField;

.field protected multiplier:Lorg/spongycastle/math/ec/ECMultiplier;

.field protected order:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/math/field/FiniteField;)V
    .locals 2
    .param p1, "field"    # Lorg/spongycastle/math/field/FiniteField;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/math/ec/ECCurve;->coord:I

    .line 91
    iput-object v1, p0, Lorg/spongycastle/math/ec/ECCurve;->endomorphism:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    .line 92
    iput-object v1, p0, Lorg/spongycastle/math/ec/ECCurve;->multiplier:Lorg/spongycastle/math/ec/ECMultiplier;

    .line 96
    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve;->field:Lorg/spongycastle/math/field/FiniteField;

    .line 97
    return-void
.end method


# virtual methods
.method protected checkPoint(Lorg/spongycastle/math/ec/ECPoint;)V
    .locals 2
    .param p1, "point"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 409
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    if-eq p0, v0, :cond_1

    .line 411
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'point\' must be non-null and on this curve"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_1
    return-void
.end method

.method protected checkPoints([Lorg/spongycastle/math/ec/ECPoint;)V
    .locals 4
    .param p1, "points"    # [Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 417
    if-nez p1, :cond_0

    .line 419
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'points\' cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 422
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 424
    aget-object v1, p1, v0

    .line 425
    .local v1, "point":Lorg/spongycastle/math/ec/ECPoint;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    if-eq p0, v2, :cond_1

    .line 427
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'points\' entries must be null or on this curve"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 422
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    .end local v1    # "point":Lorg/spongycastle/math/ec/ECPoint;
    :cond_2
    return-void
.end method

.method protected abstract cloneCurve()Lorg/spongycastle/math/ec/ECCurve;
.end method

.method public configure()Lorg/spongycastle/math/ec/ECCurve$Config;
    .locals 4

    .prologue
    .line 105
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$Config;

    iget v1, p0, Lorg/spongycastle/math/ec/ECCurve;->coord:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECCurve;->endomorphism:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECCurve;->multiplier:Lorg/spongycastle/math/ec/ECMultiplier;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECCurve$Config;-><init>(Lorg/spongycastle/math/ec/ECCurve;ILorg/spongycastle/math/ec/endo/ECEndomorphism;Lorg/spongycastle/math/ec/ECMultiplier;)V

    return-object v0
.end method

.method protected createDefaultMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->endomorphism:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    instance-of v0, v0, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v0, :cond_0

    .line 156
    new-instance v1, Lorg/spongycastle/math/ec/GLVMultiplier;

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->endomorphism:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    check-cast v0, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    invoke-direct {v1, p0, v0}, Lorg/spongycastle/math/ec/GLVMultiplier;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVEndomorphism;)V

    move-object v0, v1

    .line 159
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/WNafL2RMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/WNafL2RMultiplier;-><init>()V

    goto :goto_0
.end method

.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/spongycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;
    .param p3, "withCompression"    # Z

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/spongycastle/math/ec/ECCurve;->createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
.end method

.method protected abstract createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
.end method

.method public decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;
    .locals 10
    .param p1, "encoded"    # [B

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 328
    const/4 v3, 0x0

    .line 329
    .local v3, "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v8

    add-int/lit8 v8, v8, 0x7

    div-int/lit8 v2, v8, 0x8

    .line 331
    .local v2, "expectedLength":I
    aget-byte v4, p1, v7

    .line 332
    .local v4, "type":B
    packed-switch v4, :pswitch_data_0

    .line 396
    :pswitch_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid point encoding 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v4, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 336
    :pswitch_1
    array-length v7, p1

    if-eq v7, v6, :cond_0

    .line 338
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Incorrect length for infinity encoding"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 341
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 399
    :cond_1
    :goto_0
    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 401
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid infinity encoding"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 347
    :pswitch_2
    array-length v7, p1

    add-int/lit8 v8, v2, 0x1

    if-eq v7, v8, :cond_2

    .line 349
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Incorrect length for compressed encoding"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 352
    :cond_2
    and-int/lit8 v5, v4, 0x1

    .line 353
    .local v5, "yTilde":I
    invoke-static {p1, v6, v2}, Lorg/spongycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v0

    .line 355
    .local v0, "X":Ljava/math/BigInteger;
    invoke-virtual {p0, v5, v0}, Lorg/spongycastle/math/ec/ECCurve;->decompressPoint(ILjava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 356
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->satisfiesCofactor()Z

    move-result v6

    if-nez v6, :cond_1

    .line 358
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid point"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 365
    .end local v0    # "X":Ljava/math/BigInteger;
    .end local v5    # "yTilde":I
    :pswitch_3
    array-length v7, p1

    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x1

    if-eq v7, v8, :cond_3

    .line 367
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Incorrect length for uncompressed encoding"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 370
    :cond_3
    invoke-static {p1, v6, v2}, Lorg/spongycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v0

    .line 371
    .restart local v0    # "X":Ljava/math/BigInteger;
    add-int/lit8 v6, v2, 0x1

    invoke-static {p1, v6, v2}, Lorg/spongycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v1

    .line 373
    .local v1, "Y":Ljava/math/BigInteger;
    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 374
    goto :goto_0

    .line 379
    .end local v0    # "X":Ljava/math/BigInteger;
    .end local v1    # "Y":Ljava/math/BigInteger;
    :pswitch_4
    array-length v8, p1

    mul-int/lit8 v9, v2, 0x2

    add-int/lit8 v9, v9, 0x1

    if-eq v8, v9, :cond_4

    .line 381
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Incorrect length for hybrid encoding"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 384
    :cond_4
    invoke-static {p1, v6, v2}, Lorg/spongycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v0

    .line 385
    .restart local v0    # "X":Ljava/math/BigInteger;
    add-int/lit8 v8, v2, 0x1

    invoke-static {p1, v8, v2}, Lorg/spongycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v1

    .line 387
    .restart local v1    # "Y":Ljava/math/BigInteger;
    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    const/4 v9, 0x7

    if-ne v4, v9, :cond_5

    :goto_1
    if-eq v8, v6, :cond_6

    .line 389
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Inconsistent Y coordinate in hybrid encoding"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    move v6, v7

    .line 387
    goto :goto_1

    .line 392
    :cond_6
    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 393
    goto/16 :goto_0

    .line 404
    .end local v0    # "X":Ljava/math/BigInteger;
    .end local v1    # "Y":Ljava/math/BigInteger;
    :cond_7
    return-object v3

    .line 332
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected abstract decompressPoint(ILjava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 443
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lorg/spongycastle/math/ec/ECCurve;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/spongycastle/math/ec/ECCurve;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECCurve;->equals(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lorg/spongycastle/math/ec/ECCurve;)Z
    .locals 2
    .param p1, "other"    # Lorg/spongycastle/math/ec/ECCurve;

    .prologue
    .line 434
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getField()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->getField()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;
.end method

.method public getA()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getB()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getCofactor()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getCoordinateSystem()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve;->coord:I

    return v0
.end method

.method public getEndomorphism()Lorg/spongycastle/math/ec/endo/ECEndomorphism;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->endomorphism:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    return-object v0
.end method

.method public getField()Lorg/spongycastle/math/field/FiniteField;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->field:Lorg/spongycastle/math/field/FiniteField;

    return-object v0
.end method

.method public abstract getFieldSize()I
.end method

.method public abstract getInfinity()Lorg/spongycastle/math/ec/ECPoint;
.end method

.method public declared-synchronized getMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 1

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->multiplier:Lorg/spongycastle/math/ec/ECMultiplier;

    if-nez v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->createDefaultMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->multiplier:Lorg/spongycastle/math/ec/ECMultiplier;

    .line 317
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->multiplier:Lorg/spongycastle/math/ec/ECMultiplier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOrder()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/spongycastle/math/ec/PreCompInfo;
    .locals 2
    .param p1, "point"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECCurve;->checkPoint(Lorg/spongycastle/math/ec/ECPoint;)V

    .line 170
    monitor-enter p1

    .line 172
    :try_start_0
    iget-object v0, p1, Lorg/spongycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    .line 173
    .local v0, "table":Ljava/util/Hashtable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p1

    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/math/ec/PreCompInfo;

    goto :goto_0

    .line 174
    .end local v0    # "table":Ljava/util/Hashtable;
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 448
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getField()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lorg/spongycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/spongycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public importPoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 3
    .param p1, "p"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 205
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    if-ne p0, v0, :cond_0

    move-object v0, p1

    .line 217
    :goto_0
    return-object v0

    .line 209
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    .line 217
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iget-boolean v2, p1, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    invoke-virtual {p0, v0, v1, v2}, Lorg/spongycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_0
.end method

.method public normalizeAll([Lorg/spongycastle/math/ec/ECPoint;)V
    .locals 10
    .param p1, "points"    # [Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    const/4 v9, 0x0

    .line 232
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECCurve;->checkPoints([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 234
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v8

    if-nez v8, :cond_1

    .line 267
    :cond_0
    return-void

    .line 242
    :cond_1
    array-length v8, p1

    new-array v7, v8, [Lorg/spongycastle/math/ec/ECFieldElement;

    .line 243
    .local v7, "zs":[Lorg/spongycastle/math/ec/ECFieldElement;
    array-length v8, p1

    new-array v4, v8, [I

    .line 244
    .local v4, "indices":[I
    const/4 v0, 0x0

    .line 245
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, p1

    if-ge v2, v8, :cond_3

    .line 247
    aget-object v6, p1, v2

    .line 248
    .local v6, "p":Lorg/spongycastle/math/ec/ECPoint;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECPoint;->isNormalized()Z

    move-result v8

    if-nez v8, :cond_2

    .line 250
    invoke-virtual {v6, v9}, Lorg/spongycastle/math/ec/ECPoint;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    aput-object v8, v7, v0

    .line 251
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    aput v2, v4, v0

    move v0, v1

    .line 245
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    .end local v6    # "p":Lorg/spongycastle/math/ec/ECPoint;
    :cond_3
    if-eqz v0, :cond_0

    .line 260
    invoke-static {v7, v9, v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->montgomeryTrick([Lorg/spongycastle/math/ec/ECFieldElement;II)V

    .line 262
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v0, :cond_0

    .line 264
    aget v3, v4, v5

    .line 265
    .local v3, "index":I
    aget-object v8, p1, v3

    aget-object v9, v7, v5

    invoke-virtual {v8, v9}, Lorg/spongycastle/math/ec/ECPoint;->normalize(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    aput-object v8, p1, v3

    .line 262
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public setPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/spongycastle/math/ec/PreCompInfo;)V
    .locals 2
    .param p1, "point"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "preCompInfo"    # Lorg/spongycastle/math/ec/PreCompInfo;

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECCurve;->checkPoint(Lorg/spongycastle/math/ec/ECPoint;)V

    .line 192
    monitor-enter p1

    .line 194
    :try_start_0
    iget-object v0, p1, Lorg/spongycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    .line 195
    .local v0, "table":Ljava/util/Hashtable;
    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "table":Ljava/util/Hashtable;
    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .restart local v0    # "table":Ljava/util/Hashtable;
    iput-object v0, p1, Lorg/spongycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    .line 199
    :cond_0
    invoke-virtual {v0, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    monitor-exit p1

    .line 201
    return-void

    .line 200
    .end local v0    # "table":Ljava/util/Hashtable;
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supportsCoordinateSystem(I)Z
    .locals 1
    .param p1, "coord"    # I

    .prologue
    .line 164
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 3
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 111
    .local v0, "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid point coordinates"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_0
    return-object v0
.end method

.method public validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 3
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;
    .param p3, "withCompression"    # Z

    .prologue
    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 125
    .local v0, "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid point coordinates"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_0
    return-object v0
.end method
