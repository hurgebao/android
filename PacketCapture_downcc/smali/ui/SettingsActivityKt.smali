.class public final Lui/SettingsActivityKt;
.super Ljava/lang/Object;
.source "SettingsActivity.kt"


# direct methods
.method public static final showPacketsFromThisApp(Landroid/content/Context;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const-string v2, "ctx"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 272
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    sget-object v2, Lui/SettingsActivity;->Companion:Lui/SettingsActivity$Companion;

    invoke-virtual {v2}, Lui/SettingsActivity$Companion;->getPREF_KEY_SHOW_PACKETS_FROM_THIS_APP()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 273
    .local v1, "showPacketFromThisApp":Z
    return v1
.end method
