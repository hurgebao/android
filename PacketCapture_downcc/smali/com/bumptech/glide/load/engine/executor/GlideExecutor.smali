.class public final Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "GlideExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;,
        Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;
    }
.end annotation


# static fields
.field private static final SOURCE_UNLIMITED_EXECUTOR_KEEP_ALIVE_TIME_MS:J


# instance fields
.field private final executeSynchronously:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    .line 58
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->SOURCE_UNLIMITED_EXECUTOR_KEEP_ALIVE_TIME_MS:J

    .line 57
    return-void
.end method

.method constructor <init>(IIJLjava/lang/String;Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;ZZ)V
    .locals 11
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTimeInMs"    # J
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "uncaughtThrowableStrategy"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;
    .param p7, "preventNetworkOperations"    # Z
    .param p8, "executeSynchronously"    # Z

    .prologue
    .line 203
    new-instance v10, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;-><init>(IIJLjava/lang/String;Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;ZZLjava/util/concurrent/BlockingQueue;)V

    .line 212
    return-void
.end method

.method constructor <init>(IIJLjava/lang/String;Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;ZZLjava/util/concurrent/BlockingQueue;)V
    .locals 13
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTimeInMs"    # J
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "uncaughtThrowableStrategy"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;
    .param p7, "preventNetworkOperations"    # Z
    .param p8, "executeSynchronously"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;",
            "ZZ",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p9, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move/from16 v2, p7

    invoke-direct {v12, v0, v1, v2}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;Z)V

    move-object v5, p0

    move v6, p1

    move v7, p2

    move-wide/from16 v8, p3

    move-object/from16 v11, p9

    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 224
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->executeSynchronously:Z

    .line 225
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;ZZ)V
    .locals 10
    .param p1, "poolSize"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uncaughtThrowableStrategy"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;
    .param p4, "preventNetworkOperations"    # Z
    .param p5, "executeSynchronously"    # Z

    .prologue
    .line 190
    const-wide/16 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;-><init>(IIJLjava/lang/String;Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;ZZ)V

    .line 198
    return-void
.end method

.method public static calculateBestThreadCount()I
    .locals 9

    .prologue
    .line 286
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 287
    .local v5, "originalPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v4, 0x0

    .line 289
    .local v4, "cpus":[Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v7, "/sys/devices/system/cpu/"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v2, "cpuInfo":Ljava/io/File;
    const-string v7, "cpu[0-9]+"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 291
    .local v3, "cpuNamePattern":Ljava/util/regex/Pattern;
    new-instance v7, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$1;

    invoke-direct {v7, v3}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$1;-><init>(Ljava/util/regex/Pattern;)V

    invoke-virtual {v2, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 302
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 305
    .end local v2    # "cpuInfo":Ljava/io/File;
    .end local v3    # "cpuNamePattern":Ljava/util/regex/Pattern;
    :goto_0
    if-eqz v4, :cond_1

    array-length v1, v4

    .line 306
    .local v1, "cpuCount":I
    :goto_1
    const/4 v7, 0x1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 307
    .local v0, "availableProcessors":I
    const/4 v7, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    return v7

    .line 297
    .end local v0    # "availableProcessors":I
    .end local v1    # "cpuCount":I
    :catch_0
    move-exception v6

    .line 298
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v7, "GlideExecutor"

    const/4 v8, 0x6

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 299
    const-string v7, "GlideExecutor"

    const-string v8, "Failed to calculate accurate cpu count"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :cond_0
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_0

    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v7

    .line 305
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private maybeWait(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->executeSynchronously:Z

    if-eqz v2, :cond_2

    .line 244
    const/4 v1, 0x0

    .line 246
    .local v1, "interrupted":Z
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 248
    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    .line 257
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    throw v2

    .line 251
    :catch_1
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 253
    goto :goto_0

    .line 256
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    if-eqz v1, :cond_2

    .line 257
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 261
    .end local v1    # "interrupted":Z
    :cond_2
    return-object p1
.end method

.method public static newDiskCacheExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x1

    const-string v1, "disk-cache"

    sget-object v2, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;->DEFAULT:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->newDiskCacheExecutor(ILjava/lang/String;Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;)Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static newDiskCacheExecutor(ILjava/lang/String;Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;)Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .locals 6
    .param p0, "threadCount"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uncaughtThrowableStrategy"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    .prologue
    .line 106
    new-instance v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;-><init>(ILjava/lang/String;Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;ZZ)V

    return-object v0
.end method

.method public static newSourceExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->calculateBestThreadCount()I

    move-result v0

    const-string v1, "source"

    sget-object v2, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;->DEFAULT:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->newSourceExecutor(ILjava/lang/String;Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;)Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static newSourceExecutor(ILjava/lang/String;Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;)Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .locals 6
    .param p0, "threadCount"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uncaughtThrowableStrategy"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    .prologue
    const/4 v4, 0x0

    .line 157
    new-instance v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;-><init>(ILjava/lang/String;Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;ZZ)V

    return-object v0
.end method

.method public static newUnlimitedSourceExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 176
    new-instance v1, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    const v3, 0x7fffffff

    sget-wide v4, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->SOURCE_UNLIMITED_EXECUTOR_KEEP_ALIVE_TIME_MS:J

    const-string v6, "source-unlimited"

    sget-object v7, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;->DEFAULT:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    new-instance v10, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v10}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    move v8, v2

    move v9, v2

    invoke-direct/range {v1 .. v10}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;-><init>(IIJLjava/lang/String;Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;ZZLjava/util/concurrent/BlockingQueue;)V

    return-object v1
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->executeSynchronously:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 239
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->maybeWait(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 267
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->maybeWait(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->maybeWait(Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
