.class Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;
.super Ljava/io/InputStream;
.source "ByteBufferUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/ByteBufferUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteBufferStream"
.end annotation


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private markPos:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->markPos:I

    .line 168
    iput-object p1, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 169
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->markPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    const/4 v0, -0x1

    .line 181
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v1, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    const/4 v0, -0x1

    .line 201
    :goto_0
    return v0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->available()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 200
    .local v0, "toRead":I
    iget-object v1, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->markPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 207
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot reset to unset mark position"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 210
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->markPos:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .locals 7
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v2, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    .line 216
    const-wide/16 v0, -0x1

    .line 221
    :goto_0
    return-wide v0

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 220
    .local v0, "toSkip":J
    iget-object v2, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    int-to-long v4, v3

    add-long/2addr v4, v0

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method
