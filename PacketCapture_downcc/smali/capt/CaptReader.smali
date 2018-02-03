.class public final Lcapt/CaptReader;
.super Ljava/lang/Object;
.source "Capt.kt"


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcapt/CaptReader;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final readBody(Lcapt/CaptHeader;)[B
    .locals 12
    .param p1, "header"    # Lcapt/CaptHeader;

    .prologue
    const/4 v7, 0x0

    const-string v8, "header"

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v8, p0, Lcapt/CaptReader;->file:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 169
    .local v2, "fileLen":J
    invoke-virtual {p1}, Lcapt/CaptHeader;->getBodyOffset()J

    move-result-wide v8

    invoke-virtual {p1}, Lcapt/CaptHeader;->getSize()J

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long v8, v8, v2

    if-lez v8, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-object v7

    :cond_1
    move-object v4, v7

    .line 173
    check-cast v4, Ljava/io/RandomAccessFile;

    .line 174
    .local v4, "fin":Ljava/io/RandomAccessFile;
    nop

    .line 175
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lcapt/CaptReader;->file:Ljava/io/File;

    const-string v9, "r"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .end local v4    # "fin":Ljava/io/RandomAccessFile;
    .local v5, "fin":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {p1}, Lcapt/CaptHeader;->getBodyOffset()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 177
    invoke-virtual {p1}, Lcapt/CaptHeader;->getSize()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v0, v8, [B

    .line 178
    .local v0, "buf":[B
    invoke-virtual {v5, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v6

    .line 179
    .local v6, "len":I
    invoke-virtual {p1}, Lcapt/CaptHeader;->getSize()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v8

    long-to-int v8, v8

    if-eq v6, v8, :cond_2

    .line 186
    nop

    .line 187
    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v8

    goto :goto_0

    .line 186
    :cond_2
    nop

    .line 187
    :try_start_3
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_1
    move-object v7, v0

    .line 189
    goto :goto_0

    .line 186
    .end local v0    # "buf":[B
    .end local v5    # "fin":Ljava/io/RandomAccessFile;
    .end local v6    # "len":I
    .restart local v4    # "fin":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 187
    if-eqz v4, :cond_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 188
    :catch_2
    move-exception v8

    goto :goto_0

    .line 186
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_3
    nop

    .line 187
    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 189
    :cond_3
    :goto_4
    throw v7

    .line 188
    .end local v4    # "fin":Ljava/io/RandomAccessFile;
    .restart local v0    # "buf":[B
    .restart local v5    # "fin":Ljava/io/RandomAccessFile;
    .restart local v6    # "len":I
    :catch_3
    move-exception v7

    goto :goto_1

    .end local v0    # "buf":[B
    .end local v5    # "fin":Ljava/io/RandomAccessFile;
    .end local v6    # "len":I
    .restart local v4    # "fin":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v8

    goto :goto_4

    .line 186
    .end local v4    # "fin":Ljava/io/RandomAccessFile;
    .restart local v5    # "fin":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fin":Ljava/io/RandomAccessFile;
    .restart local v4    # "fin":Ljava/io/RandomAccessFile;
    goto :goto_3

    .end local v4    # "fin":Ljava/io/RandomAccessFile;
    .restart local v5    # "fin":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v1

    move-object v4, v5

    .end local v5    # "fin":Ljava/io/RandomAccessFile;
    .restart local v4    # "fin":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method public final readHeaders()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcapt/CaptHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    const/4 v1, 0x0

    check-cast v1, Ljava/io/RandomAccessFile;

    .line 154
    .local v1, "fin":Ljava/io/RandomAccessFile;
    nop

    .line 155
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcapt/CaptReader;->file:Ljava/io/File;

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .end local v1    # "fin":Ljava/io/RandomAccessFile;
    .local v2, "fin":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-static {v2}, Lcapt/CaptKt;->readCaptHeaders(Ljava/io/RandomAccessFile;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 160
    nop

    .line 161
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    move-object v1, v2

    .line 163
    .end local v2    # "fin":Ljava/io/RandomAccessFile;
    .restart local v1    # "fin":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_1
    return-object v3

    .line 160
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    nop

    .line 161
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 162
    :catch_1
    move-exception v4

    goto :goto_1

    .line 160
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    nop

    .line 161
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 163
    :cond_1
    :goto_4
    throw v3

    .line 162
    .end local v1    # "fin":Ljava/io/RandomAccessFile;
    .restart local v2    # "fin":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v2    # "fin":Ljava/io/RandomAccessFile;
    .restart local v1    # "fin":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v4

    goto :goto_4

    .line 160
    .end local v1    # "fin":Ljava/io/RandomAccessFile;
    .restart local v2    # "fin":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fin":Ljava/io/RandomAccessFile;
    .restart local v1    # "fin":Ljava/io/RandomAccessFile;
    goto :goto_3

    .end local v1    # "fin":Ljava/io/RandomAccessFile;
    .restart local v2    # "fin":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fin":Ljava/io/RandomAccessFile;
    .restart local v1    # "fin":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method
