.class public Landroid/arch/core/executor/AppToolkitTaskExecutor;
.super Landroid/arch/core/executor/TaskExecutor;
.source "AppToolkitTaskExecutor.java"


# static fields
.field private static final sIOThreadExecutor:Ljava/util/concurrent/Executor;

.field private static volatile sInstance:Landroid/arch/core/executor/AppToolkitTaskExecutor;

.field private static final sMainThreadExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private mDefaultTaskExecutor:Landroid/arch/core/executor/TaskExecutor;

.field private mDelegate:Landroid/arch/core/executor/TaskExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Landroid/arch/core/executor/AppToolkitTaskExecutor$1;

    invoke-direct {v0}, Landroid/arch/core/executor/AppToolkitTaskExecutor$1;-><init>()V

    sput-object v0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 50
    new-instance v0, Landroid/arch/core/executor/AppToolkitTaskExecutor$2;

    invoke-direct {v0}, Landroid/arch/core/executor/AppToolkitTaskExecutor$2;-><init>()V

    sput-object v0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->sIOThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/arch/core/executor/TaskExecutor;-><init>()V

    .line 58
    new-instance v0, Landroid/arch/core/executor/DefaultTaskExecutor;

    invoke-direct {v0}, Landroid/arch/core/executor/DefaultTaskExecutor;-><init>()V

    iput-object v0, p0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->mDefaultTaskExecutor:Landroid/arch/core/executor/TaskExecutor;

    .line 59
    iget-object v0, p0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->mDefaultTaskExecutor:Landroid/arch/core/executor/TaskExecutor;

    iput-object v0, p0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->mDelegate:Landroid/arch/core/executor/TaskExecutor;

    .line 60
    return-void
.end method

.method public static getInstance()Landroid/arch/core/executor/AppToolkitTaskExecutor;
    .locals 2

    .prologue
    .line 68
    sget-object v0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->sInstance:Landroid/arch/core/executor/AppToolkitTaskExecutor;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->sInstance:Landroid/arch/core/executor/AppToolkitTaskExecutor;

    .line 76
    :goto_0
    return-object v0

    .line 71
    :cond_0
    const-class v1, Landroid/arch/core/executor/AppToolkitTaskExecutor;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->sInstance:Landroid/arch/core/executor/AppToolkitTaskExecutor;

    if-nez v0, :cond_1

    .line 73
    new-instance v0, Landroid/arch/core/executor/AppToolkitTaskExecutor;

    invoke-direct {v0}, Landroid/arch/core/executor/AppToolkitTaskExecutor;-><init>()V

    sput-object v0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->sInstance:Landroid/arch/core/executor/AppToolkitTaskExecutor;

    .line 75
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    sget-object v0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->sInstance:Landroid/arch/core/executor/AppToolkitTaskExecutor;

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public executeOnDiskIO(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 95
    iget-object v0, p0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->mDelegate:Landroid/arch/core/executor/TaskExecutor;

    invoke-virtual {v0, p1}, Landroid/arch/core/executor/TaskExecutor;->executeOnDiskIO(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public isMainThread()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->mDelegate:Landroid/arch/core/executor/TaskExecutor;

    invoke-virtual {v0}, Landroid/arch/core/executor/TaskExecutor;->isMainThread()Z

    move-result v0

    return v0
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 100
    iget-object v0, p0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->mDelegate:Landroid/arch/core/executor/TaskExecutor;

    invoke-virtual {v0, p1}, Landroid/arch/core/executor/TaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method
