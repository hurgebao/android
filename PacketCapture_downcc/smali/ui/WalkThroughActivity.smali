.class public final Lui/WalkThroughActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "WalkThroughActivity.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    if-nez p1, :cond_0

    .line 25
    new-instance v0, Lui/WalkThrough1Fragment;

    invoke-direct {v0}, Lui/WalkThrough1Fragment;-><init>()V

    .line 26
    .local v0, "f":Lui/WalkThrough1Fragment;
    invoke-virtual {p0}, Lui/WalkThroughActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    check-cast v0, Landroid/support/v4/app/Fragment;

    .end local v0    # "f":Lui/WalkThrough1Fragment;
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 28
    :cond_0
    return-void
.end method

.method public final open2()V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Lui/WalkThrough2Fragment;

    invoke-direct {v0}, Lui/WalkThrough2Fragment;-><init>()V

    .line 32
    .local v0, "f":Lui/WalkThrough2Fragment;
    invoke-virtual {p0}, Lui/WalkThroughActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f04000a

    const v3, 0x7f04000b

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    check-cast v0, Landroid/support/v4/app/Fragment;

    .end local v0    # "f":Lui/WalkThrough2Fragment;
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 33
    return-void
.end method

.method public final open3()V
    .locals 4

    .prologue
    .line 36
    new-instance v0, Lui/WalkThrough3Fragment;

    invoke-direct {v0}, Lui/WalkThrough3Fragment;-><init>()V

    .line 37
    .local v0, "f":Lui/WalkThrough3Fragment;
    invoke-virtual {p0}, Lui/WalkThroughActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f04000a

    const v3, 0x7f04000b

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    check-cast v0, Landroid/support/v4/app/Fragment;

    .end local v0    # "f":Lui/WalkThrough3Fragment;
    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 39
    return-void
.end method
