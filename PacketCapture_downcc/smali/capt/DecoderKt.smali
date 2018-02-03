.class public final Lcapt/DecoderKt;
.super Ljava/lang/Object;
.source "decoder.kt"


# direct methods
.method public static final decodeAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Exception;
    .locals 5
    .param p0, "decoderName"    # Ljava/lang/String;
    .param p1, "captFileName"    # Ljava/lang/String;
    .param p2, "v1FileName"    # Ljava/lang/String;
    .param p3, "heuristic"    # Z

    .prologue
    const-string v3, "decoderName"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "captFileName"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "v1FileName"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 26
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "no such decoder"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Exception;

    .line 37
    :goto_0
    return-object v3

    .line 19
    :pswitch_0
    const-string v3, "HTTP"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23
    sget-object v1, Lcapt/DecoderKt$decodeAs$1;->INSTANCE:Lcapt/DecoderKt$decodeAs$1;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 28
    .local v1, "decoder":Lkotlin/jvm/functions/Function3;
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v0, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .local v0, "captFile":Ljava/io/RandomAccessFile;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 32
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .local v2, "v1File":Ljava/io/RandomAccessFile;
    new-instance v3, Lcapt/V1Writer;

    invoke-direct {v3, v2}, Lcapt/V1Writer;-><init>(Ljava/io/RandomAccessFile;)V

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v0, v3, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 35
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 37
    const/4 v3, 0x0

    goto :goto_0

    .line 19
    :pswitch_data_0
    .packed-switch 0x220088
        :pswitch_0
    .end packed-switch
.end method

.method public static final detectDecoder(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "captFileName"    # Ljava/lang/String;
    .param p1, "protocol"    # I
    .param p2, "port"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const-string v0, "captFileName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    const/16 v0, 0x50

    if-eq p2, v0, :cond_0

    const/16 v0, 0x1bb

    if-ne p2, v0, :cond_1

    .line 8
    :cond_0
    const-string v0, "HTTP"

    .line 14
    :goto_0
    return-object v0

    .line 10
    :cond_1
    const/16 v0, 0x146c

    if-ne p2, v0, :cond_2

    .line 14
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method
