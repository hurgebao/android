.class public Lorg/spongycastle/math/ec/ECCurve$F2m;
.super Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# instance fields
.field private infinity:Lorg/spongycastle/math/ec/ECPoint$F2m;

.field private k1:I

.field private k2:I

.field private k3:I

.field private m:I

.field private mu:B

.field private si:[Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "a"    # Ljava/math/BigInteger;
    .param p6, "b"    # Ljava/math/BigInteger;

    .prologue
    const/4 v7, 0x0

    .line 780
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 781
    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "a"    # Ljava/math/BigInteger;
    .param p6, "b"    # Ljava/math/BigInteger;
    .param p7, "order"    # Ljava/math/BigInteger;
    .param p8, "cofactor"    # Ljava/math/BigInteger;

    .prologue
    const/4 v1, 0x0

    .line 816
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    .line 692
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->mu:B

    .line 699
    iput-object v1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    .line 818
    iput p1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->m:I

    .line 819
    iput p2, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k1:I

    .line 820
    iput p3, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k2:I

    .line 821
    iput p4, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k3:I

    .line 822
    iput-object p7, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    .line 823
    iput-object p8, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    .line 825
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, v1, v1}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->infinity:Lorg/spongycastle/math/ec/ECPoint$F2m;

    .line 826
    invoke-virtual {p0, p5}, Lorg/spongycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 827
    invoke-virtual {p0, p6}, Lorg/spongycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 828
    const/4 v0, 0x6

    iput v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->coord:I

    .line 829
    return-void
.end method

.method protected constructor <init>(IIIILorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "a"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p6, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p7, "order"    # Ljava/math/BigInteger;
    .param p8, "cofactor"    # Ljava/math/BigInteger;

    .prologue
    const/4 v1, 0x0

    .line 833
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    .line 692
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->mu:B

    .line 699
    iput-object v1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    .line 835
    iput p1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->m:I

    .line 836
    iput p2, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k1:I

    .line 837
    iput p3, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k2:I

    .line 838
    iput p4, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k3:I

    .line 839
    iput-object p7, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    .line 840
    iput-object p8, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    .line 842
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, v1, v1}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->infinity:Lorg/spongycastle/math/ec/ECPoint$F2m;

    .line 843
    iput-object p5, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 844
    iput-object p6, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 845
    const/4 v0, 0x6

    iput v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->coord:I

    .line 846
    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9
    .param p1, "m"    # I
    .param p2, "k"    # I
    .param p3, "a"    # Ljava/math/BigInteger;
    .param p4, "b"    # Ljava/math/BigInteger;
    .param p5, "order"    # Ljava/math/BigInteger;
    .param p6, "cofactor"    # Ljava/math/BigInteger;

    .prologue
    const/4 v3, 0x0

    .line 749
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 750
    return-void
.end method

.method private solveQuadraticEquation(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 10
    .param p1, "beta"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1034
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1064
    .end local p1    # "beta":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_0
    return-object p1

    .line 1039
    .restart local p1    # "beta":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_0
    sget-object v8, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1041
    .local v7, "zeroElement":Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v6, 0x0

    .line 1042
    .local v6, "z":Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v0, 0x0

    .line 1044
    .local v0, "gamma":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 1047
    .local v2, "rand":Ljava/util/Random;
    :cond_1
    new-instance v8, Ljava/math/BigInteger;

    iget v9, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->m:I

    invoke-direct {v8, v9, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {p0, v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1048
    .local v3, "t":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object v6, v7

    .line 1049
    move-object v4, p1

    .line 1050
    .local v4, "w":Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget v8, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->m:I

    add-int/lit8 v8, v8, -0x1

    if-gt v1, v8, :cond_2

    .line 1052
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1053
    .local v5, "w2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v5, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1054
    invoke-virtual {v5, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1050
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1056
    .end local v5    # "w2":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_2
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1058
    const/4 p1, 0x0

    goto :goto_0

    .line 1060
    :cond_3
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1062
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-nez v8, :cond_1

    move-object p1, v6

    .line 1064
    goto :goto_0
.end method


# virtual methods
.method protected cloneCurve()Lorg/spongycastle/math/ec/ECCurve;
    .locals 9

    .prologue
    .line 850
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k3:I

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v7, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    iget-object v8, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method protected createDefaultMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 1

    .prologue
    .line 868
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    new-instance v0, Lorg/spongycastle/math/ec/WTauNafMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/WTauNafMultiplier;-><init>()V

    .line 873
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;->createDefaultMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v0

    goto :goto_0
.end method

.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 4
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;
    .param p3, "withCompression"    # Z

    .prologue
    .line 888
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .local v0, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, p2}, Lorg/spongycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 890
    .local v1, "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getCoordinateSystem()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 915
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, v1, p3}, Lorg/spongycastle/math/ec/ECCurve$F2m;->createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 895
    :pswitch_0
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 897
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 899
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 905
    :cond_1
    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 907
    goto :goto_0

    .line 890
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "withCompression"    # Z

    .prologue
    .line 920
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method protected createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 6
    .param p1, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "zs"    # [Lorg/spongycastle/math/ec/ECFieldElement;
    .param p4, "withCompression"    # Z

    .prologue
    .line 925
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method protected decompressPoint(ILjava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 7
    .param p1, "yTilde"    # I
    .param p2, "X1"    # Ljava/math/BigInteger;

    .prologue
    const/4 v5, 0x1

    .line 982
    invoke-virtual {p0, p2}, Lorg/spongycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .local v1, "x":Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v2, 0x0

    .line 983
    .local v2, "y":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 985
    iget-object v4, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->sqrt()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1015
    :cond_0
    :goto_0
    if-nez v2, :cond_4

    .line 1017
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid point compression"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 989
    :cond_1
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->invert()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v4, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v6, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v4, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 990
    .local v0, "beta":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->solveQuadraticEquation(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 991
    .local v3, "z":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v3, :cond_0

    .line 993
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v6

    if-ne p1, v5, :cond_3

    move v4, v5

    :goto_1
    if-eq v6, v4, :cond_2

    .line 995
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->addOne()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 998
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve$F2m;->getCoordinateSystem()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1008
    invoke-virtual {v3, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    goto :goto_0

    .line 993
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 1003
    :pswitch_0
    invoke-virtual {v3, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1004
    goto :goto_0

    .line 1020
    .end local v0    # "beta":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v3    # "z":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_4
    invoke-virtual {p0, v1, v2, v5}, Lorg/spongycastle/math/ec/ECCurve$F2m;->createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 998
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 6
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 883
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k3:I

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 878
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method public getInfinity()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->infinity:Lorg/spongycastle/math/ec/ECPoint$F2m;

    return-object v0
.end method

.method public getK1()I
    .locals 1

    .prologue
    .line 1084
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k1:I

    return v0
.end method

.method public getK2()I
    .locals 1

    .prologue
    .line 1089
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k2:I

    return v0
.end method

.method public getK3()I
    .locals 1

    .prologue
    .line 1094
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k3:I

    return v0
.end method

.method public getM()I
    .locals 1

    .prologue
    .line 1069
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->m:I

    return v0
.end method

.method declared-synchronized getMu()B
    .locals 1

    .prologue
    .line 950
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->mu:B

    if-nez v0, :cond_0

    .line 952
    invoke-static {p0}, Lorg/spongycastle/math/ec/Tnaf;->getMu(Lorg/spongycastle/math/ec/ECCurve$F2m;)B

    move-result v0

    iput-byte v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->mu:B

    .line 954
    :cond_0
    iget-byte v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->mu:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 950
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSi()[Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 964
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 966
    invoke-static {p0}, Lorg/spongycastle/math/ec/Tnaf;->getSi(Lorg/spongycastle/math/ec/ECCurve$F2m;)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;

    .line 968
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->si:[Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 964
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isKoblitz()Z
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->order:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->cofactor:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

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

.method public isTrinomial()Z
    .locals 1

    .prologue
    .line 1079
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k2:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve$F2m;->k3:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsCoordinateSystem(I)Z
    .locals 1
    .param p1, "coord"    # I

    .prologue
    .line 855
    sparse-switch p1, :sswitch_data_0

    .line 862
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 860
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 855
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
