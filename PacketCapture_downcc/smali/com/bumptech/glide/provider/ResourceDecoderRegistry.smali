.class public Lcom/bumptech/glide/provider/ResourceDecoderRegistry;
.super Ljava/lang/Object;
.source "ResourceDecoderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;
    }
.end annotation


# instance fields
.field private final bucketPriorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final decoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry",
            "<**>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->decoders:Ljava/util/Map;

    return-void
.end method

.method private declared-synchronized getOrAddEntryList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "bucket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->decoders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 86
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;>;"
    if-nez v0, :cond_1

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .restart local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;>;"
    iget-object v1, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->decoders:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_1
    monitor-exit p0

    return-object v0

    .line 81
    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized append(Ljava/lang/String;Lcom/bumptech/glide/load/ResourceDecoder;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .param p1, "bucket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TT;TR;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "decoder":Lcom/bumptech/glide/load/ResourceDecoder;, "Lcom/bumptech/glide/load/ResourceDecoder<TT;TR;>;"
    .local p3, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->getOrAddEntryList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;

    invoke-direct {v1, p3, p4, p2}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDecoders(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/ResourceDecoder",
            "<TT;TR;>;>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ResourceDecoder<TT;TR;>;>;"
    iget-object v4, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    .local v0, "bucket":Ljava/lang/String;
    iget-object v5, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->decoders:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 38
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;>;"
    if-eqz v1, :cond_0

    .line 41
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;

    .line 42
    .local v2, "entry":Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;, "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;"
    invoke-virtual {v2, p1, p2}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->handles(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 43
    iget-object v6, v2, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->decoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 35
    .end local v0    # "bucket":Ljava/lang/String;
    .end local v1    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;>;"
    .end local v2    # "entry":Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;, "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;"
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ResourceDecoder<TT;TR;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 49
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/load/ResourceDecoder<TT;TR;>;>;"
    :cond_2
    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized getResourceClasses(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<TR;>;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<TR;>;>;"
    iget-object v4, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    .local v0, "bucket":Ljava/lang/String;
    iget-object v5, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->decoders:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 58
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;>;"
    if-eqz v1, :cond_0

    .line 61
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;

    .line 62
    .local v2, "entry":Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;, "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;"
    invoke-virtual {v2, p1, p2}, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->handles(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 63
    iget-object v6, v2, Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;->resourceClass:Ljava/lang/Class;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 55
    .end local v0    # "bucket":Ljava/lang/String;
    .end local v1    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;>;"
    .end local v2    # "entry":Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry;, "Lcom/bumptech/glide/provider/ResourceDecoderRegistry$Entry<**>;"
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<TR;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 67
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<TR;>;>;"
    :cond_2
    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized setBucketPriorityList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "buckets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    .local v1, "previousBuckets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 22
    iget-object v2, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 24
    .local v0, "previousBucket":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 27
    iget-object v3, p0, Lcom/bumptech/glide/provider/ResourceDecoderRegistry;->bucketPriorityList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 20
    .end local v0    # "previousBucket":Ljava/lang/String;
    .end local v1    # "previousBuckets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 30
    .restart local v1    # "previousBuckets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    monitor-exit p0

    return-void
.end method
