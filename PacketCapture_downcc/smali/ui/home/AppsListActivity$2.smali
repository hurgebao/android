.class Lui/home/AppsListActivity$2;
.super Ljava/lang/Object;
.source "AppsListActivity.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/home/AppsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lui/home/AppsListActivity;


# direct methods
.method constructor <init>(Lui/home/AppsListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lui/home/AppsListActivity;

    .prologue
    .line 100
    iput-object p1, p0, Lui/home/AppsListActivity$2;->this$0:Lui/home/AppsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 103
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    iget-object v0, p0, Lui/home/AppsListActivity$2;->this$0:Lui/home/AppsListActivity;

    iget-object v0, v0, Lui/home/AppsListActivity;->binding:Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;

    iget-object v0, v0, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->loading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lui/home/AppsListActivity$2;->this$0:Lui/home/AppsListActivity;

    iget-object v0, v0, Lui/home/AppsListActivity;->binding:Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;

    iget-object v0, v0, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->list:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lui/home/AppsListActivity$2;->this$0:Lui/home/AppsListActivity;

    iget-object v0, v0, Lui/home/AppsListActivity;->binding:Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;

    iget-object v0, v0, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->loading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lui/home/AppsListActivity$2;->this$0:Lui/home/AppsListActivity;

    iget-object v0, v0, Lui/home/AppsListActivity;->binding:Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;

    iget-object v0, v0, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->list:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 100
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lui/home/AppsListActivity$2;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
