.class public final Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;
.super Ljava/lang/Object;
.source "IntegerFunctions.java"


# static fields
.field private static final FOUR:Ljava/math/BigInteger;

.field private static final ONE:Ljava/math/BigInteger;

.field private static final SMALL_PRIMES:[I

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;

.field private static final jacobiTable:[I

.field private static sr:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    .line 15
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    .line 17
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->TWO:Ljava/math/BigInteger;

    .line 19
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->FOUR:Ljava/math/BigInteger;

    .line 21
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->SMALL_PRIMES:[I

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->sr:Ljava/security/SecureRandom;

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->jacobiTable:[I

    return-void

    .line 21
    :array_0
    .array-data 4
        0x3
        0x5
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
        0x1f
        0x25
        0x29
    .end array-data

    .line 30
    :array_1
    .array-data 4
        0x0
        0x1
        0x0
        -0x1
        0x0
        -0x1
        0x0
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static binomial(II)Ljava/math/BigInteger;
    .locals 6
    .param p0, "n"    # I
    .param p1, "t"    # I

    .prologue
    .line 1024
    sget-object v1, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ONE:Ljava/math/BigInteger;

    .line 1026
    .local v1, "result":Ljava/math/BigInteger;
    if-nez p0, :cond_1

    .line 1028
    if-nez p1, :cond_0

    move-object v2, v1

    .line 1047
    :goto_0
    return-object v2

    .line 1032
    :cond_0
    sget-object v2, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ZERO:Ljava/math/BigInteger;

    goto :goto_0

    .line 1036
    :cond_1
    ushr-int/lit8 v2, p0, 0x1

    if-le p1, v2, :cond_2

    .line 1038
    sub-int p1, p0, p1

    .line 1041
    :cond_2
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-gt v0, p1, :cond_3

    .line 1043
    add-int/lit8 v2, v0, -0x1

    sub-int v2, p0, v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 1041
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v1

    .line 1047
    goto :goto_0
.end method

.method public static ceilLog256(I)I
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 356
    if-nez p0, :cond_1

    .line 358
    const/4 v0, 0x1

    .line 376
    :cond_0
    return v0

    .line 361
    :cond_1
    if-gez p0, :cond_2

    .line 363
    neg-int v1, p0

    .line 370
    .local v1, "m":I
    :goto_0
    const/4 v0, 0x0

    .line 371
    .local v0, "d":I
    :goto_1
    if-lez v1, :cond_0

    .line 373
    add-int/lit8 v0, v0, 0x1

    .line 374
    ushr-int/lit8 v1, v1, 0x8

    goto :goto_1

    .line 367
    .end local v0    # "d":I
    .end local v1    # "m":I
    :cond_2
    move v1, p0

    .restart local v1    # "m":I
    goto :goto_0
.end method
