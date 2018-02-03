.class public Lcom/bumptech/glide/load/model/ModelLoaderRegistry;
.super Ljava/lang/Object;
.source "ModelLoaderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;
    }
.end annotation


# instance fields
.field private final cache:Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;

.field private final multiModelLoaderFactory:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;


# direct methods
.method public constructor <init>(Landroid/support/v4/util/Pools$Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "exceptionListPool":Landroid/support/v4/util/Pools$Pool;, "Landroid/support/v4/util/Pools$Pool<Ljava/util/List<Ljava/lang/Exception;>;>;"
    new-instance v0, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;-><init>(Landroid/support/v4/util/Pools$Pool;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;-><init>(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)V

    .line 22
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)V
    .locals 1
    .param p1, "multiModelLoaderFactory"    # Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->cache:Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;

    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->multiModelLoaderFactory:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;

    .line 27
    return-void
.end method

.method private static getClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Ljava/lang/Class",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "model":Ljava/lang/Object;, "TA;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private getModelLoadersForClass(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;*>;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->cache:Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;->get(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, "loaders":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoader<TA;*>;>;"
    if-nez v0, :cond_0

    .line 83
    iget-object v1, p0, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->multiModelLoaderFactory:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->build(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->cache:Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;

    invoke-virtual {v1, p1, v0}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;->put(Ljava/lang/Class;Ljava/util/List;)V

    .line 86
    :cond_0
    return-object v0
.end method


# virtual methods
.method public declared-synchronized append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory",
            "<TModel;TData;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TModel;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p3, "factory":Lcom/bumptech/glide/load/model/ModelLoaderFactory;, "Lcom/bumptech/glide/load/model/ModelLoaderFactory<TModel;TData;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->multiModelLoaderFactory:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)V

    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->cache:Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry$ModelLoaderCache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDataClasses(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->multiModelLoaderFactory:Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;->getDataClasses(Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getModelLoaders(Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TA;*>;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "model":Ljava/lang/Object;, "TA;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->getClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/bumptech/glide/load/model/ModelLoaderRegistry;->getModelLoadersForClass(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 60
    .local v3, "modelLoaders":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoader<TA;*>;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 61
    .local v4, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .local v0, "filteredLoaders":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoader<TA;*>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 63
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/model/ModelLoader;

    .line 64
    .local v2, "loader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TA;*>;"
    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/model/ModelLoader;->handles(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v2    # "loader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TA;*>;"
    :cond_1
    monitor-exit p0

    return-object v0

    .line 59
    .end local v0    # "filteredLoaders":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoader<TA;*>;>;"
    .end local v1    # "i":I
    .end local v3    # "modelLoaders":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoader<TA;*>;>;"
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
