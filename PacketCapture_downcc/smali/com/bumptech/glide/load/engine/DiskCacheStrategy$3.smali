.class final Lcom/bumptech/glide/load/engine/DiskCacheStrategy$3;
.super Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
.source "DiskCacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeCachedData()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public decodeCachedResource()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public isDataCacheable(Lcom/bumptech/glide/load/DataSource;)Z
    .locals 1
    .param p1, "dataSource"    # Lcom/bumptech/glide/load/DataSource;

    .prologue
    .line 70
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->DATA_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResourceCacheable(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z
    .locals 1
    .param p1, "isFromAlternateCacheKey"    # Z
    .param p2, "dataSource"    # Lcom/bumptech/glide/load/DataSource;
    .param p3, "encodeStrategy"    # Lcom/bumptech/glide/load/EncodeStrategy;

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method