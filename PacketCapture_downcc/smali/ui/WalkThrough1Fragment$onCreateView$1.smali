.class final Lui/WalkThrough1Fragment$onCreateView$1;
.super Ljava/lang/Object;
.source "WalkThroughActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/WalkThrough1Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lui/WalkThrough1Fragment;


# direct methods
.method constructor <init>(Lui/WalkThrough1Fragment;)V
    .locals 0

    iput-object p1, p0, Lui/WalkThrough1Fragment$onCreateView$1;->this$0:Lui/WalkThrough1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v1, p0, Lui/WalkThrough1Fragment$onCreateView$1;->this$0:Lui/WalkThrough1Fragment;

    invoke-virtual {v1}, Lui/WalkThrough1Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 52
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lui/WalkThroughActivity;

    if-eqz v1, :cond_0

    .line 53
    check-cast v0, Lui/WalkThroughActivity;

    .end local v0    # "activity":Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {v0}, Lui/WalkThroughActivity;->open2()V

    .line 54
    :cond_0
    return-void
.end method
