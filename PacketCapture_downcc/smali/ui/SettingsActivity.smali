.class public final Lui/SettingsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/SettingsActivity$SettingsFragment;,
        Lui/SettingsActivity$CertMenuDialog;,
        Lui/SettingsActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lui/SettingsActivity$Companion;

# The value of this static final field might be set in the static constructor
.field private static final PREF_KEY_CUSTOM_SSL_PORT:Ljava/lang/String; = "pref_key_custom_ssl_port"

# The value of this static final field might be set in the static constructor
.field private static final PREF_KEY_SHOW_PACKETS_FROM_THIS_APP:Ljava/lang/String; = "pref_key_show_packets_from_this_app"

.field private static final REQ_INSTALL_CERT:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lui/SettingsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lui/SettingsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lui/SettingsActivity;->Companion:Lui/SettingsActivity$Companion;

    .line 35
    const-string v0, "pref_key_show_packets_from_this_app"

    sput-object v0, Lui/SettingsActivity;->PREF_KEY_SHOW_PACKETS_FROM_THIS_APP:Ljava/lang/String;

    .line 36
    const-string v0, "pref_key_custom_ssl_port"

    sput-object v0, Lui/SettingsActivity;->PREF_KEY_CUSTOM_SSL_PORT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getPREF_KEY_CUSTOM_SSL_PORT$cp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lui/SettingsActivity;->PREF_KEY_CUSTOM_SSL_PORT:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPREF_KEY_SHOW_PACKETS_FROM_THIS_APP$cp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lui/SettingsActivity;->PREF_KEY_SHOW_PACKETS_FROM_THIS_APP:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getREQ_INSTALL_CERT$cp()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lui/SettingsActivity;->REQ_INSTALL_CERT:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lui/SettingsActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lui/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lui/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "\u8bbe\u7f6e"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const-string v0, "\u9879\u76ee"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 55
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .end local p0    # "this":Lui/SettingsActivity;
    :goto_0
    return v0

    .line 51
    .restart local p0    # "this":Lui/SettingsActivity;
    :pswitch_0
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "this":Lui/SettingsActivity;
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    .line 52
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
