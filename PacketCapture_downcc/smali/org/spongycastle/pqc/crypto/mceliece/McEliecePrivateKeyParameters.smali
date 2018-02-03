.class public Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;
.super Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;
.source "McEliecePrivateKeyParameters.java"


# instance fields
.field private field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

.field private goppaPoly:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field private h:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

.field private k:I

.field private n:I

.field private oid:Ljava/lang/String;

.field private p1:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

.field private p2:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

.field private qInv:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field private sInv:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;)V
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "n"    # I
    .param p3, "k"    # I
    .param p4, "field"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    .param p5, "goppaPoly"    # Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .param p6, "sInv"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .param p7, "p1"    # Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
    .param p8, "p2"    # Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
    .param p9, "h"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .param p10, "qInv"    # [Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .param p11, "params"    # Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0, p11}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;-><init>(ZLorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;)V

    .line 67
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->oid:Ljava/lang/String;

    .line 68
    iput p3, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->k:I

    .line 69
    iput p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->n:I

    .line 70
    iput-object p4, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 71
    iput-object p5, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->goppaPoly:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .line 72
    iput-object p6, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->sInv:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    .line 73
    iput-object p7, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->p1:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    .line 74
    iput-object p8, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->p2:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    .line 75
    iput-object p9, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->h:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    .line 76
    iput-object p10, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->qInv:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .line 77
    return-void
.end method


# virtual methods
.method public getField()Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    return-object v0
.end method

.method public getGoppaPoly()Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->goppaPoly:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public getH()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->h:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public getK()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->k:I

    return v0
.end method

.method public getN()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->n:I

    return v0
.end method

.method public getOIDString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getP1()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->p1:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    return-object v0
.end method

.method public getP2()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->p2:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    return-object v0
.end method

.method public getQInv()[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->qInv:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public getSInv()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->sInv:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method
