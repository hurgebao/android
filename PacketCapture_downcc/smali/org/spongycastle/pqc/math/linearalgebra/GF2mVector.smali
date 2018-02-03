.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;
.super Lorg/spongycastle/pqc/math/linearalgebra/Vector;
.source "GF2mVector.java"


# instance fields
.field private field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

.field private vector:[I


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V
    .locals 3
    .param p1, "field"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    .param p2, "vector"    # [I

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 76
    array-length v1, p2

    iput v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    .line 77
    array-length v1, p2

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 79
    aget v1, p2, v0

    invoke-virtual {p1, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Element array is not specified over the given finite field."

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    .line 86
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;
    .locals 2
    .param p1, "addend"    # Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    .prologue
    .line 169
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 205
    instance-of v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;

    if-nez v2, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 209
    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;

    .line 211
    .local v0, "otherVec":Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v3, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    iget-object v2, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    invoke-static {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result v1

    goto :goto_0
.end method

.method public getField()Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    return-object v0
.end method

.method public getIntArrayForm()[I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 224
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->hashCode()I

    move-result v0

    .line 225
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 226
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 234
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 235
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 237
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 239
    and-int/lit8 v5, v4, 0x1f

    .line 240
    .local v5, "r":I
    const/4 v6, 0x1

    shl-int v0, v6, v5

    .line 241
    .local v0, "bitMask":I
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    aget v6, v6, v3

    and-int v2, v6, v0

    .line 242
    .local v2, "coeff":I
    if-eqz v2, :cond_0

    .line 244
    const/16 v6, 0x31

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 237
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 248
    :cond_0
    const/16 v6, 0x30

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 251
    .end local v0    # "bitMask":I
    .end local v2    # "coeff":I
    .end local v5    # "r":I
    :cond_1
    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    .end local v4    # "j":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
