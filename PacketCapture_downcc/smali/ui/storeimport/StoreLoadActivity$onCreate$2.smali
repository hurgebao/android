.class final Lui/storeimport/StoreLoadActivity$onCreate$2;
.super Ljava/lang/Object;
.source "StoreLoadActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/storeimport/StoreLoadActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lui/storeimport/StoreLoadActivity;


# direct methods
.method constructor <init>(Lui/storeimport/StoreLoadActivity;)V
    .locals 0

    iput-object p1, p0, Lui/storeimport/StoreLoadActivity$onCreate$2;->this$0:Lui/storeimport/StoreLoadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "it"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 84
    new-instance v0, Lui/storeimport/StoreLoadActivity$CertLoadTask;

    iget-object v1, p0, Lui/storeimport/StoreLoadActivity$onCreate$2;->this$0:Lui/storeimport/StoreLoadActivity;

    iget-object v2, p0, Lui/storeimport/StoreLoadActivity$onCreate$2;->this$0:Lui/storeimport/StoreLoadActivity;

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lui/storeimport/StoreLoadActivity$onCreate$2;->this$0:Lui/storeimport/StoreLoadActivity;

    invoke-virtual {v3}, Lui/storeimport/StoreLoadActivity;->getFilePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lui/storeimport/StoreLoadActivity$onCreate$2;->this$0:Lui/storeimport/StoreLoadActivity;

    invoke-virtual {v4}, Lui/storeimport/StoreLoadActivity;->getStorePass()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lui/storeimport/StoreLoadActivity$onCreate$2;->this$0:Lui/storeimport/StoreLoadActivity;

    invoke-virtual {v5}, Lui/storeimport/StoreLoadActivity;->getAliasName()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lui/storeimport/StoreLoadActivity$CertLoadTask;-><init>(Lui/storeimport/StoreLoadActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .local v0, "task":Lui/storeimport/StoreLoadActivity$CertLoadTask;
    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lui/storeimport/StoreLoadActivity$CertLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 90
    iget-object v1, p0, Lui/storeimport/StoreLoadActivity$onCreate$2;->this$0:Lui/storeimport/StoreLoadActivity;

    invoke-virtual {v1}, Lui/storeimport/StoreLoadActivity;->getInputDialog()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 91
    iget-object v1, p0, Lui/storeimport/StoreLoadActivity$onCreate$2;->this$0:Lui/storeimport/StoreLoadActivity;

    invoke-virtual {v1}, Lui/storeimport/StoreLoadActivity;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 92
    iget-object v1, p0, Lui/storeimport/StoreLoadActivity$onCreate$2;->this$0:Lui/storeimport/StoreLoadActivity;

    invoke-virtual {v1}, Lui/storeimport/StoreLoadActivity;->getCancelButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 93
    iget-object v1, p0, Lui/storeimport/StoreLoadActivity$onCreate$2;->this$0:Lui/storeimport/StoreLoadActivity;

    invoke-virtual {v1}, Lui/storeimport/StoreLoadActivity;->getOkButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 94
    return-void
.end method
