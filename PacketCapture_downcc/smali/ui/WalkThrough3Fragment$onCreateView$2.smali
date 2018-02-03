.class final Lui/WalkThrough3Fragment$onCreateView$2;
.super Ljava/lang/Object;
.source "WalkThroughActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/WalkThrough3Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lui/WalkThrough3Fragment;


# direct methods
.method constructor <init>(Lui/WalkThrough3Fragment;)V
    .locals 0

    iput-object p1, p0, Lui/WalkThrough3Fragment$onCreateView$2;->this$0:Lui/WalkThrough3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x0

    .line 103
    iget-object v1, p0, Lui/WalkThrough3Fragment$onCreateView$2;->this$0:Lui/WalkThrough3Fragment;

    invoke-virtual {v1}, Lui/WalkThrough3Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lui/WalkThrough3Fragment$onCreateView$2;->this$0:Lui/WalkThrough3Fragment;

    invoke-static {v1}, Lui/WalkThrough3Fragment;->access$getVSkip$p(Lui/WalkThrough3Fragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v1, p0, Lui/WalkThrough3Fragment$onCreateView$2;->this$0:Lui/WalkThrough3Fragment;

    invoke-static {v1}, Lui/WalkThrough3Fragment;->access$getVInstall$p(Lui/WalkThrough3Fragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v1, p0, Lui/WalkThrough3Fragment$onCreateView$2;->this$0:Lui/WalkThrough3Fragment;

    invoke-static {v1}, Lui/WalkThrough3Fragment;->access$getVProgress$p(Lui/WalkThrough3Fragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 107
    new-instance v0, Lui/WalkThrough3Fragment$InstallTask;

    iget-object v2, p0, Lui/WalkThrough3Fragment$onCreateView$2;->this$0:Lui/WalkThrough3Fragment;

    iget-object v1, p0, Lui/WalkThrough3Fragment$onCreateView$2;->this$0:Lui/WalkThrough3Fragment;

    invoke-virtual {v1}, Lui/WalkThrough3Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v3, "getActivity()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v2, v1}, Lui/WalkThrough3Fragment$InstallTask;-><init>(Lui/WalkThrough3Fragment;Landroid/app/Activity;)V

    .line 108
    .local v0, "task":Lui/WalkThrough3Fragment$InstallTask;
    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lui/WalkThrough3Fragment$InstallTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 109
    .end local v0    # "task":Lui/WalkThrough3Fragment$InstallTask;
    :cond_0
    return-void
.end method
