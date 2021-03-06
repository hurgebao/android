.class public Lorg/spongycastle/math/ec/ECFieldElement$Fp;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# instance fields
.field q:Ljava/math/BigInteger;

.field r:Ljava/math/BigInteger;

.field x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 100
    invoke-static {p1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->calculateResidue(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 101
    return-void
.end method

.method constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 105
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value invalid in Fp field element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    .line 111
    iput-object p2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    .line 112
    iput-object p3, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    .line 113
    return-void
.end method

.method static calculateResidue(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6
    .param p0, "p"    # Ljava/math/BigInteger;

    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 84
    .local v0, "bitLength":I
    const/16 v2, 0x60

    if-lt v0, v2, :cond_0

    .line 86
    add-int/lit8 v2, v0, -0x40

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 87
    .local v1, "firstWord":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 89
    sget-object v2, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 92
    .end local v1    # "firstWord":Ljava/math/BigInteger;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkSqrt(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "z"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 304
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "z":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_0
    return-object p1

    .restart local p1    # "z":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private lucasSequence(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 11
    .param p1, "P"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Ljava/math/BigInteger;
    .param p3, "k"    # Ljava/math/BigInteger;

    .prologue
    const/4 v10, 0x1

    .line 314
    invoke-virtual {p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    .line 315
    .local v6, "n":I
    invoke-virtual {p3}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v7

    .line 319
    .local v7, "s":I
    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .line 320
    .local v2, "Uh":Ljava/math/BigInteger;
    sget-object v4, Lorg/spongycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    .line 321
    .local v4, "Vl":Ljava/math/BigInteger;
    move-object v3, p1

    .line 322
    .local v3, "Vh":Ljava/math/BigInteger;
    sget-object v1, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .line 323
    .local v1, "Ql":Ljava/math/BigInteger;
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .line 325
    .local v0, "Qh":Ljava/math/BigInteger;
    add-int/lit8 v5, v6, -0x1

    .local v5, "j":I
    :goto_0
    add-int/lit8 v8, v7, 0x1

    if-lt v5, v8, :cond_1

    .line 327
    invoke-virtual {p0, v1, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 329
    invoke-virtual {p3, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 331
    invoke-virtual {p0, v1, p2}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 332
    invoke-virtual {p0, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 333
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 334
    invoke-virtual {v3, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 325
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 338
    :cond_0
    move-object v0, v1

    .line 339
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 340
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 341
    invoke-virtual {v4, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_1

    .line 345
    :cond_1
    invoke-virtual {p0, v1, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 346
    invoke-virtual {p0, v1, p2}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 347
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 348
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 349
    invoke-virtual {p0, v1, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 351
    const/4 v5, 0x1

    :goto_2
    if-gt v5, v7, :cond_2

    .line 353
    invoke-virtual {p0, v2, v4}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 354
    invoke-virtual {v4, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 355
    invoke-virtual {p0, v1, v1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 351
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 358
    :cond_2
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/math/BigInteger;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    aput-object v4, v8, v10

    return-object v8
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 142
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modAdd(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public addOne()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 4

    .prologue
    .line 147
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 148
    .local v0, "x2":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-nez v1, :cond_0

    .line 150
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 152
    :cond_0
    new-instance v1, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 183
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 464
    if-ne p1, p0, :cond_1

    .line 475
    :cond_0
    :goto_0
    return v1

    .line 469
    :cond_1
    instance-of v3, p1, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    if-nez v3, :cond_2

    move v1, v2

    .line 471
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 474
    check-cast v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    .line 475
    .local v0, "o":Lorg/spongycastle/math/ec/ECFieldElement$Fp;
    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 4

    .prologue
    .line 215
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method protected modAdd(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "x1"    # Ljava/math/BigInteger;
    .param p2, "x2"    # Ljava/math/BigInteger;

    .prologue
    .line 363
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 364
    .local v0, "x3":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 366
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 368
    :cond_0
    return-object v0
.end method

.method protected modDouble(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 373
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 374
    .local v0, "_2x":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 376
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 378
    :cond_0
    return-object v0
.end method

.method protected modHalfAbs(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 396
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 401
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->getFieldSize()I

    move-result v0

    .line 402
    .local v0, "bits":I
    add-int/lit8 v5, v0, 0x1f

    shr-int/lit8 v1, v5, 0x5

    .line 403
    .local v1, "len":I
    iget-object v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-static {v0, v5}, Lorg/spongycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v3

    .line 404
    .local v3, "p":[I
    invoke-static {v0, p1}, Lorg/spongycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v2

    .line 405
    .local v2, "n":[I
    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v4

    .line 406
    .local v4, "z":[I
    invoke-static {v3, v2, v4}, Lorg/spongycastle/math/raw/Mod;->invert([I[I[I)V

    .line 407
    invoke-static {v1, v4}, Lorg/spongycastle/math/raw/Nat;->toBigInteger(I[I)Ljava/math/BigInteger;

    move-result-object v5

    return-object v5
.end method

.method protected modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "x1"    # Ljava/math/BigInteger;
    .param p2, "x2"    # Ljava/math/BigInteger;

    .prologue
    .line 412
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 7
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 417
    iget-object v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    if-eqz v5, :cond_6

    .line 419
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-gez v5, :cond_2

    const/4 v0, 0x1

    .line 420
    .local v0, "negative":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    .line 424
    :cond_0
    iget-object v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 425
    .local v1, "qLen":I
    iget-object v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    sget-object v6, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 426
    .local v2, "rIsOne":Z
    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    add-int/lit8 v6, v1, 0x1

    if-le v5, v6, :cond_3

    .line 428
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 429
    .local v3, "u":Ljava/math/BigInteger;
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 430
    .local v4, "v":Ljava/math/BigInteger;
    if-nez v2, :cond_1

    .line 432
    iget-object v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 434
    :cond_1
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 435
    goto :goto_1

    .line 419
    .end local v0    # "negative":Z
    .end local v1    # "qLen":I
    .end local v2    # "rIsOne":Z
    .end local v3    # "u":Ljava/math/BigInteger;
    .end local v4    # "v":Ljava/math/BigInteger;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 436
    .restart local v0    # "negative":Z
    .restart local v1    # "qLen":I
    .restart local v2    # "rIsOne":Z
    :cond_3
    :goto_2
    iget-object v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ltz v5, :cond_4

    .line 438
    iget-object v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_2

    .line 440
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-eqz v5, :cond_5

    .line 442
    iget-object v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v5, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 449
    .end local v0    # "negative":Z
    .end local v1    # "qLen":I
    .end local v2    # "rIsOne":Z
    :cond_5
    :goto_3
    return-object p1

    .line 447
    :cond_6
    iget-object v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_3
.end method

.method protected modSubtract(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "x1"    # Ljava/math/BigInteger;
    .param p2, "x2"    # Ljava/math/BigInteger;

    .prologue
    .line 454
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 455
    .local v0, "x3":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gez v1, :cond_0

    .line 457
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 459
    :cond_0
    return-object v0
.end method

.method public multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 162
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public multiplyMinusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 10
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 167
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    .local v1, "ax":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .local v2, "bx":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    .local v3, "xx":Ljava/math/BigInteger;
    invoke-virtual {p3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    .line 168
    .local v5, "yx":Ljava/math/BigInteger;
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 169
    .local v0, "ab":Ljava/math/BigInteger;
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 170
    .local v4, "xy":Ljava/math/BigInteger;
    new-instance v6, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v7, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v8, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v6
.end method

.method public multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 10
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 175
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    .local v1, "ax":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .local v2, "bx":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    .local v3, "xx":Ljava/math/BigInteger;
    invoke-virtual {p3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    .line 176
    .local v5, "yx":Ljava/math/BigInteger;
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 177
    .local v0, "ab":Ljava/math/BigInteger;
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 178
    .local v4, "xy":Ljava/math/BigInteger;
    new-instance v6, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v7, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v8, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v6
.end method

.method public negate()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5

    .prologue
    .line 188
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    .end local p0    # "this":Lorg/spongycastle/math/ec/ECFieldElement$Fp;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECFieldElement$Fp;
    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public sqrt()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 25

    .prologue
    .line 225
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->isZero()Z

    move-result v20

    if-nez v20, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->isOne()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 299
    .end local p0    # "this":Lorg/spongycastle/math/ec/ECFieldElement$Fp;
    .local v4, "P":Ljava/math/BigInteger;
    .local v5, "U":Ljava/math/BigInteger;
    .local v6, "V":Ljava/math/BigInteger;
    .local v7, "X":Ljava/math/BigInteger;
    .local v9, "fourX":Ljava/math/BigInteger;
    .local v10, "k":Ljava/math/BigInteger;
    .local v11, "legendreExponent":Ljava/math/BigInteger;
    .local v12, "qMinusOne":Ljava/math/BigInteger;
    .local v13, "rand":Ljava/util/Random;
    .local v14, "result":[Ljava/math/BigInteger;
    :cond_0
    :goto_0
    return-object p0

    .line 230
    .end local v4    # "P":Ljava/math/BigInteger;
    .end local v5    # "U":Ljava/math/BigInteger;
    .end local v6    # "V":Ljava/math/BigInteger;
    .end local v7    # "X":Ljava/math/BigInteger;
    .end local v9    # "fourX":Ljava/math/BigInteger;
    .end local v10    # "k":Ljava/math/BigInteger;
    .end local v11    # "legendreExponent":Ljava/math/BigInteger;
    .end local v12    # "qMinusOne":Ljava/math/BigInteger;
    .end local v13    # "rand":Ljava/util/Random;
    .end local v14    # "result":[Ljava/math/BigInteger;
    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECFieldElement$Fp;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v20

    if-nez v20, :cond_2

    .line 232
    new-instance v20, Ljava/lang/RuntimeException;

    const-string v21, "not done yet"

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 238
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v20

    sget-object v21, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 241
    .local v8, "e":Ljava/math/BigInteger;
    new-instance v20, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v8, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    invoke-direct/range {v20 .. v23}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->checkSqrt(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    goto :goto_0

    .line 244
    .end local v8    # "e":Ljava/math/BigInteger;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    .line 247
    .local v15, "t1":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    .line 248
    .local v16, "t2":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    .line 250
    .local v17, "t3":Ljava/math/BigInteger;
    sget-object v20, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 252
    new-instance v20, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->checkSqrt(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    goto/16 :goto_0

    .line 256
    :cond_4
    sget-object v20, Lorg/spongycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    .line 258
    .local v18, "t4":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    .line 260
    .local v19, "y":Ljava/math/BigInteger;
    new-instance v20, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->checkSqrt(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    goto/16 :goto_0

    .line 265
    .end local v15    # "t1":Ljava/math/BigInteger;
    .end local v16    # "t2":Ljava/math/BigInteger;
    .end local v17    # "t3":Ljava/math/BigInteger;
    .end local v18    # "t4":Ljava/math/BigInteger;
    .end local v19    # "y":Ljava/math/BigInteger;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v11

    .line 266
    .restart local v11    # "legendreExponent":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    sget-object v21, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 268
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 271
    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    .line 272
    .restart local v7    # "X":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modDouble(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modDouble(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 274
    .restart local v9    # "fourX":Ljava/math/BigInteger;
    sget-object v20, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .restart local v10    # "k":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    move-object/from16 v20, v0

    sget-object v21, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 277
    .restart local v12    # "qMinusOne":Ljava/math/BigInteger;
    new-instance v13, Ljava/util/Random;

    invoke-direct {v13}, Ljava/util/Random;-><init>()V

    .line 283
    .restart local v13    # "rand":Ljava/util/Random;
    :cond_7
    new-instance v4, Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->bitLength()I

    move-result v20

    move/from16 v0, v20

    invoke-direct {v4, v0, v13}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 286
    .restart local v4    # "P":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v20

    if-gez v20, :cond_7

    invoke-virtual {v4, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 288
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7, v10}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->lucasSequence(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v14

    .line 289
    .restart local v14    # "result":[Ljava/math/BigInteger;
    const/16 v20, 0x0

    aget-object v5, v14, v20

    .line 290
    .restart local v5    # "U":Ljava/math/BigInteger;
    const/16 v20, 0x1

    aget-object v6, v14, v20

    .line 292
    .restart local v6    # "V":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v6}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 294
    new-instance v20, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modHalfAbs(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    invoke-direct/range {v20 .. v23}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 p0, v20

    goto/16 :goto_0

    .line 297
    :cond_8
    sget-object v20, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 299
    const/16 p0, 0x0

    goto/16 :goto_0
.end method

.method public square()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5

    .prologue
    .line 193
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, v3, v4}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 9
    .param p1, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 206
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    .local v1, "ax":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .local v2, "xx":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    .line 207
    .local v4, "yx":Ljava/math/BigInteger;
    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 208
    .local v0, "aa":Ljava/math/BigInteger;
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 209
    .local v3, "xy":Ljava/math/BigInteger;
    new-instance v5, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v7, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v5
.end method

.method public subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 157
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->modSubtract(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    return-object v0
.end method
