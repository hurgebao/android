.class public Lio/reactivex/internal/observers/DeferredScalarDisposable;
.super Lio/reactivex/internal/observers/BasicIntQueueDisposable;
.source "DeferredScalarDisposable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicIntQueueDisposable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field

.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lio/reactivex/internal/observers/DeferredScalarDisposable;, "Lio/reactivex/internal/observers/DeferredScalarDisposable<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;-><init>()V

    .line 53
    iput-object p1, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->actual:Lio/reactivex/Observer;

    .line 54
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lio/reactivex/internal/observers/DeferredScalarDisposable;, "Lio/reactivex/internal/observers/DeferredScalarDisposable<TT;>;"
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public final complete(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lio/reactivex/internal/observers/DeferredScalarDisposable;, "Lio/reactivex/internal/observers/DeferredScalarDisposable<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v1

    .line 72
    .local v1, "state":I
    and-int/lit8 v2, v1, 0x36

    if-eqz v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 76
    iput-object p1, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    .line 77
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    .line 81
    :goto_1
    iget-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->actual:Lio/reactivex/Observer;

    .line 82
    .local v0, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 84
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_0

    .line 79
    .end local v0    # "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    goto :goto_1
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 139
    .local p0, "this":Lio/reactivex/internal/observers/DeferredScalarDisposable;, "Lio/reactivex/internal/observers/DeferredScalarDisposable<TT;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->set(I)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .prologue
    .line 153
    .local p0, "this":Lio/reactivex/internal/observers/DeferredScalarDisposable;, "Lio/reactivex/internal/observers/DeferredScalarDisposable<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 128
    .local p0, "this":Lio/reactivex/internal/observers/DeferredScalarDisposable;, "Lio/reactivex/internal/observers/DeferredScalarDisposable<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/reactivex/internal/observers/DeferredScalarDisposable;, "Lio/reactivex/internal/observers/DeferredScalarDisposable<TT;>;"
    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 118
    iget-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    .line 119
    .local v0, "v":Ljava/lang/Object;, "TT;"
    iput-object v1, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    .line 120
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    .line 123
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final requestFusion(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 58
    .local p0, "this":Lio/reactivex/internal/observers/DeferredScalarDisposable;, "Lio/reactivex/internal/observers/DeferredScalarDisposable<TT;>;"
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 59
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    .line 60
    const/4 v0, 0x2

    .line 62
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
