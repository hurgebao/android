.class final Lcom/bumptech/glide/load/engine/DecodeHelper;
.super Ljava/lang/Object;
.source "DecodeHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final cacheKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            ">;"
        }
    .end annotation
.end field

.field private diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

.field private diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private glideContext:Lcom/bumptech/glide/GlideContext;

.field private height:I

.field private isCacheKeysSet:Z

.field private isLoadDataSet:Z

.field private isScaleOnlyOrNoTransform:Z

.field private isTransformationRequired:Z

.field private final loadData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData",
            "<*>;>;"
        }
    .end annotation
.end field

.field private model:Ljava/lang/Object;

.field private options:Lcom/bumptech/glide/load/Options;

.field private priority:Lcom/bumptech/glide/Priority;

.field private resourceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private signature:Lcom/bumptech/glide/load/Key;

.field private transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TTranscode;>;"
        }
    .end annotation
.end field

.field private transformations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/Transformation",
            "<*>;>;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeHelper;, "Lcom/bumptech/glide/load/engine/DecodeHelper<TTranscode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->loadData:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeHelper;, "Lcom/bumptech/glide/load/engine/DecodeHelper<TTranscode;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 82
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    .line 83
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->signature:Lcom/bumptech/glide/load/Key;

    .line 84
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->resourceClass:Ljava/lang/Class;

    .line 85
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->transcodeClass:Ljava/lang/Class;

    .line 86
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->options:Lcom/bumptech/glide/load/Options;

    .line 87
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->priority:Lcom/bumptech/glide/Priority;

    .line 88
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->transformations:Ljava/util/Map;

    .line 89
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 91
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->loadData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->isLoadDataSet:Z

    .line 93
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->isCacheKeysSet:Z

    .line 95
    return-void
.end method

.method getCacheKeys()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeHelper;, "Lcom/bumptech/glide/load/engine/DecodeHelper<TTranscode;>;"
    iget-boolean v5, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->isCacheKeysSet:Z

    if-nez v5, :cond_3

    .line 202
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->isCacheKeysSet:Z

    .line 203
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 204
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getLoadData()Ljava/util/List;

    move-result-object v3

    .line 205
    .local v3, "loadData":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoader$LoadData<*>;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 206
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 207
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 208
    .local v0, "data":Lcom/bumptech/glide/load/model/ModelLoader$LoadData;, "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<*>;"
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    iget-object v6, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/bumptech/glide/load/Key;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 209
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    iget-object v6, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/bumptech/glide/load/Key;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v5, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->alternateKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 212
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    iget-object v6, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->alternateKeys:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 213
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    iget-object v6, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->alternateKeys:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v0    # "data":Lcom/bumptech/glide/load/model/ModelLoader$LoadData;, "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<*>;"
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "loadData":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoader$LoadData<*>;>;"
    .end local v4    # "size":I
    :cond_3
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->cacheKeys:Ljava/util/List;

    return-object v5
.end method

.method getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeHelper;, "Lcom/bumptech/glide/load/engine/DecodeHelper<TTranscode;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v0

    return-object v0
.end method

.method getDiskCacheStrategy()Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .locals 1

    .prologue
    .line 102
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeHelper;, "Lcom/bumptech/glide/load/engine/DecodeHelper<TTranscode;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    return-object v0
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 122
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeHelper;, "Lcom/bumptech/glide/load/engine/DecodeHelper<TTranscode;>;"
    iget v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->height:I

    return v0
.end method

.method getLoadData()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeHelper;, "Lcom/bumptech/glide/load/engine/DecodeHelper<TTranscode;>;"
    iget-boolean v5, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->isLoadDataSet:Z

    if-nez v5, :cond_1

    .line 184
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->isLoadDataSet:Z

    .line 185
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->loadData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 186
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v5}, Lcom/bumptech/glide/GlideContext;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v5

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/Registry;->getModelLoaders(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 187
    .local v3, "modelLoaders":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoader<Ljava/lang/Object;*>;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 188
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 189
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/model/ModelLoader;

    .line 190
    .local v2, "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Ljava/lang/Object;*>;"
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    iget v6, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->width:I

    iget v7, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->height:I

    iget-object v8, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->options:Lcom/bumptech/glide/load/Options;

    .line 191
    invoke-interface {v2, v5, v6, v7, v8}, Lcom/bumptech/glide/load/model/ModelLoader;->buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object v0

    .line 192
    .local v0, "current":Lcom/bumptech/glide/load/model/ModelLoader$LoadData;, "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<*>;"
    if-eqz v0, :cond_0

    .line 193
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->loadData:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "current":Lcom/bumptech/glide/load/model/ModelLoader$LoadData;, "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<*>;"
    .end local v1    # "i":I
    .end local v2    # "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<Ljava/lang/Object;*>;"
    .end local v3    # "modelLoaders":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoader<Ljava/lang/Object;*>;>;"
    .end local v4    # "size":I
    :cond_1
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->loadData:Ljava/util/List;

    return-object v5
.end method

.method getLoadPath(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/LoadPath;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;)",
            "Lcom/bumptech/glide/load/engine/LoadPath",
            "<TData;*TTranscode;>;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeHelper;, "Lcom/bumptech/glide/load/engine/DecodeHelper<TTranscode;>;"
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TData;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->resourceClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1, v2}, Lcom/bumptech/glide/Registry;->getLoadPath(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/LoadPath;

    move-result-object v0

    return-object v0
.end method

.method getModelLoaders(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeHelper;, "Lcom/bumptech/glide/load/engine/DecodeHelper<TTranscode;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->getModelLoaders(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getOptions()Lcom/bumptech/glide/load/Options;
    .locals 1

    .prologue
    .line 110
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeHelper;, "Lcom/bumptech/glide/load/engine/DecodeHelper<TTranscode;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->options:Lcom/bumptech/glide/load/Options;

    return-object v0
.end method

.method getPriority()Lcom/bumptech/glide/Priority;
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeHelper;, "Lcom/bumptech/glide/load/engine/DecodeHelper<TTranscode;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->priority:Lcom/bumptech/glide/Priority;

    return-object v0
.end method

.method getRegisteredResourceClasses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeHelper;, "Lcom/bumptech/glide/load/engine/DecodeHelper<TTranscode;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    .line 127
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->resourceClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/Registry;->getRegisteredResourceClasses(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 126
    return-object v0
.end method

.method getResultEncoder(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/ResourceEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;)",
            "Lcom/bumptech/glide/load/ResourceEncoder",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeHelper;, "Lcom/bumptech/glide/load/engine/DecodeHelper<TTranscode;>;"
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->getResultEncoder(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v0

    return-object v0
.end method

.method getSignature()Lcom/bumptech/glide/load/Key;
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeHelper;, "Lcom/bumptech/glide/load/engine/DecodeHelper<TTranscode;>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->signature:Lcom/bumptech/glide/load/Key;

    return-object v0
.end method

.method getSourceEncoder(Ljava/lang/Object;)Lcom/bumptech/glide/load/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/bumptech/glide/load/Encoder",
            "<TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeHelper;, "Lcom/bumptech/glide/load/engine/DecodeHelper<TTranscode;>;"
    .local p1, "data":Ljava/lang/Object;, "TX;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->getSourceEncoder(Ljava/lang/Object;)Lcom/bumptech/glide/load/Encoder;

    move-result-object v0

    return-object v0
.end method

.method getTransformation(Ljava/lang/Class;)Lcom/bumptech/glide/load/Transformation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;)",
            "Lcom/bumptech/glide/load/Transformation",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeHelper;, "Lcom/bumptech/glide/load/engine/DecodeHelper<TTranscode;>;"
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->transformations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/Transformation;

    .line 145
    .local v0, "result":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TZ;>;"
    if-nez v0, :cond_1

    .line 146
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->transformations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->isTransformationRequired:Z

    if-eqz v1, :cond_0

    .line 147
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing transformation for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". If you wish to ignore unknown resource types, use the optional transformation methods."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/load/resource/UnitTransformation;->get()Lcom/bumptech/glide/load/resource/UnitTransformation;

    move-result-object v0

    .line 154
    .end local v0    # "result":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TZ;>;"
    :cond_1
    return-object v0
.end method

.method getWidth()I
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeHelper;, "Lcom/bumptech/glide/load/engine/DecodeHelper<TTranscode;>;"
    iget v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->width:I

    return v0
.end method

.method hasLoadPath(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeHelper;, "Lcom/bumptech/glide/load/engine/DecodeHelper<TTranscode;>;"
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getLoadPath(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/LoadPath;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method init(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/Options;Ljava/util/Map;ZZLcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;)Lcom/bumptech/glide/load/engine/DecodeHelper;
    .locals 0
    .param p1, "glideContext"    # Lcom/bumptech/glide/GlideContext;
    .param p2, "model"    # Ljava/lang/Object;
    .param p3, "signature"    # Lcom/bumptech/glide/load/Key;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "diskCacheStrategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .param p9, "priority"    # Lcom/bumptech/glide/Priority;
    .param p10, "options"    # Lcom/bumptech/glide/load/Options;
    .param p12, "isTransformationRequired"    # Z
    .param p13, "isScaleOnlyOrNoTransform"    # Z
    .param p14, "diskCacheProvider"    # Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/Key;",
            "II",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/Options;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/Transformation",
            "<*>;>;ZZ",
            "Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;",
            ")",
            "Lcom/bumptech/glide/load/engine/DecodeHelper",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeHelper;, "Lcom/bumptech/glide/load/engine/DecodeHelper<TTranscode;>;"
    .local p7, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p8, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p11, "transformations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/bumptech/glide/load/Transformation<*>;>;"
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 59
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->model:Ljava/lang/Object;

    .line 60
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->signature:Lcom/bumptech/glide/load/Key;

    .line 61
    iput p4, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->width:I

    .line 62
    iput p5, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->height:I

    .line 63
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 64
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->resourceClass:Ljava/lang/Class;

    .line 65
    iput-object p14, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    .line 66
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->transcodeClass:Ljava/lang/Class;

    .line 67
    iput-object p9, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->priority:Lcom/bumptech/glide/Priority;

    .line 68
    iput-object p10, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->options:Lcom/bumptech/glide/load/Options;

    .line 69
    iput-object p11, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->transformations:Ljava/util/Map;

    .line 70
    iput-boolean p12, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->isTransformationRequired:Z

    .line 71
    iput-boolean p13, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->isScaleOnlyOrNoTransform:Z

    .line 73
    return-object p0
.end method

.method isResourceEncoderAvailable(Lcom/bumptech/glide/load/engine/Resource;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeHelper;, "Lcom/bumptech/glide/load/engine/DecodeHelper<TTranscode;>;"
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->isResourceEncoderAvailable(Lcom/bumptech/glide/load/engine/Resource;)Z

    move-result v0

    return v0
.end method

.method isScaleOnlyOrNoTransform()Z
    .locals 1

    .prologue
    .line 139
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeHelper;, "Lcom/bumptech/glide/load/engine/DecodeHelper<TTranscode;>;"
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeHelper;->isScaleOnlyOrNoTransform:Z

    return v0
.end method

.method isSourceKey(Lcom/bumptech/glide/load/Key;)Z
    .locals 5
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;

    .prologue
    .line 171
    .local p0, "this":Lcom/bumptech/glide/load/engine/DecodeHelper;, "Lcom/bumptech/glide/load/engine/DecodeHelper<TTranscode;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getLoadData()Ljava/util/List;

    move-result-object v2

    .line 172
    .local v2, "loadData":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoader$LoadData<*>;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 173
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 174
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 175
    .local v0, "current":Lcom/bumptech/glide/load/model/ModelLoader$LoadData;, "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<*>;"
    iget-object v4, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/bumptech/glide/load/Key;

    invoke-interface {v4, p1}, Lcom/bumptech/glide/load/Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    const/4 v4, 0x1

    .line 179
    .end local v0    # "current":Lcom/bumptech/glide/load/model/ModelLoader$LoadData;, "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<*>;"
    :goto_1
    return v4

    .line 173
    .restart local v0    # "current":Lcom/bumptech/glide/load/model/ModelLoader$LoadData;, "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<*>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "current":Lcom/bumptech/glide/load/model/ModelLoader$LoadData;, "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<*>;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
