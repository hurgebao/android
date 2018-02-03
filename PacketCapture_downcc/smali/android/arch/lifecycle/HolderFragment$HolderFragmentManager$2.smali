.class Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager$2;
.super Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
.source "HolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    .prologue
    .line 111
    iput-object p1, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager$2;->this$0:Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentDestroyed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
    .locals 4
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "parentFragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    .line 115
    iget-object v1, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager$2;->this$0:Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    invoke-static {v1}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->access$100(Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/HolderFragment;

    .line 117
    .local v0, "fragment":Landroid/arch/lifecycle/HolderFragment;
    if-eqz v0, :cond_0

    .line 118
    const-string v1, "ViewModelStores"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to save a ViewModel for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    return-void
.end method
