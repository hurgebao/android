.class public final Lcapt/V1parserKt;
.super Ljava/lang/Object;
.source "v1parser.kt"


# direct methods
.method public static final readIntLittle(Ljava/io/RandomAccessFile;)I
    .locals 3
    .param p0, "$receiver"    # Ljava/io/RandomAccessFile;

    .prologue
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 65
    .local v0, "b":[B
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 66
    const/4 v1, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method public static final readString(Ljava/io/RandomAccessFile;I)Ljava/lang/String;
    .locals 6
    .param p0, "$receiver"    # Ljava/io/RandomAccessFile;
    .param p1, "numBytes"    # I

    .prologue
    const/4 v5, 0x0

    const-string v2, "$receiver"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-array v0, p1, [B

    .line 72
    .local v0, "b":[B
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 73
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v2, 0x1

    new-array v2, v2, [C

    int-to-char v4, v5

    aput-char v4, v2, v5

    invoke-static {v3, v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "s":Ljava/lang/String;
    return-object v1
.end method

.method public static final readV1Header(Ljava/io/RandomAccessFile;)Lcapt/V1Header;
    .locals 24
    .param p0, "file"    # Ljava/io/RandomAccessFile;

    .prologue
    const-string v4, "file"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static/range {p0 .. p0}, Lcapt/V1parserKt;->readIntLittle(Ljava/io/RandomAccessFile;)I

    move-result v15

    .line 20
    .local v15, "flag":I
    const/high16 v4, -0x80000000

    and-int/2addr v4, v15

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    .line 21
    .local v5, "server2app":Z
    :goto_0
    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v4, v15

    if-eqz v4, :cond_1

    const/4 v6, 0x1

    .line 22
    .local v6, "hasPretty":Z
    :goto_1
    const/16 v4, 0x20

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcapt/V1parserKt;->readString(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Lkotlin/TypeCastException;

    const-string v21, "null cannot be cast to non-null type kotlin.CharSequence"

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 20
    .end local v5    # "server2app":Z
    .end local v6    # "hasPretty":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 21
    .restart local v5    # "server2app":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 22
    .restart local v6    # "hasPretty":Z
    :cond_2
    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 23
    .local v7, "contentType":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcapt/V1parserKt;->readIntLittle(Ljava/io/RandomAccessFile;)I

    move-result v8

    .line 24
    .local v8, "rawDataSize":I
    invoke-static/range {p0 .. p0}, Lcapt/V1parserKt;->readIntLittle(Ljava/io/RandomAccessFile;)I

    move-result v9

    .line 25
    .local v9, "rawFileOffset":I
    invoke-static/range {p0 .. p0}, Lcapt/V1parserKt;->readIntLittle(Ljava/io/RandomAccessFile;)I

    move-result v18

    .line 26
    .local v18, "numTextBlocks":I
    const/16 v4, 0x20

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcapt/V1parserKt;->readString(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v4, Lkotlin/TypeCastException;

    const-string v21, "null cannot be cast to non-null type kotlin.CharSequence"

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 27
    .local v11, "prettyLabel":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcapt/V1parserKt;->readIntLittle(Ljava/io/RandomAccessFile;)I

    move-result v12

    .line 28
    .local v12, "prettySize":I
    invoke-static/range {p0 .. p0}, Lcapt/V1parserKt;->readIntLittle(Ljava/io/RandomAccessFile;)I

    move-result v13

    .line 29
    .local v13, "prettyOffset":I
    invoke-static/range {p0 .. p0}, Lcapt/V1parserKt;->readIntLittle(Ljava/io/RandomAccessFile;)I

    move-result v17

    .line 31
    .local v17, "numPrettyBlocks":I
    add-int/lit8 v4, v8, 0x3

    and-int/lit8 v4, v4, -0x4

    add-int v20, v9, v4

    .line 32
    .local v20, "textBlockOffset":I
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 33
    move/from16 v0, v18

    new-array v10, v0, [I

    .line 34
    .local v10, "textBlocks":[I
    const/16 v16, 0x0

    add-int/lit8 v4, v18, -0x1

    move/from16 v0, v16

    if-gt v0, v4, :cond_4

    .line 35
    :goto_2
    invoke-static/range {p0 .. p0}, Lcapt/V1parserKt;->readIntLittle(Ljava/io/RandomAccessFile;)I

    move-result v21

    aput v21, v10, v16

    .line 34
    move/from16 v0, v16

    if-eq v0, v4, :cond_4

    add-int/lit8 v16, v16, 0x1

    .local v16, "i":I
    goto :goto_2

    .line 38
    .end local v16    # "i":I
    :cond_4
    if-eqz v6, :cond_5

    .line 40
    add-int/lit8 v4, v12, 0x3

    and-int/lit8 v4, v4, -0x4

    add-int v19, v13, v4

    .line 41
    .local v19, "prettyBlockOffset":I
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 42
    move/from16 v0, v17

    new-array v14, v0, [I

    .line 43
    .local v14, "prettyBlocks":[I
    const/16 v16, 0x0

    add-int/lit8 v4, v17, -0x1

    move/from16 v0, v16

    if-gt v0, v4, :cond_6

    .line 44
    :goto_3
    invoke-static/range {p0 .. p0}, Lcapt/V1parserKt;->readIntLittle(Ljava/io/RandomAccessFile;)I

    move-result v21

    aput v21, v14, v16

    .line 43
    move/from16 v0, v16

    if-eq v0, v4, :cond_6

    add-int/lit8 v16, v16, 0x1

    .restart local v16    # "i":I
    goto :goto_3

    .line 47
    .end local v14    # "prettyBlocks":[I
    .end local v16    # "i":I
    .end local v19    # "prettyBlockOffset":I
    :cond_5
    const/4 v4, 0x0

    new-array v14, v4, [I

    .line 48
    .restart local v14    # "prettyBlocks":[I
    :cond_6
    new-instance v4, Lcapt/V1Header;

    invoke-direct/range {v4 .. v14}, Lcapt/V1Header;-><init>(ZZLjava/lang/String;II[ILjava/lang/String;II[I)V

    return-object v4
.end method
