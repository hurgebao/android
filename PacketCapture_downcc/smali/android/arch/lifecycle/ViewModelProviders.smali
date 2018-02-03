.class public Landroid/arch/lifecycle/ViewModelProviders;
.super Ljava/lang/Object;
.source "ViewModelProviders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/ViewModelProviders$DefaultFactory;
    }
.end annotation


# static fields
.field private static sDefaultFactory:Landroid/arch/lifecycle/ViewModelProviders$DefaultFactory;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method private static initializeFactoryIfNeeded(Landroid/app/Application;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 38
    sget-object v0, Landroid/arch/lifecycle/ViewModelProviders;->sDefaultFactory:Landroid/arch/lifecycle/ViewModelProviders$DefaultFactory;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/arch/lifecycle/ViewModelProviders$DefaultFactory;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/ViewModelProviders$DefaultFactory;-><init>(Landroid/app/Application;)V

    sput-object v0, Landroid/arch/lifecycle/ViewModelProviders;->sDefaultFactory:Landroid/arch/lifecycle/ViewModelProviders$DefaultFactory;

    .line 41
    :cond_0
    return-void
.end method

.method public static of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;
    .locals 3
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/ViewModelProviders;->initializeFactoryIfNeeded(Landroid/app/Application;)V

    .line 75
    new-instance v0, Landroid/arch/lifecycle/ViewModelProvider;

    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelStores;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelStore;

    move-result-object v1

    sget-object v2, Landroid/arch/lifecycle/ViewModelProviders;->sDefaultFactory:Landroid/arch/lifecycle/ViewModelProviders$DefaultFactory;

    invoke-direct {v0, v1, v2}, Landroid/arch/lifecycle/ViewModelProvider;-><init>(Landroid/arch/lifecycle/ViewModelStore;Landroid/arch/lifecycle/ViewModelProvider$Factory;)V

    return-object v0
.end method
