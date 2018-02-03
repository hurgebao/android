.class public final Lcapt/PacketDumperKt;
.super Ljava/lang/Object;
.source "PacketDumper.kt"


# direct methods
.method public static final writeBothStreamsTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    const-string v0, "from"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcapt/PacketDumperKt;->writeTo$default(Ljava/lang/String;Ljava/lang/String;BILjava/lang/Object;)V

    .line 16
    return-void
.end method

.method public static final writeDownstreamTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    const-string v0, "from"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcapt/CaptKt;->getDIRECTION_SERVER2APP()B

    move-result v0

    invoke-static {p0, p1, v0}, Lcapt/PacketDumperKt;->writeTo(Ljava/lang/String;Ljava/lang/String;B)V

    .line 12
    return-void
.end method

.method public static final writeTo(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 8
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;
    .param p2, "dir"    # B

    .prologue
    const-string v6, "from"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "to"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 23
    .local v5, "toFile":Ljava/io/FileOutputStream;
    new-instance v4, Lcapt/CaptReader;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Lcapt/CaptReader;-><init>(Ljava/io/File;)V

    .line 24
    .local v4, "reader":Lcapt/CaptReader;
    invoke-virtual {v4}, Lcapt/CaptReader;->readHeaders()Ljava/util/ArrayList;

    move-result-object v3

    .line 25
    .local v3, "headers":Ljava/util/ArrayList;
    move v1, p2

    .line 26
    .local v1, "dirInt":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcapt/CaptHeader;

    .line 27
    .local v2, "header":Lcapt/CaptHeader;
    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    invoke-virtual {v2}, Lcapt/CaptHeader;->getDir()I

    move-result v7

    if-ne v7, v1, :cond_0

    .line 28
    :cond_1
    const-string v7, "header"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcapt/CaptReader;->readBody(Lcapt/CaptHeader;)[B

    move-result-object v0

    .line 29
    .local v0, "data":[B
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0

    .line 32
    .end local v0    # "data":[B
    .end local v2    # "header":Lcapt/CaptHeader;
    :cond_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 33
    return-void
.end method

.method public static bridge synthetic writeTo$default(Ljava/lang/String;Ljava/lang/String;BILjava/lang/Object;)V
    .locals 1

    .prologue
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_0

    .line 19
    const/4 p2, -0x1

    :cond_0
    invoke-static {p0, p1, p2}, Lcapt/PacketDumperKt;->writeTo(Ljava/lang/String;Ljava/lang/String;B)V

    return-void
.end method

.method public static final writeUpstreamTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    const-string v0, "from"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcapt/CaptKt;->getDIRECTION_APP2SERVER()B

    move-result v0

    invoke-static {p0, p1, v0}, Lcapt/PacketDumperKt;->writeTo(Ljava/lang/String;Ljava/lang/String;B)V

    .line 8
    return-void
.end method
