.class final Lui/decode/RetainedFragment$deliverDecodeResult$1;
.super Ljava/lang/Object;
.source "DecodeFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/decode/RetainedFragment;->deliverDecodeResult(Ljava/util/ArrayList;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $headers:Ljava/util/ArrayList;

.field final synthetic $v1File:Ljava/io/File;

.field final synthetic this$0:Lui/decode/RetainedFragment;


# direct methods
.method constructor <init>(Lui/decode/RetainedFragment;Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lui/decode/RetainedFragment$deliverDecodeResult$1;->this$0:Lui/decode/RetainedFragment;

    iput-object p2, p0, Lui/decode/RetainedFragment$deliverDecodeResult$1;->$v1File:Ljava/io/File;

    iput-object p3, p0, Lui/decode/RetainedFragment$deliverDecodeResult$1;->$headers:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lui/decode/RetainedFragment$deliverDecodeResult$1;->this$0:Lui/decode/RetainedFragment;

    invoke-static {v0}, Lui/decode/RetainedFragment;->access$getState$p(Lui/decode/RetainedFragment;)Lui/decode/RetainedFragment$State;

    move-result-object v0

    sget-object v1, Lui/decode/RetainedFragment$State;->STATE_DESTROY:Lui/decode/RetainedFragment$State;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lui/decode/RetainedFragment$deliverDecodeResult$1;->this$0:Lui/decode/RetainedFragment;

    invoke-virtual {v0}, Lui/decode/RetainedFragment;->getDecodedV1File()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 285
    :cond_0
    iget-object v1, p0, Lui/decode/RetainedFragment$deliverDecodeResult$1;->this$0:Lui/decode/RetainedFragment;

    const/4 v0, 0x0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v1, v0}, Lui/decode/RetainedFragment;->setDecodedV1File(Ljava/io/File;)V

    .line 286
    iget-object v0, p0, Lui/decode/RetainedFragment$deliverDecodeResult$1;->$v1File:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 294
    :cond_1
    :goto_0
    return-void

    .line 288
    :cond_2
    iget-object v0, p0, Lui/decode/RetainedFragment$deliverDecodeResult$1;->this$0:Lui/decode/RetainedFragment;

    sget-object v1, Lui/decode/RetainedFragment$State;->STATE_DECODED:Lui/decode/RetainedFragment$State;

    invoke-static {v0, v1}, Lui/decode/RetainedFragment;->access$setState$p(Lui/decode/RetainedFragment;Lui/decode/RetainedFragment$State;)V

    .line 289
    iget-object v0, p0, Lui/decode/RetainedFragment$deliverDecodeResult$1;->this$0:Lui/decode/RetainedFragment;

    iget-object v1, p0, Lui/decode/RetainedFragment$deliverDecodeResult$1;->$headers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lui/decode/RetainedFragment;->setHeaderStates(Ljava/util/ArrayList;)V

    .line 290
    iget-object v0, p0, Lui/decode/RetainedFragment$deliverDecodeResult$1;->this$0:Lui/decode/RetainedFragment;

    invoke-virtual {v0}, Lui/decode/RetainedFragment;->getDecodedV1File()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 291
    :cond_3
    iget-object v0, p0, Lui/decode/RetainedFragment$deliverDecodeResult$1;->this$0:Lui/decode/RetainedFragment;

    iget-object v1, p0, Lui/decode/RetainedFragment$deliverDecodeResult$1;->$v1File:Ljava/io/File;

    invoke-virtual {v0, v1}, Lui/decode/RetainedFragment;->setDecodedV1File(Ljava/io/File;)V

    .line 293
    iget-object v0, p0, Lui/decode/RetainedFragment$deliverDecodeResult$1;->this$0:Lui/decode/RetainedFragment;

    invoke-virtual {v0}, Lui/decode/RetainedFragment;->getListener()Lui/decode/RetainedFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lui/decode/RetainedFragment$deliverDecodeResult$1;->this$0:Lui/decode/RetainedFragment;

    invoke-static {v1}, Lui/decode/RetainedFragment;->access$getState$p(Lui/decode/RetainedFragment;)Lui/decode/RetainedFragment$State;

    move-result-object v1

    invoke-interface {v0, v1}, Lui/decode/RetainedFragment$Listener;->onStateChanged(Lui/decode/RetainedFragment$State;)V

    goto :goto_0
.end method
