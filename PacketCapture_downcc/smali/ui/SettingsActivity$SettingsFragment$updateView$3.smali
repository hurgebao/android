.class final Lui/SettingsActivity$SettingsFragment$updateView$3;
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
.field final synthetic $cert:Lapp/ssldecryptor/CertKeyStore;

.field final synthetic this$0:Lui/SettingsActivity$SettingsFragment;


# direct methods
.method constructor <init>(Lui/SettingsActivity$SettingsFragment;Lapp/ssldecryptor/CertKeyStore;)V
    .locals 0

    iput-object p1, p0, Lui/SettingsActivity$SettingsFragment$updateView$3;->this$0:Lui/SettingsActivity$SettingsFragment;

    iput-object p2, p0, Lui/SettingsActivity$SettingsFragment$updateView$3;->$cert:Lapp/ssldecryptor/CertKeyStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "it"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 120
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    move-result-object v1

    .line 121
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "name"

    const-string v3, "Packet Capture CA Certificate"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v2, "CERT"

    iget-object v3, p0, Lui/SettingsActivity$SettingsFragment$updateView$3;->$cert:Lapp/ssldecryptor/CertKeyStore;

    invoke-virtual {v3}, Lapp/ssldecryptor/CertKeyStore;->getCertAsDer()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 123
    nop

    .line 124
    :try_start_0
    iget-object v2, p0, Lui/SettingsActivity$SettingsFragment$updateView$3;->this$0:Lui/SettingsActivity$SettingsFragment;

    sget-object v3, Lui/SettingsActivity;->Companion:Lui/SettingsActivity$Companion;

    invoke-virtual {v3}, Lui/SettingsActivity$Companion;->getREQ_INSTALL_CERT()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lui/SettingsActivity$SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return v4

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lui/SettingsActivity$SettingsFragment$updateView$3;->this$0:Lui/SettingsActivity$SettingsFragment;

    invoke-virtual {v2}, Lui/SettingsActivity$SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-string v3, "Certificate installer is missing on this device"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
