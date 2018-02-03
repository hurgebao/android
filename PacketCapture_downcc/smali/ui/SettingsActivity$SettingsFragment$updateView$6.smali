.class final Lui/SettingsActivity$SettingsFragment$updateView$6;
.super Ljava/lang/Object;
.source "SettingsActivity.kt"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/SettingsActivity$SettingsFragment;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $ctx:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lui/SettingsActivity$SettingsFragment$updateView$6;->$ctx:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "it"    # Landroid/preference/Preference;

    .prologue
    .line 148
    iget-object v1, p0, Lui/SettingsActivity$SettingsFragment$updateView$6;->$ctx:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 149
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lui/SettingsActivity;->Companion:Lui/SettingsActivity$Companion;

    invoke-virtual {v2}, Lui/SettingsActivity$Companion;->getPREF_KEY_CUSTOM_SSL_PORT()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 150
    sget-object v1, Lsetting/AppSetting;->INSTANCE:Lsetting/AppSetting;

    invoke-virtual {v1}, Lsetting/AppSetting;->notifyPrefChanged()V

    .line 151
    iget-object v1, p0, Lui/SettingsActivity$SettingsFragment$updateView$6;->$ctx:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    const-string v2, "SSL port cleared"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 152
    const/4 v1, 0x1

    return v1
.end method
