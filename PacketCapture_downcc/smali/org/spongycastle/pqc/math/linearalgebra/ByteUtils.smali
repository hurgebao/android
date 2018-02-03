.class public final Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# static fields
.field private static final HEX_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static concatenate([B[B)[B
    .locals 4
    .param p0, "x1"    # [B
    .param p1, "x2"    # [B

    .prologue
    const/4 v3, 0x0

    .line 315
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 317
    .local v0, "result":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    return-object v0
.end method

.method public static equals([B[B)Z
    .locals 6
    .param p0, "left"    # [B
    .param p1, "right"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 29
    if-nez p0, :cond_2

    .line 31
    if-nez p1, :cond_1

    :goto_0
    move v3, v2

    .line 47
    :cond_0
    :goto_1
    return v3

    :cond_1
    move v2, v3

    .line 31
    goto :goto_0

    .line 33
    :cond_2
    if-eqz p1, :cond_0

    .line 38
    array-length v4, p0

    array-length v5, p1

    if-ne v4, v5, :cond_0

    .line 42
    const/4 v1, 0x1

    .line 43
    .local v1, "result":Z
    array-length v4, p0

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_4

    .line 45
    aget-byte v4, p0, v0

    aget-byte v5, p1, v0

    if-ne v4, v5, :cond_3

    move v4, v2

    :goto_3
    and-int/2addr v1, v4

    .line 43
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    move v4, v3

    .line 45
    goto :goto_3

    :cond_4
    move v3, v1

    .line 47
    goto :goto_1
.end method

.method public static split([BI)[[B
    .locals 4
    .param p0, "input"    # [B
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 356
    array-length v1, p0

    if-le p1, v1, :cond_0

    .line 358
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 360
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [[B

    .line 361
    .local v0, "result":[[B
    new-array v1, p1, [B

    aput-object v1, v0, v3

    .line 362
    array-length v1, p0

    sub-int/2addr v1, p1

    new-array v1, v1, [B

    aput-object v1, v0, v2

    .line 363
    aget-object v1, v0, v3

    invoke-static {p0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    aget-object v1, v0, v2

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    return-object v0
.end method

.method public static subArray([BII)[B
    .locals 3
    .param p0, "input"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 379
    sub-int v1, p2, p1

    new-array v0, v1, [B

    .line 380
    .local v0, "result":[B
    const/4 v1, 0x0

    sub-int v2, p2, p1

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    return-object v0
.end method
