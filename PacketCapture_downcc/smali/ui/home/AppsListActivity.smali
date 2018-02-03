.class public Lui/home/AppsListActivity;
.super Landroid/arch/lifecycle/LifecycleActivity;
.source "AppsListActivity.java"

# interfaces
.implements Lui/home/OnAppClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/home/AppsListActivity$AppsViewHolder;,
        Lui/home/AppsListActivity$AppsAdapter;,
        Lui/home/AppsListActivity$ActivityResult;
    }
.end annotation


# instance fields
.field adapter:Lui/home/AppsListActivity$AppsAdapter;

.field binding:Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;

.field private final onIsLoadingChanged:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final onTargetAppsChanged:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/arch/lifecycle/LifecycleActivity;-><init>()V

    .line 100
    new-instance v0, Lui/home/AppsListActivity$2;

    invoke-direct {v0, p0}, Lui/home/AppsListActivity$2;-><init>(Lui/home/AppsListActivity;)V

    iput-object v0, p0, Lui/home/AppsListActivity;->onIsLoadingChanged:Landroid/arch/lifecycle/Observer;

    .line 113
    new-instance v0, Lui/home/AppsListActivity$3;

    invoke-direct {v0, p0}, Lui/home/AppsListActivity$3;-><init>(Lui/home/AppsListActivity;)V

    iput-object v0, p0, Lui/home/AppsListActivity;->onTargetAppsChanged:Landroid/arch/lifecycle/Observer;

    return-void
.end method

.method public static getActivityResult(Landroid/content/Intent;)Lui/home/AppsListActivity$ActivityResult;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "result"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lui/home/AppsListActivity$ActivityResult;

    goto :goto_0
.end method


# virtual methods
.method public onAppClicked(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 91
    sget-object v2, Lui/home/AppHistory;->INSTANCE:Lui/home/AppHistory;

    invoke-virtual {v2, p1}, Lui/home/AppHistory;->saveHistory(Landroid/content/pm/ApplicationInfo;)V

    .line 93
    new-instance v1, Lui/home/AppsListActivity$ActivityResult;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v1, v2, v3}, Lui/home/AppsListActivity$ActivityResult;-><init>(Ljava/lang/String;I)V

    .line 94
    .local v1, "result":Lui/home/AppsListActivity$ActivityResult;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 96
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lui/home/AppsListActivity;->setResult(ILandroid/content/Intent;)V

    .line 97
    invoke-virtual {p0}, Lui/home/AppsListActivity;->finish()V

    .line 98
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/arch/lifecycle/LifecycleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    new-instance v1, Lui/home/AppsListActivity$AppsAdapter;

    invoke-direct {v1, p0, p0}, Lui/home/AppsListActivity$AppsAdapter;-><init>(Landroid/content/Context;Lui/home/OnAppClickListener;)V

    iput-object v1, p0, Lui/home/AppsListActivity;->adapter:Lui/home/AppsListActivity$AppsAdapter;

    .line 64
    const v1, 0x7f03001b

    invoke-static {p0, v1}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;

    iput-object v1, p0, Lui/home/AppsListActivity;->binding:Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;

    .line 65
    iget-object v1, p0, Lui/home/AppsListActivity;->binding:Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;

    iget-object v1, v1, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->list:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 66
    iget-object v1, p0, Lui/home/AppsListActivity;->binding:Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;

    iget-object v1, v1, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->list:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lui/home/AppsListActivity;->adapter:Lui/home/AppsListActivity$AppsAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 68
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v1

    const-class v2, Lui/home/AppLoadViewModel;

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lui/home/AppLoadViewModel;

    .line 69
    .local v0, "viewModel":Lui/home/AppLoadViewModel;
    invoke-virtual {v0}, Lui/home/AppLoadViewModel;->getIsLoading()Landroid/arch/lifecycle/LiveData;

    move-result-object v1

    iget-object v2, p0, Lui/home/AppsListActivity;->onIsLoadingChanged:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v1, p0, v2}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 70
    invoke-virtual {v0}, Lui/home/AppLoadViewModel;->getTargetApps()Landroid/arch/lifecycle/LiveData;

    move-result-object v1

    iget-object v2, p0, Lui/home/AppsListActivity;->onTargetAppsChanged:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v1, p0, v2}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 72
    iget-object v1, p0, Lui/home/AppsListActivity;->binding:Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;

    iget-object v1, v1, Lapp/greyshirts/mitm/databinding/ActivityAppslistBinding;->searchText:Landroid/widget/EditText;

    new-instance v2, Lui/home/AppsListActivity$1;

    invoke-direct {v2, p0, v0}, Lui/home/AppsListActivity$1;-><init>(Lui/home/AppsListActivity;Lui/home/AppLoadViewModel;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 87
    return-void
.end method
