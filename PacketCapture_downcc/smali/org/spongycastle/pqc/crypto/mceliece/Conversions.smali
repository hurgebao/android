.class final Lorg/spongycastle/pqc/crypto/mceliece/Conversions;
.super Ljava/lang/Object;
.source "Conversions.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ZERO:Ljava/math/BigInteger;

    .line 16
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static decode(IILorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[B
    .locals 12
    .param p0, "n"    # I
    .param p1, "t"    # I
    .param p2, "vec"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .prologue
    .line 93
    invoke-virtual {p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getLength()I

    move-result v8

    if-ne v8, p0, :cond_0

    invoke-virtual {p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getHammingWeight()I

    move-result v8

    if-eq v8, p1, :cond_1

    .line 95
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "vector has wrong length or hamming weight"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 98
    :cond_1
    invoke-virtual {p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object v7

    .line 100
    .local v7, "vecArray":[I
    invoke-static {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->binomial(II)Ljava/math/BigInteger;

    move-result-object v0

    .line 101
    .local v0, "bc":Ljava/math/BigInteger;
    sget-object v1, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ZERO:Ljava/math/BigInteger;

    .line 102
    .local v1, "d":Ljava/math/BigInteger;
    move v4, p0

    .line 103
    .local v4, "nn":I
    move v6, p1

    .line 104
    .local v6, "tt":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p0, :cond_4

    .line 106
    sub-int v8, v4, v6

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    int-to-long v10, v4

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 108
    add-int/lit8 v4, v4, -0x1

    .line 110
    shr-int/lit8 v5, v3, 0x5

    .line 111
    .local v5, "q":I
    aget v8, v7, v5

    const/4 v9, 0x1

    and-int/lit8 v10, v3, 0x1f

    shl-int/2addr v9, v10

    and-int v2, v8, v9

    .line 112
    .local v2, "e":I
    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 115
    add-int/lit8 v6, v6, -0x1

    .line 116
    if-ne v4, v6, :cond_3

    .line 118
    sget-object v0, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ONE:Ljava/math/BigInteger;

    .line 104
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :cond_3
    add-int/lit8 v8, v6, 0x1

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    sub-int v9, v4, v6

    int-to-long v10, v9

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_1

    .line 129
    .end local v2    # "e":I
    .end local v5    # "q":I
    :cond_4
    invoke-static {v1}, Lorg/spongycastle/pqc/math/linearalgebra/BigIntUtils;->toMinimalByteArray(Ljava/math/BigInteger;)[B

    move-result-object v8

    return-object v8
.end method

.method public static encode(II[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 10
    .param p0, "n"    # I
    .param p1, "t"    # I
    .param p2, "m"    # [B

    .prologue
    .line 37
    if-ge p0, p1, :cond_0

    .line 39
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "n < t"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 43
    :cond_0
    invoke-static {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->binomial(II)Ljava/math/BigInteger;

    move-result-object v0

    .line 45
    .local v0, "c":Ljava/math/BigInteger;
    new-instance v1, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v1, v6, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 47
    .local v1, "i":Ljava/math/BigInteger;
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 49
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Encoded number too large."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 52
    :cond_1
    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v4, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    .line 54
    .local v4, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    move v3, p0

    .line 55
    .local v3, "nn":I
    move v5, p1

    .line 56
    .local v5, "tt":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, p0, :cond_4

    .line 58
    sub-int v6, v3, v5

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    int-to-long v8, v3

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 60
    add-int/lit8 v3, v3, -0x1

    .line 61
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-gtz v6, :cond_2

    .line 63
    invoke-virtual {v4, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->setBit(I)V

    .line 64
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 65
    add-int/lit8 v5, v5, -0x1

    .line 66
    if-ne v3, v5, :cond_3

    .line 68
    sget-object v0, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ONE:Ljava/math/BigInteger;

    .line 56
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_3
    add-int/lit8 v6, v5, 0x1

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sub-int v7, v3, v5

    int-to-long v8, v7

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_1

    .line 78
    :cond_4
    return-object v4
.end method
