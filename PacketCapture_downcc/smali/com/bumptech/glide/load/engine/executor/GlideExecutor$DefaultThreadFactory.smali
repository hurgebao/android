.class final Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;
.super Ljava/lang/Object;
.source "GlideExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultThreadFactory"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field final preventNetworkOperations:Z

.field private threadNum:I

.field final uncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uncaughtThrowableStrategy"    # Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;
    .param p3, "preventNetworkOperations"    # Z

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;->name:Ljava/lang/String;

    .line 366
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;->uncaughtThrowableStrategy:Lcom/bumptech/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    .line 367
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;->preventNetworkOperations:Z

    .line 368
    return-void
.end method


# virtual methods
.method public declared-synchronized newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 372
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glide-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;->threadNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory$1;-><init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 392
    .local v0, "result":Ljava/lang/Thread;
    iget v1, p0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;->threadNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;->threadNum:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    monitor-exit p0

    return-object v0

    .line 372
    .end local v0    # "result":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
