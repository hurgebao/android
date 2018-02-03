.class public final Lproxy/SockutilKt;
.super Ljava/lang/Object;
.source "sockutil.kt"


# direct methods
.method public static final readLine(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "$receiver"    # Ljava/io/InputStream;

    .prologue
    const-string v2, "$receiver"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 10
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 12
    .local v0, "c":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 13
    new-instance v2, Ljava/io/IOException;

    const-string v3, "EOF"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 15
    :cond_1
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 16
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 20
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "out.toByteArray()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method
