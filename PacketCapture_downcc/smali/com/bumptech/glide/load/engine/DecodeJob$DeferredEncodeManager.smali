.class Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;
.super Ljava/lang/Object;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeferredEncodeManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private encoder:Lcom/bumptech/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TZ;>;"
        }
    .end annotation
.end field

.field private key:Lcom/bumptech/glide/load/Key;

.field private toEncode:Lcom/bumptech/glide/load/engine/LockedResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/LockedResource",
            "<TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 621
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;, "Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager<TZ;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;, "Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager<TZ;>;"
    const/4 v0, 0x0

    .line 647
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->key:Lcom/bumptech/glide/load/Key;

    .line 648
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    .line 649
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->toEncode:Lcom/bumptech/glide/load/engine/LockedResource;

    .line 650
    return-void
.end method

.method encode(Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/Options;)V
    .locals 5
    .param p1, "diskCacheProvider"    # Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;
    .param p2, "options"    # Lcom/bumptech/glide/load/Options;

    .prologue
    .line 632
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;, "Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager<TZ;>;"
    const-string v0, "DecodeJob.encode"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 634
    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->key:Lcom/bumptech/glide/load/Key;

    new-instance v2, Lcom/bumptech/glide/load/engine/DataCacheWriter;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->toEncode:Lcom/bumptech/glide/load/engine/LockedResource;

    invoke-direct {v2, v3, v4, p2}, Lcom/bumptech/glide/load/engine/DataCacheWriter;-><init>(Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)V

    invoke-interface {v0, v1, v2}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->toEncode:Lcom/bumptech/glide/load/engine/LockedResource;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/LockedResource;->unlock()V

    .line 638
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 640
    return-void

    .line 637
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->toEncode:Lcom/bumptech/glide/load/engine/LockedResource;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/LockedResource;->unlock()V

    .line 638
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v0
.end method

.method hasResourceToEncode()Z
    .locals 1

    .prologue
    .line 643
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;, "Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->toEncode:Lcom/bumptech/glide/load/engine/LockedResource;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method init(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/engine/LockedResource;)V
    .locals 0
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TX;>;",
            "Lcom/bumptech/glide/load/engine/LockedResource",
            "<TX;>;)V"
        }
    .end annotation

    .prologue
    .line 626
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;, "Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager<TZ;>;"
    .local p2, "encoder":Lcom/bumptech/glide/load/ResourceEncoder;, "Lcom/bumptech/glide/load/ResourceEncoder<TX;>;"
    .local p3, "toEncode":Lcom/bumptech/glide/load/engine/LockedResource;, "Lcom/bumptech/glide/load/engine/LockedResource<TX;>;"
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->key:Lcom/bumptech/glide/load/Key;

    .line 627
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->encoder:Lcom/bumptech/glide/load/ResourceEncoder;

    .line 628
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->toEncode:Lcom/bumptech/glide/load/engine/LockedResource;

    .line 629
    return-void
.end method
