.class public final Lcapt/CaptInputStream;
.super Ljava/io/InputStream;
.source "CaptInputStream.kt"


# instance fields
.field private br:Lcapt/CountBufferedInputStream;

.field private eof:Z

.field private final file:Ljava/io/RandomAccessFile;

.field private headerIndex:I

.field private final headers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcapt/CaptHeader;",
            ">;"
        }
    .end annotation
.end field

.field private readInHeader:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/io/RandomAccessFile;)V
    .locals 1
    .param p1, "headers"    # Ljava/util/ArrayList;
    .param p2, "file"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcapt/CaptHeader;",
            ">;",
            "Ljava/io/RandomAccessFile;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcapt/CaptInputStream;->headers:Ljava/util/ArrayList;

    iput-object p2, p0, Lcapt/CaptInputStream;->file:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public final getCurrentHeader()Lcapt/CaptHeader;
    .locals 6

    .prologue
    .line 19
    iget-object v3, p0, Lcapt/CaptInputStream;->br:Lcapt/CountBufferedInputStream;

    if-eqz v3, :cond_3

    .line 21
    iget-object v3, p0, Lcapt/CaptInputStream;->br:Lcapt/CountBufferedInputStream;

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v3}, Lcapt/CountBufferedInputStream;->getCount()I

    move-result v2

    .line 24
    .local v2, "rewind":I
    iget v1, p0, Lcapt/CaptInputStream;->headerIndex:I

    .line 26
    .local v1, "i":I
    iget v0, p0, Lcapt/CaptInputStream;->readInHeader:I

    .line 28
    .local v0, "bytes":I
    :goto_0
    if-lez v2, :cond_1

    .line 30
    if-gt v2, v0, :cond_4

    .line 37
    :cond_1
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcapt/CaptInputStream;->headers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_5

    .line 38
    :cond_2
    const/4 v3, 0x0

    .line 40
    :goto_1
    return-object v3

    .line 23
    .end local v0    # "bytes":I
    .end local v1    # "i":I
    .end local v2    # "rewind":I
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "br not set"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 33
    .restart local v0    # "bytes":I
    .restart local v1    # "i":I
    .restart local v2    # "rewind":I
    :cond_4
    sub-int/2addr v2, v0

    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 35
    iget-object v3, p0, Lcapt/CaptInputStream;->headers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcapt/CaptHeader;

    invoke-virtual {v3}, Lcapt/CaptHeader;->getSize()J

    move-result-wide v4

    long-to-int v0, v4

    .line 28
    goto :goto_0

    .line 40
    :cond_5
    iget-object v3, p0, Lcapt/CaptInputStream;->headers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcapt/CaptHeader;

    goto :goto_1
.end method

.method public read()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-array v0, v3, [B

    .line 82
    .local v0, "buf":[B
    invoke-virtual {p0, v0, v2, v3}, Lcapt/CaptInputStream;->read([BII)I

    move-result v1

    .line 83
    .local v1, "ret":I
    if-lez v1, :cond_0

    .line 84
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    .line 86
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 12
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, -0x1

    .line 45
    iget-boolean v4, p0, Lcapt/CaptInputStream;->eof:Z

    if-eqz v4, :cond_2

    move v2, v3

    .line 75
    :cond_0
    :goto_0
    return v2

    .line 53
    :cond_1
    iget-object v4, p0, Lcapt/CaptInputStream;->headers:Ljava/util/ArrayList;

    iget v5, p0, Lcapt/CaptInputStream;->headerIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcapt/CaptHeader;

    .line 54
    .local v1, "hdr":Lcapt/CaptHeader;
    invoke-virtual {v1}, Lcapt/CaptHeader;->getSize()J

    move-result-wide v4

    long-to-int v4, v4

    iget v5, p0, Lcapt/CaptInputStream;->readInHeader:I

    sub-int v0, v4, v5

    .line 55
    .local v0, "bytes":I
    if-nez v0, :cond_3

    .line 56
    iget v4, p0, Lcapt/CaptInputStream;->headerIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcapt/CaptInputStream;->headerIndex:I

    .line 57
    iput v10, p0, Lcapt/CaptInputStream;->readInHeader:I

    .line 48
    .end local v0    # "bytes":I
    .end local v1    # "hdr":Lcapt/CaptHeader;
    :cond_2
    iget v4, p0, Lcapt/CaptInputStream;->headerIndex:I

    iget-object v5, p0, Lcapt/CaptInputStream;->headers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 50
    iput-boolean v11, p0, Lcapt/CaptInputStream;->eof:Z

    move v2, v3

    .line 51
    goto :goto_0

    .line 60
    .restart local v0    # "bytes":I
    .restart local v1    # "hdr":Lcapt/CaptHeader;
    :cond_3
    if-le v0, p3, :cond_4

    .line 61
    move v0, p3

    .line 63
    :cond_4
    iget-object v4, p0, Lcapt/CaptInputStream;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Lcapt/CaptHeader;->getBodyOffset()J

    move-result-wide v6

    iget v5, p0, Lcapt/CaptInputStream;->readInHeader:I

    int-to-long v8, v5

    add-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 64
    iget-object v4, p0, Lcapt/CaptInputStream;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, p1, p2, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 65
    .local v2, "num":I
    if-lez v2, :cond_5

    .line 66
    iget v3, p0, Lcapt/CaptInputStream;->readInHeader:I

    add-int/2addr v3, v2

    iput v3, p0, Lcapt/CaptInputStream;->readInHeader:I

    .line 68
    iget v3, p0, Lcapt/CaptInputStream;->readInHeader:I

    invoke-virtual {v1}, Lcapt/CaptHeader;->getSize()J

    move-result-wide v4

    long-to-int v4, v4

    if-ne v3, v4, :cond_0

    .line 69
    iget v3, p0, Lcapt/CaptInputStream;->headerIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcapt/CaptInputStream;->headerIndex:I

    .line 70
    iput v10, p0, Lcapt/CaptInputStream;->readInHeader:I

    goto :goto_0

    .line 74
    :cond_5
    iput-boolean v11, p0, Lcapt/CaptInputStream;->eof:Z

    move v2, v3

    .line 75
    goto :goto_0
.end method

.method public final setCountBufferedInputStream(Lcapt/CountBufferedInputStream;)V
    .locals 1
    .param p1, "stream"    # Lcapt/CountBufferedInputStream;

    .prologue
    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcapt/CaptInputStream;->br:Lcapt/CountBufferedInputStream;

    .line 16
    return-void
.end method
