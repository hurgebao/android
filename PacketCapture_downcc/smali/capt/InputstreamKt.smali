.class public final Lcapt/InputstreamKt;
.super Ljava/lang/Object;
.source "inputstream.kt"


# direct methods
.method public static final readAll(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "$receiver"    # Ljava/io/InputStream;

    .prologue
    const-string v3, "$receiver"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    const/16 v3, 0x2000

    new-array v0, v3, [B

    .line 48
    .local v0, "buf":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 50
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 52
    .local v1, "len":I
    if-gez v1, :cond_0

    .line 57
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "out.toByteArray()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    .line 55
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static final readLine(Ljava/io/InputStream;)[B
    .locals 3
    .param p0, "$receiver"    # Ljava/io/InputStream;

    .prologue
    const-string v2, "$receiver"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 9
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 11
    .local v1, "c":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 21
    const/4 v2, 0x0

    .line 23
    :goto_1
    return-object v2

    .line 14
    :cond_1
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 15
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_1
.end method

.method public static final readUntilHeaderEnd(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "$receiver"    # Ljava/io/InputStream;

    .prologue
    const-string v2, "$receiver"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    :cond_0
    invoke-static {p0}, Lcapt/InputstreamKt;->readLine(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 30
    .local v0, "b":[B
    if-nez v0, :cond_1

    .line 39
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 40
    const/4 v2, 0x0

    .line 42
    :goto_1
    return-object v2

    .line 33
    :cond_1
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 34
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    const/16 v3, 0xd

    int-to-byte v3, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    const/16 v3, 0xa

    int-to-byte v3, v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_1
.end method
