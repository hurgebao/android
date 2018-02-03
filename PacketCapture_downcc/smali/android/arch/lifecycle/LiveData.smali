.class public abstract Landroid/arch/lifecycle/LiveData;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ALWAYS_ON:Landroid/arch/lifecycle/LifecycleOwner;

.field private static final NOT_SET:Ljava/lang/Object;


# instance fields
.field private mActiveCount:I

.field private volatile mData:Ljava/lang/Object;

.field private final mDataLock:Ljava/lang/Object;

.field private mDispatchInvalidated:Z

.field private mDispatchingValue:Z

.field private mObservers:Landroid/arch/core/internal/SafeIterableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/internal/SafeIterableMap",
            "<",
            "Landroid/arch/lifecycle/Observer",
            "<TT;>;",
            "Landroid/arch/lifecycle/LiveData",
            "<TT;>.",
            "LifecycleBoundObserver;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mPendingData:Ljava/lang/Object;

.field private final mPostValueRunnable:Ljava/lang/Runnable;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    .line 67
    new-instance v0, Landroid/arch/lifecycle/LiveData$1;

    invoke-direct {v0}, Landroid/arch/lifecycle/LiveData$1;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/LiveData;->ALWAYS_ON:Landroid/arch/lifecycle/LifecycleOwner;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Landroid/arch/core/internal/SafeIterableMap;

    invoke-direct {v0}, Landroid/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/core/internal/SafeIterableMap;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Landroid/arch/lifecycle/LiveData;->mActiveCount:I

    .line 90
    sget-object v0, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 93
    sget-object v0, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    .line 99
    new-instance v0, Landroid/arch/lifecycle/LiveData$2;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/LiveData$2;-><init>(Landroid/arch/lifecycle/LiveData;)V

    iput-object v0, p0, Landroid/arch/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    .line 358
    return-void
.end method

.method static synthetic access$000(Landroid/arch/lifecycle/LiveData;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/arch/lifecycle/LiveData;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/arch/lifecycle/LiveData;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/arch/lifecycle/LiveData;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/arch/lifecycle/LiveData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Landroid/arch/lifecycle/LiveData;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 62
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/arch/lifecycle/LiveData;)I
    .locals 1
    .param p0, "x0"    # Landroid/arch/lifecycle/LiveData;

    .prologue
    .line 62
    iget v0, p0, Landroid/arch/lifecycle/LiveData;->mActiveCount:I

    return v0
.end method

.method static synthetic access$302(Landroid/arch/lifecycle/LiveData;I)I
    .locals 0
    .param p0, "x0"    # Landroid/arch/lifecycle/LiveData;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Landroid/arch/lifecycle/LiveData;->mActiveCount:I

    return p1
.end method

.method static synthetic access$400(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;)V
    .locals 0
    .param p0, "x0"    # Landroid/arch/lifecycle/LiveData;
    .param p1, "x1"    # Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LiveData;->dispatchingValue(Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;)V

    return-void
.end method

.method private assertMainThread(Ljava/lang/String;)V
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 406
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    invoke-static {}, Landroid/arch/core/executor/AppToolkitTaskExecutor;->getInstance()Landroid/arch/core/executor/AppToolkitTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/core/executor/AppToolkitTaskExecutor;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on a background"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    return-void
.end method

.method private considerNotify(Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LiveData",
            "<TT;>.",
            "LifecycleBoundObserver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    .local p1, "observer":Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;, "Landroid/arch/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    iget-boolean v0, p1, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->active:Z

    if-nez v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p1, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->owner:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/Lifecycle;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->isActiveState(Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget v0, p1, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->lastVersion:I

    iget v1, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    if-ge v0, v1, :cond_0

    .line 127
    iget v0, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    iput v0, p1, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->lastVersion:I

    .line 129
    iget-object v0, p1, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->observer:Landroid/arch/lifecycle/Observer;

    iget-object v1, p0, Landroid/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/arch/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private dispatchingValue(Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LiveData",
            "<TT;>.",
            "LifecycleBoundObserver;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    .local p1, "initiator":Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;, "Landroid/arch/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    iget-boolean v1, p0, Landroid/arch/lifecycle/LiveData;->mDispatchingValue:Z

    if-eqz v1, :cond_0

    .line 134
    iput-boolean v3, p0, Landroid/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    .line 154
    :goto_0
    return-void

    .line 137
    :cond_0
    iput-boolean v3, p0, Landroid/arch/lifecycle/LiveData;->mDispatchingValue:Z

    .line 139
    :cond_1
    iput-boolean v2, p0, Landroid/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    .line 140
    if-eqz p1, :cond_3

    .line 141
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LiveData;->considerNotify(Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;)V

    .line 142
    const/4 p1, 0x0

    .line 152
    :cond_2
    :goto_1
    iget-boolean v1, p0, Landroid/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-nez v1, :cond_1

    .line 153
    iput-boolean v2, p0, Landroid/arch/lifecycle/LiveData;->mDispatchingValue:Z

    goto :goto_0

    .line 144
    :cond_3
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/core/internal/SafeIterableMap;

    .line 145
    invoke-virtual {v1}, Landroid/arch/core/internal/SafeIterableMap;->iteratorWithAdditions()Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/arch/lifecycle/Observer<TT;>;Landroid/arch/lifecycle/LiveData<TT;>.LifecycleBoundObserver;>;>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {p0, v1}, Landroid/arch/lifecycle/LiveData;->considerNotify(Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;)V

    .line 147
    iget-boolean v1, p0, Landroid/arch/lifecycle/LiveData;->mDispatchInvalidated:Z

    if-eqz v1, :cond_4

    goto :goto_1
.end method

.method static isActiveState(Landroid/arch/lifecycle/Lifecycle$State;)Z
    .locals 1
    .param p0, "state"    # Landroid/arch/lifecycle/Lifecycle$State;

    .prologue
    .line 402
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->STARTED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/Lifecycle$State;->isAtLeast(Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V
    .locals 4
    .param p1, "owner"    # Landroid/arch/lifecycle/LifecycleOwner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LifecycleOwner;",
            "Landroid/arch/lifecycle/Observer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    .local p2, "observer":Landroid/arch/lifecycle/Observer;, "Landroid/arch/lifecycle/Observer<TT;>;"
    invoke-interface {p1}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/arch/lifecycle/Lifecycle;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v2

    sget-object v3, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v2, v3, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    new-instance v1, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v1, p0, p1, p2}, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 191
    .local v1, "wrapper":Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;, "Landroid/arch/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    iget-object v2, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v2, p2, v1}, Landroid/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;

    .line 192
    .local v0, "existing":Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;, "Landroid/arch/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->owner:Landroid/arch/lifecycle/LifecycleOwner;

    iget-object v3, v1, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->owner:Landroid/arch/lifecycle/LifecycleOwner;

    if-eq v2, v3, :cond_2

    .line 193
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot add the same observer with different lifecycles"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_2
    if-nez v0, :cond_0

    .line 199
    invoke-interface {p1}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/arch/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 200
    invoke-interface {p1}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/arch/lifecycle/Lifecycle;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v2

    invoke-static {v2}, Landroid/arch/lifecycle/LiveData;->isActiveState(Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->activeStateChanged(Z)V

    goto :goto_0
.end method

.method protected onActive()V
    .locals 0

    .prologue
    .line 325
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    return-void
.end method

.method protected onInactive()V
    .locals 0

    .prologue
    .line 338
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    return-void
.end method

.method protected postValue(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Landroid/arch/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 271
    :try_start_0
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    sget-object v3, Landroid/arch/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    .line 272
    .local v0, "postTask":Z
    :goto_0
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 273
    monitor-exit v2

    .line 274
    if-nez v0, :cond_1

    .line 278
    :goto_1
    return-void

    .line 271
    .end local v0    # "postTask":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 277
    .restart local v0    # "postTask":Z
    :cond_1
    invoke-static {}, Landroid/arch/core/executor/AppToolkitTaskExecutor;->getInstance()Landroid/arch/core/executor/AppToolkitTaskExecutor;

    move-result-object v1

    iget-object v2, p0, Landroid/arch/lifecycle/LiveData;->mPostValueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/arch/core/executor/AppToolkitTaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public removeObserver(Landroid/arch/lifecycle/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/Observer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    .local p1, "observer":Landroid/arch/lifecycle/Observer;, "Landroid/arch/lifecycle/Observer<TT;>;"
    const-string v1, "removeObserver"

    invoke-direct {p0, v1}, Landroid/arch/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData;->mObservers:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1, p1}, Landroid/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;

    .line 231
    .local v0, "removed":Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;, "Landroid/arch/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v1, v0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->owner:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-interface {v1}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/arch/lifecycle/Lifecycle;->removeObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 235
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->activeStateChanged(Z)V

    goto :goto_0
.end method

.method protected setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Landroid/arch/lifecycle/LiveData;, "Landroid/arch/lifecycle/LiveData<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const-string v0, "setValue"

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/LiveData;->assertMainThread(Ljava/lang/String;)V

    .line 291
    iget v0, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/arch/lifecycle/LiveData;->mVersion:I

    .line 292
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData;->mData:Ljava/lang/Object;

    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/LiveData;->dispatchingValue(Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;)V

    .line 294
    return-void
.end method
