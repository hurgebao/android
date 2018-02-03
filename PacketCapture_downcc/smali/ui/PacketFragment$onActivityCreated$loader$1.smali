.class public final Lui/PacketFragment$onActivityCreated$loader$1;
.super Lui/CaptureLoader;
.source "PacketFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/PacketFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lui/PacketFragment;


# direct methods
.method constructor <init>(Lui/PacketFragment;)V
    .locals 0
    .param p1, "$outer"    # Lui/PacketFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 110
    iput-object p1, p0, Lui/PacketFragment$onActivityCreated$loader$1;->this$0:Lui/PacketFragment;

    invoke-direct {p0}, Lui/CaptureLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 110
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lui/PacketFragment$onActivityCreated$loader$1;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "result"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcapt/CaptHeader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    invoke-super {p0, p1}, Lui/CaptureLoader;->onPostExecute(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lui/PacketFragment$onActivityCreated$loader$1;->this$0:Lui/PacketFragment;

    invoke-static {v0}, Lui/PacketFragment;->access$getAdapter$p(Lui/PacketFragment;)Lui/PacketAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lui/PacketAdapter;->setData(Ljava/util/ArrayList;)V

    .line 114
    :cond_0
    return-void
.end method
