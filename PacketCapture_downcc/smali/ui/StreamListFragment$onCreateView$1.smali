.class final Lui/StreamListFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "StreamListFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/StreamListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lui/StreamListFragment;


# direct methods
.method constructor <init>(Lui/StreamListFragment;)V
    .locals 0

    iput-object p1, p0, Lui/StreamListFragment$onCreateView$1;->this$0:Lui/StreamListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p1, "adapterView"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v5, p0, Lui/StreamListFragment$onCreateView$1;->this$0:Lui/StreamListFragment;

    invoke-virtual {v5}, Lui/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 64
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type ui.StreamListAdapter.Tag"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    check-cast v4, Lui/StreamListAdapter$Tag;

    .line 65
    .local v4, "tag":Lui/StreamListAdapter$Tag;
    invoke-virtual {v4}, Lui/StreamListAdapter$Tag;->getAppName()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "appName":Ljava/lang/String;
    invoke-virtual {v4}, Lui/StreamListAdapter$Tag;->getDecodeArg()Lui/decode/DecodeArg;

    move-result-object v5

    invoke-virtual {v5}, Lui/decode/DecodeArg;->getCaptFile()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 68
    sget-object v5, Lui/PacketActivity;->Companion:Lui/PacketActivity$Companion;

    check-cast v0, Landroid/content/Context;

    .end local v0    # "activity":Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {v4}, Lui/StreamListAdapter$Tag;->getDecodeArg()Lui/decode/DecodeArg;

    move-result-object v6

    invoke-virtual {v5, v0, v1, v6}, Lui/PacketActivity$Companion;->getStartingIntent(Landroid/content/Context;Ljava/lang/String;Lui/decode/DecodeArg;)Landroid/content/Intent;

    move-result-object v3

    .line 69
    .local v3, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lui/StreamListFragment$onCreateView$1;->this$0:Lui/StreamListFragment;

    invoke-virtual {v5, v3}, Lui/StreamListFragment;->startActivity(Landroid/content/Intent;)V

    .line 70
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
