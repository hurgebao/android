.class final Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecodeCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private final dataSource:Lcom/bumptech/glide/load/DataSource;

.field final synthetic this$0:Lcom/bumptech/glide/load/engine/DecodeJob;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/DataSource;)V
    .locals 0
    .param p2, "dataSource"    # Lcom/bumptech/glide/load/DataSource;

    .prologue
    .line 516
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>.DecodeCallback<TZ;>;"
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->dataSource:Lcom/bumptech/glide/load/DataSource;

    .line 518
    return-void
.end method

.method private getResourceClass(Lcom/bumptech/glide/load/engine/Resource;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;)",
            "Ljava/lang/Class",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 570
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>.DecodeCallback<TZ;>;"
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onResourceDecoded(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 522
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;, "Lcom/bumptech/glide/load/engine/DecodeJob<TR;>.DecodeCallback<TZ;>;"
    .local p1, "decoded":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->getResourceClass(Lcom/bumptech/glide/load/engine/Resource;)Ljava/lang/Class;

    move-result-object v6

    .line 523
    .local v6, "resourceSubClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    const/4 v5, 0x0

    .line 524
    .local v5, "appliedTransformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TZ;>;"
    move-object v13, p1

    .line 525
    .local v13, "transformed":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->dataSource:Lcom/bumptech/glide/load/DataSource;

    sget-object v2, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq v1, v2, :cond_0

    .line 526
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-virtual {v1, v6}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getTransformation(Ljava/lang/Class;)Lcom/bumptech/glide/load/Transformation;

    move-result-object v5

    .line 527
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-static {v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->access$000(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/GlideContext;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget v2, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget v3, v3, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    invoke-interface {v5, v1, p1, v2, v3}, Lcom/bumptech/glide/load/Transformation;->transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v13

    .line 530
    :cond_0
    invoke-virtual {p1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 531
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 536
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-virtual {v1, v13}, Lcom/bumptech/glide/load/engine/DecodeHelper;->isResourceEncoderAvailable(Lcom/bumptech/glide/load/engine/Resource;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 537
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-virtual {v1, v13}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getResultEncoder(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v9

    .line 538
    .local v9, "encoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<TZ;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/Options;

    invoke-interface {v9, v1}, Lcom/bumptech/glide/load/ResourceEncoder;->getEncodeStrategy(Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/EncodeStrategy;

    move-result-object v8

    .line 544
    .local v8, "encodeStrategy":Lcom/bumptech/glide/load/EncodeStrategy;
    :goto_0
    move-object v12, v13

    .line 545
    .local v12, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/DecodeHelper;->isSourceKey(Lcom/bumptech/glide/load/Key;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v10, 0x1

    .line 546
    .local v10, "isFromAlternateCacheKey":Z
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->dataSource:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {v1, v10, v2, v8}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->isResourceCacheable(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 548
    if-nez v9, :cond_4

    .line 549
    new-instance v1, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {v13}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw v1

    .line 540
    .end local v8    # "encodeStrategy":Lcom/bumptech/glide/load/EncodeStrategy;
    .end local v9    # "encoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<TZ;>;"
    .end local v10    # "isFromAlternateCacheKey":Z
    .end local v12    # "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    :cond_2
    const/4 v9, 0x0

    .line 541
    .restart local v9    # "encoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<TZ;>;"
    sget-object v8, Lcom/bumptech/glide/load/EncodeStrategy;->NONE:Lcom/bumptech/glide/load/EncodeStrategy;

    .restart local v8    # "encodeStrategy":Lcom/bumptech/glide/load/EncodeStrategy;
    goto :goto_0

    .line 545
    .restart local v12    # "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 552
    .restart local v10    # "isFromAlternateCacheKey":Z
    :cond_4
    sget-object v1, Lcom/bumptech/glide/load/EncodeStrategy;->SOURCE:Lcom/bumptech/glide/load/EncodeStrategy;

    if-ne v8, v1, :cond_6

    .line 553
    new-instance v0, Lcom/bumptech/glide/load/engine/DataCacheKey;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/bumptech/glide/load/Key;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->signature:Lcom/bumptech/glide/load/Key;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/DataCacheKey;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;)V

    .line 561
    .local v0, "key":Lcom/bumptech/glide/load/Key;
    :goto_2
    invoke-static {v13}, Lcom/bumptech/glide/load/engine/LockedResource;->obtain(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/LockedResource;

    move-result-object v11

    .line 562
    .local v11, "lockedResult":Lcom/bumptech/glide/load/engine/LockedResource;, "Lcom/bumptech/glide/load/engine/LockedResource<TZ;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-virtual {v1, v0, v9, v11}, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->init(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/engine/LockedResource;)V

    .line 563
    move-object v12, v11

    .line 565
    .end local v0    # "key":Lcom/bumptech/glide/load/Key;
    .end local v11    # "lockedResult":Lcom/bumptech/glide/load/engine/LockedResource;, "Lcom/bumptech/glide/load/engine/LockedResource<TZ;>;"
    :cond_5
    return-object v12

    .line 554
    :cond_6
    sget-object v1, Lcom/bumptech/glide/load/EncodeStrategy;->TRANSFORMED:Lcom/bumptech/glide/load/EncodeStrategy;

    if-ne v8, v1, :cond_7

    .line 555
    new-instance v0, Lcom/bumptech/glide/load/engine/ResourceCacheKey;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/bumptech/glide/load/Key;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/DecodeJob;->signature:Lcom/bumptech/glide/load/Key;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget v3, v3, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget v4, v4, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    iget-object v7, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DecodeCallback;->this$0:Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v7, v7, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/Options;

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/engine/ResourceCacheKey;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/Transformation;Ljava/lang/Class;Lcom/bumptech/glide/load/Options;)V

    .restart local v0    # "key":Lcom/bumptech/glide/load/Key;
    goto :goto_2

    .line 558
    .end local v0    # "key":Lcom/bumptech/glide/load/Key;
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown strategy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
