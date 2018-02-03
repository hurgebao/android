.class public final Lui/SettingsActivity$SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsActivity.kt"

# interfaces
.implements Lui/SettingsActivity$CertMenuDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingsFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/SettingsActivity$SettingsFragment$GenerateTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBuildVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 182
    invoke-virtual {p0}, Lui/SettingsActivity$SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lui/SettingsActivity$SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 183
    .local v0, "info":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_1

    :goto_1
    return-object v1

    .line 182
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 183
    .restart local v0    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    const-string v1, "unknown"

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {p0}, Lui/SettingsActivity$SettingsFragment;->updateView()V

    .line 189
    return-void
.end method

.method public onCertMenuClicked(I)V
    .locals 5
    .param p1, "which"    # I

    .prologue
    .line 163
    invoke-virtual {p0}, Lui/SettingsActivity$SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 178
    :goto_0
    return-void

    .line 166
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 168
    :pswitch_0
    new-instance v1, Lui/SettingsActivity$SettingsFragment$GenerateTask;

    invoke-virtual {p0}, Lui/SettingsActivity$SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "getActivity()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lui/SettingsActivity$SettingsFragment$GenerateTask;-><init>(Lui/SettingsActivity$SettingsFragment;Landroid/app/Activity;)V

    .line 169
    .local v1, "task":Lui/SettingsActivity$SettingsFragment$GenerateTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lui/SettingsActivity$SettingsFragment$GenerateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 172
    .end local v1    # "task":Lui/SettingsActivity$SettingsFragment$GenerateTask;
    :pswitch_1
    sget-object v3, Lui/storeimport/StoreChooserActivity;->Companion:Lui/storeimport/StoreChooserActivity$Companion;

    invoke-virtual {p0}, Lui/SettingsActivity$SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "getActivity()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v3, v2}, Lui/storeimport/StoreChooserActivity$Companion;->getStartingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lui/SettingsActivity$SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lui/SettingsActivity$SettingsFragment;->addPreferencesFromResource(I)V

    .line 67
    sget-object v0, Lui/SettingsActivity;->Companion:Lui/SettingsActivity$Companion;

    invoke-virtual {v0}, Lui/SettingsActivity$Companion;->getPREF_KEY_CUSTOM_SSL_PORT()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lui/SettingsActivity$SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v0, Lui/SettingsActivity$SettingsFragment$onCreate$1;

    invoke-direct {v0, p0}, Lui/SettingsActivity$SettingsFragment$onCreate$1;-><init>(Lui/SettingsActivity$SettingsFragment;)V

    check-cast v0, Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 81
    invoke-virtual {p0}, Lui/SettingsActivity$SettingsFragment;->updateView()V

    .line 82
    return-void
.end method

.method public final showCertMenu()V
    .locals 3

    .prologue
    .line 158
    sget-object v2, Lui/SettingsActivity$CertMenuDialog;->Companion:Lui/SettingsActivity$CertMenuDialog$Companion;

    move-object v1, p0

    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {v2, v1}, Lui/SettingsActivity$CertMenuDialog$Companion;->newInstance(Landroid/app/Fragment;)Lui/SettingsActivity$CertMenuDialog;

    move-result-object v0

    .line 159
    .local v0, "f":Lui/SettingsActivity$CertMenuDialog;
    invoke-virtual {p0}, Lui/SettingsActivity$SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lui/SettingsActivity$CertMenuDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public final updateView()V
    .locals 8

    .prologue
    .line 86
    invoke-virtual {p0}, Lui/SettingsActivity$SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 87
    .local v2, "ctx":Landroid/app/Activity;
    const-string v5, "pref_key_build_version"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lui/SettingsActivity$SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {p0}, Lui/SettingsActivity$SettingsFragment;->getBuildVersion()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    const-string v5, "pref_key_ca_certificate"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lui/SettingsActivity$SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 90
    .local v1, "certPref":Landroid/preference/Preference;
    const-string v5, "pref_key_certificate_status"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lui/SettingsActivity$SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 91
    .local v4, "statusPref":Landroid/preference/Preference;
    sget-object v6, Lapp/ssldecryptor/CACertGenerator;->INSTANCE:Lapp/ssldecryptor/CACertGenerator;

    invoke-virtual {p0}, Lui/SettingsActivity$SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v7, "getActivity()"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v6, v5}, Lapp/ssldecryptor/CACertGenerator;->loadCert(Landroid/content/Context;)Lapp/ssldecryptor/CertKeyStore;

    move-result-object v0

    .line 92
    .local v0, "cert":Lapp/ssldecryptor/CertKeyStore;
    if-nez v0, :cond_0

    .line 93
    const-string v5, "\u6ca1\u6709CA\u7684\u8bc1\u4e66"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    const-string v5, "\u4ece\u6587\u4ef6\u7cfb\u7edf\u4e2d\u751f\u6210\u6216\u52a0\u8f7d\u3002"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    new-instance v5, Lui/SettingsActivity$SettingsFragment$updateView$1;

    invoke-direct {v5, p0}, Lui/SettingsActivity$SettingsFragment$updateView$1;-><init>(Lui/SettingsActivity$SettingsFragment;)V

    check-cast v5, Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 102
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 103
    const-string v5, ""

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    :goto_0
    const-string v5, "pref_key_open_source"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lui/SettingsActivity$SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    new-instance v5, Lui/SettingsActivity$SettingsFragment$updateView$4;

    invoke-direct {v5, v2}, Lui/SettingsActivity$SettingsFragment$updateView$4;-><init>(Landroid/app/Activity;)V

    check-cast v5, Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 142
    sget-object v5, Lui/SettingsActivity;->Companion:Lui/SettingsActivity$Companion;

    invoke-virtual {v5}, Lui/SettingsActivity$Companion;->getPREF_KEY_CUSTOM_SSL_PORT()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lui/SettingsActivity$SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type ui.PortPreference"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 105
    :cond_0
    invoke-virtual {v0}, Lapp/ssldecryptor/CertKeyStore;->getCert()Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    const-string v5, "\u70b9\u51fb\u66f4\u6539"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v5, Lui/SettingsActivity$SettingsFragment$updateView$2;

    invoke-direct {v5, p0}, Lui/SettingsActivity$SettingsFragment$updateView$2;-><init>(Lui/SettingsActivity$SettingsFragment;)V

    check-cast v5, Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 113
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 114
    sget-object v5, Lapp/ssldecryptor/CACertGenerator;->INSTANCE:Lapp/ssldecryptor/CACertGenerator;

    invoke-virtual {v5, v0}, Lapp/ssldecryptor/CACertGenerator;->isCertInstalled(Lapp/ssldecryptor/CertKeyStore;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 115
    const-string v5, "\u5b89\u88c5\u5230\u53ef\u4fe1\u51ed\u636e\u3002"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 116
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 118
    :cond_1
    const-string v5, "\u6ca1\u6709\u5b89\u88c5\uff0c\u70b9\u51fb\u5b89\u88c5\u5230\u53d7\u4fe1\u4efb\u7684\u51ed\u636e\u3002"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 119
    new-instance v5, Lui/SettingsActivity$SettingsFragment$updateView$3;

    invoke-direct {v5, p0, v0}, Lui/SettingsActivity$SettingsFragment$updateView$3;-><init>(Lui/SettingsActivity$SettingsFragment;Lapp/ssldecryptor/CertKeyStore;)V

    check-cast v5, Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 142
    :cond_2
    check-cast v3, Lui/PortPreference;

    .line 143
    .local v3, "it":Lui/PortPreference;
    invoke-virtual {v3}, Lui/PortPreference;->updateSummary()V

    .line 144
    nop

    .line 142
    nop

    .line 155
    return-void
.end method
