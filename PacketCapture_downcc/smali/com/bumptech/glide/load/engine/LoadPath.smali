.class public Lcom/bumptech/glide/load/engine/LoadPath;
.super Ljava/lang/Object;
.source "LoadPath.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TData;>;"
        }
    .end annotation
.end field

.field private final decodePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/bumptech/glide/load/engine/DecodePath",
            "<TData;TResourceType;TTranscode;>;>;"
        }
    .end annotation
.end field

.field private final failureMessage:Ljava/lang/String;

.field private final listPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroid/support/v4/util/Pools$Pool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TResourceType;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/engine/DecodePath",
            "<TData;TResourceType;TTranscode;>;>;",
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/bumptech/glide/load/engine/LoadPath;, "Lcom/bumptech/glide/load/engine/LoadPath<TData;TResourceType;TTranscode;>;"
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TResourceType;>;"
    .local p3, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TTranscode;>;"
    .local p4, "decodePaths":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/engine/DecodePath<TData;TResourceType;TTranscode;>;>;"
    .local p5, "listPool":Landroid/support/v4/util/Pools$Pool;, "Landroid/support/v4/util/Pools$Pool<Ljava/util/List<Ljava/lang/Exception;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/LoadPath;->dataClass:Ljava/lang/Class;

    .line 32
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/LoadPath;->listPool:Landroid/support/v4/util/Pools$Pool;

    .line 33
    invoke-static {p4}, Lcom/bumptech/glide/util/Preconditions;->checkNotEmpty(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/LoadPath;->decodePaths:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed LoadPath{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 35
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/LoadPath;->failureMessage:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private loadWithExceptionList(Lcom/bumptech/glide/load/data/DataRewinder;Lcom/bumptech/glide/load/Options;IILcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;Ljava/util/List;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 11
    .param p2, "options"    # Lcom/bumptech/glide/load/Options;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/DataRewinder",
            "<TData;>;",
            "Lcom/bumptech/glide/load/Options;",
            "II",
            "Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback",
            "<TResourceType;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TTranscode;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/bumptech/glide/load/engine/LoadPath;, "Lcom/bumptech/glide/load/engine/LoadPath<TData;TResourceType;TTranscode;>;"
    .local p1, "rewinder":Lcom/bumptech/glide/load/data/DataRewinder;, "Lcom/bumptech/glide/load/data/DataRewinder<TData;>;"
    .local p5, "decodeCallback":Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;, "Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback<TResourceType;>;"
    .local p6, "exceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/LoadPath;->decodePaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    .line 52
    .local v10, "size":I
    const/4 v9, 0x0

    .line 53
    .local v9, "result":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TTranscode;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_0

    .line 54
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/LoadPath;->decodePaths:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/DecodePath;

    .local v1, "path":Lcom/bumptech/glide/load/engine/DecodePath;, "Lcom/bumptech/glide/load/engine/DecodePath<TData;TResourceType;TTranscode;>;"
    move-object v2, p1

    move v3, p3

    move v4, p4

    move-object v5, p2

    move-object/from16 v6, p5

    .line 56
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/DecodePath;->decode(Lcom/bumptech/glide/load/data/DataRewinder;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/GlideException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 60
    :goto_1
    if-eqz v9, :cond_1

    .line 65
    .end local v1    # "path":Lcom/bumptech/glide/load/engine/DecodePath;, "Lcom/bumptech/glide/load/engine/DecodePath<TData;TResourceType;TTranscode;>;"
    :cond_0
    if-nez v9, :cond_2

    .line 66
    new-instance v2, Lcom/bumptech/glide/load/engine/GlideException;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/LoadPath;->failureMessage:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, p6

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw v2

    .line 57
    .restart local v1    # "path":Lcom/bumptech/glide/load/engine/DecodePath;, "Lcom/bumptech/glide/load/engine/DecodePath<TData;TResourceType;TTranscode;>;"
    :catch_0
    move-exception v7

    .line 58
    .local v7, "e":Lcom/bumptech/glide/load/engine/GlideException;
    move-object/from16 v0, p6

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 53
    .end local v7    # "e":Lcom/bumptech/glide/load/engine/GlideException;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "path":Lcom/bumptech/glide/load/engine/DecodePath;, "Lcom/bumptech/glide/load/engine/DecodePath<TData;TResourceType;TTranscode;>;"
    :cond_2
    return-object v9
.end method


# virtual methods
.method public load(Lcom/bumptech/glide/load/data/DataRewinder;Lcom/bumptech/glide/load/Options;IILcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 7
    .param p2, "options"    # Lcom/bumptech/glide/load/Options;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/DataRewinder",
            "<TData;>;",
            "Lcom/bumptech/glide/load/Options;",
            "II",
            "Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback",
            "<TResourceType;>;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TTranscode;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/bumptech/glide/load/engine/LoadPath;, "Lcom/bumptech/glide/load/engine/LoadPath<TData;TResourceType;TTranscode;>;"
    .local p1, "rewinder":Lcom/bumptech/glide/load/data/DataRewinder;, "Lcom/bumptech/glide/load/data/DataRewinder<TData;>;"
    .local p5, "decodeCallback":Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;, "Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback<TResourceType;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/LoadPath;->listPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .local v6, "exceptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 42
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/engine/LoadPath;->loadWithExceptionList(Lcom/bumptech/glide/load/data/DataRewinder;Lcom/bumptech/glide/load/Options;IILcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;Ljava/util/List;)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/LoadPath;->listPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1, v6}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 42
    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/LoadPath;->listPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1, v6}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    .local p0, "this":Lcom/bumptech/glide/load/engine/LoadPath;, "Lcom/bumptech/glide/load/engine/LoadPath<TData;TResourceType;TTranscode;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadPath{decodePaths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/LoadPath;->decodePaths:Ljava/util/List;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/LoadPath;->decodePaths:Ljava/util/List;

    .line 79
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/bumptech/glide/load/engine/DecodePath;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    return-object v0
.end method
