.class Lcom/bumptech/glide/load/model/MultiModelLoader;
.super Ljava/lang/Object;
.source "MultiModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader",
        "<TModel;TData;>;"
    }
.end annotation


# instance fields
.field private final exceptionListPool:Landroid/support/v4/util/Pools$Pool;
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

.field private final modelLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModel;TData;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/support/v4/util/Pools$Pool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/model/ModelLoader",
            "<TModel;TData;>;>;",
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/bumptech/glide/load/model/MultiModelLoader;, "Lcom/bumptech/glide/load/model/MultiModelLoader<TModel;TData;>;"
    .local p1, "modelLoaders":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/model/ModelLoader<TModel;TData;>;>;"
    .local p2, "exceptionListPool":Landroid/support/v4/util/Pools$Pool;, "Landroid/support/v4/util/Pools$Pool<Ljava/util/List<Ljava/lang/Exception;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/bumptech/glide/load/model/MultiModelLoader;->modelLoaders:Ljava/util/List;

    .line 35
    iput-object p2, p0, Lcom/bumptech/glide/load/model/MultiModelLoader;->exceptionListPool:Landroid/support/v4/util/Pools$Pool;

    .line 36
    return-void
.end method


# virtual methods
.method public buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 9
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "options"    # Lcom/bumptech/glide/load/Options;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData",
            "<TData;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/bumptech/glide/load/model/MultiModelLoader;, "Lcom/bumptech/glide/load/model/MultiModelLoader<TModel;TData;>;"
    .local p1, "model":Ljava/lang/Object;, "TModel;"
    const/4 v5, 0x0

    .line 42
    .local v5, "sourceKey":Lcom/bumptech/glide/load/Key;
    iget-object v6, p0, Lcom/bumptech/glide/load/model/MultiModelLoader;->modelLoaders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 43
    .local v4, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .local v0, "fetchers":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/data/DataFetcher<TData;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 45
    iget-object v6, p0, Lcom/bumptech/glide/load/model/MultiModelLoader;->modelLoaders:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/model/ModelLoader;

    .line 46
    .local v3, "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TModel;TData;>;"
    invoke-interface {v3, p1}, Lcom/bumptech/glide/load/model/ModelLoader;->handles(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 47
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/bumptech/glide/load/model/ModelLoader;->buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object v2

    .line 48
    .local v2, "loadData":Lcom/bumptech/glide/load/model/ModelLoader$LoadData;, "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<TData;>;"
    if-eqz v2, :cond_0

    .line 49
    iget-object v5, v2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 50
    iget-object v6, v2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .end local v2    # "loadData":Lcom/bumptech/glide/load/model/ModelLoader$LoadData;, "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<TData;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v3    # "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TModel;TData;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance v7, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;

    iget-object v8, p0, Lcom/bumptech/glide/load/model/MultiModelLoader;->exceptionListPool:Landroid/support/v4/util/Pools$Pool;

    invoke-direct {v7, v0, v8}, Lcom/bumptech/glide/load/model/MultiModelLoader$MultiFetcher;-><init>(Ljava/util/List;Landroid/support/v4/util/Pools$Pool;)V

    invoke-direct {v6, v5, v7}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    :goto_1
    return-object v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public handles(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/bumptech/glide/load/model/MultiModelLoader;, "Lcom/bumptech/glide/load/model/MultiModelLoader<TModel;TData;>;"
    .local p1, "model":Ljava/lang/Object;, "TModel;"
    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoader;->modelLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoader;

    .line 61
    .local v0, "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TModel;TData;>;"
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/model/ModelLoader;->handles(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const/4 v1, 0x1

    .line 65
    .end local v0    # "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TModel;TData;>;"
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    .local p0, "this":Lcom/bumptech/glide/load/model/MultiModelLoader;, "Lcom/bumptech/glide/load/model/MultiModelLoader<TModel;TData;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiModelLoader{modelLoaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/model/MultiModelLoader;->modelLoaders:Ljava/util/List;

    iget-object v2, p0, Lcom/bumptech/glide/load/model/MultiModelLoader;->modelLoaders:Ljava/util/List;

    .line 71
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/bumptech/glide/load/model/ModelLoader;

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

    .line 70
    return-object v0
.end method
