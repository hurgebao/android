.class public final Lui/StreamListActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "StreamListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/StreamListActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lui/StreamListActivity$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lui/StreamListActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lui/StreamListActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lui/StreamListActivity;->Companion:Lui/StreamListActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v2, 0x7f030023

    invoke-virtual {p0, v2}, Lui/StreamListActivity;->setContentView(I)V

    .line 27
    if-nez p1, :cond_2

    .line 28
    invoke-virtual {p0}, Lui/StreamListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "setId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "setId":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 31
    invoke-virtual {p0}, Lui/StreamListActivity;->finish()V

    .line 42
    .end local v1    # "setId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 35
    .restart local v1    # "setId":Ljava/lang/String;
    :cond_1
    sget-object v2, Lui/StreamListFragment;->Companion:Lui/StreamListFragment$Companion;

    invoke-virtual {v2, v1}, Lui/StreamListFragment$Companion;->newFragment(Ljava/lang/String;)Lui/StreamListFragment;

    move-result-object v0

    .line 36
    .local v0, "f":Lui/StreamListFragment;
    invoke-virtual {p0}, Lui/StreamListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0b007b

    check-cast v0, Landroid/support/v4/app/Fragment;

    .end local v0    # "f":Lui/StreamListFragment;
    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 40
    .end local v1    # "setId":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lui/StreamListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 41
    :cond_3
    invoke-virtual {p0}, Lui/StreamListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lui/StreamListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "time"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 51
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .end local p0    # "this":Lui/StreamListActivity;
    :goto_0
    return v0

    .line 47
    .restart local p0    # "this":Lui/StreamListActivity;
    :pswitch_0
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "this":Lui/StreamListActivity;
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    .line 48
    const/4 v0, 0x1

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
