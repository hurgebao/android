.class public final Lio/reactivex/internal/schedulers/ScheduledRunnable;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "ScheduledRunnable.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReferenceArray",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/disposables/Disposable;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final DISPOSED:Ljava/lang/Object;

.field static final DONE:Ljava/lang/Object;


# instance fields
.field final actual:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DISPOSED:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lio/reactivex/internal/disposables/DisposableContainer;)V
    .locals 1
    .param p1, "actual"    # Ljava/lang/Runnable;
    .param p2, "parent"    # Lio/reactivex/internal/disposables/DisposableContainer;

    .prologue
    .line 44
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 45
    iput-object p1, p0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->actual:Ljava/lang/Runnable;

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->lazySet(ILjava/lang/Object;)V

    .line 47
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->run()V

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public dispose()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 101
    :cond_0
    invoke-virtual {p0, v2}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "o":Ljava/lang/Object;
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DISPOSED:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    .line 114
    :cond_1
    :goto_0
    invoke-virtual {p0, v3}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 115
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DISPOSED:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_5

    .line 120
    .end local v0    # "o":Ljava/lang/Object;
    :cond_2
    :goto_1
    return-void

    .line 105
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_3
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DISPOSED:Ljava/lang/Object;

    invoke-virtual {p0, v2, v0, v1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 107
    check-cast v1, Ljava/util/concurrent/Future;

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    if-eq v4, v5, :cond_4

    :goto_2
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2

    .line 118
    :cond_5
    sget-object v1, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DISPOSED:Ljava/lang/Object;

    invoke-virtual {p0, v3, v0, v1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    check-cast v0, Lio/reactivex/internal/disposables/DisposableContainer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-interface {v0, p0}, Lio/reactivex/internal/disposables/DisposableContainer;->delete(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_1
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {p0, v6, v2}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->lazySet(ILjava/lang/Object;)V

    .line 61
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/schedulers/ScheduledRunnable;->actual:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :goto_0
    invoke-virtual {p0, v6, v7}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->lazySet(ILjava/lang/Object;)V

    .line 68
    invoke-virtual {p0, v4}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 69
    .local v1, "o":Ljava/lang/Object;
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DISPOSED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_0

    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    invoke-virtual {p0, v4, v1, v2}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 70
    check-cast v2, Lio/reactivex/internal/disposables/DisposableContainer;

    invoke-interface {v2, p0}, Lio/reactivex/internal/disposables/DisposableContainer;->delete(Lio/reactivex/disposables/Disposable;)Z

    .line 74
    :cond_0
    invoke-virtual {p0, v5}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 75
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DISPOSED:Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    invoke-virtual {p0, v5, v1, v2}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    :cond_1
    return-void

    .line 62
    .end local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    move-object v3, v2

    invoke-virtual {p0, v6, v7}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->lazySet(ILjava/lang/Object;)V

    .line 68
    invoke-virtual {p0, v4}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 69
    .restart local v1    # "o":Ljava/lang/Object;
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DISPOSED:Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_2

    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    invoke-virtual {p0, v4, v1, v2}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 70
    check-cast v2, Lio/reactivex/internal/disposables/DisposableContainer;

    invoke-interface {v2, p0}, Lio/reactivex/internal/disposables/DisposableContainer;->delete(Lio/reactivex/disposables/Disposable;)Z

    .line 74
    :cond_2
    invoke-virtual {p0, v5}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 75
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DISPOSED:Ljava/lang/Object;

    if-eq v1, v2, :cond_3

    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    invoke-virtual {p0, v5, v1, v2}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    :cond_3
    throw v3
.end method

.method public setFuture(Ljava/util/concurrent/Future;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    const/4 v1, 0x1

    .line 84
    :cond_0
    invoke-virtual {p0, v1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, "o":Ljava/lang/Object;
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DONE:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_1
    sget-object v2, Lio/reactivex/internal/schedulers/ScheduledRunnable;->DISPOSED:Ljava/lang/Object;

    if-ne v0, v2, :cond_3

    .line 89
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :goto_1
    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {p0, v1, v0, p1}, Lio/reactivex/internal/schedulers/ScheduledRunnable;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method
