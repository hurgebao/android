.class Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;
.super Ljava/lang/Object;
.source "LiveData.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LifecycleBoundObserver"
.end annotation


# instance fields
.field public active:Z

.field public lastVersion:I

.field public final observer:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final owner:Landroid/arch/lifecycle/LifecycleOwner;

.field final synthetic this$0:Landroid/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V
    .locals 1
    .param p1, "this$0"    # Landroid/arch/lifecycle/LiveData;
    .param p2, "owner"    # Landroid/arch/lifecycle/LifecycleOwner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LifecycleOwner;",
            "Landroid/arch/lifecycle/Observer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;, "Landroid/arch/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    .local p3, "observer":Landroid/arch/lifecycle/Observer;, "Landroid/arch/lifecycle/Observer<TT;>;"
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    const/4 v0, -0x1

    iput v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->lastVersion:I

    .line 365
    iput-object p2, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->owner:Landroid/arch/lifecycle/LifecycleOwner;

    .line 366
    iput-object p3, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->observer:Landroid/arch/lifecycle/Observer;

    .line 367
    return-void
.end method


# virtual methods
.method activeStateChanged(Z)V
    .locals 5
    .param p1, "newActive"    # Z

    .prologue
    .local p0, "this":Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;, "Landroid/arch/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    const/4 v1, 0x1

    .line 383
    iget-boolean v2, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->active:Z

    if-ne p1, v2, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iput-boolean p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->active:Z

    .line 387
    iget-object v2, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-static {v2}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 388
    .local v0, "wasInactive":Z
    :goto_1
    iget-object v2, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-static {v2}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result v3

    iget-boolean v4, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->active:Z

    if-eqz v4, :cond_5

    :goto_2
    add-int/2addr v1, v3

    invoke-static {v2, v1}, Landroid/arch/lifecycle/LiveData;->access$302(Landroid/arch/lifecycle/LiveData;I)I

    .line 389
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->active:Z

    if-eqz v1, :cond_2

    .line 390
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v1}, Landroid/arch/lifecycle/LiveData;->onActive()V

    .line 392
    :cond_2
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-static {v1}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->active:Z

    if-nez v1, :cond_3

    .line 393
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v1}, Landroid/arch/lifecycle/LiveData;->onInactive()V

    .line 395
    :cond_3
    iget-boolean v1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->active:Z

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-static {v1, p0}, Landroid/arch/lifecycle/LiveData;->access$400(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;)V

    goto :goto_0

    .line 387
    .end local v0    # "wasInactive":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 388
    .restart local v0    # "wasInactive":Z
    :cond_5
    const/4 v1, -0x1

    goto :goto_2
.end method

.method onStateChange()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_ANY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;, "Landroid/arch/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->owner:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/Lifecycle;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->observer:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LiveData;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->owner:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/Lifecycle;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->isActiveState(Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->activeStateChanged(Z)V

    goto :goto_0
.end method
