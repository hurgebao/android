.class public final Lpcap/ProtocolKt;
.super Ljava/lang/Object;
.source "protocol.kt"


# direct methods
.method public static final varargs checksum([[B)I
    .locals 11
    .param p0, "dataList"    # [[B

    .prologue
    const/4 v10, 0x1

    const v9, 0xffff

    const-string v3, "dataList"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, "sum":I
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v3, p0

    if-ge v4, v3, :cond_4

    aget-object v0, p0, v4

    .line 167
    .local v0, "data":[B
    new-instance v3, Lkotlin/ranges/IntRange;

    array-length v5, v0

    div-int/lit8 v5, v5, 0x2

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v10, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v3, Lkotlin/ranges/IntProgression;

    const/4 v5, 0x2

    invoke-static {v3, v5}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v3

    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v6

    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v5

    if-lez v5, :cond_1

    if-gt v3, v6, :cond_2

    .line 168
    :cond_0
    :goto_1
    add-int/lit8 v7, v3, -0x1

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    aget-byte v8, v0, v3

    and-int/lit16 v8, v8, 0xff

    or-int v2, v7, v8

    .line 169
    .local v2, "val16":I
    add-int/2addr v1, v2

    .line 170
    ushr-int/lit8 v7, v1, 0x10

    and-int v8, v1, v9

    add-int v1, v7, v8

    .line 167
    if-eq v3, v6, :cond_2

    add-int/2addr v3, v5

    goto :goto_1

    .end local v2    # "val16":I
    :cond_1
    if-ge v3, v6, :cond_0

    .line 172
    :cond_2
    array-length v3, v0

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v10, :cond_3

    .line 173
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    .line 174
    ushr-int/lit8 v3, v1, 0x10

    and-int v5, v1, v9

    add-int v1, v3, v5

    .line 166
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 179
    .end local v0    # "data":[B
    :cond_4
    and-int v3, v9, v1

    xor-int/2addr v3, v9

    return v3
.end method

.method public static final write2(Ljava/io/OutputStream;I)V
    .locals 1
    .param p0, "$receiver"    # Ljava/io/OutputStream;
    .param p1, "value16"    # I

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 184
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 185
    return-void
.end method

.method public static final write4(Ljava/io/OutputStream;J)V
    .locals 3
    .param p0, "$receiver"    # Ljava/io/OutputStream;
    .param p1, "value32"    # J

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 189
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 190
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 191
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 192
    return-void
.end method
