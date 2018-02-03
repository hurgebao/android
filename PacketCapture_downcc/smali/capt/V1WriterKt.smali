.class public final Lcapt/V1WriterKt;
.super Ljava/lang/Object;
.source "V1Writer.kt"


# direct methods
.method public static final writeIntLittle(Ljava/io/RandomAccessFile;I)V
    .locals 3
    .param p0, "$receiver"    # Ljava/io/RandomAccessFile;
    .param p1, "i"    # I

    .prologue
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 178
    .local v0, "b":[B
    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 179
    const/4 v1, 0x1

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 180
    const/4 v1, 0x2

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 181
    const/4 v1, 0x3

    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 182
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 183
    return-void
.end method

.method public static final writeString(Ljava/io/RandomAccessFile;Ljava/lang/String;I)V
    .locals 3
    .param p0, "$receiver"    # Ljava/io/RandomAccessFile;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "numBytes"    # I

    .prologue
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "str"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 187
    .local v0, "b":[B
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 188
    return-void
.end method
