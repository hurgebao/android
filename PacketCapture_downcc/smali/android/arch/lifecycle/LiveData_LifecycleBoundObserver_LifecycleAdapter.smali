.class public Landroid/arch/lifecycle/LiveData_LifecycleBoundObserver_LifecycleAdapter;
.super Ljava/lang/Object;
.source "LiveData_LifecycleBoundObserver_LifecycleAdapter.java"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# instance fields
.field final mReceiver:Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;)V
    .locals 0
    .param p1, "receiver"    # Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData_LifecycleBoundObserver_LifecycleAdapter;->mReceiver:Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;

    .line 10
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1, "owner"    # Landroid/arch/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;

    .prologue
    .line 14
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData_LifecycleBoundObserver_LifecycleAdapter;->mReceiver:Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-virtual {v0}, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->onStateChange()V

    .line 15
    return-void
.end method
