.class final Lcom/bumptech/glide/load/engine/LockedResource;
.super Ljava/lang/Object;
.source "LockedResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/Resource",
        "<TZ;>;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;"
    }
.end annotation


# static fields
.field private static final POOL:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/load/engine/LockedResource",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private isLocked:Z

.field private isRecycled:Z

.field private final stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

.field private toWrap:Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const/16 v0, 0x14

    new-instance v1, Lcom/bumptech/glide/load/engine/LockedResource$1;

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/LockedResource$1;-><init>()V

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/pool/FactoryPools;->threadSafe(ILcom/bumptech/glide/util/pool/FactoryPools$Factory;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/engine/LockedResource;->POOL:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lcom/bumptech/glide/load/engine/LockedResource;, "Lcom/bumptech/glide/load/engine/LockedResource<TZ;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/bumptech/glide/util/pool/StateVerifier;->newInstance()Lcom/bumptech/glide/util/pool/StateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 37
    return-void
.end method

.method private init(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/bumptech/glide/load/engine/LockedResource;, "Lcom/bumptech/glide/load/engine/LockedResource<TZ;>;"
    .local p1, "toWrap":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->isRecycled:Z

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->isLocked:Z

    .line 42
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/LockedResource;->toWrap:Lcom/bumptech/glide/load/engine/Resource;

    .line 43
    return-void
.end method

.method static obtain(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/LockedResource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;)",
            "Lcom/bumptech/glide/load/engine/LockedResource",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    sget-object v1, Lcom/bumptech/glide/load/engine/LockedResource;->POOL:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/LockedResource;

    .line 32
    .local v0, "result":Lcom/bumptech/glide/load/engine/LockedResource;, "Lcom/bumptech/glide/load/engine/LockedResource<TZ;>;"
    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/LockedResource;->init(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 33
    return-object v0
.end method

.method private release()V
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/bumptech/glide/load/engine/LockedResource;, "Lcom/bumptech/glide/load/engine/LockedResource<TZ;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->toWrap:Lcom/bumptech/glide/load/engine/Resource;

    .line 47
    sget-object v0, Lcom/bumptech/glide/load/engine/LockedResource;->POOL:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/bumptech/glide/load/engine/LockedResource;, "Lcom/bumptech/glide/load/engine/LockedResource<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->toWrap:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getResourceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/bumptech/glide/load/engine/LockedResource;, "Lcom/bumptech/glide/load/engine/LockedResource<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->toWrap:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->getResourceClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lcom/bumptech/glide/load/engine/LockedResource;, "Lcom/bumptech/glide/load/engine/LockedResource<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->toWrap:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->getSize()I

    move-result v0

    return v0
.end method

.method public getVerifier()Lcom/bumptech/glide/util/pool/StateVerifier;
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lcom/bumptech/glide/load/engine/LockedResource;, "Lcom/bumptech/glide/load/engine/LockedResource<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    return-object v0
.end method

.method public declared-synchronized recycle()V
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lcom/bumptech/glide/load/engine/LockedResource;, "Lcom/bumptech/glide/load/engine/LockedResource<TZ;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->isRecycled:Z

    .line 82
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->isLocked:Z

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->toWrap:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 84
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/LockedResource;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unlock()V
    .locals 2

    .prologue
    .line 51
    .local p0, "this":Lcom/bumptech/glide/load/engine/LockedResource;, "Lcom/bumptech/glide/load/engine/LockedResource<TZ;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 53
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->isLocked:Z

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 56
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->isLocked:Z

    .line 57
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/LockedResource;->isRecycled:Z

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/LockedResource;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :cond_1
    monitor-exit p0

    return-void
.end method
