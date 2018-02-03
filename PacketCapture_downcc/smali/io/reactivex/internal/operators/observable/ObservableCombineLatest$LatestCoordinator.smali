.class final Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableCombineLatest.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LatestCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field active:I

.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer",
            "<-TR;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field final combiner:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field complete:I

.field final delayError:Z

.field volatile done:Z

.field final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field latest:[Ljava/lang/Object;

.field final observers:[Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field final queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;IIZ)V
    .locals 3
    .param p3, "count"    # I
    .param p4, "bufferSize"    # I
    .param p5, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TR;>;",
            "Lio/reactivex/functions/Function",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;IIZ)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator<TT;TR;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    .local p2, "combiner":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-[Ljava/lang/Object;+TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 89
    new-instance v2, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {v2}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    .line 98
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->actual:Lio/reactivex/Observer;

    .line 99
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->combiner:Lio/reactivex/functions/Function;

    .line 100
    iput-boolean p5, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->delayError:Z

    .line 101
    new-array v2, p3, [Ljava/lang/Object;

    iput-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    .line 102
    new-array v0, p3, [Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;

    .line 103
    .local v0, "as":[Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;, "[Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver<TT;TR;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 104
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;

    invoke-direct {v2, p0, v1}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;I)V

    aput-object v2, v0, v1

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_0
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;

    .line 107
    new-instance v2, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-direct {v2, p4}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 108
    return-void
.end method


# virtual methods
.method cancelSources()V
    .locals 4

    .prologue
    .line 139
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator<TT;TR;>;"
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 140
    .local v0, "s":Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;, "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver<TT;TR;>;"
    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;->dispose()V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "s":Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;, "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver<TT;TR;>;"
    :cond_0
    return-void
.end method

.method clear(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator<TT;TR;>;"
    .local p1, "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<*>;"
    monitor-enter p0

    .line 146
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    .line 147
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 149
    return-void

    .line 147
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelled:Z

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelled:Z

    .line 126
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelSources()V

    .line 127
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->clear(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 131
    :cond_0
    return-void
.end method

.method drain()V
    .locals 11

    .prologue
    .line 152
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator<TT;TR;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->getAndIncrement()I

    move-result v9

    if-eqz v9, :cond_0

    .line 217
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 157
    .local v6, "q":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<[Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->actual:Lio/reactivex/Observer;

    .line 158
    .local v0, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    iget-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->delayError:Z

    .line 160
    .local v2, "delayError":Z
    const/4 v5, 0x1

    .line 164
    .local v5, "missed":I
    :cond_1
    :goto_1
    iget-boolean v9, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelled:Z

    if-eqz v9, :cond_2

    .line 165
    invoke-virtual {p0, v6}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->clear(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    goto :goto_0

    .line 169
    :cond_2
    if-nez v2, :cond_3

    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v9}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 170
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelSources()V

    .line 171
    invoke-virtual {p0, v6}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->clear(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 172
    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v9}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v9

    invoke-interface {v0, v9}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 176
    :cond_3
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->done:Z

    .line 177
    .local v1, "d":Z
    invoke-virtual {v6}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 178
    .local v7, "s":[Ljava/lang/Object;
    if-nez v7, :cond_4

    const/4 v3, 0x1

    .line 180
    .local v3, "empty":Z
    :goto_2
    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    .line 181
    invoke-virtual {p0, v6}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->clear(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 182
    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v9}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v4

    .line 183
    .local v4, "ex":Ljava/lang/Throwable;
    if-nez v4, :cond_5

    .line 184
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_0

    .line 178
    .end local v3    # "empty":Z
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 186
    .restart local v3    # "empty":Z
    .restart local v4    # "ex":Ljava/lang/Throwable;
    :cond_5
    invoke-interface {v0, v4}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 191
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_6
    if-eqz v3, :cond_7

    .line 212
    neg-int v9, v5

    invoke-virtual {p0, v9}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->addAndGet(I)I

    move-result v5

    .line 213
    if-nez v5, :cond_1

    goto :goto_0

    .line 198
    :cond_7
    :try_start_0
    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->combiner:Lio/reactivex/functions/Function;

    invoke-interface {v9, v7}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "The combiner returned a null value"

    invoke-static {v9, v10}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 209
    .local v8, "v":Ljava/lang/Object;, "TR;"
    invoke-interface {v0, v8}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 199
    .end local v8    # "v":Ljava/lang/Object;, "TR;"
    :catch_0
    move-exception v4

    .line 200
    .restart local v4    # "ex":Ljava/lang/Throwable;
    invoke-static {v4}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 201
    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v9, v4}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 202
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelSources()V

    .line 203
    invoke-virtual {p0, v6}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->clear(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 204
    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v9}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v4

    .line 205
    invoke-interface {v0, v4}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method innerComplete(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator<TT;TR;>;"
    const/4 v2, 0x1

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "cancelOthers":Z
    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    .line 271
    .local v1, "latest":[Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 272
    monitor-exit p0

    .line 284
    :goto_0
    return-void

    .line 275
    :cond_0
    aget-object v3, v1, p1

    if-nez v3, :cond_4

    move v0, v2

    .line 276
    :goto_1
    if-nez v0, :cond_1

    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->complete:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->complete:I

    array-length v3, v1

    if-ne v2, v3, :cond_2

    .line 277
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->done:Z

    .line 279
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    if-eqz v0, :cond_3

    .line 281
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelSources()V

    .line 283
    :cond_3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->drain()V

    goto :goto_0

    .line 275
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 279
    .end local v1    # "latest":[Ljava/lang/Object;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method innerError(ILjava/lang/Throwable;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator<TT;TR;>;"
    const/4 v2, 0x1

    .line 243
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v3, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 244
    const/4 v0, 0x1

    .line 245
    .local v0, "cancelOthers":Z
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->delayError:Z

    if-eqz v3, :cond_3

    .line 246
    monitor-enter p0

    .line 247
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    .line 248
    .local v1, "latest":[Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 249
    monitor-exit p0

    .line 265
    .end local v0    # "cancelOthers":Z
    .end local v1    # "latest":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 252
    .restart local v0    # "cancelOthers":Z
    .restart local v1    # "latest":[Ljava/lang/Object;
    :cond_0
    aget-object v3, v1, p1

    if-nez v3, :cond_5

    move v0, v2

    .line 253
    :goto_1
    if-nez v0, :cond_1

    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->complete:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->complete:I

    array-length v3, v1

    if-ne v2, v3, :cond_2

    .line 254
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->done:Z

    .line 256
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    .end local v1    # "latest":[Ljava/lang/Object;
    :cond_3
    if-eqz v0, :cond_4

    .line 259
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelSources()V

    .line 261
    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->drain()V

    goto :goto_0

    .line 252
    .restart local v1    # "latest":[Ljava/lang/Object;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 256
    .end local v1    # "latest":[Ljava/lang/Object;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 263
    .end local v0    # "cancelOthers":Z
    :cond_6
    invoke-static {p2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method innerNext(ILjava/lang/Object;)V
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator<TT;TR;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 221
    .local v3, "shouldDrain":Z
    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->latest:[Ljava/lang/Object;

    .line 223
    .local v1, "latest":[Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 224
    monitor-exit p0

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    aget-object v2, v1, p1

    .line 227
    .local v2, "o":Ljava/lang/Object;
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->active:I

    .line 228
    .local v0, "a":I
    if-nez v2, :cond_2

    .line 229
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->active:I

    .line 231
    :cond_2
    aput-object p2, v1, p1

    .line 232
    array-length v4, v1

    if-ne v0, v4, :cond_3

    .line 233
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    .line 234
    const/4 v3, 0x1

    .line 236
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    if-eqz v3, :cond_0

    .line 238
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->drain()V

    goto :goto_0

    .line 236
    .end local v0    # "a":I
    .end local v1    # "latest":[Ljava/lang/Object;
    .end local v2    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public subscribe([Lio/reactivex/ObservableSource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/ObservableSource",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator<TT;TR;>;"
    .local p1, "sources":[Lio/reactivex/ObservableSource;, "[Lio/reactivex/ObservableSource<+TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;

    .line 112
    .local v0, "as":[Lio/reactivex/Observer;, "[Lio/reactivex/Observer<TT;>;"
    array-length v2, v0

    .line 113
    .local v2, "len":I
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {v3, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 115
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->done:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->cancelled:Z

    if-eqz v3, :cond_1

    .line 120
    :cond_0
    return-void

    .line 118
    :cond_1
    aget-object v3, p1, v1

    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
