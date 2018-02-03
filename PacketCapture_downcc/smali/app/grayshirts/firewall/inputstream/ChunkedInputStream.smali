.class public Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;
.super Ljava/io/InputStream;
.source "ChunkedInputStream.java"


# instance fields
.field private bof:Z

.field private final buffer:Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;

.field private chunkSize:I

.field private closed:Z

.field private eof:Z

.field private in:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->bof:Z

    .line 80
    iput-boolean v1, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->eof:Z

    .line 83
    iput-boolean v1, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->closed:Z

    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iput-object p1, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->in:Ljava/io/InputStream;

    .line 91
    iput v1, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->pos:I

    .line 92
    new-instance v0, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->buffer:Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;

    .line 93
    return-void
.end method

.method static exhaustInputStream(Ljava/io/InputStream;)V
    .locals 2
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    const/16 v1, 0x400

    new-array v0, v1, [B

    .line 282
    .local v0, "buffer":[B
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gez v1, :cond_0

    .line 285
    return-void
.end method

.method private getChunkSize()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    iget-boolean v5, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->bof:Z

    if-nez v5, :cond_1

    .line 200
    iget-object v5, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 201
    .local v0, "cr":I
    iget-object v5, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 202
    .local v3, "lf":I
    const/16 v5, 0xd

    if-ne v0, v5, :cond_0

    const/16 v5, 0xa

    if-eq v3, v5, :cond_1

    .line 203
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "CRLF expected at end of chunk"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 208
    .end local v0    # "cr":I
    .end local v3    # "lf":I
    :cond_1
    iget-object v5, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->buffer:Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;

    invoke-virtual {v5}, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->clear()V

    .line 210
    iget-object v5, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->in:Ljava/io/InputStream;

    iget-object v6, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->buffer:Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;

    invoke-direct {p0, v5, v6}, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->readLine(Ljava/io/InputStream;Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;)I

    move-result v2

    .line 211
    .local v2, "i":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    .line 212
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Chunked stream ended unexpectedly"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 215
    :cond_2
    iget-object v5, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->buffer:Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->indexOf(I)I

    move-result v4

    .line 216
    .local v4, "separator":I
    if-gez v4, :cond_3

    .line 217
    iget-object v5, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->buffer:Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;

    invoke-virtual {v5}, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->length()I

    move-result v4

    .line 220
    :cond_3
    :try_start_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "chunk size=%s\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->buffer:Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v4}, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 221
    iget-object v5, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->buffer:Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Bad chunk header"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private nextChunk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-direct {p0}, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->getChunkSize()I

    move-result v0

    iput v0, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->chunkSize:I

    .line 174
    iget v0, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->chunkSize:I

    if-gez v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Negative chunk size"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    iput-boolean v1, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->bof:Z

    .line 178
    iput v1, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->pos:I

    .line 179
    iget v0, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->chunkSize:I

    if-nez v0, :cond_1

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->eof:Z

    .line 182
    :cond_1
    return-void
.end method

.method private readLine(Ljava/io/InputStream;Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;)I
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "buf"    # Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;

    .prologue
    const/4 v2, -0x1

    .line 230
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 231
    .local v0, "c":I
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "readline: %02X\n"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    if-ne v0, v2, :cond_1

    .line 246
    .end local v0    # "c":I
    :goto_1
    return v2

    .line 235
    .restart local v0    # "c":I
    :cond_1
    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    .line 238
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    .line 246
    .end local v0    # "c":I
    :goto_2
    invoke-virtual {p2}, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->length()I

    move-result v2

    goto :goto_1

    .line 241
    .restart local v0    # "c":I
    :cond_2
    int-to-char v3, v0

    :try_start_1
    invoke-virtual {p2, v3}, Lapp/grayshirts/firewall/inputstream/CharArrayBuffer;->append(C)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 243
    .end local v0    # "c":I
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 256
    iget-boolean v0, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->closed:Z

    if-nez v0, :cond_1

    .line 258
    :try_start_0
    iget-boolean v0, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->eof:Z

    if-nez v0, :cond_0

    .line 259
    invoke-static {p0}, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->exhaustInputStream(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :cond_0
    iput-boolean v1, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->eof:Z

    .line 263
    iput-boolean v1, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->closed:Z

    .line 266
    :cond_1
    return-void

    .line 262
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->eof:Z

    .line 263
    iput-boolean v1, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->closed:Z

    throw v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 108
    iget-boolean v1, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 109
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iget-boolean v1, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->eof:Z

    if-eqz v1, :cond_2

    .line 121
    :cond_1
    :goto_0
    return v0

    .line 114
    :cond_2
    iget v1, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->pos:I

    iget v2, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->chunkSize:I

    if-lt v1, v2, :cond_3

    .line 115
    invoke-direct {p0}, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->nextChunk()V

    .line 116
    iget-boolean v1, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->eof:Z

    if-nez v1, :cond_1

    .line 120
    :cond_3
    iget v0, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->pos:I

    .line 121
    iget-object v0, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 137
    iget-boolean v1, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 138
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Attempted read from closed stream."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_0
    iget-boolean v1, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->eof:Z

    if-eqz v1, :cond_2

    .line 153
    :cond_1
    :goto_0
    return v0

    .line 144
    :cond_2
    iget v1, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->pos:I

    iget v2, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->chunkSize:I

    if-lt v1, v2, :cond_3

    .line 145
    invoke-direct {p0}, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->nextChunk()V

    .line 146
    iget-boolean v1, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->eof:Z

    if-nez v1, :cond_1

    .line 150
    :cond_3
    iget v1, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->chunkSize:I

    iget v2, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 151
    iget-object v1, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 152
    .local v0, "count":I
    iget v1, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lapp/grayshirts/firewall/inputstream/ChunkedInputStream;->pos:I

    goto :goto_0
.end method
