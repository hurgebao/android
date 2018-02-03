.class public Landroid/arch/lifecycle/ProcessLifecycleOwner;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleOwner;


# static fields
.field private static final sInstance:Landroid/arch/lifecycle/ProcessLifecycleOwner;


# instance fields
.field private mDelayedPauseRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mInitializationListener:Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;

.field private mPauseSent:Z

.field private final mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

.field private mResumedCounter:I

.field private mStartedCounter:I

.field private mStopSent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Landroid/arch/lifecycle/ProcessLifecycleOwner;

    invoke-direct {v0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->sInstance:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 54
    iput v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    .line 56
    iput-boolean v1, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    .line 57
    iput-boolean v1, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    .line 60
    new-instance v0, Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/LifecycleRegistry;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    .line 62
    new-instance v0, Landroid/arch/lifecycle/ProcessLifecycleOwner$1;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/ProcessLifecycleOwner$1;-><init>(Landroid/arch/lifecycle/ProcessLifecycleOwner;)V

    iput-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mDelayedPauseRunnable:Ljava/lang/Runnable;

    .line 70
    new-instance v0, Landroid/arch/lifecycle/ProcessLifecycleOwner$2;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/ProcessLifecycleOwner$2;-><init>(Landroid/arch/lifecycle/ProcessLifecycleOwner;)V

    iput-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mInitializationListener:Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;

    .line 150
    return-void
.end method

.method static synthetic access$000(Landroid/arch/lifecycle/ProcessLifecycleOwner;)V
    .locals 0
    .param p0, "x0"    # Landroid/arch/lifecycle/ProcessLifecycleOwner;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->dispatchPauseIfNeeded()V

    return-void
.end method

.method static synthetic access$100(Landroid/arch/lifecycle/ProcessLifecycleOwner;)V
    .locals 0
    .param p0, "x0"    # Landroid/arch/lifecycle/ProcessLifecycleOwner;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->dispatchStopIfNeeded()V

    return-void
.end method

.method static synthetic access$200(Landroid/arch/lifecycle/ProcessLifecycleOwner;)Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;
    .locals 1
    .param p0, "x0"    # Landroid/arch/lifecycle/ProcessLifecycleOwner;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mInitializationListener:Landroid/arch/lifecycle/ReportFragment$ActivityInitializationListener;

    return-object v0
.end method

.method private dispatchPauseIfNeeded()V
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    .line 138
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 140
    :cond_0
    return-void
.end method

.method private dispatchStopIfNeeded()V
    .locals 2

    .prologue
    .line 143
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    .line 147
    :cond_0
    return-void
.end method

.method static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    sget-object v0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->sInstance:Landroid/arch/lifecycle/ProcessLifecycleOwner;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->attach(Landroid/content/Context;)V

    .line 101
    return-void
.end method


# virtual methods
.method activityPaused()V
    .locals 4

    .prologue
    .line 124
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    .line 125
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mDelayedPauseRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    :cond_0
    return-void
.end method

.method activityResumed()V
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    .line 113
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mResumedCounter:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 114
    iget-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mPauseSent:Z

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mDelayedPauseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method activityStarted()V
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 105
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStopSent:Z

    .line 109
    :cond_0
    return-void
.end method

.method activityStopped()V
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mStartedCounter:I

    .line 132
    invoke-direct {p0}, Landroid/arch/lifecycle/ProcessLifecycleOwner;->dispatchStopIfNeeded()V

    .line 133
    return-void
.end method

.method attach(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mHandler:Landroid/os/Handler;

    .line 154
    iget-object v1, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v2, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 156
    .local v0, "app":Landroid/app/Application;
    new-instance v1, Landroid/arch/lifecycle/ProcessLifecycleOwner$3;

    invoke-direct {v1, p0}, Landroid/arch/lifecycle/ProcessLifecycleOwner$3;-><init>(Landroid/arch/lifecycle/ProcessLifecycleOwner;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 172
    return-void
.end method

.method public getLifecycle()Landroid/arch/lifecycle/Lifecycle;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/arch/lifecycle/ProcessLifecycleOwner;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    return-object v0
.end method
