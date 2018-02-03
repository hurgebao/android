.class public final Lio/reactivex/plugins/RxJavaPlugins;
.super Ljava/lang/Object;
.source "RxJavaPlugins.java"


# static fields
.field static volatile errorHandler:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer",
            "<-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onComputationHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-",
            "Lio/reactivex/Scheduler;",
            "+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onInitComputationHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onInitIoHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onInitNewThreadHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onInitSingleHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableAssembly:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-",
            "Lio/reactivex/Observable;",
            "+",
            "Lio/reactivex/Observable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableSubscribe:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction",
            "<-",
            "Lio/reactivex/Observable;",
            "-",
            "Lio/reactivex/Observer;",
            "+",
            "Lio/reactivex/Observer;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onScheduleHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function",
            "<-",
            "Ljava/lang/Runnable;",
            "+",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static apply(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/BiFunction",
            "<TT;TU;TR;>;TT;TU;)TR;"
        }
    .end annotation

    .prologue
    .line 1271
    .local p0, "f":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<TT;TU;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    .local p2, "u":Ljava/lang/Object;, "TU;"
    :try_start_0
    invoke-interface {p0, p1, p2}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1272
    :catch_0
    move-exception v0

    .line 1273
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function",
            "<TT;TR;>;TT;)TR;"
        }
    .end annotation

    .prologue
    .line 1251
    .local p0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-interface {p0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1252
    :catch_0
    move-exception v0

    .line 1253
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function",
            "<-",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .prologue
    .line 1303
    .local p0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;+Lio/reactivex/Scheduler;>;"
    .local p1, "s":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;"
    invoke-static {p0, p1}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Scheduler Callable result can\'t be null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    return-object v0
.end method

.method static callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .prologue
    .line 1287
    .local p0, "s":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Scheduler Callable result can\'t be null"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Scheduler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1288
    :catch_0
    move-exception v0

    .line 1289
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static initComputationScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "defaultScheduler":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;"
    const-string v1, "Scheduler Callable can\'t be null"

    invoke-static {p0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitComputationHandler:Lio/reactivex/functions/Function;

    .line 270
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;+Lio/reactivex/Scheduler;>;"
    if-nez v0, :cond_0

    .line 271
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    .line 273
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    goto :goto_0
.end method

.method public static initIoScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "defaultScheduler":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;"
    const-string v1, "Scheduler Callable can\'t be null"

    invoke-static {p0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitIoHandler:Lio/reactivex/functions/Function;

    .line 286
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;+Lio/reactivex/Scheduler;>;"
    if-nez v0, :cond_0

    .line 287
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    .line 289
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    goto :goto_0
.end method

.method public static initNewThreadScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "defaultScheduler":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;"
    const-string v1, "Scheduler Callable can\'t be null"

    invoke-static {p0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitNewThreadHandler:Lio/reactivex/functions/Function;

    .line 302
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;+Lio/reactivex/Scheduler;>;"
    if-nez v0, :cond_0

    .line 303
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    .line 305
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    goto :goto_0
.end method

.method public static initSingleScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "defaultScheduler":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;"
    const-string v1, "Scheduler Callable can\'t be null"

    invoke-static {p0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitSingleHandler:Lio/reactivex/functions/Function;

    .line 318
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;+Lio/reactivex/Scheduler;>;"
    if-nez v0, :cond_0

    .line 319
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    .line 321
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    goto :goto_0
.end method

.method static isBug(Ljava/lang/Throwable;)Z
    .locals 2
    .param p0, "error"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x1

    .line 378
    instance-of v1, p0, Lio/reactivex/exceptions/OnErrorNotImplementedException;

    if-eqz v1, :cond_1

    .line 405
    :cond_0
    :goto_0
    return v0

    .line 383
    :cond_1
    instance-of v1, p0, Lio/reactivex/exceptions/MissingBackpressureException;

    if-nez v1, :cond_0

    .line 388
    instance-of v1, p0, Ljava/lang/IllegalStateException;

    if-nez v1, :cond_0

    .line 393
    instance-of v1, p0, Ljava/lang/NullPointerException;

    if-nez v1, :cond_0

    .line 397
    instance-of v1, p0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_0

    .line 401
    instance-of v1, p0, Lio/reactivex/exceptions/CompositeException;

    if-nez v1, :cond_0

    .line 405
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable",
            "<TT;>;)",
            "Lio/reactivex/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1032
    .local p0, "source":Lio/reactivex/Observable;, "Lio/reactivex/Observable<TT;>;"
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onObservableAssembly:Lio/reactivex/functions/Function;

    .line 1033
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Observable;+Lio/reactivex/Observable;>;"
    if-eqz v0, :cond_0

    .line 1034
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Observable;

    .line 1036
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method

.method public static onComputationScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .locals 2
    .param p0, "defaultScheduler"    # Lio/reactivex/Scheduler;

    .prologue
    .line 331
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onComputationHandler:Lio/reactivex/functions/Function;

    .line 332
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Scheduler;+Lio/reactivex/Scheduler;>;"
    if-nez v0, :cond_0

    .line 335
    .end local p0    # "defaultScheduler":Lio/reactivex/Scheduler;
    :goto_0
    return-object p0

    .restart local p0    # "defaultScheduler":Lio/reactivex/Scheduler;
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Scheduler;

    move-object p0, v1

    goto :goto_0
.end method

.method public static onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 343
    sget-object v2, Lio/reactivex/plugins/RxJavaPlugins;->errorHandler:Lio/reactivex/functions/Consumer;

    .line 345
    .local v2, "f":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-Ljava/lang/Throwable;>;"
    if-nez p0, :cond_1

    .line 346
    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0    # "error":Ljava/lang/Throwable;
    const-string v3, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 353
    .restart local p0    # "error":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 355
    :try_start_0
    invoke-interface {v2, p0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_1
    return-void

    .line 348
    :cond_1
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->isBug(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 349
    new-instance v1, Lio/reactivex/exceptions/UndeliverableException;

    invoke-direct {v1, p0}, Lio/reactivex/exceptions/UndeliverableException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "error":Ljava/lang/Throwable;
    .local v1, "error":Ljava/lang/Throwable;
    move-object p0, v1

    .end local v1    # "error":Ljava/lang/Throwable;
    .restart local p0    # "error":Ljava/lang/Throwable;
    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 360
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->uncaught(Ljava/lang/Throwable;)V

    .line 364
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 365
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->uncaught(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 2
    .param p0, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 449
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onScheduleHandler:Lio/reactivex/functions/Function;

    .line 450
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/lang/Runnable;+Ljava/lang/Runnable;>;"
    if-nez v0, :cond_0

    .line 453
    .end local p0    # "run":Ljava/lang/Runnable;
    :goto_0
    return-object p0

    .restart local p0    # "run":Ljava/lang/Runnable;
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    move-object p0, v1

    goto :goto_0
.end method

.method public static onSubscribe(Lio/reactivex/Observable;Lio/reactivex/Observer;)Lio/reactivex/Observer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable",
            "<TT;>;",
            "Lio/reactivex/Observer",
            "<-TT;>;)",
            "Lio/reactivex/Observer",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 919
    .local p0, "source":Lio/reactivex/Observable;, "Lio/reactivex/Observable<TT;>;"
    .local p1, "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onObservableSubscribe:Lio/reactivex/functions/BiFunction;

    .line 920
    .local v0, "f":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-Lio/reactivex/Observable;-Lio/reactivex/Observer;+Lio/reactivex/Observer;>;"
    if-eqz v0, :cond_0

    .line 921
    invoke-static {v0, p0, p1}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Observer;

    .line 923
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method

.method static uncaught(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 409
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 410
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 411
    .local v1, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 412
    return-void
.end method
