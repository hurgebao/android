.class public Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;
.super Ljava/lang/Object;
.source "McElieceParameters.java"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private fieldPoly:I

.field private m:I

.field private n:I

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    const/16 v0, 0xb

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;-><init>(II)V

    .line 46
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "t"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-ge p1, v1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "m must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    const/16 v0, 0x20

    if-le p1, v0, :cond_1

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "m is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    iput p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->m:I

    .line 93
    shl-int v0, v1, p1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->n:I

    .line 94
    if-gez p2, :cond_2

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "t must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_2
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->n:I

    if-le p2, v0, :cond_3

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "t must be less than n = 2^m"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_3
    iput p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->t:I

    .line 103
    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->getIrreduciblePolynomial(I)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->fieldPoly:I

    .line 104
    return-void
.end method


# virtual methods
.method public getFieldPoly()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->fieldPoly:I

    return v0
.end method

.method public getM()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->m:I

    return v0
.end method

.method public getN()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->n:I

    return v0
.end method

.method public getT()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->t:I

    return v0
.end method
