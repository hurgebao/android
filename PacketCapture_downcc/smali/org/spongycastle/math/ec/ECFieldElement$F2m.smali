.class public Lorg/spongycastle/math/ec/ECFieldElement$F2m;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# instance fields
.field private ks:[I

.field private m:I

.field private representation:I

.field private x:Lorg/spongycastle/math/ec/LongArray;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;)V
    .locals 4
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "x"    # Ljava/math/BigInteger;

    .prologue
    const/4 v0, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 550
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 551
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 553
    iput v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 554
    new-array v0, v2, [I

    aput p2, v0, v1

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 572
    :goto_0
    iput p1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    .line 573
    new-instance v0, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {v0, p5}, Lorg/spongycastle/math/ec/LongArray;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .line 574
    return-void

    .line 558
    :cond_0
    if-lt p3, p4, :cond_1

    .line 560
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be smaller than k3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_1
    if-gtz p3, :cond_2

    .line 565
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be larger than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_2
    iput v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 569
    new-array v0, v0, [I

    aput p2, v0, v1

    aput p3, v0, v2

    aput p4, v0, v3

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    goto :goto_0
.end method

.method private constructor <init>(I[ILorg/spongycastle/math/ec/LongArray;)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "ks"    # [I
    .param p3, "x"    # Lorg/spongycastle/math/ec/LongArray;

    .prologue
    .line 593
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 594
    iput p1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    .line 595
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 596
    iput-object p2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 597
    iput-object p3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .line 598
    return-void

    .line 595
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static checkFieldElements(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 4
    .param p0, "a"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 650
    instance-of v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    if-eqz v2, :cond_0

    instance-of v2, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    if-nez v2, :cond_1

    .line 652
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Field elements are not both instances of ECFieldElement.F2m"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v0, p0

    .line 656
    check-cast v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .local v0, "aF2m":Lorg/spongycastle/math/ec/ECFieldElement$F2m;
    move-object v1, p1

    .line 657
    check-cast v1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .line 659
    .local v1, "bF2m":Lorg/spongycastle/math/ec/ECFieldElement$F2m;
    iget v2, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v3, v1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-eq v2, v3, :cond_2

    .line 662
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "One of the F2m field elements has incorrect representation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 665
    :cond_2
    iget v2, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v3, v1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v2, v3, :cond_3

    iget-object v2, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, v1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-static {v2, v3}, Lorg/spongycastle/util/Arrays;->areEqual([I[I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 667
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Field elements are not elements of the same field F2m"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 669
    :cond_4
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 676
    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/math/ec/LongArray;

    .local v1, "iarrClone":Lorg/spongycastle/math/ec/LongArray;
    move-object v0, p1

    .line 677
    check-cast v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .line 678
    .local v0, "bF2m":Lorg/spongycastle/math/ec/ECFieldElement$F2m;
    iget-object v2, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/spongycastle/math/ec/LongArray;->addShiftedByWords(Lorg/spongycastle/math/ec/LongArray;I)V

    .line 679
    new-instance v2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v2, v3, v4, v1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v2
.end method

.method public addOne()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 4

    .prologue
    .line 684
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/LongArray;->addOne()Lorg/spongycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public bitLength()I
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->degree()I

    move-result v0

    return v0
.end method

.method public divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 731
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->invert()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 732
    .local v0, "bInv":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "anObject"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 845
    if-ne p1, p0, :cond_1

    .line 857
    :cond_0
    :goto_0
    return v1

    .line 850
    :cond_1
    instance-of v3, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    if-nez v3, :cond_2

    move v1, v2

    .line 852
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 855
    check-cast v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .line 857
    .local v0, "b":Lorg/spongycastle/math/ec/ECFieldElement$F2m;
    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v4, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v4, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-static {v3, v4}, Lorg/spongycastle/util/Arrays;->areEqual([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v3, v4}, Lorg/spongycastle/math/ec/LongArray;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 632
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 865
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 6

    .prologue
    .line 771
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    iget v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5}, Lorg/spongycastle/math/ec/LongArray;->modInverse(I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public isOne()Z
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->isOne()Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->isZero()Z

    move-result v0

    return v0
.end method

.method public multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 7
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 702
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    check-cast p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v4, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    iget v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5, v6}, Lorg/spongycastle/math/ec/LongArray;->modMultiply(Lorg/spongycastle/math/ec/LongArray;I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public multiplyMinusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 707
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 9
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 712
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .local v1, "ax":Lorg/spongycastle/math/ec/LongArray;
    check-cast p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .local v2, "bx":Lorg/spongycastle/math/ec/LongArray;
    check-cast p2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .end local p2    # "x":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v3, p2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .local v3, "xx":Lorg/spongycastle/math/ec/LongArray;
    check-cast p3, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .end local p3    # "y":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v5, p3, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .line 714
    .local v5, "yx":Lorg/spongycastle/math/ec/LongArray;
    iget v6, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v7, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v1, v2, v6, v7}, Lorg/spongycastle/math/ec/LongArray;->multiply(Lorg/spongycastle/math/ec/LongArray;I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v0

    .line 715
    .local v0, "ab":Lorg/spongycastle/math/ec/LongArray;
    iget v6, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v7, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v5, v6, v7}, Lorg/spongycastle/math/ec/LongArray;->multiply(Lorg/spongycastle/math/ec/LongArray;I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v4

    .line 717
    .local v4, "xy":Lorg/spongycastle/math/ec/LongArray;
    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_1

    .line 719
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ab":Lorg/spongycastle/math/ec/LongArray;
    check-cast v0, Lorg/spongycastle/math/ec/LongArray;

    .line 722
    .restart local v0    # "ab":Lorg/spongycastle/math/ec/LongArray;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Lorg/spongycastle/math/ec/LongArray;->addShiftedByWords(Lorg/spongycastle/math/ec/LongArray;I)V

    .line 723
    iget v6, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v7, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, v6, v7}, Lorg/spongycastle/math/ec/LongArray;->reduce(I[I)V

    .line 725
    new-instance v6, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v7, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v8, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v6, v7, v8, v0}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v6
.end method

.method public negate()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    .prologue
    .line 738
    return-object p0
.end method

.method public sqrt()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5

    .prologue
    .line 776
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .line 777
    .local v0, "x1":Lorg/spongycastle/math/ec/LongArray;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->isOne()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 783
    .end local p0    # "this":Lorg/spongycastle/math/ec/ECFieldElement$F2m;
    :cond_0
    :goto_0
    return-object p0

    .line 782
    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECFieldElement$F2m;
    :cond_1
    iget v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, v2, v3, v4}, Lorg/spongycastle/math/ec/LongArray;->modSquareN(II[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v1

    .line 783
    .local v1, "x2":Lorg/spongycastle/math/ec/LongArray;
    new-instance v2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v2, v3, v4, v1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    move-object p0, v2

    goto :goto_0
.end method

.method public square()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 6

    .prologue
    .line 743
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    iget v4, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v4, v5}, Lorg/spongycastle/math/ec/LongArray;->modSquare(I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 8
    .param p1, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 753
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .local v1, "ax":Lorg/spongycastle/math/ec/LongArray;
    check-cast p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .end local p1    # "x":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .local v2, "xx":Lorg/spongycastle/math/ec/LongArray;
    check-cast p2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .end local p2    # "y":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v4, p2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .line 755
    .local v4, "yx":Lorg/spongycastle/math/ec/LongArray;
    iget v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v1, v5, v6}, Lorg/spongycastle/math/ec/LongArray;->square(I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v0

    .line 756
    .local v0, "aa":Lorg/spongycastle/math/ec/LongArray;
    iget v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v2, v4, v5, v6}, Lorg/spongycastle/math/ec/LongArray;->multiply(Lorg/spongycastle/math/ec/LongArray;I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v3

    .line 758
    .local v3, "xy":Lorg/spongycastle/math/ec/LongArray;
    if-ne v0, v1, :cond_0

    .line 760
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "aa":Lorg/spongycastle/math/ec/LongArray;
    check-cast v0, Lorg/spongycastle/math/ec/LongArray;

    .line 763
    .restart local v0    # "aa":Lorg/spongycastle/math/ec/LongArray;
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lorg/spongycastle/math/ec/LongArray;->addShiftedByWords(Lorg/spongycastle/math/ec/LongArray;I)V

    .line 764
    iget v5, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, v5, v6}, Lorg/spongycastle/math/ec/LongArray;->reduce(I[I)V

    .line 766
    new-instance v5, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v6, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v7, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v5, v6, v7, v0}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v5
.end method

.method public subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 690
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public testBitZero()Z
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->testBitZero()Z

    move-result v0

    return v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
