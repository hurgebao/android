.class public final Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;
.super Ljava/lang/Object;
.source "LittleEndianConversions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static I2OSP(I[BI)V
    .locals 2
    .param p0, "value"    # I
    .param p1, "output"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 116
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "outOff":I
    .local v0, "outOff":I
    int-to-byte v1, p0

    aput-byte v1, p1, p2

    .line 117
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "outOff":I
    .restart local p2    # "outOff":I
    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 118
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "outOff":I
    .restart local v0    # "outOff":I
    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 119
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "outOff":I
    .restart local p2    # "outOff":I
    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 120
    return-void
.end method

.method public static I2OSP(I[BII)V
    .locals 3
    .param p0, "value"    # I
    .param p1, "output"    # [B
    .param p2, "outOff"    # I
    .param p3, "outLen"    # I

    .prologue
    .line 134
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 136
    add-int v1, p2, v0

    mul-int/lit8 v2, v0, 0x8

    ushr-int v2, p0, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 134
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method public static I2OSP(I)[B
    .locals 3
    .param p0, "x"    # I

    .prologue
    .line 99
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 100
    .local v0, "result":[B
    const/4 v1, 0x0

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 101
    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 102
    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 103
    const/4 v1, 0x3

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 104
    return-object v0
.end method

.method public static OS2IP([BI)I
    .locals 3
    .param p0, "input"    # [B
    .param p1, "inOff"    # I

    .prologue
    .line 44
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "inOff":I
    .local v0, "inOff":I
    aget-byte v2, p0, p1

    and-int/lit16 v1, v2, 0xff

    .line 45
    .local v1, "result":I
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local p1    # "inOff":I
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 46
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "inOff":I
    .restart local v0    # "inOff":I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 47
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 48
    return v1
.end method

.method public static OS2IP([BII)I
    .locals 4
    .param p0, "input"    # [B
    .param p1, "inOff"    # I
    .param p2, "inLen"    # I

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "result":I
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 65
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 63
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 67
    :cond_0
    return v1
.end method

.method public static toByteArray([II)[B
    .locals 6
    .param p0, "input"    # [I
    .param p1, "outLen"    # I

    .prologue
    .line 190
    array-length v2, p0

    .line 191
    .local v2, "intLen":I
    new-array v3, p1, [B

    .line 192
    .local v3, "result":[B
    const/4 v1, 0x0

    .line 193
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v4, v2, -0x2

    if-gt v0, v4, :cond_0

    .line 195
    aget v4, p0, v0

    invoke-static {v4, v3, v1}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 197
    :cond_0
    add-int/lit8 v4, v2, -0x1

    aget v4, p0, v4

    sub-int v5, p1, v1

    invoke-static {v4, v3, v1, v5}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BII)V

    .line 198
    return-object v3
.end method

.method public static toIntArray([B)[I
    .locals 7
    .param p0, "input"    # [B

    .prologue
    .line 209
    array-length v5, p0

    add-int/lit8 v5, v5, 0x3

    div-int/lit8 v2, v5, 0x4

    .line 210
    .local v2, "intLen":I
    array-length v5, p0

    and-int/lit8 v3, v5, 0x3

    .line 211
    .local v3, "lastLen":I
    new-array v4, v2, [I

    .line 213
    .local v4, "result":[I
    const/4 v1, 0x0

    .line 214
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v5, v2, -0x2

    if-gt v0, v5, :cond_0

    .line 216
    invoke-static {p0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v5

    aput v5, v4, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 218
    :cond_0
    if-eqz v3, :cond_1

    .line 220
    add-int/lit8 v5, v2, -0x1

    invoke-static {p0, v1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([BII)I

    move-result v6

    aput v6, v4, v5

    .line 227
    :goto_1
    return-object v4

    .line 224
    :cond_1
    add-int/lit8 v5, v2, -0x1

    invoke-static {p0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v6

    aput v6, v4, v5

    goto :goto_1
.end method
