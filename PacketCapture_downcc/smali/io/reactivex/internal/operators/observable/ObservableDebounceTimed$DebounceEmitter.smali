.class final Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableDebounceTimed.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableDebounceTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DebounceEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/disposables/Disposable;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final idx:J

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final parent:Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver",
            "<TT;>;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;JLio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;)V
    .locals 2
    .param p2, "idx"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;, "Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p4, "parent":Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;, "Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 154
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 157
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;->value:Ljava/lang/Object;

    .line 158
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;->idx:J

    .line 159
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;->parent:Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;

    .line 160
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 171
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;, "Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter<TT;>;"
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 172
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 164
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;, "Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;->parent:Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;->idx:J

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v1, p0}, Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceTimedObserver;->emit(JLjava/lang/Object;Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;)V

    .line 167
    :cond_0
    return-void
.end method

.method public setResource(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .prologue
    .line 180
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter;, "Lio/reactivex/internal/operators/observable/ObservableDebounceTimed$DebounceEmitter<TT;>;"
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 181
    return-void
.end method
