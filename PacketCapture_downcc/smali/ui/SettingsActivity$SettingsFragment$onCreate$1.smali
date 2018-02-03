.class final Lui/SettingsActivity$SettingsFragment$onCreate$1;
.super Ljava/lang/Object;
.source "SettingsActivity.kt"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/SettingsActivity$SettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lui/SettingsActivity$SettingsFragment;


# direct methods
.method constructor <init>(Lui/SettingsActivity$SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lui/SettingsActivity$SettingsFragment$onCreate$1;->this$0:Lui/SettingsActivity$SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 68
    sget-object v1, Lsetting/AppSetting;->INSTANCE:Lsetting/AppSetting;

    if-nez p2, :cond_0

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v1, p2}, Lsetting/AppSetting;->isSSLPortListValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    const/4 v1, 0x1

    .line 68
    :goto_0
    return v1

    .line 71
    :cond_1
    iget-object v1, p0, Lui/SettingsActivity$SettingsFragment$onCreate$1;->this$0:Lui/SettingsActivity$SettingsFragment;

    invoke-virtual {v1}, Lui/SettingsActivity$SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 72
    .local v0, "it":Landroid/app/Activity;
    check-cast v0, Landroid/content/Context;

    .end local v0    # "it":Landroid/app/Activity;
    const-string v1, "Invalid port"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 73
    nop

    :cond_2
    move v1, v2

    .line 74
    goto :goto_0
.end method
