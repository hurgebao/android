.class public Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;
.super Ljava/lang/Object;
.source "ArrayEncoder.java"


# static fields
.field private static final BIT1_TABLE:[I

.field private static final BIT2_TABLE:[I

.field private static final BIT3_TABLE:[I

.field private static final COEFF1_TABLE:[I

.field private static final COEFF2_TABLE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/16 v1, 0x9

    .line 32
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->COEFF1_TABLE:[I

    .line 33
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->COEFF2_TABLE:[I

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->BIT1_TABLE:[I

    .line 54
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->BIT2_TABLE:[I

    .line 55
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->BIT3_TABLE:[I

    return-void

    .line 32
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        -0x1
        -0x1
    .end array-data

    .line 33
    :array_1
    .array-data 4
        0x0
        0x1
        -0x1
        0x0
        0x1
        -0x1
        0x0
        0x1
    .end array-data

    .line 53
    :array_2
    .array-data 4
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
        0x1
    .end array-data

    .line 54
    :array_3
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data

    .line 55
    :array_4
    .array-data 4
        0x1
        0x0
        0x1
        0x0
        0x0
        0x1
        0x1
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeMod3Sves([BI)[I
    .locals 11
    .param p0, "data"    # [B
    .param p1, "N"    # I

    .prologue
    .line 153
    new-array v8, p1, [I

    .line 154
    .local v8, "coeffs":[I
    const/4 v5, 0x0

    .line 155
    .local v5, "coeffIndex":I
    const/4 v3, 0x0

    .local v3, "bitIndex":I
    :goto_0
    array-length v9, p0

    mul-int/lit8 v9, v9, 0x8

    if-ge v3, v9, :cond_0

    .line 157
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "bitIndex":I
    .local v4, "bitIndex":I
    invoke-static {p0, v3}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->getBit([BI)I

    move-result v0

    .line 158
    .local v0, "bit1":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "bitIndex":I
    .restart local v3    # "bitIndex":I
    invoke-static {p0, v4}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->getBit([BI)I

    move-result v1

    .line 159
    .local v1, "bit2":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "bitIndex":I
    .restart local v4    # "bitIndex":I
    invoke-static {p0, v3}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->getBit([BI)I

    move-result v2

    .line 160
    .local v2, "bit3":I
    mul-int/lit8 v9, v0, 0x4

    mul-int/lit8 v10, v1, 0x2

    add-int/2addr v9, v10

    add-int v7, v9, v2

    .line 161
    .local v7, "coeffTableIndex":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "coeffIndex":I
    .local v6, "coeffIndex":I
    sget-object v9, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->COEFF1_TABLE:[I

    aget v9, v9, v7

    aput v9, v8, v5

    .line 162
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "coeffIndex":I
    .restart local v5    # "coeffIndex":I
    sget-object v9, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->COEFF2_TABLE:[I

    aget v9, v9, v7

    aput v9, v8, v6

    .line 164
    add-int/lit8 v9, p1, -0x2

    if-le v5, v9, :cond_1

    move v3, v4

    .line 169
    .end local v0    # "bit1":I
    .end local v1    # "bit2":I
    .end local v2    # "bit3":I
    .end local v4    # "bitIndex":I
    .end local v7    # "coeffTableIndex":I
    .restart local v3    # "bitIndex":I
    :cond_0
    return-object v8

    .end local v3    # "bitIndex":I
    .restart local v0    # "bit1":I
    .restart local v1    # "bit2":I
    .restart local v2    # "bit3":I
    .restart local v4    # "bitIndex":I
    .restart local v7    # "coeffTableIndex":I
    :cond_1
    move v3, v4

    .line 168
    .end local v4    # "bitIndex":I
    .restart local v3    # "bitIndex":I
    goto :goto_0
.end method

.method public static decodeModQ([BII)[I
    .locals 8
    .param p0, "data"    # [B
    .param p1, "N"    # I
    .param p2, "q"    # I

    .prologue
    .line 106
    new-array v4, p1, [I

    .line 107
    .local v4, "coeffs":[I
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v6

    rsub-int/lit8 v2, v6, 0x1f

    .line 108
    .local v2, "bitsPerCoeff":I
    mul-int v5, p1, v2

    .line 109
    .local v5, "numBits":I
    const/4 v3, 0x0

    .line 110
    .local v3, "coeffIndex":I
    const/4 v1, 0x0

    .local v1, "bitIndex":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 112
    if-lez v1, :cond_0

    rem-int v6, v1, v2

    if-nez v6, :cond_0

    .line 114
    add-int/lit8 v3, v3, 0x1

    .line 116
    :cond_0
    invoke-static {p0, v1}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->getBit([BI)I

    move-result v0

    .line 117
    .local v0, "bit":I
    aget v6, v4, v3

    rem-int v7, v1, v2

    shl-int v7, v0, v7

    add-int/2addr v6, v7

    aput v6, v4, v3

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "bit":I
    :cond_1
    return-object v4
.end method

.method public static encodeMod3Sves([I)[B
    .locals 15
    .param p0, "arr"    # [I

    .prologue
    const/4 v14, 0x3

    .line 183
    array-length v12, p0

    mul-int/lit8 v12, v12, 0x3

    add-int/lit8 v12, v12, 0x1

    div-int/lit8 v10, v12, 0x2

    .line 184
    .local v10, "numBits":I
    add-int/lit8 v12, v10, 0x7

    div-int/lit8 v11, v12, 0x8

    .line 185
    .local v11, "numBytes":I
    new-array v6, v11, [B

    .line 186
    .local v6, "data":[B
    const/4 v0, 0x0

    .line 187
    .local v0, "bitIndex":I
    const/4 v3, 0x0

    .line 188
    .local v3, "byteIndex":I
    const/4 v7, 0x0

    .local v7, "i":I
    :cond_0
    array-length v12, p0

    div-int/lit8 v12, v12, 0x2

    mul-int/lit8 v12, v12, 0x2

    if-ge v7, v12, :cond_3

    .line 190
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    aget v12, p0, v7

    add-int/lit8 v4, v12, 0x1

    .line 191
    .local v4, "coeff1":I
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    aget v12, p0, v8

    add-int/lit8 v5, v12, 0x1

    .line 192
    .local v5, "coeff2":I
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 194
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Illegal encoding!"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 196
    :cond_1
    mul-int/lit8 v12, v4, 0x3

    add-int v1, v12, v5

    .line 197
    .local v1, "bitTableIndex":I
    new-array v2, v14, [I

    const/4 v12, 0x0

    sget-object v13, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->BIT1_TABLE:[I

    aget v13, v13, v1

    aput v13, v2, v12

    const/4 v12, 0x1

    sget-object v13, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->BIT2_TABLE:[I

    aget v13, v13, v1

    aput v13, v2, v12

    const/4 v12, 0x2

    sget-object v13, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->BIT3_TABLE:[I

    aget v13, v13, v1

    aput v13, v2, v12

    .line 198
    .local v2, "bits":[I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_0
    if-ge v9, v14, :cond_0

    .line 200
    aget-byte v12, v6, v3

    aget v13, v2, v9

    shl-int/2addr v13, v0

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v6, v3

    .line 201
    const/4 v12, 0x7

    if-ne v0, v12, :cond_2

    .line 203
    const/4 v0, 0x0

    .line 204
    add-int/lit8 v3, v3, 0x1

    .line 198
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 208
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    .end local v1    # "bitTableIndex":I
    .end local v2    # "bits":[I
    .end local v4    # "coeff1":I
    .end local v5    # "coeff2":I
    .end local v9    # "j":I
    :cond_3
    return-object v6
.end method

.method public static encodeModQ([II)[B
    .locals 11
    .param p0, "a"    # [I
    .param p1, "q"    # I

    .prologue
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v9

    rsub-int/lit8 v1, v9, 0x1f

    .line 69
    .local v1, "bitsPerCoeff":I
    array-length v9, p0

    mul-int v7, v9, v1

    .line 70
    .local v7, "numBits":I
    add-int/lit8 v9, v7, 0x7

    div-int/lit8 v8, v9, 0x8

    .line 71
    .local v8, "numBytes":I
    new-array v4, v8, [B

    .line 72
    .local v4, "data":[B
    const/4 v0, 0x0

    .line 73
    .local v0, "bitIndex":I
    const/4 v2, 0x0

    .line 74
    .local v2, "byteIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v9, p0

    if-ge v5, v9, :cond_2

    .line 76
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v1, :cond_1

    .line 78
    aget v9, p0, v5

    shr-int/2addr v9, v6

    and-int/lit8 v3, v9, 0x1

    .line 79
    .local v3, "currentBit":I
    aget-byte v9, v4, v2

    shl-int v10, v3, v0

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    .line 80
    const/4 v9, 0x7

    if-ne v0, v9, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 76
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 87
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 74
    .end local v3    # "currentBit":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 91
    .end local v6    # "j":I
    :cond_2
    return-object v4
.end method

.method private static getBit([BI)I
    .locals 3
    .param p0, "arr"    # [B
    .param p1, "bitIndex"    # I

    .prologue
    .line 288
    div-int/lit8 v1, p1, 0x8

    .line 289
    .local v1, "byteIndex":I
    aget-byte v2, p0, v1

    and-int/lit16 v0, v2, 0xff

    .line 290
    .local v0, "arrElem":I
    rem-int/lit8 v2, p1, 0x8

    shr-int v2, v0, v2

    and-int/lit8 v2, v2, 0x1

    return v2
.end method
