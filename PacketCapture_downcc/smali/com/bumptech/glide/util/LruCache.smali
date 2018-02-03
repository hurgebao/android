.class public Lcom/bumptech/glide/util/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TT;TY;>;"
        }
    .end annotation
.end field

.field private currentSize:I

.field private final initialMaxSize:I

.field private maxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 27
    .local p0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x64

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/LinkedHashMap;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    .line 28
    iput p1, p0, Lcom/bumptech/glide/util/LruCache;->initialMaxSize:I

    .line 29
    iput p1, p0, Lcom/bumptech/glide/util/LruCache;->maxSize:I

    .line 30
    return-void
.end method

.method private evict()V
    .locals 1

    .prologue
    .line 180
    .local p0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    iget v0, p0, Lcom/bumptech/glide/util/LruCache;->maxSize:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/util/LruCache;->trimToSize(I)V

    .line 181
    return-void
.end method


# virtual methods
.method public clearMemory()V
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/util/LruCache;->trimToSize(I)V

    .line 159
    return-void
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TY;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
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

.method public declared-synchronized getCurrentSize()I
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getSize(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TY;)I"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    .local p1, "item":Ljava/lang/Object;, "TY;"
    const/4 v0, 0x1

    return v0
.end method

.method protected onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TY;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "item":Ljava/lang/Object;, "TY;"
    return-void
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TY;)TY;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "item":Ljava/lang/Object;, "TY;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    move-result v0

    .line 122
    .local v0, "itemSize":I
    iget v2, p0, Lcom/bumptech/glide/util/LruCache;->maxSize:I

    if-lt v0, v2, :cond_0

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/util/LruCache;->onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    const/4 v1, 0x0

    .line 137
    :goto_0
    monitor-exit p0

    return-object v1

    .line 127
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 128
    .local v1, "result":Ljava/lang/Object;, "TY;"
    if-eqz p2, :cond_1

    .line 129
    iget v2, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    .line 131
    :cond_1
    if-eqz v1, :cond_2

    .line 133
    iget v2, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    .line 135
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/util/LruCache;->evict()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    .end local v0    # "itemSize":I
    .end local v1    # "result":Ljava/lang/Object;, "TY;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TY;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 148
    .local v0, "value":Ljava/lang/Object;, "TY;"
    if-eqz v0, :cond_0

    .line 149
    iget v1, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_0
    monitor-exit p0

    return-object v0

    .line 147
    .end local v0    # "value":Ljava/lang/Object;, "TY;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized trimToSize(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    .line 169
    .local p0, "this":Lcom/bumptech/glide/util/LruCache;, "Lcom/bumptech/glide/util/LruCache<TT;TY;>;"
    monitor-enter p0

    :goto_0
    :try_start_0
    iget v3, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    if-le v3, p1, :cond_0

    .line 170
    iget-object v3, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 171
    .local v1, "last":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;TY;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 172
    .local v2, "toRemove":Ljava/lang/Object;, "TY;"
    iget v3, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    invoke-virtual {p0, v2}, Lcom/bumptech/glide/util/LruCache;->getSize(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/bumptech/glide/util/LruCache;->currentSize:I

    .line 173
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 174
    .local v0, "key":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/bumptech/glide/util/LruCache;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {p0, v0, v2}, Lcom/bumptech/glide/util/LruCache;->onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 169
    .end local v0    # "key":Ljava/lang/Object;, "TT;"
    .end local v1    # "last":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;TY;>;"
    .end local v2    # "toRemove":Ljava/lang/Object;, "TY;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 177
    :cond_0
    monitor-exit p0

    return-void
.end method
