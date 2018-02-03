.class Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;
.super Ljava/lang/Object;
.source "ThumbnailStreamOpener.java"


# static fields
.field private static final DEFAULT_SERVICE:Lcom/bumptech/glide/load/data/mediastore/FileService;


# instance fields
.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field private final query:Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;

.field private final service:Lcom/bumptech/glide/load/data/mediastore/FileService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/bumptech/glide/load/data/mediastore/FileService;

    invoke-direct {v0}, Lcom/bumptech/glide/load/data/mediastore/FileService;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->DEFAULT_SERVICE:Lcom/bumptech/glide/load/data/mediastore/FileService;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/bumptech/glide/load/data/mediastore/FileService;Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "service"    # Lcom/bumptech/glide/load/data/mediastore/FileService;
    .param p3, "query"    # Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;
    .param p4, "byteArrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .param p5, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/data/mediastore/FileService;",
            "Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "parsers":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ImageHeaderParser;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->service:Lcom/bumptech/glide/load/data/mediastore/FileService;

    .line 40
    iput-object p3, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->query:Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;

    .line 41
    iput-object p4, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 42
    iput-object p5, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->contentResolver:Landroid/content/ContentResolver;

    .line 43
    iput-object p1, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->parsers:Ljava/util/List;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Landroid/content/ContentResolver;)V
    .locals 6
    .param p2, "query"    # Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;
    .param p3, "byteArrayPool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
    .param p4, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "parsers":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ImageHeaderParser;>;"
    sget-object v2, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->DEFAULT_SERVICE:Lcom/bumptech/glide/load/data/mediastore/FileService;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/data/mediastore/FileService;Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Landroid/content/ContentResolver;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getOrientation(Landroid/net/Uri;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 49
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->parsers:Ljava/util/List;

    iget-object v3, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {v2, v1, v3}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getOrientation(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 57
    if-eqz v1, :cond_0

    .line 59
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 65
    :cond_0
    :goto_0
    return v2

    .line 52
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v2, "ThumbStreamOpener"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    const-string v2, "ThumbStreamOpener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :cond_1
    if-eqz v1, :cond_2

    .line 59
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 65
    :cond_2
    :goto_2
    const/4 v2, -0x1

    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 59
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 62
    :cond_3
    :goto_3
    throw v2

    .line 52
    :catch_1
    move-exception v2

    move-object v0, v2

    goto :goto_1

    .line 60
    :catch_2
    move-exception v3

    goto :goto_0

    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    goto :goto_3
.end method

.method public open(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 69
    const/4 v5, 0x0

    .line 70
    .local v5, "thumbnailUri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 72
    .local v3, "inputStream":Ljava/io/InputStream;
    iget-object v7, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->query:Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;

    invoke-interface {v7, p1}, Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;->query(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 74
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 87
    :cond_0
    if-eqz v0, :cond_1

    .line 88
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_1
    :goto_0
    return-object v6

    .line 77
    :cond_2
    const/4 v7, 0x0

    :try_start_1
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_3

    .line 87
    if-eqz v0, :cond_1

    .line 88
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 82
    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->service:Lcom/bumptech/glide/load/data/mediastore/FileService;

    invoke-virtual {v6, v4}, Lcom/bumptech/glide/load/data/mediastore/FileService;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 83
    .local v2, "file":Ljava/io/File;
    iget-object v6, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->service:Lcom/bumptech/glide/load/data/mediastore/FileService;

    invoke-virtual {v6, v2}, Lcom/bumptech/glide/load/data/mediastore/FileService;->exists(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->service:Lcom/bumptech/glide/load/data/mediastore/FileService;

    invoke-virtual {v6, v2}, Lcom/bumptech/glide/load/data/mediastore/FileService;->length(Ljava/io/File;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 84
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 87
    :cond_4
    if-eqz v0, :cond_5

    .line 88
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_5
    if-eqz v5, :cond_6

    .line 93
    :try_start_3
    iget-object v6, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v3

    :cond_6
    move-object v6, v3

    .line 100
    goto :goto_0

    .line 87
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_7

    .line 88
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v6

    .line 95
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v6, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NPE opening uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v6, v1}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljava/io/FileNotFoundException;

    throw v6
.end method
