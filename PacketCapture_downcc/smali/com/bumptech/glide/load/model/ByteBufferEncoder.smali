.class public Lcom/bumptech/glide/load/model/ByteBufferEncoder;
.super Ljava/lang/Object;
.source "ByteBufferEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Encoder",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/Options;)Z
    .locals 1

    .prologue
    .line 14
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/model/ByteBufferEncoder;->encode(Ljava/nio/ByteBuffer;Ljava/io/File;Lcom/bumptech/glide/load/Options;)Z

    move-result v0

    return v0
.end method

.method public encode(Ljava/nio/ByteBuffer;Ljava/io/File;Lcom/bumptech/glide/load/Options;)Z
    .locals 4
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "options"    # Lcom/bumptech/glide/load/Options;

    .prologue
    .line 19
    const/4 v1, 0x0

    .line 21
    .local v1, "success":Z
    :try_start_0
    invoke-static {p1, p2}, Lcom/bumptech/glide/util/ByteBufferUtil;->toFile(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    const/4 v1, 0x1

    .line 28
    :cond_0
    :goto_0
    return v1

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "ByteBufferEncoder"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    const-string v2, "ByteBufferEncoder"

    const-string v3, "Failed to write data"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
