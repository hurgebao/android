.class public final Lui/WalkThrough3Fragment$InstallTask;
.super Landroid/os/AsyncTask;
.source "WalkThroughActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/WalkThrough3Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InstallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lapp/ssldecryptor/CertKeyStore;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field final synthetic this$0:Lui/WalkThrough3Fragment;


# direct methods
.method public constructor <init>(Lui/WalkThrough3Fragment;Landroid/app/Activity;)V
    .locals 1
    .param p1, "$outer"    # Lui/WalkThrough3Fragment;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iput-object p1, p0, Lui/WalkThrough3Fragment$InstallTask;->this$0:Lui/WalkThrough3Fragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lui/WalkThrough3Fragment$InstallTask;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lapp/ssldecryptor/CertKeyStore;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const-string v1, "params"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object v1, Lapp/ssldecryptor/CACertGenerator;->INSTANCE:Lapp/ssldecryptor/CACertGenerator;

    iget-object v2, p0, Lui/WalkThrough3Fragment$InstallTask;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity.getApplicationContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lapp/ssldecryptor/CACertGenerator;->generateFsCertStore(Landroid/content/Context;)Lapp/ssldecryptor/CertKeyStore;

    move-result-object v0

    .line 143
    .local v0, "cert":Lapp/ssldecryptor/CertKeyStore;
    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lui/WalkThrough3Fragment$InstallTask;->doInBackground([Ljava/lang/Void;)Lapp/ssldecryptor/CertKeyStore;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lapp/ssldecryptor/CertKeyStore;)V
    .locals 5
    .param p1, "result"    # Lapp/ssldecryptor/CertKeyStore;

    .prologue
    const/4 v4, 0x1

    .line 147
    if-nez p1, :cond_0

    .line 148
    iget-object v2, p0, Lui/WalkThrough3Fragment$InstallTask;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    const-string v3, "Cannot create certificate"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 149
    iget-object v2, p0, Lui/WalkThrough3Fragment$InstallTask;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 159
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    move-result-object v1

    .line 153
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "name"

    const-string v3, "Packet Capture CA Certificate"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v2, "CERT"

    invoke-virtual {p1}, Lapp/ssldecryptor/CertKeyStore;->getCertAsDer()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 155
    nop

    .line 156
    :try_start_0
    iget-object v2, p0, Lui/WalkThrough3Fragment$InstallTask;->this$0:Lui/WalkThrough3Fragment;

    sget-object v3, Lui/WalkThrough3Fragment;->Companion:Lui/WalkThrough3Fragment$Companion;

    invoke-virtual {v3}, Lui/WalkThrough3Fragment$Companion;->getREQ_INSTALL_CERT()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lui/WalkThrough3Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lui/WalkThrough3Fragment$InstallTask;->activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    const-string v3, "Certificate installer is missing on this device"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 139
    check-cast p1, Lapp/ssldecryptor/CertKeyStore;

    invoke-virtual {p0, p1}, Lui/WalkThrough3Fragment$InstallTask;->onPostExecute(Lapp/ssldecryptor/CertKeyStore;)V

    return-void
.end method
