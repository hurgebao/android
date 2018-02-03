.class final Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableCombineLatest.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CombinerObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final index:I

.field final parent:Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator",
            "<TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;I)V
    .locals 0
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator",
            "<TT;TR;>;I)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;, "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver<TT;TR;>;"
    .local p1, "parent":Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator<TT;TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 296
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;

    .line 297
    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;->index:I

    .line 298
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 321
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;, "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver<TT;TR;>;"
    invoke-static {p0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 322
    return-void
.end method

.method public onComplete()V
    .locals 2

    .prologue
    .line 317
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;, "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;->index:I

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->innerComplete(I)V

    .line 318
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 312
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;, "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;->index:I

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->innerError(ILjava/lang/Throwable;)V

    .line 313
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;, "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;->parent:Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;->index:I

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/operators/observable/ObservableCombineLatest$LatestCoordinator;->innerNext(ILjava/lang/Object;)V

    .line 308
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .prologue
    .line 302
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver;, "Lio/reactivex/internal/operators/observable/ObservableCombineLatest$CombinerObserver<TT;TR;>;"
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    .line 303
    return-void
.end method
