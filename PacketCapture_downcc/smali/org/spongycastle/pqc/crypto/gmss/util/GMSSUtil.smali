.class public Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;
.super Ljava/lang/Object;
.source "GMSSUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bytesToIntLittleEndian([BI)I
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 49
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .local v0, "offset":I
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 p2, v0, 0x1

    .end local v0    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    return v1
.end method

.method public concatenateArray([[B)[B
    .locals 6
    .param p1, "arraycp"    # [[B

    .prologue
    const/4 v5, 0x0

    .line 63
    array-length v3, p1

    aget-object v4, p1, v5

    array-length v4, v4

    mul-int/2addr v3, v4

    new-array v0, v3, [B

    .line 64
    .local v0, "dest":[B
    const/4 v2, 0x0

    .line 65
    .local v2, "indx":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 67
    aget-object v3, p1, v1

    aget-object v4, p1, v1

    array-length v4, v4

    invoke-static {v3, v5, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    aget-object v3, p1, v1

    array-length v3, v3

    add-int/2addr v2, v3

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-object v0
.end method

.method public intToBytesLittleEndian(I)[B
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 16
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 18
    .local v0, "bytes":[B
    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 19
    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 20
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 21
    const/4 v1, 0x3

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 22
    return-object v0
.end method
