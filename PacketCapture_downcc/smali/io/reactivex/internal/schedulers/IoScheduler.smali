.class public final Lio/reactivex/internal/schedulers/IoScheduler;
.super Lio/reactivex/Scheduler;
.source "IoScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;,
        Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;,
        Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;
    }
.end annotation


# static fields
.field static final EVICTOR_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

.field private static final KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

.field static final NONE:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

.field static final SHUTDOWN_THREAD_WORKER:Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

.field static final WORKER_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;


# instance fields
.field final pool:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;",
            ">;"
        }
    .end annotation
.end field

.field final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 38
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

    .line 49
    new-instance v1, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    new-instance v2, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string v3, "RxCachedThreadSchedulerShutdown"

    invoke-direct {v2, v3}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->SHUTDOWN_THREAD_WORKER:Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    .line 50
    sget-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->SHUTDOWN_THREAD_WORKER:Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;

    invoke-virtual {v1}, Lio/reactivex/internal/schedulers/IoScheduler$ThreadWorker;->dispose()V

    .line 52
    const/4 v1, 0x1

    const/16 v2, 0xa

    const-string v3, "rx2.io-priority"

    const/4 v4, 0x5

    .line 53
    invoke-static {v3, v4}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 55
    .local v0, "priority":I
    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string v2, "RxCachedThreadScheduler"

    invoke-direct {v1, v2, v0}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->WORKER_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 57
    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory;

    const-string v2, "RxCachedWorkerPoolEvictor"

    invoke-direct {v1, v2, v0}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->EVICTOR_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 59
    new-instance v1, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    sget-object v5, Lio/reactivex/internal/schedulers/IoScheduler;->WORKER_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

    invoke-direct {v1, v2, v3, v4, v5}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->NONE:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    .line 60
    sget-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->NONE:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    invoke-virtual {v1}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->shutdown()V

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lio/reactivex/internal/schedulers/IoScheduler;->WORKER_THREAD_FACTORY:Lio/reactivex/internal/schedulers/RxThreadFactory;

    invoke-direct {p0, v0}, Lio/reactivex/internal/schedulers/IoScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 157
    invoke-direct {p0}, Lio/reactivex/Scheduler;-><init>()V

    .line 158
    iput-object p1, p0, Lio/reactivex/internal/schedulers/IoScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 159
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->NONE:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    .line 160
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/IoScheduler;->start()V

    .line 161
    return-void
.end method


# virtual methods
.method public createWorker()Lio/reactivex/Scheduler$Worker;
    .locals 2

    .prologue
    .line 187
    new-instance v1, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;

    iget-object v0, p0, Lio/reactivex/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    invoke-direct {v1, v0}, Lio/reactivex/internal/schedulers/IoScheduler$EventLoopWorker;-><init>(Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;)V

    return-object v1
.end method

.method public start()V
    .locals 5

    .prologue
    .line 165
    new-instance v0, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    const-wide/16 v2, 0x3c

    sget-object v1, Lio/reactivex/internal/schedulers/IoScheduler;->KEEP_ALIVE_UNIT:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lio/reactivex/internal/schedulers/IoScheduler;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v2, v3, v1, v4}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    .line 166
    .local v0, "update":Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;
    iget-object v1, p0, Lio/reactivex/internal/schedulers/IoScheduler;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/internal/schedulers/IoScheduler;->NONE:Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/IoScheduler$CachedWorkerPool;->shutdown()V

    .line 169
    :cond_0
    return-void
.end method
