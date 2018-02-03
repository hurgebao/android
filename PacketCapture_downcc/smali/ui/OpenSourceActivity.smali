.class public final Lui/OpenSourceActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "OpenSourceActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/OpenSourceActivity$MyWebViewClient;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v1, 0x7f03001f

    invoke-virtual {p0, v1}, Lui/OpenSourceActivity;->setContentView(I)V

    .line 20
    invoke-virtual {p0}, Lui/OpenSourceActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 21
    :cond_0
    invoke-virtual {p0}, Lui/OpenSourceActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v1, "Open source licenses"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    :cond_1
    const v1, 0x7f0b007e

    invoke-virtual {p0, v1}, Lui/OpenSourceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 24
    .local v0, "viewWeb":Landroid/webkit/WebView;
    const-string v1, "file:///android_asset/opensource.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 25
    new-instance v1, Lui/OpenSourceActivity$MyWebViewClient;

    invoke-direct {v1, p0}, Lui/OpenSourceActivity$MyWebViewClient;-><init>(Lui/OpenSourceActivity;)V

    check-cast v1, Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 26
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 35
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .end local p0    # "this":Lui/OpenSourceActivity;
    :goto_0
    return v0

    .line 31
    .restart local p0    # "this":Lui/OpenSourceActivity;
    :pswitch_0
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "this":Lui/OpenSourceActivity;
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    .line 32
    const/4 v0, 0x1

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
