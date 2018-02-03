.class Lorg/spongycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;
.super Ljava/io/FilterInputStream;
.source "ZlibExpanderProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/cms/jcajce/ZlibExpanderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LimitedInputStream"
.end annotation


# instance fields
.field private remaining:J


# virtual methods
.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 74
    iget-wide v2, p0, Lorg/spongycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1

    .line 76
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 77
    .local v0, "b":I
    if-ltz v0, :cond_0

    iget-wide v2, p0, Lorg/spongycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/spongycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_1

    .line 79
    :cond_0
    return v0

    .line 83
    .end local v0    # "b":I
    :cond_1
    new-instance v1, Lorg/spongycastle/util/io/StreamOverflowException;

    const-string v2, "expanded byte limit exceeded"

    invoke-direct {v1, v2}, Lorg/spongycastle/util/io/StreamOverflowException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v2, 0x1

    if-ge p3, v2, :cond_1

    .line 92
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    .line 113
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    iget-wide v2, p0, Lorg/spongycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 98
    invoke-virtual {p0}, Lorg/spongycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->read()I

    .line 99
    const/4 v1, -0x1

    goto :goto_0

    .line 107
    :cond_2
    iget-wide v2, p0, Lorg/spongycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    int-to-long v4, p3

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    move v0, p3

    .line 108
    .local v0, "actualLen":I
    :goto_1
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 109
    .local v1, "numRead":I
    if-lez v1, :cond_0

    .line 111
    iget-wide v2, p0, Lorg/spongycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/spongycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    goto :goto_0

    .line 107
    .end local v0    # "actualLen":I
    .end local v1    # "numRead":I
    :cond_3
    iget-wide v2, p0, Lorg/spongycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream;->remaining:J

    long-to-int v0, v2

    goto :goto_1
.end method
