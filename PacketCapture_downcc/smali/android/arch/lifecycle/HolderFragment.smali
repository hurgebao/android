.class public Landroid/arch/lifecycle/HolderFragment;
.super Landroid/support/v4/app/Fragment;
.source "HolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;
    }
.end annotation


# static fields
.field private static final sHolderFragmentManager:Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;


# instance fields
.field private mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    invoke-direct {v0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/HolderFragment;->sHolderFragmentManager:Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 49
    new-instance v0, Landroid/arch/lifecycle/ViewModelStore;

    invoke-direct {v0}, Landroid/arch/lifecycle/ViewModelStore;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/HolderFragment;->mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/HolderFragment;->setRetainInstance(Z)V

    .line 53
    return-void
.end method

.method public static holderFragmentFor(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/HolderFragment;
    .locals 1
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 81
    sget-object v0, Landroid/arch/lifecycle/HolderFragment;->sHolderFragmentManager:Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->holderFragmentFor(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/HolderFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getViewModelStore()Landroid/arch/lifecycle/ViewModelStore;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Landroid/arch/lifecycle/HolderFragment;->mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget-object v0, Landroid/arch/lifecycle/HolderFragment;->sHolderFragmentManager:Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->holderFragmentCreated(Landroid/support/v4/app/Fragment;)V

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 69
    iget-object v0, p0, Landroid/arch/lifecycle/HolderFragment;->mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ViewModelStore;->clear()V

    .line 70
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method
