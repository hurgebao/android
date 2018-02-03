.class Landroid/arch/lifecycle/LifecycleDispatcher$DispatcherActivityCallback;
.super Landroid/arch/lifecycle/EmptyActivityLifecycleCallbacks;
.source "LifecycleDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LifecycleDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DispatcherActivityCallback"
.end annotation


# instance fields
.field private final mFragmentCallback:Landroid/arch/lifecycle/LifecycleDispatcher$FragmentCallback;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/arch/lifecycle/EmptyActivityLifecycleCallbacks;-><init>()V

    .line 68
    new-instance v0, Landroid/arch/lifecycle/LifecycleDispatcher$FragmentCallback;

    invoke-direct {v0}, Landroid/arch/lifecycle/LifecycleDispatcher$FragmentCallback;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/LifecycleDispatcher$DispatcherActivityCallback;->mFragmentCallback:Landroid/arch/lifecycle/LifecycleDispatcher$FragmentCallback;

    .line 69
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 74
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleDispatcher$DispatcherActivityCallback;->mFragmentCallback:Landroid/arch/lifecycle/LifecycleDispatcher$FragmentCallback;

    const/4 v2, 0x1

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    .line 77
    :cond_0
    invoke-static {p1}, Landroid/arch/lifecycle/ReportFragment;->injectIfNeededIn(Landroid/app/Activity;)V

    .line 78
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 90
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->CREATED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {p1, v0}, Landroid/arch/lifecycle/LifecycleDispatcher;->access$000(Landroid/support/v4/app/FragmentActivity;Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 92
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 82
    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 83
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->CREATED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {p1, v0}, Landroid/arch/lifecycle/LifecycleDispatcher;->access$000(Landroid/support/v4/app/FragmentActivity;Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 85
    :cond_0
    return-void
.end method
