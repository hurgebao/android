.class Lorg/spongycastle/cms/CMSTypedStream$FullReaderStream;
.super Ljava/io/FilterInputStream;
.source "CMSTypedStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/cms/CMSTypedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FullReaderStream"
.end annotation


# virtual methods
.method public read([BII)I
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-static {v1, p1, p2, p3}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 83
    .local v0, "totalRead":I
    if-lez v0, :cond_0

    .end local v0    # "totalRead":I
    :goto_0
    return v0

    .restart local v0    # "totalRead":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
