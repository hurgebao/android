.class Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;
.super Ljava/lang/Object;
.source "HolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/HolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HolderFragmentManager"
.end annotation


# instance fields
.field private mActivityCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private mActivityCallbacksIsAdded:Z

.field private mNotCommittedActivityHolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/Activity;",
            "Landroid/arch/lifecycle/HolderFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mNotCommittedFragmentHolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/arch/lifecycle/HolderFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mParentDestroyedCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mNotCommittedActivityHolders:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mNotCommittedFragmentHolders:Ljava/util/Map;

    .line 97
    new-instance v0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager$1;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager$1;-><init>(Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;)V

    iput-object v0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mActivityCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mActivityCallbacksIsAdded:Z

    .line 110
    new-instance v0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager$2;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager$2;-><init>(Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;)V

    iput-object v0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mParentDestroyedCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    return-void
.end method

.method static synthetic access$000(Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mNotCommittedActivityHolders:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mNotCommittedFragmentHolders:Ljava/util/Map;

    return-object v0
.end method

.method private static createHolderFragment(Landroid/support/v4/app/FragmentManager;)Landroid/arch/lifecycle/HolderFragment;
    .locals 3
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 148
    new-instance v0, Landroid/arch/lifecycle/HolderFragment;

    invoke-direct {v0}, Landroid/arch/lifecycle/HolderFragment;-><init>()V

    .line 149
    .local v0, "holder":Landroid/arch/lifecycle/HolderFragment;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "android.arch.lifecycle.state.StateProviderHolderFragment"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 150
    return-object v0
.end method

.method private static findHolderFragment(Landroid/support/v4/app/FragmentManager;)Landroid/arch/lifecycle/HolderFragment;
    .locals 3
    .param p0, "manager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t access ViewModels from onDestroy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_0
    const-string v1, "android.arch.lifecycle.state.StateProviderHolderFragment"

    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 140
    .local v0, "fragmentByTag":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/arch/lifecycle/HolderFragment;

    if-nez v1, :cond_1

    .line 141
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected fragment instance was returned by HOLDER_TAG"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_1
    check-cast v0, Landroid/arch/lifecycle/HolderFragment;

    .end local v0    # "fragmentByTag":Landroid/support/v4/app/Fragment;
    return-object v0
.end method


# virtual methods
.method holderFragmentCreated(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "holderFragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 125
    .local v0, "parentFragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mNotCommittedFragmentHolders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mParentDestroyedCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mNotCommittedActivityHolders:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method holderFragmentFor(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/HolderFragment;
    .locals 5
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 155
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-static {v0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->findHolderFragment(Landroid/support/v4/app/FragmentManager;)Landroid/arch/lifecycle/HolderFragment;

    move-result-object v1

    .line 156
    .local v1, "holder":Landroid/arch/lifecycle/HolderFragment;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 170
    .end local v1    # "holder":Landroid/arch/lifecycle/HolderFragment;
    .local v2, "holder":Landroid/arch/lifecycle/HolderFragment;
    :goto_0
    return-object v2

    .line 159
    .end local v2    # "holder":Landroid/arch/lifecycle/HolderFragment;
    .restart local v1    # "holder":Landroid/arch/lifecycle/HolderFragment;
    :cond_0
    iget-object v3, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mNotCommittedActivityHolders:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Landroid/arch/lifecycle/HolderFragment;
    check-cast v1, Landroid/arch/lifecycle/HolderFragment;

    .line 160
    .restart local v1    # "holder":Landroid/arch/lifecycle/HolderFragment;
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 161
    .end local v1    # "holder":Landroid/arch/lifecycle/HolderFragment;
    .restart local v2    # "holder":Landroid/arch/lifecycle/HolderFragment;
    goto :goto_0

    .line 164
    .end local v2    # "holder":Landroid/arch/lifecycle/HolderFragment;
    .restart local v1    # "holder":Landroid/arch/lifecycle/HolderFragment;
    :cond_1
    iget-boolean v3, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mActivityCallbacksIsAdded:Z

    if-nez v3, :cond_2

    .line 165
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mActivityCallbacksIsAdded:Z

    .line 166
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    iget-object v4, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mActivityCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v3, v4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 168
    :cond_2
    invoke-static {v0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->createHolderFragment(Landroid/support/v4/app/FragmentManager;)Landroid/arch/lifecycle/HolderFragment;

    move-result-object v1

    .line 169
    iget-object v3, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mNotCommittedActivityHolders:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 170
    .end local v1    # "holder":Landroid/arch/lifecycle/HolderFragment;
    .restart local v2    # "holder":Landroid/arch/lifecycle/HolderFragment;
    goto :goto_0
.end method
