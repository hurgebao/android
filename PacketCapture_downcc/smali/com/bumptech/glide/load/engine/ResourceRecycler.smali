.class Lcom/bumptech/glide/load/engine/ResourceRecycler;
.super Ljava/lang/Object;
.source "ResourceRecycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private isRecycling:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/os/Handler;

    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/ResourceRecycler$ResourceRecyclerCallback;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceRecycler;->handler:Landroid/os/Handler;

    .line 14
    return-void
.end method


# virtual methods
.method public recycle(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    const/4 v1, 0x1

    .line 18
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 20
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/ResourceRecycler;->isRecycling:Z

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ResourceRecycler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 31
    :goto_0
    return-void

    .line 27
    :cond_0
    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/ResourceRecycler;->isRecycling:Z

    .line 28
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/ResourceRecycler;->isRecycling:Z

    goto :goto_0
.end method
