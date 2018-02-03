.class public abstract Lorg/spongycastle/math/raw/Nat192;
.super Ljava/lang/Object;
.source "Nat192.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .local v0, "c":J
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 15
    long-to-int v2, v0

    aput v2, p2, v9

    .line 16
    ushr-long/2addr v0, v8

    .line 17
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 18
    long-to-int v2, v0

    aput v2, p2, v10

    .line 19
    ushr-long/2addr v0, v8

    .line 20
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 21
    long-to-int v2, v0

    aput v2, p2, v11

    .line 22
    ushr-long/2addr v0, v8

    .line 23
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 24
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 25
    ushr-long/2addr v0, v8

    .line 26
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x4

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 27
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 28
    ushr-long/2addr v0, v8

    .line 29
    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x5

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 30
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 31
    ushr-long/2addr v0, v8

    .line 32
    long-to-int v2, v0

    return v2
.end method

.method public static addBothTo([I[I[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 37
    const-wide/16 v0, 0x0

    .line 38
    .local v0, "c":J
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    aget v4, p2, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 39
    long-to-int v2, v0

    aput v2, p2, v9

    .line 40
    ushr-long/2addr v0, v8

    .line 41
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    aget v4, p2, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 42
    long-to-int v2, v0

    aput v2, p2, v10

    .line 43
    ushr-long/2addr v0, v8

    .line 44
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    aget v4, p2, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 45
    long-to-int v2, v0

    aput v2, p2, v11

    .line 46
    ushr-long/2addr v0, v8

    .line 47
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    const/4 v4, 0x3

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 48
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 49
    ushr-long/2addr v0, v8

    .line 50
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x4

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    const/4 v4, 0x4

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 51
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 52
    ushr-long/2addr v0, v8

    .line 53
    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x5

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    const/4 v4, 0x5

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 54
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 55
    ushr-long/2addr v0, v8

    .line 56
    long-to-int v2, v0

    return v2
.end method

.method public static addTo([II[III)I
    .locals 9
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "cIn"    # I

    .prologue
    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 85
    int-to-long v2, p4

    and-long v0, v2, v6

    .line 86
    .local v0, "c":J
    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 87
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 88
    ushr-long/2addr v0, v8

    .line 89
    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 90
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 91
    ushr-long/2addr v0, v8

    .line 92
    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x2

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 93
    add-int/lit8 v2, p3, 0x2

    long-to-int v3, v0

    aput v3, p2, v2

    .line 94
    ushr-long/2addr v0, v8

    .line 95
    add-int/lit8 v2, p1, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x3

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 96
    add-int/lit8 v2, p3, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 97
    ushr-long/2addr v0, v8

    .line 98
    add-int/lit8 v2, p1, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x4

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 99
    add-int/lit8 v2, p3, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 100
    ushr-long/2addr v0, v8

    .line 101
    add-int/lit8 v2, p1, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x5

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 102
    add-int/lit8 v2, p3, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 103
    ushr-long/2addr v0, v8

    .line 104
    long-to-int v2, v0

    return v2
.end method

.method public static addToEachOther([II[II)I
    .locals 9
    .param p0, "u"    # [I
    .param p1, "uOff"    # I
    .param p2, "v"    # [I
    .param p3, "vOff"    # I

    .prologue
    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 109
    const-wide/16 v0, 0x0

    .line 110
    .local v0, "c":J
    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 111
    add-int/lit8 v2, p1, 0x0

    long-to-int v3, v0

    aput v3, p0, v2

    .line 112
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 113
    ushr-long/2addr v0, v8

    .line 114
    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 115
    add-int/lit8 v2, p1, 0x1

    long-to-int v3, v0

    aput v3, p0, v2

    .line 116
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 117
    ushr-long/2addr v0, v8

    .line 118
    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x2

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 119
    add-int/lit8 v2, p1, 0x2

    long-to-int v3, v0

    aput v3, p0, v2

    .line 120
    add-int/lit8 v2, p3, 0x2

    long-to-int v3, v0

    aput v3, p2, v2

    .line 121
    ushr-long/2addr v0, v8

    .line 122
    add-int/lit8 v2, p1, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x3

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 123
    add-int/lit8 v2, p1, 0x3

    long-to-int v3, v0

    aput v3, p0, v2

    .line 124
    add-int/lit8 v2, p3, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 125
    ushr-long/2addr v0, v8

    .line 126
    add-int/lit8 v2, p1, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x4

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 127
    add-int/lit8 v2, p1, 0x4

    long-to-int v3, v0

    aput v3, p0, v2

    .line 128
    add-int/lit8 v2, p3, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 129
    ushr-long/2addr v0, v8

    .line 130
    add-int/lit8 v2, p1, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x5

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 131
    add-int/lit8 v2, p1, 0x5

    long-to-int v3, v0

    aput v3, p0, v2

    .line 132
    add-int/lit8 v2, p3, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 133
    ushr-long/2addr v0, v8

    .line 134
    long-to-int v2, v0

    return v2
.end method

.method public static create()[I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x6

    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    .prologue
    .line 154
    const/16 v0, 0xc

    new-array v0, v0, [I

    return-object v0
.end method

.method public static diff([II[II[II)Z
    .locals 7
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .prologue
    .line 159
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/math/raw/Nat192;->gte([II[II)Z

    move-result v6

    .line 160
    .local v6, "pos":Z
    if-eqz v6, :cond_0

    .line 162
    invoke-static/range {p0 .. p5}, Lorg/spongycastle/math/raw/Nat192;->sub([II[II[II)I

    .line 168
    :goto_0
    return v6

    :cond_0
    move-object v0, p2

    move v1, p3

    move-object v2, p0

    move v3, p1

    move-object v4, p4

    move v5, p5

    .line 166
    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat192;->sub([II[II[II)I

    goto :goto_0
.end method

.method public static eq([I[I)Z
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .prologue
    .line 173
    const/4 v0, 0x5

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 175
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 177
    const/4 v1, 0x0

    .line 180
    :goto_1
    return v1

    .line 173
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 180
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 5
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 185
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/16 v4, 0xc0

    if-le v3, v4, :cond_1

    .line 187
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 190
    :cond_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v2

    .line 191
    .local v2, "z":[I
    const/4 v0, 0x0

    .line 192
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 195
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 197
    :cond_2
    return-object v2
.end method

.method public static getBit([II)I
    .locals 4
    .param p0, "x"    # [I
    .param p1, "bit"    # I

    .prologue
    const/4 v2, 0x0

    .line 202
    if-nez p1, :cond_1

    .line 204
    aget v2, p0, v2

    and-int/lit8 v2, v2, 0x1

    .line 212
    :cond_0
    :goto_0
    return v2

    .line 206
    :cond_1
    shr-int/lit8 v1, p1, 0x5

    .line 207
    .local v1, "w":I
    if-ltz v1, :cond_0

    const/4 v3, 0x6

    if-ge v1, v3, :cond_0

    .line 211
    and-int/lit8 v0, p1, 0x1f

    .line 212
    .local v0, "b":I
    aget v2, p0, v1

    ushr-int/2addr v2, v0

    and-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static gte([II[II)Z
    .locals 6
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I

    .prologue
    const/4 v3, 0x1

    const/high16 v5, -0x80000000

    .line 231
    const/4 v0, 0x5

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 233
    add-int v4, p1, v0

    aget v4, p0, v4

    xor-int v1, v4, v5

    .line 234
    .local v1, "x_i":I
    add-int v4, p3, v0

    aget v4, p2, v4

    xor-int v2, v4, v5

    .line 235
    .local v2, "y_i":I
    if-ge v1, v2, :cond_1

    .line 236
    const/4 v3, 0x0

    .line 240
    .end local v1    # "x_i":I
    .end local v2    # "y_i":I
    :cond_0
    return v3

    .line 237
    .restart local v1    # "x_i":I
    .restart local v2    # "y_i":I
    :cond_1
    if-gt v1, v2, :cond_0

    .line 231
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static gte([I[I)Z
    .locals 6
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .prologue
    const/4 v3, 0x1

    const/high16 v5, -0x80000000

    .line 217
    const/4 v0, 0x5

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 219
    aget v4, p0, v0

    xor-int v1, v4, v5

    .line 220
    .local v1, "x_i":I
    aget v4, p1, v0

    xor-int v2, v4, v5

    .line 221
    .local v2, "y_i":I
    if-ge v1, v2, :cond_1

    .line 222
    const/4 v3, 0x0

    .line 226
    .end local v1    # "x_i":I
    .end local v2    # "y_i":I
    :cond_0
    return v3

    .line 223
    .restart local v1    # "x_i":I
    .restart local v2    # "y_i":I
    :cond_1
    if-gt v1, v2, :cond_0

    .line 217
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static isOne([I)Z
    .locals 4
    .param p0, "x"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    aget v3, p0, v1

    if-eq v3, v2, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v1

    .line 249
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x6

    if-ge v0, v3, :cond_2

    .line 251
    aget v3, p0, v0

    if-nez v3, :cond_0

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 256
    goto :goto_0
.end method

.method public static isZero([I)Z
    .locals 2
    .param p0, "x"    # [I

    .prologue
    .line 261
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 263
    aget v1, p0, v0

    if-eqz v1, :cond_0

    .line 265
    const/4 v1, 0x0

    .line 268
    :goto_1
    return v1

    .line 261
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static mul([II[II[II)V
    .locals 28
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    .prologue
    .line 330
    add-int/lit8 v5, p3, 0x0

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v10, v22, v24

    .line 331
    .local v10, "y_0":J
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v12, v22, v24

    .line 332
    .local v12, "y_1":J
    add-int/lit8 v5, p3, 0x2

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v14, v22, v24

    .line 333
    .local v14, "y_2":J
    add-int/lit8 v5, p3, 0x3

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v16, v22, v24

    .line 334
    .local v16, "y_3":J
    add-int/lit8 v5, p3, 0x4

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v18, v22, v24

    .line 335
    .local v18, "y_4":J
    add-int/lit8 v5, p3, 0x5

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v20, v22, v24

    .line 338
    .local v20, "y_5":J
    const-wide/16 v2, 0x0

    .local v2, "c":J
    add-int/lit8 v5, p1, 0x0

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v6, v22, v24

    .line 339
    .local v6, "x_0":J
    mul-long v22, v6, v10

    add-long v2, v2, v22

    .line 340
    add-int/lit8 v5, p5, 0x0

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 341
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 342
    mul-long v22, v6, v12

    add-long v2, v2, v22

    .line 343
    add-int/lit8 v5, p5, 0x1

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 344
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 345
    mul-long v22, v6, v14

    add-long v2, v2, v22

    .line 346
    add-int/lit8 v5, p5, 0x2

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 347
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 348
    mul-long v22, v6, v16

    add-long v2, v2, v22

    .line 349
    add-int/lit8 v5, p5, 0x3

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 350
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 351
    mul-long v22, v6, v18

    add-long v2, v2, v22

    .line 352
    add-int/lit8 v5, p5, 0x4

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 353
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 354
    mul-long v22, v6, v20

    add-long v2, v2, v22

    .line 355
    add-int/lit8 v5, p5, 0x5

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 356
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 357
    add-int/lit8 v5, p5, 0x6

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 360
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x6

    if-ge v4, v5, :cond_0

    .line 362
    add-int/lit8 p5, p5, 0x1

    .line 363
    const-wide/16 v2, 0x0

    add-int v5, p1, v4

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v8, v22, v24

    .line 364
    .local v8, "x_i":J
    mul-long v22, v8, v10

    add-int/lit8 v5, p5, 0x0

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 365
    add-int/lit8 v5, p5, 0x0

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 366
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 367
    mul-long v22, v8, v12

    add-int/lit8 v5, p5, 0x1

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 368
    add-int/lit8 v5, p5, 0x1

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 369
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 370
    mul-long v22, v8, v14

    add-int/lit8 v5, p5, 0x2

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 371
    add-int/lit8 v5, p5, 0x2

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 372
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 373
    mul-long v22, v8, v16

    add-int/lit8 v5, p5, 0x3

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 374
    add-int/lit8 v5, p5, 0x3

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 375
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 376
    mul-long v22, v8, v18

    add-int/lit8 v5, p5, 0x4

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 377
    add-int/lit8 v5, p5, 0x4

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 378
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 379
    mul-long v22, v8, v20

    add-int/lit8 v5, p5, 0x5

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 380
    add-int/lit8 v5, p5, 0x5

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 381
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 382
    add-int/lit8 v5, p5, 0x6

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 360
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 384
    .end local v8    # "x_i":J
    :cond_0
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 28
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .prologue
    .line 273
    const/4 v5, 0x0

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v10, v22, v24

    .line 274
    .local v10, "y_0":J
    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v12, v22, v24

    .line 275
    .local v12, "y_1":J
    const/4 v5, 0x2

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v14, v22, v24

    .line 276
    .local v14, "y_2":J
    const/4 v5, 0x3

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v16, v22, v24

    .line 277
    .local v16, "y_3":J
    const/4 v5, 0x4

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v18, v22, v24

    .line 278
    .local v18, "y_4":J
    const/4 v5, 0x5

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v20, v22, v24

    .line 281
    .local v20, "y_5":J
    const-wide/16 v2, 0x0

    .local v2, "c":J
    const/4 v5, 0x0

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v6, v22, v24

    .line 282
    .local v6, "x_0":J
    mul-long v22, v6, v10

    add-long v2, v2, v22

    .line 283
    const/4 v5, 0x0

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 284
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 285
    mul-long v22, v6, v12

    add-long v2, v2, v22

    .line 286
    const/4 v5, 0x1

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 287
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 288
    mul-long v22, v6, v14

    add-long v2, v2, v22

    .line 289
    const/4 v5, 0x2

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 290
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 291
    mul-long v22, v6, v16

    add-long v2, v2, v22

    .line 292
    const/4 v5, 0x3

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 293
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 294
    mul-long v22, v6, v18

    add-long v2, v2, v22

    .line 295
    const/4 v5, 0x4

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 296
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 297
    mul-long v22, v6, v20

    add-long v2, v2, v22

    .line 298
    const/4 v5, 0x5

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 299
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 300
    const/4 v5, 0x6

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 303
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x6

    if-ge v4, v5, :cond_0

    .line 305
    const-wide/16 v2, 0x0

    aget v5, p0, v4

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v8, v22, v24

    .line 306
    .local v8, "x_i":J
    mul-long v22, v8, v10

    add-int/lit8 v5, v4, 0x0

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 307
    add-int/lit8 v5, v4, 0x0

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 308
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 309
    mul-long v22, v8, v12

    add-int/lit8 v5, v4, 0x1

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 310
    add-int/lit8 v5, v4, 0x1

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 311
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 312
    mul-long v22, v8, v14

    add-int/lit8 v5, v4, 0x2

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 313
    add-int/lit8 v5, v4, 0x2

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 314
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 315
    mul-long v22, v8, v16

    add-int/lit8 v5, v4, 0x3

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 316
    add-int/lit8 v5, v4, 0x3

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 317
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 318
    mul-long v22, v8, v18

    add-int/lit8 v5, v4, 0x4

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 319
    add-int/lit8 v5, v4, 0x4

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 320
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 321
    mul-long v22, v8, v20

    add-int/lit8 v5, v4, 0x5

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 322
    add-int/lit8 v5, v4, 0x5

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 323
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 324
    add-int/lit8 v5, v4, 0x6

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 303
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 326
    .end local v8    # "x_i":J
    :cond_0
    return-void
.end method

.method public static mul33Add(I[II[II[II)J
    .locals 24
    .param p0, "w"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .prologue
    .line 467
    const-wide/16 v2, 0x0

    .local v2, "c":J
    move/from16 v0, p0

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v4, v18, v20

    .line 468
    .local v4, "wVal":J
    add-int/lit8 v18, p2, 0x0

    aget v18, p1, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v6, v18, v20

    .line 469
    .local v6, "x0":J
    mul-long v18, v4, v6

    add-int/lit8 v20, p4, 0x0

    aget v20, p3, v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 470
    add-int/lit8 v18, p6, 0x0

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p5, v18

    .line 471
    const/16 v18, 0x20

    ushr-long v2, v2, v18

    .line 472
    add-int/lit8 v18, p2, 0x1

    aget v18, p1, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v8, v18, v20

    .line 473
    .local v8, "x1":J
    mul-long v18, v4, v8

    add-long v18, v18, v6

    add-int/lit8 v20, p4, 0x1

    aget v20, p3, v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 474
    add-int/lit8 v18, p6, 0x1

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p5, v18

    .line 475
    const/16 v18, 0x20

    ushr-long v2, v2, v18

    .line 476
    add-int/lit8 v18, p2, 0x2

    aget v18, p1, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v10, v18, v20

    .line 477
    .local v10, "x2":J
    mul-long v18, v4, v10

    add-long v18, v18, v8

    add-int/lit8 v20, p4, 0x2

    aget v20, p3, v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 478
    add-int/lit8 v18, p6, 0x2

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p5, v18

    .line 479
    const/16 v18, 0x20

    ushr-long v2, v2, v18

    .line 480
    add-int/lit8 v18, p2, 0x3

    aget v18, p1, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v12, v18, v20

    .line 481
    .local v12, "x3":J
    mul-long v18, v4, v12

    add-long v18, v18, v10

    add-int/lit8 v20, p4, 0x3

    aget v20, p3, v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 482
    add-int/lit8 v18, p6, 0x3

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p5, v18

    .line 483
    const/16 v18, 0x20

    ushr-long v2, v2, v18

    .line 484
    add-int/lit8 v18, p2, 0x4

    aget v18, p1, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v14, v18, v20

    .line 485
    .local v14, "x4":J
    mul-long v18, v4, v14

    add-long v18, v18, v12

    add-int/lit8 v20, p4, 0x4

    aget v20, p3, v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 486
    add-int/lit8 v18, p6, 0x4

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p5, v18

    .line 487
    const/16 v18, 0x20

    ushr-long v2, v2, v18

    .line 488
    add-int/lit8 v18, p2, 0x5

    aget v18, p1, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v16, v18, v20

    .line 489
    .local v16, "x5":J
    mul-long v18, v4, v16

    add-long v18, v18, v14

    add-int/lit8 v20, p4, 0x5

    aget v20, p3, v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 490
    add-int/lit8 v18, p6, 0x5

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p5, v18

    .line 491
    const/16 v18, 0x20

    ushr-long v2, v2, v18

    .line 492
    add-long v2, v2, v16

    .line 493
    return-wide v2
.end method

.method public static mul33DWordAdd(IJ[II)I
    .locals 17
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .prologue
    .line 527
    const-wide/16 v2, 0x0

    .local v2, "c":J
    move/from16 v0, p0

    int-to-long v10, v0

    const-wide v12, 0xffffffffL

    and-long v4, v10, v12

    .line 528
    .local v4, "xVal":J
    const-wide v10, 0xffffffffL

    and-long v6, p1, v10

    .line 529
    .local v6, "y00":J
    mul-long v10, v4, v6

    add-int/lit8 v12, p4, 0x0

    aget v12, p3, v12

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    add-long/2addr v10, v12

    add-long/2addr v2, v10

    .line 530
    add-int/lit8 v10, p4, 0x0

    long-to-int v11, v2

    aput v11, p3, v10

    .line 531
    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    .line 532
    const/16 v10, 0x20

    ushr-long v8, p1, v10

    .line 533
    .local v8, "y01":J
    mul-long v10, v4, v8

    add-long/2addr v10, v6

    add-int/lit8 v12, p4, 0x1

    aget v12, p3, v12

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    add-long/2addr v10, v12

    add-long/2addr v2, v10

    .line 534
    add-int/lit8 v10, p4, 0x1

    long-to-int v11, v2

    aput v11, p3, v10

    .line 535
    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    .line 536
    add-int/lit8 v10, p4, 0x2

    aget v10, p3, v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v10, v8

    add-long/2addr v2, v10

    .line 537
    add-int/lit8 v10, p4, 0x2

    long-to-int v11, v2

    aput v11, p3, v10

    .line 538
    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    .line 539
    add-int/lit8 v10, p4, 0x3

    aget v10, p3, v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v2, v10

    .line 540
    add-int/lit8 v10, p4, 0x3

    long-to-int v11, v2

    aput v11, p3, v10

    .line 541
    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    .line 542
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-nez v10, :cond_0

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    const/4 v10, 0x6

    const/4 v11, 0x4

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v10, v0, v1, v11}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v10

    goto :goto_0
.end method

.method public static mul33WordAdd(II[II)I
    .locals 12
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .prologue
    .line 550
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v6, p0

    const-wide v8, 0xffffffffL

    and-long v2, v6, v8

    .local v2, "xVal":J
    int-to-long v6, p1

    const-wide v8, 0xffffffffL

    and-long v4, v6, v8

    .line 551
    .local v4, "yVal":J
    mul-long v6, v4, v2

    add-int/lit8 v8, p3, 0x0

    aget v8, p2, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 552
    add-int/lit8 v6, p3, 0x0

    long-to-int v7, v0

    aput v7, p2, v6

    .line 553
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 554
    add-int/lit8 v6, p3, 0x1

    aget v6, p2, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 555
    add-int/lit8 v6, p3, 0x1

    long-to-int v7, v0

    aput v7, p2, v6

    .line 556
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 557
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 558
    add-int/lit8 v6, p3, 0x2

    long-to-int v7, v0

    aput v7, p2, v6

    .line 559
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 560
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x6

    const/4 v7, 0x3

    invoke-static {v6, p2, p3, v7}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v6

    goto :goto_0
.end method

.method public static mulAddTo([I[I[I)I
    .locals 28
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .prologue
    .line 388
    const/4 v5, 0x0

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v8, v22, v24

    .line 389
    .local v8, "y_0":J
    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v10, v22, v24

    .line 390
    .local v10, "y_1":J
    const/4 v5, 0x2

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v12, v22, v24

    .line 391
    .local v12, "y_2":J
    const/4 v5, 0x3

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v14, v22, v24

    .line 392
    .local v14, "y_3":J
    const/4 v5, 0x4

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v16, v22, v24

    .line 393
    .local v16, "y_4":J
    const/4 v5, 0x5

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v18, v22, v24

    .line 395
    .local v18, "y_5":J
    const-wide/16 v20, 0x0

    .line 396
    .local v20, "zc":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x6

    if-ge v4, v5, :cond_0

    .line 398
    const-wide/16 v2, 0x0

    .local v2, "c":J
    aget v5, p0, v4

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v6, v22, v24

    .line 399
    .local v6, "x_i":J
    mul-long v22, v6, v8

    add-int/lit8 v5, v4, 0x0

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 400
    add-int/lit8 v5, v4, 0x0

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 401
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 402
    mul-long v22, v6, v10

    add-int/lit8 v5, v4, 0x1

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 403
    add-int/lit8 v5, v4, 0x1

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 404
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 405
    mul-long v22, v6, v12

    add-int/lit8 v5, v4, 0x2

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 406
    add-int/lit8 v5, v4, 0x2

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 407
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 408
    mul-long v22, v6, v14

    add-int/lit8 v5, v4, 0x3

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 409
    add-int/lit8 v5, v4, 0x3

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 410
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 411
    mul-long v22, v6, v16

    add-int/lit8 v5, v4, 0x4

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 412
    add-int/lit8 v5, v4, 0x4

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 413
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 414
    mul-long v22, v6, v18

    add-int/lit8 v5, v4, 0x5

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 415
    add-int/lit8 v5, v4, 0x5

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 416
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 417
    add-int/lit8 v5, v4, 0x6

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v22, v22, v20

    add-long v2, v2, v22

    .line 418
    add-int/lit8 v5, v4, 0x6

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 419
    const/16 v5, 0x20

    ushr-long v20, v2, v5

    .line 396
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 421
    .end local v2    # "c":J
    .end local v6    # "x_i":J
    :cond_0
    move-wide/from16 v0, v20

    long-to-int v5, v0

    return v5
.end method

.method public static square([II[II)V
    .locals 48
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "zz"    # [I
    .param p3, "zzOff"    # I

    .prologue
    .line 711
    add-int/lit8 v9, p1, 0x0

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v12, v44, v46

    .line 714
    .local v12, "x_0":J
    const/4 v2, 0x0

    .line 716
    .local v2, "c":I
    const/4 v3, 0x5

    .local v3, "i":I
    const/16 v5, 0xc

    .line 719
    .local v5, "j":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    add-int v9, p1, v3

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v10, v44, v46

    .line 720
    .local v10, "xVal":J
    mul-long v6, v10, v10

    .line 721
    .local v6, "p":J
    add-int/lit8 v5, v5, -0x1

    add-int v9, p3, v5

    shl-int/lit8 v44, v2, 0x1f

    const/16 v45, 0x21

    ushr-long v46, v6, v45

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v45, v0

    or-int v44, v44, v45

    aput v44, p2, v9

    .line 722
    add-int/lit8 v5, v5, -0x1

    add-int v9, p3, v5

    const/16 v44, 0x1

    ushr-long v44, v6, v44

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v44, v0

    aput v44, p2, v9

    .line 723
    long-to-int v2, v6

    .line 725
    if-gtz v4, :cond_0

    .line 728
    mul-long v6, v12, v12

    .line 729
    shl-int/lit8 v9, v2, 0x1f

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v44, v44, v46

    const/16 v9, 0x21

    ushr-long v46, v6, v9

    or-long v24, v44, v46

    .line 730
    .local v24, "zz_1":J
    add-int/lit8 v9, p3, 0x0

    long-to-int v0, v6

    move/from16 v44, v0

    aput v44, p2, v9

    .line 731
    const/16 v9, 0x20

    ushr-long v44, v6, v9

    move-wide/from16 v0, v44

    long-to-int v9, v0

    and-int/lit8 v2, v9, 0x1

    .line 735
    add-int/lit8 v9, p1, 0x1

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v14, v44, v46

    .line 736
    .local v14, "x_1":J
    add-int/lit8 v9, p3, 0x2

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v28, v44, v46

    .line 739
    .local v28, "zz_2":J
    mul-long v44, v14, v12

    add-long v24, v24, v44

    .line 740
    move-wide/from16 v0, v24

    long-to-int v8, v0

    .line 741
    .local v8, "w":I
    add-int/lit8 v9, p3, 0x1

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p2, v9

    .line 742
    ushr-int/lit8 v2, v8, 0x1f

    .line 743
    const/16 v9, 0x20

    ushr-long v44, v24, v9

    add-long v28, v28, v44

    .line 746
    add-int/lit8 v9, p1, 0x2

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v16, v44, v46

    .line 747
    .local v16, "x_2":J
    add-int/lit8 v9, p3, 0x3

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v30, v44, v46

    .line 748
    .local v30, "zz_3":J
    add-int/lit8 v9, p3, 0x4

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v32, v44, v46

    .line 750
    .local v32, "zz_4":J
    mul-long v44, v16, v12

    add-long v28, v28, v44

    .line 751
    move-wide/from16 v0, v28

    long-to-int v8, v0

    .line 752
    add-int/lit8 v9, p3, 0x2

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p2, v9

    .line 753
    ushr-int/lit8 v2, v8, 0x1f

    .line 754
    const/16 v9, 0x20

    ushr-long v44, v28, v9

    mul-long v46, v16, v14

    add-long v44, v44, v46

    add-long v30, v30, v44

    .line 755
    const/16 v9, 0x20

    ushr-long v44, v30, v9

    add-long v32, v32, v44

    .line 756
    const-wide v44, 0xffffffffL

    and-long v30, v30, v44

    .line 759
    add-int/lit8 v9, p1, 0x3

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v18, v44, v46

    .line 760
    .local v18, "x_3":J
    add-int/lit8 v9, p3, 0x5

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v34, v44, v46

    .line 761
    .local v34, "zz_5":J
    add-int/lit8 v9, p3, 0x6

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v36, v44, v46

    .line 763
    .local v36, "zz_6":J
    mul-long v44, v18, v12

    add-long v30, v30, v44

    .line 764
    move-wide/from16 v0, v30

    long-to-int v8, v0

    .line 765
    add-int/lit8 v9, p3, 0x3

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p2, v9

    .line 766
    ushr-int/lit8 v2, v8, 0x1f

    .line 767
    const/16 v9, 0x20

    ushr-long v44, v30, v9

    mul-long v46, v18, v14

    add-long v44, v44, v46

    add-long v32, v32, v44

    .line 768
    const/16 v9, 0x20

    ushr-long v44, v32, v9

    mul-long v46, v18, v16

    add-long v44, v44, v46

    add-long v34, v34, v44

    .line 769
    const-wide v44, 0xffffffffL

    and-long v32, v32, v44

    .line 770
    const/16 v9, 0x20

    ushr-long v44, v34, v9

    add-long v36, v36, v44

    .line 771
    const-wide v44, 0xffffffffL

    and-long v34, v34, v44

    .line 774
    add-int/lit8 v9, p1, 0x4

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v20, v44, v46

    .line 775
    .local v20, "x_4":J
    add-int/lit8 v9, p3, 0x7

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v38, v44, v46

    .line 776
    .local v38, "zz_7":J
    add-int/lit8 v9, p3, 0x8

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v40, v44, v46

    .line 778
    .local v40, "zz_8":J
    mul-long v44, v20, v12

    add-long v32, v32, v44

    .line 779
    move-wide/from16 v0, v32

    long-to-int v8, v0

    .line 780
    add-int/lit8 v9, p3, 0x4

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p2, v9

    .line 781
    ushr-int/lit8 v2, v8, 0x1f

    .line 782
    const/16 v9, 0x20

    ushr-long v44, v32, v9

    mul-long v46, v20, v14

    add-long v44, v44, v46

    add-long v34, v34, v44

    .line 783
    const/16 v9, 0x20

    ushr-long v44, v34, v9

    mul-long v46, v20, v16

    add-long v44, v44, v46

    add-long v36, v36, v44

    .line 784
    const-wide v44, 0xffffffffL

    and-long v34, v34, v44

    .line 785
    const/16 v9, 0x20

    ushr-long v44, v36, v9

    mul-long v46, v20, v18

    add-long v44, v44, v46

    add-long v38, v38, v44

    .line 786
    const-wide v44, 0xffffffffL

    and-long v36, v36, v44

    .line 787
    const/16 v9, 0x20

    ushr-long v44, v38, v9

    add-long v40, v40, v44

    .line 788
    const-wide v44, 0xffffffffL

    and-long v38, v38, v44

    .line 791
    add-int/lit8 v9, p1, 0x5

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v22, v44, v46

    .line 792
    .local v22, "x_5":J
    add-int/lit8 v9, p3, 0x9

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v42, v44, v46

    .line 793
    .local v42, "zz_9":J
    add-int/lit8 v9, p3, 0xa

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v26, v44, v46

    .line 795
    .local v26, "zz_10":J
    mul-long v44, v22, v12

    add-long v34, v34, v44

    .line 796
    move-wide/from16 v0, v34

    long-to-int v8, v0

    .line 797
    add-int/lit8 v9, p3, 0x5

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p2, v9

    .line 798
    ushr-int/lit8 v2, v8, 0x1f

    .line 799
    const/16 v9, 0x20

    ushr-long v44, v34, v9

    mul-long v46, v22, v14

    add-long v44, v44, v46

    add-long v36, v36, v44

    .line 800
    const/16 v9, 0x20

    ushr-long v44, v36, v9

    mul-long v46, v22, v16

    add-long v44, v44, v46

    add-long v38, v38, v44

    .line 801
    const/16 v9, 0x20

    ushr-long v44, v38, v9

    mul-long v46, v22, v18

    add-long v44, v44, v46

    add-long v40, v40, v44

    .line 802
    const/16 v9, 0x20

    ushr-long v44, v40, v9

    mul-long v46, v22, v20

    add-long v44, v44, v46

    add-long v42, v42, v44

    .line 803
    const/16 v9, 0x20

    ushr-long v44, v42, v9

    add-long v26, v26, v44

    .line 806
    move-wide/from16 v0, v36

    long-to-int v8, v0

    .line 807
    add-int/lit8 v9, p3, 0x6

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p2, v9

    .line 808
    ushr-int/lit8 v2, v8, 0x1f

    .line 809
    move-wide/from16 v0, v38

    long-to-int v8, v0

    .line 810
    add-int/lit8 v9, p3, 0x7

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p2, v9

    .line 811
    ushr-int/lit8 v2, v8, 0x1f

    .line 812
    move-wide/from16 v0, v40

    long-to-int v8, v0

    .line 813
    add-int/lit8 v9, p3, 0x8

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p2, v9

    .line 814
    ushr-int/lit8 v2, v8, 0x1f

    .line 815
    move-wide/from16 v0, v42

    long-to-int v8, v0

    .line 816
    add-int/lit8 v9, p3, 0x9

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p2, v9

    .line 817
    ushr-int/lit8 v2, v8, 0x1f

    .line 818
    move-wide/from16 v0, v26

    long-to-int v8, v0

    .line 819
    add-int/lit8 v9, p3, 0xa

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p2, v9

    .line 820
    ushr-int/lit8 v2, v8, 0x1f

    .line 821
    add-int/lit8 v9, p3, 0xb

    aget v9, p2, v9

    const/16 v44, 0x20

    shr-long v44, v26, v44

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v44, v0

    add-int v8, v9, v44

    .line 822
    add-int/lit8 v9, p3, 0xb

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p2, v9

    .line 823
    return-void

    .end local v8    # "w":I
    .end local v14    # "x_1":J
    .end local v16    # "x_2":J
    .end local v18    # "x_3":J
    .end local v20    # "x_4":J
    .end local v22    # "x_5":J
    .end local v24    # "zz_1":J
    .end local v26    # "zz_10":J
    .end local v28    # "zz_2":J
    .end local v30    # "zz_3":J
    .end local v32    # "zz_4":J
    .end local v34    # "zz_5":J
    .end local v36    # "zz_6":J
    .end local v38    # "zz_7":J
    .end local v40    # "zz_8":J
    .end local v42    # "zz_9":J
    :cond_0
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0
.end method

.method public static square([I[I)V
    .locals 48
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    .prologue
    .line 595
    const/4 v9, 0x0

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v12, v44, v46

    .line 598
    .local v12, "x_0":J
    const/4 v2, 0x0

    .line 600
    .local v2, "c":I
    const/4 v3, 0x5

    .local v3, "i":I
    const/16 v5, 0xc

    .line 603
    .local v5, "j":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget v9, p0, v3

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v10, v44, v46

    .line 604
    .local v10, "xVal":J
    mul-long v6, v10, v10

    .line 605
    .local v6, "p":J
    add-int/lit8 v5, v5, -0x1

    shl-int/lit8 v9, v2, 0x1f

    const/16 v44, 0x21

    ushr-long v44, v6, v44

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v44, v0

    or-int v9, v9, v44

    aput v9, p1, v5

    .line 606
    add-int/lit8 v5, v5, -0x1

    const/4 v9, 0x1

    ushr-long v44, v6, v9

    move-wide/from16 v0, v44

    long-to-int v9, v0

    aput v9, p1, v5

    .line 607
    long-to-int v2, v6

    .line 609
    if-gtz v4, :cond_0

    .line 612
    mul-long v6, v12, v12

    .line 613
    shl-int/lit8 v9, v2, 0x1f

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v44, v44, v46

    const/16 v9, 0x21

    ushr-long v46, v6, v9

    or-long v24, v44, v46

    .line 614
    .local v24, "zz_1":J
    const/4 v9, 0x0

    long-to-int v0, v6

    move/from16 v44, v0

    aput v44, p1, v9

    .line 615
    const/16 v9, 0x20

    ushr-long v44, v6, v9

    move-wide/from16 v0, v44

    long-to-int v9, v0

    and-int/lit8 v2, v9, 0x1

    .line 619
    const/4 v9, 0x1

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v14, v44, v46

    .line 620
    .local v14, "x_1":J
    const/4 v9, 0x2

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v28, v44, v46

    .line 623
    .local v28, "zz_2":J
    mul-long v44, v14, v12

    add-long v24, v24, v44

    .line 624
    move-wide/from16 v0, v24

    long-to-int v8, v0

    .line 625
    .local v8, "w":I
    const/4 v9, 0x1

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p1, v9

    .line 626
    ushr-int/lit8 v2, v8, 0x1f

    .line 627
    const/16 v9, 0x20

    ushr-long v44, v24, v9

    add-long v28, v28, v44

    .line 630
    const/4 v9, 0x2

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v16, v44, v46

    .line 631
    .local v16, "x_2":J
    const/4 v9, 0x3

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v30, v44, v46

    .line 632
    .local v30, "zz_3":J
    const/4 v9, 0x4

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v32, v44, v46

    .line 634
    .local v32, "zz_4":J
    mul-long v44, v16, v12

    add-long v28, v28, v44

    .line 635
    move-wide/from16 v0, v28

    long-to-int v8, v0

    .line 636
    const/4 v9, 0x2

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p1, v9

    .line 637
    ushr-int/lit8 v2, v8, 0x1f

    .line 638
    const/16 v9, 0x20

    ushr-long v44, v28, v9

    mul-long v46, v16, v14

    add-long v44, v44, v46

    add-long v30, v30, v44

    .line 639
    const/16 v9, 0x20

    ushr-long v44, v30, v9

    add-long v32, v32, v44

    .line 640
    const-wide v44, 0xffffffffL

    and-long v30, v30, v44

    .line 643
    const/4 v9, 0x3

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v18, v44, v46

    .line 644
    .local v18, "x_3":J
    const/4 v9, 0x5

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v34, v44, v46

    .line 645
    .local v34, "zz_5":J
    const/4 v9, 0x6

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v36, v44, v46

    .line 647
    .local v36, "zz_6":J
    mul-long v44, v18, v12

    add-long v30, v30, v44

    .line 648
    move-wide/from16 v0, v30

    long-to-int v8, v0

    .line 649
    const/4 v9, 0x3

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p1, v9

    .line 650
    ushr-int/lit8 v2, v8, 0x1f

    .line 651
    const/16 v9, 0x20

    ushr-long v44, v30, v9

    mul-long v46, v18, v14

    add-long v44, v44, v46

    add-long v32, v32, v44

    .line 652
    const/16 v9, 0x20

    ushr-long v44, v32, v9

    mul-long v46, v18, v16

    add-long v44, v44, v46

    add-long v34, v34, v44

    .line 653
    const-wide v44, 0xffffffffL

    and-long v32, v32, v44

    .line 654
    const/16 v9, 0x20

    ushr-long v44, v34, v9

    add-long v36, v36, v44

    .line 655
    const-wide v44, 0xffffffffL

    and-long v34, v34, v44

    .line 658
    const/4 v9, 0x4

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v20, v44, v46

    .line 659
    .local v20, "x_4":J
    const/4 v9, 0x7

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v38, v44, v46

    .line 660
    .local v38, "zz_7":J
    const/16 v9, 0x8

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v40, v44, v46

    .line 662
    .local v40, "zz_8":J
    mul-long v44, v20, v12

    add-long v32, v32, v44

    .line 663
    move-wide/from16 v0, v32

    long-to-int v8, v0

    .line 664
    const/4 v9, 0x4

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p1, v9

    .line 665
    ushr-int/lit8 v2, v8, 0x1f

    .line 666
    const/16 v9, 0x20

    ushr-long v44, v32, v9

    mul-long v46, v20, v14

    add-long v44, v44, v46

    add-long v34, v34, v44

    .line 667
    const/16 v9, 0x20

    ushr-long v44, v34, v9

    mul-long v46, v20, v16

    add-long v44, v44, v46

    add-long v36, v36, v44

    .line 668
    const-wide v44, 0xffffffffL

    and-long v34, v34, v44

    .line 669
    const/16 v9, 0x20

    ushr-long v44, v36, v9

    mul-long v46, v20, v18

    add-long v44, v44, v46

    add-long v38, v38, v44

    .line 670
    const-wide v44, 0xffffffffL

    and-long v36, v36, v44

    .line 671
    const/16 v9, 0x20

    ushr-long v44, v38, v9

    add-long v40, v40, v44

    .line 672
    const-wide v44, 0xffffffffL

    and-long v38, v38, v44

    .line 675
    const/4 v9, 0x5

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v22, v44, v46

    .line 676
    .local v22, "x_5":J
    const/16 v9, 0x9

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v42, v44, v46

    .line 677
    .local v42, "zz_9":J
    const/16 v9, 0xa

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v26, v44, v46

    .line 679
    .local v26, "zz_10":J
    mul-long v44, v22, v12

    add-long v34, v34, v44

    .line 680
    move-wide/from16 v0, v34

    long-to-int v8, v0

    .line 681
    const/4 v9, 0x5

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p1, v9

    .line 682
    ushr-int/lit8 v2, v8, 0x1f

    .line 683
    const/16 v9, 0x20

    ushr-long v44, v34, v9

    mul-long v46, v22, v14

    add-long v44, v44, v46

    add-long v36, v36, v44

    .line 684
    const/16 v9, 0x20

    ushr-long v44, v36, v9

    mul-long v46, v22, v16

    add-long v44, v44, v46

    add-long v38, v38, v44

    .line 685
    const/16 v9, 0x20

    ushr-long v44, v38, v9

    mul-long v46, v22, v18

    add-long v44, v44, v46

    add-long v40, v40, v44

    .line 686
    const/16 v9, 0x20

    ushr-long v44, v40, v9

    mul-long v46, v22, v20

    add-long v44, v44, v46

    add-long v42, v42, v44

    .line 687
    const/16 v9, 0x20

    ushr-long v44, v42, v9

    add-long v26, v26, v44

    .line 690
    move-wide/from16 v0, v36

    long-to-int v8, v0

    .line 691
    const/4 v9, 0x6

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p1, v9

    .line 692
    ushr-int/lit8 v2, v8, 0x1f

    .line 693
    move-wide/from16 v0, v38

    long-to-int v8, v0

    .line 694
    const/4 v9, 0x7

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p1, v9

    .line 695
    ushr-int/lit8 v2, v8, 0x1f

    .line 696
    move-wide/from16 v0, v40

    long-to-int v8, v0

    .line 697
    const/16 v9, 0x8

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p1, v9

    .line 698
    ushr-int/lit8 v2, v8, 0x1f

    .line 699
    move-wide/from16 v0, v42

    long-to-int v8, v0

    .line 700
    const/16 v9, 0x9

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p1, v9

    .line 701
    ushr-int/lit8 v2, v8, 0x1f

    .line 702
    move-wide/from16 v0, v26

    long-to-int v8, v0

    .line 703
    const/16 v9, 0xa

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p1, v9

    .line 704
    ushr-int/lit8 v2, v8, 0x1f

    .line 705
    const/16 v9, 0xb

    aget v9, p1, v9

    const/16 v44, 0x20

    shr-long v44, v26, v44

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v44, v0

    add-int v8, v9, v44

    .line 706
    const/16 v9, 0xb

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p1, v9

    .line 707
    return-void

    .end local v8    # "w":I
    .end local v14    # "x_1":J
    .end local v16    # "x_2":J
    .end local v18    # "x_3":J
    .end local v20    # "x_4":J
    .end local v22    # "x_5":J
    .end local v24    # "zz_1":J
    .end local v26    # "zz_10":J
    .end local v28    # "zz_2":J
    .end local v30    # "zz_3":J
    .end local v32    # "zz_4":J
    .end local v34    # "zz_5":J
    .end local v36    # "zz_6":J
    .end local v38    # "zz_7":J
    .end local v40    # "zz_8":J
    .end local v42    # "zz_9":J
    :cond_0
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0
.end method

.method public static sub([II[II[II)I
    .locals 9
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .prologue
    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 851
    const-wide/16 v0, 0x0

    .line 852
    .local v0, "c":J
    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 853
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 854
    shr-long/2addr v0, v8

    .line 855
    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 856
    add-int/lit8 v2, p5, 0x1

    long-to-int v3, v0

    aput v3, p4, v2

    .line 857
    shr-long/2addr v0, v8

    .line 858
    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x2

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 859
    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 860
    shr-long/2addr v0, v8

    .line 861
    add-int/lit8 v2, p1, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x3

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 862
    add-int/lit8 v2, p5, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 863
    shr-long/2addr v0, v8

    .line 864
    add-int/lit8 v2, p1, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x4

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 865
    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v0

    aput v3, p4, v2

    .line 866
    shr-long/2addr v0, v8

    .line 867
    add-int/lit8 v2, p1, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x5

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 868
    add-int/lit8 v2, p5, 0x5

    long-to-int v3, v0

    aput v3, p4, v2

    .line 869
    shr-long/2addr v0, v8

    .line 870
    long-to-int v2, v0

    return v2
.end method

.method public static sub([I[I[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 827
    const-wide/16 v0, 0x0

    .line 828
    .local v0, "c":J
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 829
    long-to-int v2, v0

    aput v2, p2, v9

    .line 830
    shr-long/2addr v0, v8

    .line 831
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 832
    long-to-int v2, v0

    aput v2, p2, v10

    .line 833
    shr-long/2addr v0, v8

    .line 834
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 835
    long-to-int v2, v0

    aput v2, p2, v11

    .line 836
    shr-long/2addr v0, v8

    .line 837
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 838
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 839
    shr-long/2addr v0, v8

    .line 840
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x4

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 841
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 842
    shr-long/2addr v0, v8

    .line 843
    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x5

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 844
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 845
    shr-long/2addr v0, v8

    .line 846
    long-to-int v2, v0

    return v2
.end method

.method public static subFrom([I[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 899
    const-wide/16 v0, 0x0

    .line 900
    .local v0, "c":J
    aget v2, p1, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 901
    long-to-int v2, v0

    aput v2, p1, v9

    .line 902
    shr-long/2addr v0, v8

    .line 903
    aget v2, p1, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 904
    long-to-int v2, v0

    aput v2, p1, v10

    .line 905
    shr-long/2addr v0, v8

    .line 906
    aget v2, p1, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 907
    long-to-int v2, v0

    aput v2, p1, v11

    .line 908
    shr-long/2addr v0, v8

    .line 909
    const/4 v2, 0x3

    aget v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x3

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 910
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p1, v2

    .line 911
    shr-long/2addr v0, v8

    .line 912
    const/4 v2, 0x4

    aget v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x4

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 913
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p1, v2

    .line 914
    shr-long/2addr v0, v8

    .line 915
    const/4 v2, 0x5

    aget v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x5

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 916
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p1, v2

    .line 917
    shr-long/2addr v0, v8

    .line 918
    long-to-int v2, v0

    return v2
.end method

.method public static toBigInteger([I)Ljava/math/BigInteger;
    .locals 5
    .param p0, "x"    # [I

    .prologue
    .line 947
    const/16 v3, 0x18

    new-array v0, v3, [B

    .line 948
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_1

    .line 950
    aget v2, p0, v1

    .line 951
    .local v2, "x_i":I
    if-eqz v2, :cond_0

    .line 953
    rsub-int/lit8 v3, v1, 0x5

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 948
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 956
    .end local v2    # "x_i":I
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v3
.end method

.method public static zero([I)V
    .locals 2
    .param p0, "z"    # [I

    .prologue
    const/4 v1, 0x0

    .line 961
    aput v1, p0, v1

    .line 962
    const/4 v0, 0x1

    aput v1, p0, v0

    .line 963
    const/4 v0, 0x2

    aput v1, p0, v0

    .line 964
    const/4 v0, 0x3

    aput v1, p0, v0

    .line 965
    const/4 v0, 0x4

    aput v1, p0, v0

    .line 966
    const/4 v0, 0x5

    aput v1, p0, v0

    .line 967
    return-void
.end method
