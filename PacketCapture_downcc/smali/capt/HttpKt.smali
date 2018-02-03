.class public final Lcapt/HttpKt;
.super Ljava/lang/Object;
.source "http.kt"


# direct methods
.method public static final fixRequestLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "contentLength"    # Ljava/lang/String;
    .param p2, "te"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "method"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "contentLength"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "te"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    const-string v3, "HEAD"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v1

    .line 339
    :cond_1
    const-string v3, "chunked"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 340
    goto :goto_0

    .line 342
    :cond_2
    const-string v3, ""

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 343
    nop

    .line 344
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 346
    goto :goto_0

    .line 347
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v3, "GET"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 352
    goto :goto_0
.end method

.method public static final fixResponseLength(ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "code"    # I
    .param p1, "contentLength"    # Ljava/lang/String;
    .param p2, "te"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v4, "contentLength"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "te"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    div-int/lit8 v4, p0, 0x64

    if-ne v4, v3, :cond_0

    move v5, v3

    :goto_0
    const/16 v4, 0xcc

    if-ne p0, v4, :cond_1

    move v4, v3

    :goto_1
    or-int/2addr v4, v5

    const/16 v5, 0x130

    if-ne p0, v5, :cond_2

    :goto_2
    or-int/2addr v3, v4

    if-eqz v3, :cond_3

    .line 369
    :goto_3
    return v1

    :cond_0
    move v5, v1

    .line 358
    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_2

    .line 361
    :cond_3
    const-string v1, "chunked"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    .line 362
    goto :goto_3

    .line 364
    :cond_4
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 365
    nop

    .line 366
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_3

    .line 367
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 368
    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    move v1, v2

    .line 369
    goto :goto_3
.end method

.method public static final getFirstHeader(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "headers"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const-string v1, "key"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 318
    .local v0, "values":Ljava/util/ArrayList;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 319
    :cond_0
    const-string v1, ""

    .line 321
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "values.get(0)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public static final httpDecoder(Ljava/io/RandomAccessFile;Lcapt/V1Writer;Z)V
    .locals 11
    .param p0, "file"    # Ljava/io/RandomAccessFile;
    .param p1, "w"    # Lcapt/V1Writer;
    .param p2, "heuristic"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v5, "file"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "w"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v1, Lcapt/CaptBalanceReader;

    invoke-direct {v1, p0}, Lcapt/CaptBalanceReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 16
    .local v1, "br":Lcapt/CaptBalanceReader;
    new-instance v0, Lcapt/CountBufferedInputStream;

    invoke-virtual {v1}, Lcapt/CaptBalanceReader;->getA2s()Lcapt/CaptInputStream;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    invoke-direct {v0, v5}, Lcapt/CountBufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 17
    .local v0, "a2s":Lcapt/CountBufferedInputStream;
    invoke-virtual {v1}, Lcapt/CaptBalanceReader;->getA2s()Lcapt/CaptInputStream;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcapt/CaptInputStream;->setCountBufferedInputStream(Lcapt/CountBufferedInputStream;)V

    .line 18
    new-instance v4, Lcapt/CountBufferedInputStream;

    invoke-virtual {v1}, Lcapt/CaptBalanceReader;->getS2a()Lcapt/CaptInputStream;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    invoke-direct {v4, v5}, Lcapt/CountBufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 19
    .local v4, "s2a":Lcapt/CountBufferedInputStream;
    invoke-virtual {v1}, Lcapt/CaptBalanceReader;->getS2a()Lcapt/CaptInputStream;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcapt/CaptInputStream;->setCountBufferedInputStream(Lcapt/CountBufferedInputStream;)V

    .line 21
    const/4 v3, 0x0

    .line 22
    .local v3, "num":I
    :goto_0
    invoke-virtual {v1}, Lcapt/CaptBalanceReader;->getNextDir()I

    move-result v2

    .line 24
    .local v2, "dir":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 40
    return-void

    .line 27
    :cond_0
    invoke-static {}, Lcapt/CaptKt;->getDIRECTION_SERVER2APP()B

    move-result v5

    if-ne v2, v5, :cond_1

    .line 28
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "===========================\n"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 29
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "  %d -->\n"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 30
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "===========================\n"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-object v5, v4

    .line 31
    check-cast v5, Ljava/io/InputStream;

    invoke-static {v5, v9, p1, p2}, Lcapt/HttpKt;->httpParser(Ljava/io/InputStream;ZLcapt/V1Writer;Z)V

    .line 37
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 22
    goto :goto_0

    .line 33
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "===========================\n"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 34
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "  %d <--\n"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 35
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "===========================\n"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    move-object v5, v0

    .line 36
    check-cast v5, Ljava/io/InputStream;

    invoke-static {v5, v10, p1, p2}, Lcapt/HttpKt;->httpParser(Ljava/io/InputStream;ZLcapt/V1Writer;Z)V

    goto :goto_1
.end method

.method public static final httpParser(Ljava/io/InputStream;ZLcapt/V1Writer;Z)V
    .locals 35
    .param p0, "r"    # Ljava/io/InputStream;
    .param p1, "isRequest"    # Z
    .param p2, "w"    # Lcapt/V1Writer;
    .param p3, "heuristic"    # Z

    .prologue
    const-string v29, "r"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v29, "w"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static/range {p0 .. p0}, Lcapt/InputstreamKt;->readLine(Ljava/io/InputStream;)[B

    move-result-object v23

    .line 45
    .local v23, "statusLine":[B
    if-nez v23, :cond_1

    .line 46
    sget-object v29, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v30, "statusLine null\n"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    sget-object v29, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v30, "statusLine:%s\n"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    new-instance v33, Ljava/lang/String;

    sget-object v34, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    aput-object v33, v31, v32

    invoke-virtual/range {v29 .. v31}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 50
    invoke-static/range {p0 .. p0}, Lcapt/InputstreamKt;->readUntilHeaderEnd(Ljava/io/InputStream;)[B

    move-result-object v13

    .line 51
    .local v13, "headerRaw":[B
    if-nez v13, :cond_2

    .line 52
    sget-object v29, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v30, "headerRaw null\n"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_0

    .line 55
    :cond_2
    sget-object v29, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v30, "headerRaw:%s\n"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    new-instance v33, Ljava/lang/String;

    sget-object v34, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-direct {v0, v13, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    aput-object v33, v31, v32

    invoke-virtual/range {v29 .. v31}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 58
    new-instance v29, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v29

    invoke-direct {v0, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v29, Ljava/io/InputStream;

    invoke-static/range {v29 .. v29}, Lcapt/MimeheaderKt;->readMimeHeaders(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v14

    .line 60
    .local v14, "headers":Ljava/util/Map;
    const-string v29, "content-length"

    move-object/from16 v0, v29

    invoke-static {v0, v14}, Lcapt/HttpKt;->getFirstHeader(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 61
    .local v9, "contentLenStr":Ljava/lang/String;
    const-string v29, "transfer-encoding"

    move-object/from16 v0, v29

    invoke-static {v0, v14}, Lcapt/HttpKt;->getFirstHeader(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v25

    .line 62
    .local v25, "transferEncStr":Ljava/lang/String;
    const-string v29, "content-encoding"

    move-object/from16 v0, v29

    invoke-static {v0, v14}, Lcapt/HttpKt;->getFirstHeader(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v8, "contentEncStr":Ljava/lang/String;
    const-string v29, "content-type"

    move-object/from16 v0, v29

    invoke-static {v0, v14}, Lcapt/HttpKt;->getFirstHeader(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcapt/HttpKt;->sanitizeContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 65
    .local v10, "contentTypeStr":Ljava/lang/String;
    sget-object v29, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v30, "content-len: %s\n"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v9, v31, v32

    invoke-virtual/range {v29 .. v31}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 66
    sget-object v29, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v30, "transfer-enc: %s\n"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v25, v31, v32

    invoke-virtual/range {v29 .. v31}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 67
    sget-object v29, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v30, "content-enc: %s\n"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v8, v31, v32

    invoke-virtual/range {v29 .. v31}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 68
    sget-object v29, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v30, "content-type: %s\n"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v10, v31, v32

    invoke-virtual/range {v29 .. v31}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 71
    if-eqz p1, :cond_b

    .line 72
    const/16 v29, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcapt/V1Writer;->begin(Z)V

    .line 75
    :goto_1
    const-string v29, "text/plain"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcapt/V1Writer;->writeRawDataBegin(Ljava/lang/String;)V

    .line 77
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcapt/V1Writer;->writeRawData([B)V

    .line 78
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcapt/V1Writer;->writeRawData([B)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Lcapt/V1Writer;->writeRawDataEnd()V

    .line 80
    invoke-virtual/range {p2 .. p2}, Lcapt/V1Writer;->end()V

    .line 82
    if-eqz p1, :cond_c

    .line 84
    sget-object v29, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static/range {v30 .. v30}, Lcapt/HttpKt;->parseRequestLineMethod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 85
    .local v19, "method":Ljava/lang/String;
    const-string v29, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-static {v0, v9, v1}, Lcapt/HttpKt;->fixRequestLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 92
    .end local v19    # "method":Ljava/lang/String;
    .local v6, "clen":I
    :goto_2
    const-string v29, "chunked"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 98
    new-instance v4, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v4, Ljava/io/InputStream;

    .line 99
    .local v4, "bodyR":Ljava/io/InputStream;
    const/4 v15, 0x1

    .line 100
    .local v15, "isChunked":Z
    move-object/from16 v28, v4

    .line 109
    .local v28, "vacuumR":Ljava/io/InputStream;
    :goto_3
    if-eqz p3, :cond_10

    .line 115
    nop

    .line 116
    :try_start_0
    invoke-static {v4}, Lcapt/InputstreamKt;->readAll(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 124
    .local v5, "bodyRaw":[B
    nop

    .line 126
    :try_start_1
    new-instance v30, Ljava/util/zip/GZIPInputStream;

    new-instance v29, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v29

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v29, Ljava/io/InputStream;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v30

    check-cast v0, Ljava/io/InputStream;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcapt/InputstreamKt;->readAll(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 152
    :goto_4
    if-eqz v28, :cond_3

    .line 158
    nop

    .line 159
    :try_start_2
    invoke-static/range {v28 .. v28}, Lcapt/InputstreamKt;->readAll(Ljava/io/InputStream;)[B

    move-result-object v18

    .line 160
    .local v18, "leftover":[B
    sget-object v29, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v30, "throw away leftover=%d\n"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-virtual/range {v29 .. v31}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 168
    .end local v18    # "leftover":[B
    :cond_3
    array-length v0, v5

    move/from16 v29, v0

    if-lez v29, :cond_8

    .line 173
    if-eqz p1, :cond_15

    const/16 v29, 0x0

    :goto_5
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcapt/V1Writer;->begin(Z)V

    .line 174
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcapt/V1Writer;->writeRawDataBegin(Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcapt/V1Writer;->writeRawData([B)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Lcapt/V1Writer;->writeRawDataEnd()V

    .line 177
    sget-object v29, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v30, "body size=%d\n"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    array-length v0, v5

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-virtual/range {v29 .. v31}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 179
    const/16 v21, 0x0

    .line 181
    .local v21, "prettyWritten":Z
    if-eqz p3, :cond_6

    .line 185
    array-length v0, v5

    move/from16 v29, v0

    const/16 v30, 0x14

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v29

    sparse-switch v29, :sswitch_data_0

    .line 197
    :cond_4
    const/16 v29, 0x0

    .line 185
    :goto_6
    if-eqz v29, :cond_16

    :cond_5
    const/16 v26, 0x1

    .line 200
    .local v26, "tryProtobuf":Z
    :goto_7
    if-eqz v26, :cond_6

    .line 201
    nop

    .line 202
    :try_start_3
    new-instance v22, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 203
    .local v22, "protoOut":Ljava/io/ByteArrayOutputStream;
    new-instance v29, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v29

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v29, Ljava/io/InputStream;

    const/16 v31, 0x0

    const/16 v32, -0x1

    move-object/from16 v0, v22

    check-cast v0, Ljava/io/OutputStream;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcapt/ProtobufKt;->parseProtobuf(Ljava/io/InputStream;IILjava/io/OutputStream;)V

    .line 205
    const-string v29, "PROTOBUF"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcapt/V1Writer;->writePrettyDataBegin(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v29

    const-string v30, "protoOut.toByteArray()"

    invoke-static/range {v29 .. v30}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcapt/V1Writer;->writePrettyData([B)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Lcapt/V1Writer;->writePrettyDataEnd()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_8

    .line 208
    const/16 v21, 0x1

    .line 213
    .end local v22    # "protoOut":Ljava/io/ByteArrayOutputStream;
    .end local v26    # "tryProtobuf":Z
    :cond_6
    :goto_8
    if-nez v21, :cond_7

    .line 218
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v29

    sparse-switch v29, :sswitch_data_1

    .line 256
    :cond_7
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcapt/V1Writer;->end()V

    .line 262
    .end local v21    # "prettyWritten":Z
    :cond_8
    const/16 v24, 0x0

    check-cast v24, [B

    .line 263
    .local v24, "trailerRaw":[B
    if-eqz v15, :cond_a

    .line 264
    invoke-static/range {p0 .. p0}, Lcapt/InputstreamKt;->readUntilHeaderEnd(Ljava/io/InputStream;)[B

    move-result-object v24

    .line 265
    if-nez v24, :cond_9

    .line 266
    sget-object v29, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v30, "trailer numm\n"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 271
    :cond_9
    if-eqz v24, :cond_a

    new-instance v29, Ljava/lang/String;

    sget-object v30, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v30, "\r\n"

    invoke-static/range {v29 .. v30}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 272
    sget-object v29, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v30, "empty trailer\n"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 274
    const/16 v24, 0x0

    check-cast v24, [B

    .line 279
    :cond_a
    if-eqz v24, :cond_0

    .line 280
    sget-object v29, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v30, "add trailer. len=%d, \'%s\' %d %d\n"

    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    new-instance v33, Ljava/lang/String;

    sget-object v34, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    aput-object v33, v31, v32

    const/16 v32, 0x2

    const/16 v33, 0x0

    aget-byte v33, v24, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x3

    const/16 v33, 0x1

    aget-byte v33, v24, v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-virtual/range {v29 .. v31}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 281
    if-eqz p1, :cond_19

    const/16 v29, 0x0

    :goto_a
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcapt/V1Writer;->begin(Z)V

    .line 282
    const-string v29, "text/plain"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcapt/V1Writer;->writeRawDataBegin(Ljava/lang/String;)V

    .line 283
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcapt/V1Writer;->writeRawData([B)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Lcapt/V1Writer;->writeRawDataEnd()V

    .line 285
    invoke-virtual/range {p2 .. p2}, Lcapt/V1Writer;->end()V

    goto/16 :goto_0

    .line 74
    .end local v4    # "bodyR":Ljava/io/InputStream;
    .end local v5    # "bodyRaw":[B
    .end local v6    # "clen":I
    .end local v15    # "isChunked":Z
    .end local v24    # "trailerRaw":[B
    .end local v28    # "vacuumR":Ljava/io/InputStream;
    :cond_b
    const/16 v29, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcapt/V1Writer;->begin(Z)V

    goto/16 :goto_1

    .line 90
    :cond_c
    sget-object v29, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static/range {v30 .. v30}, Lcapt/HttpKt;->parseResponseLineCode(Ljava/lang/String;)I

    move-result v7

    .line 91
    .local v7, "code":I
    move-object/from16 v0, v25

    invoke-static {v7, v9, v0}, Lcapt/HttpKt;->fixResponseLength(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .restart local v6    # "clen":I
    goto/16 :goto_2

    .line 101
    .end local v7    # "code":I
    :cond_d
    if-ltz v6, :cond_e

    .line 102
    new-instance v4, Lapp/grayshirts/firewall/inputstream/ContentLengthInputStream;

    int-to-long v0, v6

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-direct {v4, v0, v1, v2}, Lapp/grayshirts/firewall/inputstream/ContentLengthInputStream;-><init>(Ljava/io/InputStream;J)V

    check-cast v4, Ljava/io/InputStream;

    .line 103
    .restart local v4    # "bodyR":Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 104
    .restart local v15    # "isChunked":Z
    move-object/from16 v28, v4

    .restart local v28    # "vacuumR":Ljava/io/InputStream;
    goto/16 :goto_3

    .line 106
    .end local v4    # "bodyR":Ljava/io/InputStream;
    .end local v15    # "isChunked":Z
    .end local v28    # "vacuumR":Ljava/io/InputStream;
    :cond_e
    move-object/from16 v4, p0

    .line 107
    .restart local v4    # "bodyR":Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 108
    .restart local v15    # "isChunked":Z
    const/16 v28, 0x0

    check-cast v28, Ljava/io/InputStream;

    .restart local v28    # "vacuumR":Ljava/io/InputStream;
    goto/16 :goto_3

    .line 117
    :catch_0
    move-exception v11

    .line 118
    .local v11, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_f

    const/16 v29, 0x0

    :goto_b
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcapt/V1Writer;->begin(Z)V

    .line 119
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcapt/V1Writer;->writeRawDataBegin(Ljava/lang/String;)V

    .line 120
    const-string v29, "unexpected end of stream"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-static {v0, v1, v11}, Lcapt/HttpKt;->writeError(Lcapt/V1Writer;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Lcapt/V1Writer;->writeRawDataEnd()V

    .line 122
    invoke-virtual/range {p2 .. p2}, Lcapt/V1Writer;->end()V

    goto/16 :goto_0

    .line 118
    :cond_f
    const/16 v29, 0x1

    goto :goto_b

    .line 127
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v5    # "bodyRaw":[B
    :catch_1
    move-exception v11

    .line 128
    .restart local v11    # "e":Ljava/lang/Exception;
    sget-object v29, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v30, "heuristic: failed to parse as gzip.\n"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto/16 :goto_4

    .line 131
    .end local v5    # "bodyRaw":[B
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_10
    const-string v29, "gzip"

    move-object/from16 v0, v29

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_12

    .line 132
    nop

    .line 133
    :try_start_4
    new-instance v29, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v29, Ljava/io/InputStream;

    invoke-static/range {v29 .. v29}, Lcapt/InputstreamKt;->readAll(Ljava/io/InputStream;)[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v5

    .restart local v5    # "bodyRaw":[B
    goto/16 :goto_4

    .line 134
    .end local v5    # "bodyRaw":[B
    :catch_2
    move-exception v11

    .line 135
    .restart local v11    # "e":Ljava/lang/Exception;
    if-eqz p1, :cond_11

    const/16 v29, 0x0

    :goto_c
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcapt/V1Writer;->begin(Z)V

    .line 136
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcapt/V1Writer;->writeRawDataBegin(Ljava/lang/String;)V

    .line 137
    const-string v29, "unexpected end of gzip stream"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-static {v0, v1, v11}, Lcapt/HttpKt;->writeError(Lcapt/V1Writer;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Lcapt/V1Writer;->writeRawDataEnd()V

    .line 139
    invoke-virtual/range {p2 .. p2}, Lcapt/V1Writer;->end()V

    goto/16 :goto_0

    .line 135
    :cond_11
    const/16 v29, 0x1

    goto :goto_c

    .line 143
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_12
    nop

    .line 144
    :try_start_5
    invoke-static {v4}, Lcapt/InputstreamKt;->readAll(Ljava/io/InputStream;)[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v5

    .restart local v5    # "bodyRaw":[B
    goto/16 :goto_4

    .line 145
    .end local v5    # "bodyRaw":[B
    :catch_3
    move-exception v11

    .line 146
    .restart local v11    # "e":Ljava/lang/Exception;
    if-eqz p1, :cond_13

    const/16 v29, 0x0

    :goto_d
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcapt/V1Writer;->begin(Z)V

    .line 147
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcapt/V1Writer;->writeRawDataBegin(Ljava/lang/String;)V

    .line 148
    const-string v29, "unexpected end of stream"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-static {v0, v1, v11}, Lcapt/HttpKt;->writeError(Lcapt/V1Writer;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 149
    invoke-virtual/range {p2 .. p2}, Lcapt/V1Writer;->writeRawDataEnd()V

    .line 150
    invoke-virtual/range {p2 .. p2}, Lcapt/V1Writer;->end()V

    goto/16 :goto_0

    .line 146
    :cond_13
    const/16 v29, 0x1

    goto :goto_d

    .line 161
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v5    # "bodyRaw":[B
    :catch_4
    move-exception v11

    .line 162
    .restart local v11    # "e":Ljava/lang/Exception;
    if-eqz p1, :cond_14

    const/16 v29, 0x0

    :goto_e
    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcapt/V1Writer;->begin(Z)V

    .line 163
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcapt/V1Writer;->writeRawDataBegin(Ljava/lang/String;)V

    .line 164
    const-string v29, "unexpected end of stream"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-static {v0, v1, v11}, Lcapt/HttpKt;->writeError(Lcapt/V1Writer;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Lcapt/V1Writer;->writeRawDataEnd()V

    .line 166
    invoke-virtual/range {p2 .. p2}, Lcapt/V1Writer;->end()V

    goto/16 :goto_0

    .line 162
    :cond_14
    const/16 v29, 0x1

    goto :goto_e

    .line 173
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_15
    const/16 v29, 0x1

    goto/16 :goto_5

    .line 185
    .restart local v21    # "prettyWritten":Z
    :sswitch_0
    const-string v29, ""

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 194
    :goto_f
    const/16 v29, 0x1

    goto/16 :goto_6

    .line 185
    :sswitch_1
    const-string v29, "application/x-gzip"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    goto :goto_f

    :sswitch_2
    const-string v29, "application/x-google-protobuf"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    goto :goto_f

    :sswitch_3
    const-string v29, "application/binary"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    goto :goto_f

    :sswitch_4
    const-string v29, "application/octetstream"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    goto :goto_f

    :sswitch_5
    const-string v29, "application/x-protobuf"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    goto :goto_f

    :sswitch_6
    const-string v29, "application/vnd.google-x-gms-proto"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    goto :goto_f

    :sswitch_7
    const-string v29, "application/x-protobuffer"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    goto :goto_f

    :cond_16
    const/16 v26, 0x0

    goto/16 :goto_7

    .line 209
    .restart local v26    # "tryProtobuf":Z
    :catch_5
    move-exception v11

    .line 210
    .restart local v11    # "e":Ljava/lang/Exception;
    sget-object v29, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v30, "heuristic: failed to parse as protobuf\n"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto/16 :goto_8

    .line 218
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v26    # "tryProtobuf":Z
    :sswitch_8
    const-string v29, "application/x-google-protobuf"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 243
    :goto_10
    const-string v29, "PROTOBUF"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcapt/V1Writer;->writePrettyDataBegin(Ljava/lang/String;)V

    .line 244
    new-instance v29, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v29

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v29, Ljava/io/InputStream;

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcapt/ProtobufKt;->parseProtobuf(Ljava/io/InputStream;Lcapt/V1Writer;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Lcapt/V1Writer;->writePrettyDataEnd()V

    goto/16 :goto_9

    .line 218
    :sswitch_9
    const-string v29, "image/png"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 248
    :goto_11
    const-string v29, "IMAGE"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcapt/V1Writer;->writePrettyDataBegin(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Lcapt/V1Writer;->writePrettyDataEnd()V

    goto/16 :goto_9

    .line 218
    :sswitch_a
    const-string v29, "application/json"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 220
    const-string v29, "JSON"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcapt/V1Writer;->writePrettyDataBegin(Ljava/lang/String;)V

    .line 221
    nop

    .line 222
    :try_start_6
    new-instance v29, Lcom/google/gson/GsonBuilder;

    invoke-direct/range {v29 .. v29}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v12

    .line 223
    .local v12, "gson":Lcom/google/gson/Gson;
    new-instance v17, Lcom/google/gson/JsonParser;

    invoke-direct/range {v17 .. v17}, Lcom/google/gson/JsonParser;-><init>()V

    .line 224
    .local v17, "jp":Lcom/google/gson/JsonParser;
    sget-object v29, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    .line 225
    .local v16, "je":Lcom/google/gson/JsonElement;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v20

    .line 226
    .local v20, "prettyJsonString":Ljava/lang/String;
    sget-object v29, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-nez v20, :cond_17

    new-instance v29, Lkotlin/TypeCastException;

    const-string v30, "null cannot be cast to non-null type java.lang.String"

    invoke-direct/range {v29 .. v30}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v29
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 227
    .end local v12    # "gson":Lcom/google/gson/Gson;
    .end local v16    # "je":Lcom/google/gson/JsonElement;
    .end local v17    # "jp":Lcom/google/gson/JsonParser;
    .end local v20    # "prettyJsonString":Ljava/lang/String;
    :catch_6
    move-exception v11

    .line 228
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v29, "failed to parse as JSON"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-static {v0, v1, v11}, Lcapt/HttpKt;->writeError(Lcapt/V1Writer;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 229
    .end local v11    # "e":Ljava/lang/Exception;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Lcapt/V1Writer;->writePrettyDataEnd()V

    goto/16 :goto_9

    .line 218
    :sswitch_b
    const-string v29, "image/jpeg"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    goto :goto_11

    :sswitch_c
    const-string v29, "image/gif"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    goto :goto_11

    :sswitch_d
    const-string v29, "application/x-protobuf"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    goto/16 :goto_10

    :sswitch_e
    const-string v29, "application/vnd.google-x-gms-proto"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    goto/16 :goto_10

    :sswitch_f
    const-string v29, "application/x-www-form-urlencoded"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    .line 233
    const-string v29, "URLENCODED"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcapt/V1Writer;->writePrettyDataBegin(Ljava/lang/String;)V

    .line 234
    nop

    .line 235
    :try_start_7
    new-instance v29, Ljava/lang/String;

    sget-object v30, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v30, "UTF-8"

    invoke-static/range {v29 .. v30}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sget-object v30, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-nez v29, :cond_18

    new-instance v29, Lkotlin/TypeCastException;

    const-string v30, "null cannot be cast to non-null type java.lang.String"

    invoke-direct/range {v29 .. v30}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v29
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 237
    :catch_7
    move-exception v11

    .line 238
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v29, "failed to URLDecode"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-static {v0, v1, v11}, Lcapt/HttpKt;->writeError(Lcapt/V1Writer;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 239
    .end local v11    # "e":Ljava/lang/Exception;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Lcapt/V1Writer;->writePrettyDataEnd()V

    goto/16 :goto_9

    .line 218
    :sswitch_10
    const-string v29, "image/jpg"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    goto/16 :goto_11

    :sswitch_11
    const-string v29, "application/x-protobuffer"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    goto/16 :goto_10

    .line 226
    .restart local v12    # "gson":Lcom/google/gson/Gson;
    .restart local v16    # "je":Lcom/google/gson/JsonElement;
    .restart local v17    # "jp":Lcom/google/gson/JsonParser;
    .restart local v20    # "prettyJsonString":Ljava/lang/String;
    :cond_17
    :try_start_8
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v29

    const-string v30, "(this as java.lang.String).getBytes(charset)"

    invoke-static/range {v29 .. v30}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcapt/V1Writer;->write([B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_12

    .line 235
    .end local v12    # "gson":Lcom/google/gson/Gson;
    .end local v16    # "je":Lcom/google/gson/JsonElement;
    .end local v17    # "jp":Lcom/google/gson/JsonParser;
    .end local v20    # "prettyJsonString":Ljava/lang/String;
    :cond_18
    :try_start_9
    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v27

    const-string v29, "(this as java.lang.String).getBytes(charset)"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    .local v27, "urlEncoded":[B
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcapt/V1Writer;->write([B)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_13

    .line 281
    .end local v21    # "prettyWritten":Z
    .end local v27    # "urlEncoded":[B
    .restart local v24    # "trailerRaw":[B
    :cond_19
    const/16 v29, 0x1

    goto/16 :goto_a

    .line 212
    .end local v24    # "trailerRaw":[B
    .restart local v21    # "prettyWritten":Z
    .restart local v26    # "tryProtobuf":Z
    :catch_8
    move-exception v29

    goto/16 :goto_8

    .line 211
    :catch_9
    move-exception v29

    goto/16 :goto_8

    .line 185
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5de990a1 -> :sswitch_5
        -0x3de579b5 -> :sswitch_2
        -0x21aac30 -> :sswitch_4
        0x0 -> :sswitch_0
        0x22954da0 -> :sswitch_3
        0x44cf972e -> :sswitch_1
        0x50cbebd4 -> :sswitch_7
        0x65e9c3e0 -> :sswitch_6
    .end sparse-switch

    .line 218
    :sswitch_data_1
    .sparse-switch
        -0x5de990a1 -> :sswitch_d
        -0x58a7d764 -> :sswitch_b
        -0x588bff22 -> :sswitch_f
        -0x3de579b5 -> :sswitch_8
        -0x34688ef0 -> :sswitch_c
        -0x346882d3 -> :sswitch_10
        -0x34686c8b -> :sswitch_9
        -0x29cf5b9 -> :sswitch_a
        0x50cbebd4 -> :sswitch_11
        0x65e9c3e0 -> :sswitch_e
    .end sparse-switch
.end method

.method public static final parseRequestLineMethod(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const-string v0, "line"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 295
    check-cast v0, Ljava/lang/CharSequence;

    new-array v1, v7, [C

    const/16 v3, 0x20

    aput-char v3, v1, v2

    const/4 v4, 0x6

    const/4 v5, 0x0

    move v3, v2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 296
    .local v6, "strings":Ljava/util/List;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v7, :cond_0

    .line 297
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static final parseResponseLineCode(Ljava/lang/String;)I
    .locals 9
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    const-string v0, "line"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 305
    check-cast v0, Ljava/lang/CharSequence;

    new-array v1, v1, [C

    const/16 v3, 0x20

    aput-char v3, v1, v2

    const/4 v4, 0x6

    const/4 v5, 0x0

    move v3, v2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 306
    .local v7, "strings":Ljava/util/List;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    move v0, v8

    .line 312
    :goto_0
    return v0

    .line 309
    :cond_0
    nop

    .line 310
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    move v0, v8

    .line 312
    goto :goto_0
.end method

.method public static final sanitizeContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-string v0, "str"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 325
    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, ";"

    const/4 v4, 0x6

    const/4 v5, 0x0

    move v3, v2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v6

    .line 326
    .local v6, "pos":I
    if-ltz v6, :cond_2

    .line 327
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local p0    # "str":Ljava/lang/String;
    :cond_2
    check-cast p0, Ljava/lang/CharSequence;

    .end local p0    # "str":Ljava/lang/String;
    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final writeError(Lcapt/V1Writer;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "w"    # Lcapt/V1Writer;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    const-string v0, "w"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\n<<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcapt/V1Writer;->write([B)V

    .line 292
    return-void
.end method
