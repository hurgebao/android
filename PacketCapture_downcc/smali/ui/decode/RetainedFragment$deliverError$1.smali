.class final Lui/decode/RetainedFragment$deliverError$1;
.super Ljava/lang/Object;
.source "DecodeFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/decode/RetainedFragment;->deliverError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $e:Ljava/lang/Exception;

.field final synthetic this$0:Lui/decode/RetainedFragment;


# direct methods
.method constructor <init>(Lui/decode/RetainedFragment;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lui/decode/RetainedFragment$deliverError$1;->this$0:Lui/decode/RetainedFragment;

    iput-object p2, p0, Lui/decode/RetainedFragment$deliverError$1;->$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lui/decode/RetainedFragment$deliverError$1;->this$0:Lui/decode/RetainedFragment;

    sget-object v1, Lui/decode/RetainedFragment$State;->STATE_ERROR:Lui/decode/RetainedFragment$State;

    invoke-static {v0, v1}, Lui/decode/RetainedFragment;->access$setState$p(Lui/decode/RetainedFragment;Lui/decode/RetainedFragment$State;)V

    .line 301
    iget-object v0, p0, Lui/decode/RetainedFragment$deliverError$1;->this$0:Lui/decode/RetainedFragment;

    iget-object v1, p0, Lui/decode/RetainedFragment$deliverError$1;->$e:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lui/decode/RetainedFragment;->access$setError$p(Lui/decode/RetainedFragment;Ljava/lang/Exception;)V

    .line 302
    iget-object v0, p0, Lui/decode/RetainedFragment$deliverError$1;->this$0:Lui/decode/RetainedFragment;

    invoke-virtual {v0}, Lui/decode/RetainedFragment;->getListener()Lui/decode/RetainedFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lui/decode/RetainedFragment$deliverError$1;->this$0:Lui/decode/RetainedFragment;

    invoke-static {v1}, Lui/decode/RetainedFragment;->access$getState$p(Lui/decode/RetainedFragment;)Lui/decode/RetainedFragment$State;

    move-result-object v1

    invoke-interface {v0, v1}, Lui/decode/RetainedFragment$Listener;->onStateChanged(Lui/decode/RetainedFragment$State;)V

    .line 303
    :cond_0
    return-void
.end method
