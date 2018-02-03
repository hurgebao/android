.class final Lui/SetListFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "SetListFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/SetListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lui/SetListFragment;


# direct methods
.method constructor <init>(Lui/SetListFragment;)V
    .locals 0

    iput-object p1, p0, Lui/SetListFragment$onCreateView$1;->this$0:Lui/SetListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p1, "adapterView"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
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
    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v4, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type ui.SetListAdapter.Tag"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    check-cast v2, Lui/SetListAdapter$Tag;

    .line 45
    .local v2, "tag":Lui/SetListAdapter$Tag;
    invoke-virtual {v2}, Lui/SetListAdapter$Tag;->getSetId()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "setId":Ljava/lang/String;
    invoke-virtual {v2}, Lui/SetListAdapter$Tag;->getTime()Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "time":Ljava/lang/String;
    iget-object v4, p0, Lui/SetListFragment$onCreateView$1;->this$0:Lui/SetListFragment;

    invoke-virtual {v4}, Lui/SetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 48
    sget-object v5, Lui/StreamListActivity;->Companion:Lui/StreamListActivity$Companion;

    iget-object v4, p0, Lui/SetListFragment$onCreateView$1;->this$0:Lui/SetListFragment;

    invoke-virtual {v4}, Lui/SetListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v6, "getActivity()"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v5, v4, v1, v3}, Lui/StreamListActivity$Companion;->getStartingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lui/SetListFragment$onCreateView$1;->this$0:Lui/SetListFragment;

    invoke-virtual {v4, v0}, Lui/SetListFragment;->startActivity(Landroid/content/Intent;)V

    .line 50
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
