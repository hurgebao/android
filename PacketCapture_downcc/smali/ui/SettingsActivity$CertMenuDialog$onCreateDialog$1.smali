.class final Lui/SettingsActivity$CertMenuDialog$onCreateDialog$1;
.super Ljava/lang/Object;
.source "SettingsActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/SettingsActivity$CertMenuDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lui/SettingsActivity$CertMenuDialog;


# direct methods
.method constructor <init>(Lui/SettingsActivity$CertMenuDialog;)V
    .locals 0

    iput-object p1, p0, Lui/SettingsActivity$CertMenuDialog$onCreateDialog$1;->this$0:Lui/SettingsActivity$CertMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 233
    iget-object v1, p0, Lui/SettingsActivity$CertMenuDialog$onCreateDialog$1;->this$0:Lui/SettingsActivity$CertMenuDialog;

    invoke-virtual {v1}, Lui/SettingsActivity$CertMenuDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type ui.SettingsActivity.CertMenuDialog.Listener"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast v0, Lui/SettingsActivity$CertMenuDialog$Listener;

    .line 234
    .local v0, "listener":Lui/SettingsActivity$CertMenuDialog$Listener;
    invoke-interface {v0, p2}, Lui/SettingsActivity$CertMenuDialog$Listener;->onCertMenuClicked(I)V

    .line 235
    iget-object v1, p0, Lui/SettingsActivity$CertMenuDialog$onCreateDialog$1;->this$0:Lui/SettingsActivity$CertMenuDialog;

    invoke-virtual {v1}, Lui/SettingsActivity$CertMenuDialog;->dismiss()V

    .line 236
    return-void
.end method
