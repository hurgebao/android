.class public final Lkotlin/io/ByteStreamsKt;
.super Ljava/lang/Object;
.source "IOStreams.kt"


# direct methods
.method public static final copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 6
    .param p0, "$receiver"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I

    .prologue
    const-string v4, "$receiver"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "out"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    const-wide/16 v2, 0x0

    .line 100
    .local v2, "bytesCopied":J
    new-array v0, p2, [B

    .line 101
    .local v0, "buffer":[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 102
    .local v1, "bytes":I
    :goto_0
    if-ltz v1, :cond_0

    .line 103
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 104
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 105
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 102
    goto :goto_0

    .line 107
    :cond_0
    return-wide v2
.end method
