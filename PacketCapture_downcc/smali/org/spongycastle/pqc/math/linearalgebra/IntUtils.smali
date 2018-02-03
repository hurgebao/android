.class public final Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;
.super Ljava/lang/Object;
.source "IntUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static clone([I)[I
    .locals 3
    .param p0, "array"    # [I

    .prologue
    const/4 v2, 0x0

    .line 50
    array-length v1, p0

    new-array v0, v1, [I

    .line 51
    .local v0, "result":[I
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    return-object v0
.end method

.method public static equals([I[I)Z
    .locals 5
    .param p0, "left"    # [I
    .param p1, "right"    # [I

    .prologue
    const/4 v3, 0x0

    .line 30
    array-length v2, p0

    array-length v4, p1

    if-eq v2, v4, :cond_0

    .line 39
    :goto_0
    return v3

    .line 34
    :cond_0
    const/4 v1, 0x1

    .line 35
    .local v1, "result":Z
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 37
    aget v2, p0, v0

    aget v4, p1, v0

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    :goto_2
    and-int/2addr v1, v2

    .line 35
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 37
    goto :goto_2

    :cond_2
    move v3, v1

    .line 39
    goto :goto_0
.end method
