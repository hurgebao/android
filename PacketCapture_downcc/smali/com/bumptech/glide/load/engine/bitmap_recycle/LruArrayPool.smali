.class public final Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;
.super Ljava/lang/Object;
.source "LruArrayPool.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;,
        Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;
    }
.end annotation


# instance fields
.field private final adapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface",
            "<*>;>;"
        }
    .end annotation
.end field

.field private currentSize:I

.field private final groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap",
            "<",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;

.field private final maxSize:I

.field private final sortedSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->sortedSizes:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->adapters:Ljava/util/Map;

    .line 38
    const/high16 v0, 0x400000

    iput v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->maxSize:I

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->sortedSizes:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->adapters:Ljava/util/Map;

    .line 47
    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->maxSize:I

    .line 48
    return-void
.end method

.method private decrementArrayOfSize(ILjava/lang/Class;)V
    .locals 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p2, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getSizesForAdapter(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v1

    .line 149
    .local v1, "sizes":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 150
    .local v0, "current":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 151
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to decrement empty size, size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", this: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private evict()V
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->maxSize:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->evictToSize(I)V

    .line 132
    return-void
.end method

.method private evictToSize(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    .line 135
    :cond_0
    :goto_0
    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->currentSize:I

    if-le v2, p1, :cond_1

    .line 136
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->removeLast()Ljava/lang/Object;

    move-result-object v1

    .line 137
    .local v1, "evicted":Ljava/lang/Object;
    invoke-static {v1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getAdapterFromObject(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;

    move-result-object v0

    .line 139
    .local v0, "arrayAdapter":Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface<Ljava/lang/Object;>;"
    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->currentSize:I

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getArrayLength(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getElementSizeInBytes()I

    move-result v4

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->currentSize:I

    .line 140
    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getArrayLength(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->decrementArrayOfSize(ILjava/lang/Class;)V

    .line 141
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evicted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getArrayLength(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    .end local v0    # "arrayAdapter":Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface<Ljava/lang/Object;>;"
    .end local v1    # "evicted":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private getAdapterFromObject(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getAdapterFromType(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;

    move-result-object v0

    return-object v0
.end method

.method private getAdapterFromType(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "arrayPoolClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->adapters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;

    .line 178
    .local v0, "adapter":Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface<*>;"
    if-nez v0, :cond_0

    .line 179
    const-class v1, [I

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/IntegerArrayAdapter;

    .end local v0    # "adapter":Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface<*>;"
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/IntegerArrayAdapter;-><init>()V

    .line 187
    .restart local v0    # "adapter":Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface<*>;"
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->adapters:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_0
    return-object v0

    .line 181
    :cond_1
    const-class v1, [B

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/ByteArrayAdapter;

    .end local v0    # "adapter":Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface<*>;"
    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ByteArrayAdapter;-><init>()V

    .restart local v0    # "adapter":Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface<*>;"
    goto :goto_0

    .line 184
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No array pool found for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 185
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getArrayForKey(Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->get(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getSizesForAdapter(Ljava/lang/Class;)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->sortedSizes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    .line 163
    .local v0, "sizes":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/util/TreeMap;

    .end local v0    # "sizes":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 165
    .restart local v0    # "sizes":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->sortedSizes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_0
    return-object v0
.end method

.method private isNoMoreThanHalfFull()Z
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->currentSize:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->maxSize:I

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->currentSize:I

    div-int/2addr v0, v1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSmallEnoughForReuse(I)Z
    .locals 1
    .param p1, "byteSize"    # I

    .prologue
    .line 104
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->maxSize:I

    div-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mayFillRequest(ILjava/lang/Integer;)Z
    .locals 2
    .param p1, "requestedSize"    # I
    .param p2, "actualSize"    # Ljava/lang/Integer;

    .prologue
    .line 108
    if-eqz p2, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->isNoMoreThanHalfFull()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v1, p1, 0x8

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized clearMemory()V
    .locals 1

    .prologue
    .line 118
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->evictToSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getAdapterFromType(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;

    move-result-object v0

    .line 72
    .local v0, "arrayAdapter":Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface<TT;>;"
    monitor-enter p0

    .line 73
    :try_start_0
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getSizesForAdapter(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 75
    .local v2, "possibleSize":Ljava/lang/Integer;
    invoke-direct {p0, p1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->mayFillRequest(ILjava/lang/Integer;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 76
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;->get(ILjava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;

    move-result-object v1

    .line 81
    .local v1, "key":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;
    :goto_0
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getArrayForKey(Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;)Ljava/lang/Object;

    move-result-object v3

    .line 82
    .local v3, "result":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_0

    .line 83
    iget v4, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->currentSize:I

    invoke-interface {v0, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getArrayLength(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getElementSizeInBytes()I

    move-result v6

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->currentSize:I

    .line 84
    invoke-interface {v0, v3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getArrayLength(Ljava/lang/Object;)I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->decrementArrayOfSize(ILjava/lang/Class;)V

    .line 86
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    if-nez v3, :cond_2

    .line 89
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Allocated "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->newArray(I)Ljava/lang/Object;

    move-result-object v3

    .line 94
    :cond_2
    return-object v3

    .line 78
    .end local v1    # "key":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;
    .end local v3    # "result":Ljava/lang/Object;, "TT;"
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;

    invoke-virtual {v4, p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;->get(ILjava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;

    move-result-object v1

    .restart local v1    # "key":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;
    goto :goto_0

    .line 86
    .end local v1    # "key":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;
    .end local v2    # "possibleSize":Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "array":Ljava/lang/Object;, "TT;"
    .local p2, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getAdapterFromType(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;

    move-result-object v0

    .line 53
    .local v0, "arrayAdapter":Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface<TT;>;"
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getArrayLength(Ljava/lang/Object;)I

    move-result v4

    .line 54
    .local v4, "size":I
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;->getElementSizeInBytes()I

    move-result v6

    mul-int v1, v4, v6

    .line 55
    .local v1, "arrayBytes":I
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->isSmallEnoughForReuse(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 66
    :goto_0
    monitor-exit p0

    return-void

    .line 58
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->keyPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;

    invoke-virtual {v6, v4, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$KeyPool;->get(ILjava/lang/Class;)Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;

    move-result-object v3

    .line 60
    .local v3, "key":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->groupedMap:Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;

    invoke-virtual {v6, v3, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/GroupedLinkedMap;->put(Lcom/bumptech/glide/load/engine/bitmap_recycle/Poolable;Ljava/lang/Object;)V

    .line 61
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->getSizesForAdapter(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v5

    .line 62
    .local v5, "sizes":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v6, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;->size:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 63
    .local v2, "current":Ljava/lang/Integer;
    iget v6, v3, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;->size:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-nez v2, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget v6, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->currentSize:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->currentSize:I

    .line 65
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->evict()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    .end local v0    # "arrayAdapter":Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface<TT;>;"
    .end local v1    # "arrayBytes":I
    .end local v2    # "current":Ljava/lang/Integer;
    .end local v3    # "key":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;
    .end local v4    # "size":I
    .end local v5    # "sizes":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 63
    .restart local v0    # "arrayAdapter":Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface;, "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayAdapterInterface<TT;>;"
    .restart local v1    # "arrayBytes":I
    .restart local v2    # "current":Ljava/lang/Integer;
    .restart local v3    # "key":Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool$Key;
    .restart local v4    # "size":I
    .restart local v5    # "sizes":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public declared-synchronized trimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 123
    monitor-enter p0

    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->clearMemory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :cond_1
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 126
    :try_start_1
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->maxSize:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;->evictToSize(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
