.class public final Lio/reactivex/observers/SerializedObserver;
.super Ljava/lang/Object;
.source "SerializedObserver.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer",
        "<TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final delayError:Z

.field volatile done:Z

.field emitting:Z

.field queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field s:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lio/reactivex/observers/SerializedObserver;, "Lio/reactivex/observers/SerializedObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/reactivex/observers/SerializedObserver;-><init>(Lio/reactivex/Observer;Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lio/reactivex/Observer;Z)V
    .locals 0
    .param p2, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lio/reactivex/observers/SerializedObserver;, "Lio/reactivex/observers/SerializedObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lio/reactivex/observers/SerializedObserver;->actual:Lio/reactivex/Observer;

    .line 63
    iput-boolean p2, p0, Lio/reactivex/observers/SerializedObserver;->delayError:Z

    .line 64
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lio/reactivex/observers/SerializedObserver;, "Lio/reactivex/observers/SerializedObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 79
    return-void
.end method

.method emitLoop()V
    .locals 2

    .prologue
    .line 188
    .local p0, "this":Lio/reactivex/observers/SerializedObserver;, "Lio/reactivex/observers/SerializedObserver<TT;>;"
    :cond_0
    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 190
    .local v0, "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 191
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/reactivex/observers/SerializedObserver;->emitting:Z

    .line 192
    monitor-exit p0

    .line 198
    :goto_0
    return-void

    .line 194
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/observers/SerializedObserver;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 195
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    iget-object v1, p0, Lio/reactivex/observers/SerializedObserver;->actual:Lio/reactivex/Observer;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->accept(Lio/reactivex/Observer;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 195
    .end local v0    # "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onComplete()V
    .locals 2

    .prologue
    .line 161
    .local p0, "this":Lio/reactivex/observers/SerializedObserver;, "Lio/reactivex/observers/SerializedObserver<TT;>;"
    iget-boolean v1, p0, Lio/reactivex/observers/SerializedObserver;->done:Z

    if-eqz v1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 164
    :cond_0
    monitor-enter p0

    .line 165
    :try_start_0
    iget-boolean v1, p0, Lio/reactivex/observers/SerializedObserver;->done:Z

    if-eqz v1, :cond_1

    .line 166
    monitor-exit p0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 168
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lio/reactivex/observers/SerializedObserver;->emitting:Z

    if-eqz v1, :cond_3

    .line 169
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 170
    .local v0, "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    if-nez v0, :cond_2

    .line 171
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .end local v0    # "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    .line 172
    .restart local v0    # "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    iput-object v0, p0, Lio/reactivex/observers/SerializedObserver;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 174
    :cond_2
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    .line 175
    monitor-exit p0

    goto :goto_0

    .line 177
    .end local v0    # "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/observers/SerializedObserver;->done:Z

    .line 178
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/observers/SerializedObserver;->emitting:Z

    .line 179
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    iget-object v1, p0, Lio/reactivex/observers/SerializedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 120
    .local p0, "this":Lio/reactivex/observers/SerializedObserver;, "Lio/reactivex/observers/SerializedObserver<TT;>;"
    iget-boolean v3, p0, Lio/reactivex/observers/SerializedObserver;->done:Z

    if-eqz v3, :cond_0

    .line 121
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 157
    :goto_0
    return-void

    .line 125
    :cond_0
    monitor-enter p0

    .line 126
    :try_start_0
    iget-boolean v3, p0, Lio/reactivex/observers/SerializedObserver;->done:Z

    if-eqz v3, :cond_1

    .line 127
    const/4 v2, 0x1

    .line 148
    .local v2, "reportError":Z
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    if-eqz v2, :cond_5

    .line 151
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 129
    .end local v2    # "reportError":Z
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lio/reactivex/observers/SerializedObserver;->emitting:Z

    if-eqz v3, :cond_4

    .line 130
    const/4 v3, 0x1

    iput-boolean v3, p0, Lio/reactivex/observers/SerializedObserver;->done:Z

    .line 131
    iget-object v1, p0, Lio/reactivex/observers/SerializedObserver;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 132
    .local v1, "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    if-nez v1, :cond_2

    .line 133
    new-instance v1, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .end local v1    # "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x4

    invoke-direct {v1, v3}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    .line 134
    .restart local v1    # "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    iput-object v1, p0, Lio/reactivex/observers/SerializedObserver;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 136
    :cond_2
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 137
    .local v0, "err":Ljava/lang/Object;
    iget-boolean v3, p0, Lio/reactivex/observers/SerializedObserver;->delayError:Z

    if-eqz v3, :cond_3

    .line 138
    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    .line 142
    :goto_2
    monitor-exit p0

    goto :goto_0

    .line 148
    .end local v0    # "err":Ljava/lang/Object;
    .end local v1    # "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 140
    .restart local v0    # "err":Ljava/lang/Object;
    .restart local v1    # "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    :cond_3
    :try_start_2
    invoke-virtual {v1, v0}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->setFirst(Ljava/lang/Object;)V

    goto :goto_2

    .line 144
    .end local v0    # "err":Ljava/lang/Object;
    .end local v1    # "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lio/reactivex/observers/SerializedObserver;->done:Z

    .line 145
    const/4 v3, 0x1

    iput-boolean v3, p0, Lio/reactivex/observers/SerializedObserver;->emitting:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    const/4 v2, 0x0

    .restart local v2    # "reportError":Z
    goto :goto_1

    .line 155
    :cond_5
    iget-object v3, p0, Lio/reactivex/observers/SerializedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v3, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lio/reactivex/observers/SerializedObserver;, "Lio/reactivex/observers/SerializedObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v1, p0, Lio/reactivex/observers/SerializedObserver;->done:Z

    if-eqz v1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 92
    :cond_0
    if-nez p1, :cond_1

    .line 93
    iget-object v1, p0, Lio/reactivex/observers/SerializedObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 94
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lio/reactivex/observers/SerializedObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 97
    :cond_1
    monitor-enter p0

    .line 98
    :try_start_0
    iget-boolean v1, p0, Lio/reactivex/observers/SerializedObserver;->done:Z

    if-eqz v1, :cond_2

    .line 99
    monitor-exit p0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 101
    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lio/reactivex/observers/SerializedObserver;->emitting:Z

    if-eqz v1, :cond_4

    .line 102
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 103
    .local v0, "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    if-nez v0, :cond_3

    .line 104
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .end local v0    # "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    .line 105
    .restart local v0    # "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    iput-object v0, p0, Lio/reactivex/observers/SerializedObserver;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 107
    :cond_3
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    .line 108
    monitor-exit p0

    goto :goto_0

    .line 110
    .end local v0    # "q":Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;, "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<Ljava/lang/Object;>;"
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/observers/SerializedObserver;->emitting:Z

    .line 111
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    iget-object v1, p0, Lio/reactivex/observers/SerializedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v1, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0}, Lio/reactivex/observers/SerializedObserver;->emitLoop()V

    goto :goto_0
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .prologue
    .line 68
    .local p0, "this":Lio/reactivex/observers/SerializedObserver;, "Lio/reactivex/observers/SerializedObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->s:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iput-object p1, p0, Lio/reactivex/observers/SerializedObserver;->s:Lio/reactivex/disposables/Disposable;

    .line 71
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->actual:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 73
    :cond_0
    return-void
.end method
